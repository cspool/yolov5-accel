import numpy as np
import math
import torch
import torch.nn.functional as F

conv_type_mapping = {
      0:(1,1,0),
      1:(3,1,1),
      2:(3,2,1),
      3:(6,2,2)
   }

# ddr arguments
ddr_word_width = 512

def int8_to_hex_complement(value):
    """
    将 int8 值转换为 2 位 16 进制补码形式
    """
    if value >= 0:
        return f"{value:02x}"  # 正数直接转换为 16 进制
    else:
        return f"{256 + value:02x}"  # 负数转换为补码

def generate_conv_E_quantize_tests():
    # (k,s,p)=(1,1,0)/(3,1,1)/(3,2,1)/(6,2,2)四种卷积各2组（w1a8和w8a8）用例,
    # 过程数值限制在[-(1<<19),(1<<19)-1]内。
    # 每种卷积下分3种情况测试，分别是(E=1)&&(scale=0), scale=0, E和scale任一uint8数。
  conv_types = [0,1,2,3] #  (1,1,0)/(3,1,1)/(3,2,1)/(6,2,2)
  mode_types = [0,1] # w8a8/w1a8
  quantize_types = [0,1,2] #(E=1)&&(scale=0), scale=0, E和scale任一uint8数

  # for conv_type in conv_types:
  #    for mode_type in mode_types:
  #       for quantize_type in quantize_types:
  #          conv_test(conv_type, mode_type, quantize_type)
  
  conv_type, mode_type, quantize_type = (0,0,0)
  conv_E_quantize_test(conv_type, mode_type, quantize_type)

def conv_E_quantize_test(conv_type, mode_type, quantize_type):
    standard_conv_E_quantize(conv_type, mode_type, quantize_type)
    # fpga_conv_E_quantize(conv_type, mode_type, quantize_type)

def standard_conv_E_quantize(conv_type, mode_type, quantize_type):
  # def basic conv op
  mode = mode_type
  k,s,p = conv_type_mapping[conv_type]
  of = 128
  ox = 128
  oy = 128
  ix = ox if s == 1 else ox*2
  iy = oy if s == 1 else oy*2
  nif = 128

  # generate input and argument data 
  weight_data, weights_ddr_words = generate_conv_weight_data(mode, of, nif, k)
  bias_data, bias_ddr_words = generate_conv_bias_data(mode, of)
  E_data, E_ddr_words = generate_conv_E_data(quantize_type, mode, of)
  scale_data, scale_ddr_words = generate_conv_scale_data(quantize_type, mode, of, k)
  input_data, input_ddr_word_array = generate_conv_input_data(nif, iy, ix)

  input_base_adr = weights_ddr_words.shape[0] + bias_ddr_words.shape[0] + E_ddr_words.shape[0] + scale_ddr_words.shape[0]            
  generate_instr_args_init(mode, k, s, p, of, ox, oy, ix, iy, nif, input_base_adr)

  generate_ddr_txt(mode, weights_ddr_words, bias_ddr_words, E_ddr_words, scale_ddr_words, input_ddr_word_array)
  generate_ddr_init(mode, weights_ddr_words, bias_ddr_words, E_ddr_words, scale_ddr_words, input_ddr_word_array)
  generate_weight_buf_txt(mode, weights_ddr_words)
  generate_bias_buf_txt(bias_ddr_words)
  generate_bias_buf_init(bias_ddr_words)
  generate_E_buf_txt(E_ddr_words)
  generate_E_buf_init(E_ddr_words)
  generate_scale_buf_txt(scale_ddr_words)
  generate_scale_buf_init(scale_ddr_words)
  generate_input_buf_txt(input_ddr_word_array)

  # standard conv
  input_data = input_data.view(1, nif, iy, ix)
  weight_data_mode0 = weight_data
  # 0 --> 1, 1 --> -1
  weight_data_mode1 = torch.tensor([1], dtype=torch.int).view(1, 1, 1, 1) \
    - weight_data * torch.tensor([2], dtype=torch.int).view(1, 1, 1, 1)
  weight_data_mode = weight_data_mode0 if mode == 0 else weight_data_mode1
  conv_out = F.conv2d(input_data, weight_data_mode, torch.zeros(size=(of,), dtype=torch.int), stride=s, padding=p)
  
  output_file = "conv_out_tensor.txt"
  with open(output_file, "w") as f: 
      # 第一行写入维度信息
      f.write(" ".join(map(str, conv_out.shape)) + "\n")
      # 遍历张量的每个元素并写入文件
      for i in range(conv_out.size(0)):  # 遍历 batch 维度
          for j in range(conv_out.size(1)):  # 遍历通道维度
              for k in range(conv_out.size(2)):  # 遍历高度维度
                  f.write(f"channel {j:4d} - height {k:4d} : ")
                  for value in conv_out[i, j, k, :]:  # 遍历宽度维度
                      f.write(f"{int(value.item()):3d} ")  # 写入整数值
                  f.write("\n")  # 每一行结束后换行
  print(f"conv_out tensor saved to {output_file}")
  
  # 调整 E 和 scale 的形状以匹配输出张量
  E_data = E_data.view(1, of, 1, 1)  # 调整为 (1, of, 1, 1)
  bias_data = bias_data.view(1, of, 1, 1)
  scale_data = scale_data.view(1, of, 1, 1)  # 调整为 (1, of, 1, 1)
  # 将每个通道的值乘以对应的 E[i]
  conv_out = conv_out * E_data  # 使用广播机制
  output_file = "conv_out_mult_E_tensor.txt"
  with open(output_file, "w") as f: 
      # 第一行写入维度信息
      f.write(" ".join(map(str, conv_out.shape)) + "\n")
      # 遍历张量的每个元素并写入文件
      for i in range(conv_out.size(0)):  # 遍历 batch 维度
          for j in range(conv_out.size(1)):  # 遍历通道维度
              for k in range(conv_out.size(2)):  # 遍历高度维度
                  f.write(f"channel {j:4d} - height {k:4d} : ")
                  for value in conv_out[i, j, k, :]:  # 遍历宽度维度
                      f.write(f"{int(value.item()):3d} ")  # 写入整数值
                  f.write("\n")  # 每一行结束后换行
  print(f"conv_out mult E tensor saved to {output_file}")
  # 将每个通道的值add对应的 bias[i]
  conv_out = conv_out + bias_data  # 使用广播机制
  output_file = "conv_out_mult_E_add_bias_tensor.txt"
  with open(output_file, "w") as f: 
      # 第一行写入维度信息
      f.write(" ".join(map(str, conv_out.shape)) + "\n")
      # 遍历张量的每个元素并写入文件
      for i in range(conv_out.size(0)):  # 遍历 batch 维度
          for j in range(conv_out.size(1)):  # 遍历通道维度
              for k in range(conv_out.size(2)):  # 遍历高度维度
                  f.write(f"channel {j:4d} - height {k:4d} : ")
                  for value in conv_out[i, j, k, :]:  # 遍历宽度维度
                      f.write(f"{int(value.item()):3d} ")  # 写入整数值
                  f.write("\n")  # 每一行结束后换行
  print(f"conv_out tensor saved to {output_file}")
  # 对每个输出通道的值应用 ReLU 激活函数
  conv_out = F.relu(conv_out)
  # 对每个通道的值进行逻辑右移 rank[i] 位
  output_tensor = torch.clamp(torch.bitwise_right_shift(conv_out, scale_data), 0, 255)  # 使用广播机制
  # 将张量保存到txt文件
  output_file = "output_tensor.txt"
  with open(output_file, "w") as f: 
      # 第一行写入维度信息
      f.write(" ".join(map(str, output_tensor.shape)) + "\n")
      # 遍历张量的每个元素并写入文件
      for i in range(output_tensor.size(0)):  # 遍历 batch 维度
          for j in range(output_tensor.size(1)):  # 遍历通道维度
              for k in range(output_tensor.size(2)):  # 遍历高度维度
                  f.write(f"channel {j:4d} - height {k:4d} : ")
                  for value in output_tensor[i, j, k, :]:  # 遍历宽度维度
                      f.write(f"{int(value.item()):3d} ")  # 写入整数值
                  f.write("\n")  # 每一行结束后换行
  print(f"Output tensor saved to {output_file}")

#fpga conv
def fpga_conv_E_quantize(conv_type, mode_type, quantize_type):
  # def basic conv op
  mode = mode_type
  k,s,p = conv_type_mapping[conv_type]
  of = 128
  ox = 128
  oy = 128
  ix = ox if s == 1 else ox*2
  iy = oy if s == 1 else oy*2
  nif = 128
  #fpga conv results
  collect_result(of, oy, ox)
  #compare the fpga result with std conv
  compare_files("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\fpga_output_tensors.txt", 
                "D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\output_tensor.txt")

def collect_result(of, oy, ox):
    # collect the result from txt file
    fpga_output_tensors = torch.zeros(size=(1, of, oy, ox), dtype=torch.int8)
    with open("conv_result.txt", "r") as f:
        next(f)  # 跳过第一行表头
        for line in f:
            if line is None: continue
            # 解析每一行的数据
            line_spilt = line.strip().split()
            if len(line_spilt) < 6: continue
            time, valid, out_f_idx, out_y_idx, out_x_idx, result_word = line_spilt
            if len(result_word) < 64: continue
            if valid != "1": continue
            out_f_idx, out_y_idx, out_x_idx = int(out_f_idx), int(out_y_idx), int(out_x_idx)
            
            # 将64位16进制数转换为32个2位16进制数，并进一步转换为10进制数
            hex_values = [result_word[i:i+2] for i in range(0, len(result_word), 2)]
            decimal_values = [int(value, 16) for value in hex_values]
            
            # 计算写入张量的起始和结束索引
            start_idx = (out_f_idx - 1, out_y_idx - 1, (out_x_idx - 1))
            end_idx = (out_f_idx - 1, out_y_idx -1 , out_x_idx - 1 + 32)
            
            # 将数据写入张量，编号小的数写入坐标大的位置
            fpga_output_tensors[0, start_idx[0], start_idx[1], start_idx[2]:end_idx[2]] = torch.tensor(decimal_values[::-1], dtype=torch.uint8)

    fpga_output_tensors = fpga_output_tensors.to(dtype=torch.uint8)
    with open("fpga_output_tensors.txt", "w") as f:
        # 写入张量的维度信息
        f.write(" ".join(map(str, fpga_output_tensors.shape)) + "\n")
        
        # 遍历张量的每个元素并写入文件
        for b in range(fpga_output_tensors.size(0)):  # 遍历第0个维度
          for i in range(fpga_output_tensors.size(1)):  # 遍历第一个维度
              for j in range(fpga_output_tensors.size(2)):  # 遍历第二个维度
                  f.write(f"channel {i:4d} - height {j:4d} : ")
                  for k in range(fpga_output_tensors.size(3)):  # 遍历第三个维度
                      f.write(f"{fpga_output_tensors[b, i, j, k].item():3d} ")
                  f.write("\n")  # 每一行结束后换行

def compare_files(file1_path, file2_path):
    with open(file1_path, 'r', encoding='utf-8') as file1, \
         open(file2_path, 'r', encoding='utf-8') as file2:
        lines1 = file1.readlines()
        lines2 = file2.readlines()

    if len(lines1) != len(lines2):
        print("两个文件的行数不同。")
        return False

    for i, (line1, line2) in enumerate(zip(lines1, lines2), start=1):
        if line1 != line2:
            print(f"第 {i} 行不同：")
            print(f"文件1: {line1.strip()}")
            print(f"文件2: {line2.strip()}")
            return False

    print("两个文件完全相同。")
    return True

def  generate_conv_weight_data(mode, of, nif, k):
  # generate and return conv weights, then reshape & split it and return it
  # weights[F, ID*K*K]
  ## int8 [-128,127]
  img2col_weight_data = torch.randint(-128, 127, size=(of, nif*k * k), dtype=torch.int) \
    if mode == 0 else torch.randint(0, 2, size=(of, nif*k * k), dtype=torch.int)
  weight_data = img2col_weight_data.reshape(of, nif, k, k)
  ## reshape weight data
  # the amount of out channel of weights per complete ddr word
  weight_width = 8 if mode == 0 else 1
  out_channel_parallel = 64 if mode == 0 else 128
  weights_out_channel_in_word = min(ddr_word_width // weight_width, out_channel_parallel, of) #64 or 128 or F
  # weights_tensor[FP, ID*K*K]
  weights_tensors = img2col_weight_data.split(weights_out_channel_in_word, dim=0)
  weights_tensor_list = []
  print("Weights shape (Output Channels, Input Channels, Kernel Height, Kernel Width):", weight_data.shape)
  print(f"weight tensors shape:")
  for index, weights_tensor in enumerate(weights_tensors):
      print(f"index: {index} \n weights tensor shape: {weights_tensor.shape} \n {weights_tensor} \n")
      weights_data_in_word = ddr_word_width // weight_width
      kernel_num = weights_tensor.shape[0] #output channels indeed
      # each weight word contains at most 64 weights from 64 kernels
      # permuted weights_tensor[k*k*ID, FP], every row is a ddr word carrying FP weights
      weights_tensor_list.extend(
          [F.pad(wt, (0, weights_data_in_word - kernel_num)) 
          for wt in weights_tensor.permute(1,0).reshape(-1,).split(kernel_num, dim=0)]
          )
  weights_ddr_words = torch.stack(weights_tensor_list, dim=0)
  print(f"weights ddr words: {weights_ddr_words}")
  ## write weight into weight txt
  with open('./weights_tensors.txt', "w") as f:
      for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_words):
      # iterate each weight word
          dec_str = ''.join([f'{weight_num:03d} ' for weight_num in weight_ddr_word])
          f.write(dec_str + '\n')
  return weight_data, weights_ddr_words

def generate_conv_input_data(nif, iy, ix):
  # generate and return conv input, then split and return it 
  # input[ID, IH, IW]
  # input channel num should be an even num. 
  # if not, expand 3 channels -> 4 channels, last channel is 0
  # uint8 [0,255]
  # if nif is odd, add a zero channel to make it even
  if nif % 2 != 0:
    input_data = torch.randint(0, 255, size=(nif, iy, ix), dtype=torch.int)
    zero_channel = torch.zeros((1, iy, ix), dtype=torch.int)
    input_data = torch.cat((input_data, zero_channel), dim=0)
    # nif += 1
  else:
    input_data = torch.randint(0, 255, size=(nif, iy, ix), dtype=torch.int)  

  # reshape input tensor into ddr words
  activation_x_num_in_ddr_word = 32
  activation_in_channel_num_in_ddr_word = 2 # ddr_word_width / activation_x_num_in_ddr_word / weight_word_width
  assert ix % 32 == 0
  # reshape input data
  # (C, H, W) ---> (H, W/32, C/2, 32*2); input ddr words in tensor format
  input_tensor = input_data.view(nif // 2, 2, iy, ix // 32, 32)\
      .permute(2, 3, 0, 1, 4).contiguous().view(iy, ix // 32, nif // 2, 64)
  print("Input data shape (Input Channels, Input Height, Input Width):", input_data.shape)
  print(f"input tensors shape: {input_tensor.shape}")
  print(input_tensor)
  input_tensor_shape = input_tensor.shape
  input_ddr_word_array = input_tensor.reshape(-1).split(split_size=input_tensor_shape[-1], dim=0)    
  ## write input into input txt
  with open('./input_tensors.txt', "w") as f:
      for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_word_array):
      # iterate each input word
          dec_str = ''.join([f'{input_num:03d} ' for input_num in input_ddr_word])
          f.write(dec_str + '\n')
  return input_data, input_ddr_word_array
 
def generate_conv_bias_data(mode, of):
  # bias[1, F]
  # int8 [-128,127]
  bias_data = torch.randint(-128, 127, size=(1, of), dtype=torch.int)
  ## reshape bias data
  # the amount of out channel of bias per complete ddr word
  bias_width = 8
  out_channel_parallel = 64 if mode == 0 else 128 
  bias_out_channel_in_word = min(ddr_word_width // bias_width, out_channel_parallel, of) #64 or F
  bias_tensors = bias_data.split(bias_out_channel_in_word, dim=1)
  bias_tensor_list = [] #bias ddr words in tensor format
  print(f"bias tensors shape:")
  for index, bias_tensor in enumerate(bias_tensors):
      print(f"index: {index} \n bias tensor shape: {bias_tensor.shape} \n {bias_tensor} \n")
      bias_data_in_word = ddr_word_width // bias_width
      bias_num = bias_tensor.shape[1]
      # each bias word contains 64 bias from 64 kernels
      # bias_tensor[1,FP] is a ddr word carrying 64 bias
      bias_tensor_list.append(F.pad(bias_tensor.reshape(-1,), (0, bias_data_in_word - bias_num)))
  bias_ddr_words = torch.stack(bias_tensor_list, dim=0)
  print(f"bias ddr words: {bias_ddr_words}")
  ## write bias into bias txt
  with open('./bias_tensors.txt', "w") as f:    
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_words):
      # iterate each bias word
          dec_str = ''.join([f'{bias_num:03d} ' for bias_num in bias_ddr_word])
          f.write(dec_str + '\n')
  return bias_data, bias_ddr_words

def generate_conv_E_data(quantize_type, mode, of):
  # E[F]
  # uint16 [0,256*256-1]
  # 1
  E_data = (torch.ones(of, dtype=torch.int) * (torch.tensor([2], dtype=int))) \
    if ((quantize_type == 0) or (mode == 0)) else torch.randint(0, 256, size=(of,), dtype=torch.int)
  ## reshape e_scale_tail data
  # the amount of out channel of tail per complete ddr word 
  E_width = 16
  out_channel_parallel = 64 if mode == 0 else 128 
  E_out_channel_in_word = min(ddr_word_width // E_width, out_channel_parallel, of) #32 or F
  E_tensors = E_data.split(E_out_channel_in_word, dim=0)
  E_tensor_list = [] #tail ddr words in tensor format
  print(f"E tensors shape:")
  for index, E_tensor in enumerate(E_tensors):
      print(f"index: {index} \n E tensor shape: {E_tensor.shape} \n {E_tensor} \n")
      E_data_in_word = ddr_word_width // E_width
      E_num = E_tensor.shape[0]
      # each E word contains 64 E from 64 kernels
      # E_tensor[FP] is a ddr word carrying 64 E
      E_tensor_list.append(F.pad(E_tensor, (0, E_data_in_word - E_num)))
  E_ddr_words = torch.stack(E_tensor_list, dim=0)
  print(f"E ddr words: {E_ddr_words}")
  ## write E into E txt
  with open('./E_tensors.txt', "w") as f:
      for E_ddr_word_index, E_ddr_word in enumerate(E_ddr_words):
      # iterate each E word
          dec_str = ''.join([f'{E_num:06d} ' for E_num in E_ddr_word])
          f.write(dec_str + '\n')
  return E_data, E_ddr_words

def generate_conv_scale_data(quantize_type, mode, of, k):
  # scale[F]
  scale_scalar = (10+7 if (k == 1) else (13+7 if (k == 3) else 15+7)) if (mode == 0) \
    else (3+7 if (k == 1) else (6+7 if (k == 3) else 8+7))
  # uint8 [0,256] scale_scalar
  scale_data = torch.randint(0, 256, size=(of,), dtype=torch.int) \
  if quantize_type == 2 else (torch.ones(of, dtype=torch.int) * torch.tensor([scale_scalar], dtype=int))
  ## reshape scale data
  # the amount of out channel of scale per complete ddr word 
  scale_width = 8
  out_channel_parallel = 64 if mode == 0 else 128 
  scale_out_channel_in_word = min(ddr_word_width // scale_width, out_channel_parallel, of) #64 or F
  scale_tensors = scale_data.split(scale_out_channel_in_word, dim=0)
  scale_tensor_list = [] #scale ddr words in tensor format
  print(f"scale tensors shape:")
  for index, scale_tensor in enumerate(scale_tensors):
      print(f"index: {index} \n scale tensor shape: {scale_tensor.shape} \n {scale_tensor} \n")
      scale_data_in_word = ddr_word_width // scale_width
      scale_num = scale_tensor.shape[0]
      # each scale word contains 64 scale from 64 kernels
      # scale_tensor[FP] is a ddr word carrying 64 scale
      scale_tensor_list.append(F.pad(scale_tensor, (0, scale_data_in_word - scale_num)))
  scale_ddr_words = torch.stack(scale_tensor_list, dim=0)
  print(f"scale ddr words: {scale_ddr_words}")
  ## write scale into scale txt
  with open('./scale_tensors.txt', "w") as f:
      for scale_ddr_word_index, scale_ddr_word in enumerate(scale_ddr_words):
      # iterate each scale word
          dec_str = ''.join([f'{scale_num:03d} ' for scale_num in scale_ddr_word])
          f.write(dec_str + '\n')
  return scale_data, scale_ddr_words

def generate_ddr_txt(mode, weights_ddr_words, bias_ddr_words, E_ddr_words, scale_ddr_words, input_ddr_word_array):
  ## write num in complementary code into txt file.
  ## write DDR words in txt file 
  with open('./DDR_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # weight
      weights_ddr_words_shape = weights_ddr_words.shape
      #turn 2d tensor into 1d tensor array
      weights_ddr_word_array = weights_ddr_words.reshape(-1,).split(split_size=weights_ddr_words_shape[-1], dim=0)
      
      for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_word_array):
      # iterate each weight word
          reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
          if mode == 0:
              hex_str = ''.join([int8_to_hex_complement(weight_num.item()) for weight_num in reverse_weight_ddr_word])
              # print(hex_str + ',\n')
              f.write(hex_str + ',\n')
          else:
              hex_array = []
              reverse_weight_ddr_word_length = reverse_weight_ddr_word.shape[-1]
              assert reverse_weight_ddr_word_length == 512
              for weight_num_index in range(0, reverse_weight_ddr_word_length, 4):
                  # 0,1,2,3,... --> high of index, low of index
                  weight_bit1 = reverse_weight_ddr_word[weight_num_index]
                  weight_bit2 = reverse_weight_ddr_word[weight_num_index+1]
                  weight_bit3 = reverse_weight_ddr_word[weight_num_index+2]
                  weight_bit4 = reverse_weight_ddr_word[weight_num_index+3]
                  weight_str = ''.join([f'{weight_bit1:01b}', f'{weight_bit2:01b}',  f'{weight_bit3:01b}',  f'{weight_bit4:01b}'])
                  weight = int(weight_str, base=2)
                  hex_array.append(f'{weight:01x}')
              hex_str = ''.join(hex_array)
              f.write(hex_str + ',\n')
      # f.write('\n')              
      
      # bias
      bias_ddr_words_shape = bias_ddr_words.shape
      bias_ddr_word_array = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_word_array):
      # iterate each bias word
          reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
          hex_str = ''.join([int8_to_hex_complement(bias_num.item()) for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + ',\n')
      # f.write('\n')
      
      # E
      E_ddr_words_shape = E_ddr_words.shape
      E_ddr_word_array = E_ddr_words.reshape(-1,).split(split_size=E_ddr_words_shape[-1], dim=0)
      for E_ddr_word_index, E_ddr_word in enumerate(E_ddr_word_array):
      # iterate each E word
          for num_index in range(E_ddr_words_shape[-1]-1, -1, -1):
              E_num = E_ddr_word[num_index]
              hex_str = ''.join(f'{E_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          f.write(',\n')
      # f.write('\n')
      
      # scale
      scale_ddr_words_shape = scale_ddr_words.shape
      scale_ddr_word_array = scale_ddr_words.reshape(-1,).split(split_size=scale_ddr_words_shape[-1], dim=0)
      for scale_ddr_word_index, scale_ddr_word in enumerate(scale_ddr_word_array):
      # iterate each scale word
          reverse_scale_ddr_word = torch.flip(scale_ddr_word, dims=[0])
          hex_str = ''.join([f'{scale_num:02x}' for scale_num in reverse_scale_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + ',\n')
      # f.write('\n')    
      
      # input
      input_ddr_word_len = len(input_ddr_word_array)
      # iterate each input word
      for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_word_array):
          reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
          # concate each num in a word to a hex num
          hex_str = ''.join([int8_to_hex_complement(input_num.item()) for input_num in reverse_input_ddr_word])
          # print(f"{hex_str} \n")
          f.write(hex_str)
          if input_ddr_word_index < input_ddr_word_len - 1:
              f.write(',\n')
      f.write(";")

def generate_ddr_init(mode, weights_ddr_words, bias_ddr_words, E_ddr_words, scale_ddr_words, input_ddr_word_array):
  ## write num in complementary code into txt file.
  ## write DDR words in txt file 
  with open('./DDR_init.txt', "w") as f:
      # weight
      weights_ddr_words_shape = weights_ddr_words.shape
      #turn 2d tensor into 1d tensor array
      weights_ddr_word_array = weights_ddr_words.reshape(-1,).split(split_size=weights_ddr_words_shape[-1], dim=0)
      for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_word_array):
      # iterate each weight word
          reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
          if mode == 0:
              hex_str = ''.join([int8_to_hex_complement(weight_num.item()) for weight_num in reverse_weight_ddr_word])
              # print(hex_str + ',\n')
              f.write(hex_str + '\n')
          else:
              hex_array = []
              reverse_weight_ddr_word_length = reverse_weight_ddr_word.shape[-1]
              assert reverse_weight_ddr_word_length == 512
              for weight_num_index in range(0, reverse_weight_ddr_word_length, 4):
                  # 0,1,2,3,... --> high of index, low of index
                  weight_bit1 = reverse_weight_ddr_word[weight_num_index]
                  weight_bit2 = reverse_weight_ddr_word[weight_num_index+1]
                  weight_bit3 = reverse_weight_ddr_word[weight_num_index+2]
                  weight_bit4 = reverse_weight_ddr_word[weight_num_index+3]
                  weight_str = ''.join([f'{weight_bit1:01b}', f'{weight_bit2:01b}',  f'{weight_bit3:01b}',  f'{weight_bit4:01b}'])
                  weight = int(weight_str, base=2)
                  hex_array.append(f'{weight:01x}')
              hex_str = ''.join(hex_array)
              f.write(hex_str + '\n')
      # f.write('\n')   
      
      # bias
      bias_ddr_words_shape = bias_ddr_words.shape
      bias_ddr_word_array = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_word_array):
      # iterate each bias word
          reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
          hex_str = ''.join([int8_to_hex_complement(bias_num.item()) for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + '\n')
      # f.write('\n')
      
      # E
      E_ddr_words_shape = E_ddr_words.shape
      E_ddr_word_array = E_ddr_words.reshape(-1,).split(split_size=E_ddr_words_shape[-1], dim=0)
      for E_ddr_word_index, E_ddr_word in enumerate(E_ddr_word_array):
      # iterate each E word
          for num_index in range(E_ddr_words_shape[-1]-1, -1, -1):
              E_num = E_ddr_word[num_index]
              hex_str = ''.join(f'{E_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          f.write('\n')
      # f.write('\n')
      
      # scale
      scale_ddr_words_shape = scale_ddr_words.shape
      scale_ddr_word_array = scale_ddr_words.reshape(-1,).split(split_size=scale_ddr_words_shape[-1], dim=0)
      for scale_ddr_word_index, scale_ddr_word in enumerate(scale_ddr_word_array):
      # iterate each scale word
          reverse_scale_ddr_word = torch.flip(scale_ddr_word, dims=[0])
          hex_str = ''.join([f'{scale_num:02x}' for scale_num in reverse_scale_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + '\n')
      # f.write('\n')    
      
      # input
      input_ddr_word_len = len(input_ddr_word_array)
      # iterate each input word
      for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_word_array):
          reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
          # concate each num in a word to a hex num
          hex_str = ''.join([int8_to_hex_complement(input_num.item()) for input_num in reverse_input_ddr_word])
          # print(f"{hex_str} \n")
          f.write(hex_str)
          if input_ddr_word_index < input_ddr_word_len - 1:
              f.write('\n')

def generate_input_buf_txt(input_ddr_word_array):
  # input buffer data
  with open('./input_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # input
      input_ddr_word_len = len(input_ddr_word_array)
      # iterate each input word
      for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_word_array):
          reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
          # concate each num in a word to a hex num
          hex_str = ''.join([int8_to_hex_complement(input_num.item()) for input_num in reverse_input_ddr_word])
          # print(f"{hex_str} \n")
          f.write(hex_str)
          if input_ddr_word_index < input_ddr_word_len - 1:
              f.write(',\n')
      f.write(";")

def generate_weight_buf_txt(mode, weights_ddr_words):
  # weight buffer data
  with open('./weight_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      #weight
      weights_ddr_words_shape = weights_ddr_words.shape
      #turn 2d tensor into 1d tensor array
      weights_ddr_word_array = weights_ddr_words.reshape(-1,).split(split_size=weights_ddr_words_shape[-1], dim=0)
      weights_ddr_word_len = len(weights_ddr_word_array)


      for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_word_array):
      # iterate each weight word
          reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
          if mode == 0:
              hex_str = ''.join([int8_to_hex_complement(weight_num.item()) for weight_num in reverse_weight_ddr_word])
              f.write(hex_str)
              if weight_ddr_word_index < weights_ddr_word_len - 1:
                  f.write(',\n')
          else:
              hex_array = []
              reverse_weight_ddr_word_length = reverse_weight_ddr_word.shape[-1]
              assert reverse_weight_ddr_word_length == 512
              for weight_num_index in range(0, reverse_weight_ddr_word_length, 4):
                  # 0,1,2,3,... --> high of index, low of index
                  weight_bit1 = reverse_weight_ddr_word[weight_num_index]
                  weight_bit2 = reverse_weight_ddr_word[weight_num_index+1]
                  weight_bit3 = reverse_weight_ddr_word[weight_num_index+2]
                  weight_bit4 = reverse_weight_ddr_word[weight_num_index+3]
                  weight_str = ''.join([f'{weight_bit1:01b}', f'{weight_bit2:01b}',  f'{weight_bit3:01b}',  f'{weight_bit4:01b}'])
                  weight = int(weight_str, base=2)
                  hex_array.append(f'{weight:01x}')
              hex_str = ''.join(hex_array)
              f.write(hex_str)
              if weight_ddr_word_index < weights_ddr_word_len - 1:
                  f.write(',\n')
      f.write(';')

      # for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_word_array):
      # # iterate each weight word
      #     reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
      #     hex_str = ''.join([int8_to_hex_complement(weight_num.item()) for weight_num in reverse_weight_ddr_word]) \
      #         if mode == 0 else ''.join([f'{weight_num:01b}' for weight_num in reverse_weight_ddr_word])
      #     # print(hex_str + ',\n')
      #     f.write(hex_str)
      #     if weight_ddr_word_index < weights_ddr_word_len - 1:
      #         f.write(',\n')
      # f.write(';')

def generate_bias_buf_txt(bias_ddr_words):
   # bias buffer data
  with open('./bias_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # bias
      bias_ddr_words_shape = bias_ddr_words.shape
      bias_ddr_word_array = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
      bias_ddr_word_len = len(bias_ddr_word_array)
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_word_array):
      # iterate each bias word
          reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
          hex_str = ''.join([int8_to_hex_complement(bias_num.item()) for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if bias_ddr_word_index < bias_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

def generate_bias_buf_init(bias_ddr_words):
  with open('./bias_buffer_init.txt', "w") as f:
      # bias
      bias_ddr_words_shape = bias_ddr_words.shape
      bias_ddr_word_array = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
      bias_ddr_word_len = len(bias_ddr_word_array)
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_word_array):
      # iterate each bias word
          reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
          hex_str = ''.join([int8_to_hex_complement(bias_num.item()) for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if bias_ddr_word_index < bias_ddr_word_len - 1:
              f.write('\n')

def generate_E_buf_txt(E_ddr_words):
   # E buffer data
  with open('./E_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # E
      E_ddr_words_shape = E_ddr_words.shape
      E_ddr_word_array = E_ddr_words.reshape(-1,).split(split_size=E_ddr_words_shape[-1], dim=0)
      E_ddr_word_len = len(E_ddr_word_array)
      for E_ddr_word_index, E_ddr_word in enumerate(E_ddr_word_array):
      # iterate each E word
          for num_index in range(E_ddr_words_shape[-1]-1, -1, -1):
              E_num = E_ddr_word[num_index]
              hex_str = ''.join(f'{E_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          if E_ddr_word_index < E_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

def generate_E_buf_init(E_ddr_words):
  with open('./E_buffer_init.txt', "w") as f:
      # E
      E_ddr_words_shape = E_ddr_words.shape
      E_ddr_word_array = E_ddr_words.reshape(-1,).split(split_size=E_ddr_words_shape[-1], dim=0)
      E_ddr_word_len = len(E_ddr_word_array)
      for E_ddr_word_index, E_ddr_word in enumerate(E_ddr_word_array):
      # iterate each E word
          for num_index in range(E_ddr_words_shape[-1]-1, -1, -1):
              E_num = E_ddr_word[num_index]
              hex_str = ''.join(f'{E_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          if E_ddr_word_index < E_ddr_word_len - 1:
              f.write('\n')

def generate_scale_buf_txt(scale_ddr_words):
  # scale buffer data
  with open('./scale_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # scale
      scale_ddr_words_shape = scale_ddr_words.shape
      scale_ddr_word_array = scale_ddr_words.reshape(-1,).split(split_size=scale_ddr_words_shape[-1], dim=0)
      scale_ddr_word_len = len(scale_ddr_word_array)
      for scale_ddr_word_index, scale_ddr_word in enumerate(scale_ddr_word_array):
      # iterate each scale word
          reverse_scale_ddr_word = torch.flip(scale_ddr_word, dims=[0])
          hex_str = ''.join([f'{scale_num:02x}' for scale_num in reverse_scale_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if scale_ddr_word_index < scale_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')
  
def generate_scale_buf_init(scale_ddr_words):
  with open('./scale_buffer_init.txt', "w") as f:
      # scale
      scale_ddr_words_shape = scale_ddr_words.shape
      scale_ddr_word_array = scale_ddr_words.reshape(-1,).split(split_size=scale_ddr_words_shape[-1], dim=0)
      scale_ddr_word_len = len(scale_ddr_word_array)
      for scale_ddr_word_index, scale_ddr_word in enumerate(scale_ddr_word_array):
      # iterate each scale word
          reverse_scale_ddr_word = torch.flip(scale_ddr_word, dims=[0])
          hex_str = ''.join([f'{scale_num:02x}' for scale_num in reverse_scale_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if scale_ddr_word_index < scale_ddr_word_len - 1:
              f.write('\n')

def generate_instr_args_init(mode,k,s,p,of,ox,oy,ix,iy,nif,input_base_adr):
  pixels_in_row = 32
  buffers_num = 3
  pixels_in_row_real = 32
  buffers_num_real = 3
  
  # 定义变量
  mode_integer = mode
  k_real = k
  s_real = s
  p_real = p
  of_integer = of
  of_in_2pow_integer = int(math.log(of_integer, 2))
  ox_integer = ox
  ox_in_2pow_integer = int(math.log(ox_integer, 2))
  oy_integer = oy
  ix_integer = ix
  ix_in_2pow_integer = int(math.log(ix_integer, 2))
  iy_integer = iy
  nif_integer = nif
  if nif == 3:
      nif += 1
  nif_in_2pow_integer = int(math.log(nif, 2))
  row_num_real = 64 if mode_integer == 0 else 128  # 128

  # 计算表达式
  nif_mult_k_mult_k_integer = nif_integer * math.floor(k_real) * math.floor(k_real)  # nif * k * k
  N_chunks_integer = (
      math.ceil(ox_integer / pixels_in_row_real) *
      math.ceil(oy_integer / buffers_num_real) *
      math.ceil(of_integer / row_num_real)
  )
  bias_layer_base_buf_adr_rd_integer = 0
  E_layer_base_buf_adr_rd_integer = 0
  scale_layer_base_buf_adr_rd_integer = 0
  weights_layer_base_ddr_adr_rd_integer = 0
  input_ddr_layer_base_adr_integer = input_base_adr
  output_ddr_layer_base_adr_integer = 0
  ix_index_num_real = math.ceil(ix_integer / pixels_in_row_real)
  iy_index_num_real = math.ceil(iy_integer)
  tilex_first_ix_word_num_real = math.ceil(((pixels_in_row - 1) * s_real + k_real - p_real) / pixels_in_row)
  # tilex mid rectified
  tilex_last_ix_word_num_real = s_real if (((ix_index_num_real - tilex_first_ix_word_num_real) % s_real) == 0) \
  else ((ix_index_num_real - tilex_first_ix_word_num_real) % s_real)
  tilex_mid_ix_word_num_real = s_real
  tiley_first_iy_row_num_real = (buffers_num - 1) * s_real + k_real - p_real
  # tiley mid rectified
  tiley_last_iy_row_num_real = (buffers_num * s_real) if ((iy_index_num_real - tiley_first_iy_row_num_real) % (buffers_num * s_real) == 0) \
  else ((iy_index_num_real - tiley_first_iy_row_num_real) % (buffers_num * s_real))
  tiley_mid_iy_row_num_real = buffers_num * s_real
  of_div_row_num_ceil_real = math.ceil(of_integer / row_num_real)
  tiley_first_tilex_first_split_size_real = math.ceil(tiley_first_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_first_tilex_last_split_size_real = math.ceil(tiley_first_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_first_tilex_mid_split_size_real = math.ceil(tiley_first_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_last_tilex_first_split_size_real = math.ceil(tiley_last_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_last_tilex_last_split_size_real = math.ceil(tiley_last_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_last_tilex_mid_split_size_real = math.ceil(tiley_last_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_mid_tilex_first_split_size_real = math.ceil(tiley_mid_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_mid_tilex_last_split_size_real = math.ceil(tiley_mid_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real)
  tiley_mid_tilex_mid_split_size_real = math.ceil(tiley_mid_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real)
  instr_args_init_mem = [
      mode_integer,
      k_real,
      s_real,
      p_real,
      of_integer,
      of_in_2pow_integer,
      ox_integer,
      ox_in_2pow_integer,
      oy_integer,
      ix_integer,
      ix_in_2pow_integer,
      iy_integer,
      nif_integer,
      nif_in_2pow_integer,
      nif_mult_k_mult_k_integer,
      N_chunks_integer,
      E_layer_base_buf_adr_rd_integer,
      bias_layer_base_buf_adr_rd_integer,
      scale_layer_base_buf_adr_rd_integer,
      weights_layer_base_ddr_adr_rd_integer,
      input_ddr_layer_base_adr_integer,
      output_ddr_layer_base_adr_integer,
      tilex_first_ix_word_num_real,
      tilex_last_ix_word_num_real,
      tilex_mid_ix_word_num_real,
      tiley_first_iy_row_num_real,
      tiley_last_iy_row_num_real,
      tiley_mid_iy_row_num_real,
      ix_index_num_real,
      iy_index_num_real,
      of_div_row_num_ceil_real,
      tiley_first_tilex_first_split_size_real,
      tiley_first_tilex_last_split_size_real,
      tiley_first_tilex_mid_split_size_real,
      tiley_last_tilex_first_split_size_real,
      tiley_last_tilex_last_split_size_real,
      tiley_last_tilex_mid_split_size_real,
      tiley_mid_tilex_first_split_size_real,
      tiley_mid_tilex_last_split_size_real,
      tiley_mid_tilex_mid_split_size_real
  ]
  # 将 instr_args_init_mem 中的每个元素写入到 instr_args_init.txt 文件中
  with open("./instr_args_init.txt", "w") as file:
      for value in instr_args_init_mem:
          hex_value = format(value, '08X')  # 转换为 8 位 16 进制数，不足 8 位时前面补零
          file.write(f"{hex_value}\n")

  instr_args_bit_lengths = [
      4,
      4,
      4,
      4,
      16,
      4,
      16,
      4,
      16,
      16,
      4,
      16,
      16,
      4,
      32,
      32,
      16,
      16,
      16,
      32,
      32,
      32,
      8,
      8,
      8,
      8,
      8,
      8,
      16,
      16,
      8,
      8,
      8,
      8,
      8,
      8,
      8,
      8,
      8,
      8
  ]
  with open("./instr_args_hex_num_init.txt", "w") as file:
    hex_value = combine_parameters_to_hex(instr_args_init_mem, instr_args_bit_lengths)
    file.write(f"{hex_value}\n")

def combine_parameters_to_hex(params, bit_lengths):
    """
    将参数组合成一个512位的二进制数并转换为16进制。

    :param params: 参数列表，包含38个参数的值
    :param bit_lengths: 每个参数对应的二进制位数列表
    :return: 512位二进制数的16进制表示
    """
    if len(params) != len(bit_lengths):
        raise ValueError("参数数量和位数列表长度不匹配！")
    
    result = 0  # 初始化结果为0
    offset = 0  # 位偏移量

    for param, bit_length in zip(params, bit_lengths):
        # 检查参数是否超出指定的位数范围
        if param >= (1 << bit_length):
            raise ValueError(f"参数值 {param} 超出了 {bit_length} 位的范围！")
        
        # 将参数值左移至正确的位置并拼接到结果中
        result |= param << offset
        offset += bit_length  # 更新偏移量

    # 确保结果为512位
    if offset > 512:
        raise ValueError("参数总位数超过了512位！")
    
    # 将结果转换为16进制并返回
    hex_result = hex(result)[2:].upper().zfill(128)  # 512位对应128个16进制字符
    return hex_result

if __name__ == "__main__":
    generate_conv_E_quantize_tests()