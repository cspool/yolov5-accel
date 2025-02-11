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

def generate_conv_tests():
    # (k,s,p)=(1,1,0)/(3,1,1)/(3,2,1)/(6,2,2)四种卷积各2组（w1a8和w8a8）用例,
    # 过程数值限制在[-(1<<19),(1<<19)-1]内。
    # 每种卷积下分3种情况测试，分别是(tail=1)&&(rank=0), rank=0, tail和rank任一uint8数。
  conv_types = [0,1,2,3] #  (1,1,0)/(3,1,1)/(3,2,1)/(6,2,2)
  mode_types = [0,1] # w8a8/w1a8
  quantify_types = [0,1,2] #(tail=1)&&(rank=0), rank=0, tail和rank任一uint8数

  # for conv_type in conv_types:
  #    for mode_type in mode_types:
  #       for quantify_type in quantify_types:
  #          conv_test(conv_type, mode_type, quantify_type)
  
  conv_type, mode_type, quantify_type = (0,0,0)
  conv_test(conv_type, mode_type, quantify_type)

def conv_test(conv_type, mode_type, quantify_type):
  # def basic conv op
  mode = mode_type
  k,s,p = conv_type_mapping[conv_type]
  of = 128
  ox = 128
  oy = 128
  ix = ox if s == 1 else ox*2
  iy = oy if s == 1 else oy*2
  nif = 4

  # generate input and argument data 
  generate_instr_args_init(mode, k, s, p, of, ox, oy, ix, iy, nif)
  weight_data, weights_ddr_words = generate_conv_weight_data(mode, of, nif, k)
  bias_data, bias_ddr_words = generate_conv_bias_data(mode, of)
  tail_data, tail_ddr_words = generate_conv_tail_data(quantify_type, mode, of)
  rank_data, rank_ddr_words = generate_conv_rank_data(quantify_type, mode, of)
  input_data, input_ddr_word_array = generate_conv_input_data(nif, iy, ix)
  generate_ddr_txt(mode, weights_ddr_words, bias_ddr_words, tail_ddr_words, rank_ddr_words, input_ddr_word_array)
  generate_weight_buf_txt(mode, weights_ddr_words)
  generate_bias_buf_txt(bias_ddr_words)
  generate_tail_buf_txt(tail_ddr_words)
  generate_rank_buf_txt(rank_ddr_words)
  generate_input_buf_txt(input_ddr_word_array)

  # standard conv
  input_data = input_data.view(1, nif, iy, ix)
  bias_data = bias_data.view(of)
  conv_out = F.conv2d(input_data, weight_data, bias_data, stride=s, padding=p)
  # 调整 tail 和 rank 的形状以匹配输出张量
  tail_data = tail_data.view(1, of, 1, 1)  # 调整为 (1, of, 1, 1)
  rank_data = rank_data.view(1, of, 1, 1)  # 调整为 (1, of, 1, 1)
  # 对每个输出通道的值应用 ReLU 激活函数
  conv_out = F.relu(conv_out)
  # 将每个通道的值乘以对应的 tail[i]
  conv_out = conv_out * tail_data  # 使用广播机制
  # 对每个通道的值进行逻辑右移 rank[i] 位
  output = torch.bitwise_right_shift(conv_out, rank_data)  # 使用广播机制


def generate_conv_weight_data(mode, of, nif, k):
  # generate and return conv weights, then reshape & split it and return it
  # weights[F, ID*K*K]
  img2col_weight_data = torch.randint(0, 256, size=(of, nif*k * k), dtype=torch.uint8) \
  if mode == 0 else torch.randint(0, 2, size=(of, nif*k * k), dtype=torch.uint8)
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
  input_data = torch.randint(0, 256, size=(nif, iy, ix), dtype=torch.uint8)
  # reshape input tensor into ddr words
  activation_x_num_in_ddr_word = 32
  activation_in_channel_num_in_ddr_word = 2 # ddr_word_width / activation_x_num_in_ddr_word / weight_word_width
  assert nif % 2 == 0 and ix % 32 == 0
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
  bias_data = torch.randint(0, 256, size=(1, of), dtype=torch.uint8)
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

def generate_conv_tail_data(quantify_type, mode, of):
  # e_scale_tail[F]
  e_scale_tail_data = torch.ones(of, dtype=torch.int) \
  if quantify_type == 0 else torch.randint(0, 256*256, size=(of,), dtype=torch.int)
  ## reshape e_scale_tail data
  # the amount of out channel of tail per complete ddr word 
  e_scale_tail_width = 16
  out_channel_parallel = 64 if mode == 0 else 128 
  tail_out_channel_in_word = min(ddr_word_width // e_scale_tail_width, out_channel_parallel, of) #32 or F
  tail_tensors = e_scale_tail_data.split(tail_out_channel_in_word, dim=0)
  tail_tensor_list = [] #tail ddr words in tensor format
  print(f"tail tensors shape:")
  for index, tail_tensor in enumerate(tail_tensors):
      print(f"index: {index} \n tail tensor shape: {tail_tensor.shape} \n {tail_tensor} \n")
      tail_data_in_word = ddr_word_width // e_scale_tail_width
      tail_num = tail_tensor.shape[0]
      # each tail word contains 64 bias from 64 kernels
      # tail_tensor[FP] is a ddr word carrying 64 bias
      tail_tensor_list.append(F.pad(tail_tensor, (0, tail_data_in_word - tail_num)))
  tail_ddr_words = torch.stack(tail_tensor_list, dim=0)
  print(f"tail ddr words: {tail_ddr_words}")
  ## write tail into tail txt
  with open('./tail_tensors.txt', "w") as f:
      for tail_ddr_word_index, tail_ddr_word in enumerate(tail_ddr_words):
      # iterate each tail word
          dec_str = ''.join([f'{tail_num:06d} ' for tail_num in tail_ddr_word])
          f.write(dec_str + '\n')
  return e_scale_tail_data, tail_ddr_words

def generate_conv_rank_data(quantify_type, mode, of):
  # e_scale_rank[F]
  e_scale_rank_data = torch.randint(0, 256, size=(of,), dtype=torch.int) \
  if quantify_type == 2 else torch.zeros(of, dtype=torch.int)
  ## reshape e_scale_rank data
  # the amount of out channel of tail per complete ddr word 
  e_scale_rank_width = 8
  out_channel_parallel = 64 if mode == 0 else 128 
  rank_out_channel_in_word = min(ddr_word_width // e_scale_rank_width, out_channel_parallel, of) #64 or F
  rank_tensors = e_scale_rank_data.split(rank_out_channel_in_word, dim=0)
  rank_tensor_list = [] #rank ddr words in tensor format
  print(f"rank tensors shape:")
  for index, rank_tensor in enumerate(rank_tensors):
      print(f"index: {index} \n rank tensor shape: {rank_tensor.shape} \n {rank_tensor} \n")
      rank_data_in_word = ddr_word_width // e_scale_rank_width
      rank_num = rank_tensor.shape[0]
      # each rank word contains 64 bias from 64 kernels
      # rank_tensor[FP] is a ddr word carrying 64 bias
      rank_tensor_list.append(F.pad(rank_tensor, (0, rank_data_in_word - rank_num)))
  rank_ddr_words = torch.stack(rank_tensor_list, dim=0)
  print(f"rank ddr words: {rank_ddr_words}")
  ## write rank into rank txt
  with open('./rank_tensors.txt', "w") as f:
      for rank_ddr_word_index, rank_ddr_word in enumerate(rank_ddr_words):
      # iterate each rank word
          dec_str = ''.join([f'{rank_num:03d} ' for rank_num in rank_ddr_word])
          f.write(dec_str + '\n')
  return e_scale_rank_data, rank_ddr_words

def generate_ddr_txt(mode, weights_ddr_words, bias_ddr_words, tail_ddr_words, rank_ddr_words, input_ddr_word_array):
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
          hex_str = ''.join([f'{weight_num:02x}' for weight_num in reverse_weight_ddr_word]) \
              if mode == 0 else ''.join([f'{weight_num:01b}' for weight_num in reverse_weight_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + ',\n')
      # f.write('\n')
      # bias
      bias_ddr_words_shape = bias_ddr_words.shape
      bias_ddr_word_array = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
      for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_word_array):
      # iterate each bias word
          reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
          hex_str = ''.join([f'{bias_num:02x}' for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + ',\n')
      # f.write('\n')
      # tail
      tail_ddr_words_shape = tail_ddr_words.shape
      tail_ddr_word_array = tail_ddr_words.reshape(-1,).split(split_size=tail_ddr_words_shape[-1], dim=0)
      for tail_ddr_word_index, tail_ddr_word in enumerate(tail_ddr_word_array):
      # iterate each tail word
          for num_index in range(tail_ddr_words_shape[-1]-1, -1, -1):
              tail_num = tail_ddr_word[num_index]
              hex_str = ''.join(f'{tail_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          f.write(',\n')
      # f.write('\n')
      # rank
      rank_ddr_words_shape = rank_ddr_words.shape
      rank_ddr_word_array = rank_ddr_words.reshape(-1,).split(split_size=rank_ddr_words_shape[-1], dim=0)
      for rank_ddr_word_index, rank_ddr_word in enumerate(rank_ddr_word_array):
      # iterate each rank word
          reverse_rank_ddr_word = torch.flip(rank_ddr_word, dims=[0])
          hex_str = ''.join([f'{rank_num:02x}' for rank_num in reverse_rank_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str + ',\n')
      # f.write('\n')    
      # input
      input_ddr_word_len = len(input_ddr_word_array)
      # iterate each input word
      for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_word_array):
          reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
          # concate each num in a word to a hex num
          hex_str = ''.join([f'{input_num:02x}' for input_num in reverse_input_ddr_word])
          # print(f"{hex_str} \n")
          f.write(hex_str)
          if input_ddr_word_index < input_ddr_word_len - 1:
              f.write(',\n')
      f.write(";")

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
          hex_str = ''.join([f'{input_num:02x}' for input_num in reverse_input_ddr_word])
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
          hex_str = ''.join([f'{weight_num:02x}' for weight_num in reverse_weight_ddr_word]) \
              if mode == 1 else ''.join([f'{weight_num:01b}' for weight_num in reverse_weight_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if weight_ddr_word_index < weights_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

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
          hex_str = ''.join([f'{bias_num:02x}' for bias_num in reverse_bias_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if bias_ddr_word_index < bias_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

def generate_tail_buf_txt(tail_ddr_words):
   # tail buffer data
  with open('./tail_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # tail
      tail_ddr_words_shape = tail_ddr_words.shape
      tail_ddr_word_array = tail_ddr_words.reshape(-1,).split(split_size=tail_ddr_words_shape[-1], dim=0)
      tail_ddr_word_len = len(tail_ddr_word_array)
      for tail_ddr_word_index, tail_ddr_word in enumerate(tail_ddr_word_array):
      # iterate each tail word
          for num_index in range(tail_ddr_words_shape[-1]-1, -1, -1):
              tail_num = tail_ddr_word[num_index]
              hex_str = ''.join(f'{tail_num:04x}')
              # print(hex_str + ',\n')
              f.write(hex_str)
          if tail_ddr_word_index < tail_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

def generate_rank_buf_txt(rank_ddr_words):
  # rank buffer data
  with open('./rank_buffer_data.txt', "w") as f:
      f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
      # rank
      rank_ddr_words_shape = rank_ddr_words.shape
      rank_ddr_word_array = rank_ddr_words.reshape(-1,).split(split_size=rank_ddr_words_shape[-1], dim=0)
      rank_ddr_word_len = len(rank_ddr_word_array)
      for rank_ddr_word_index, rank_ddr_word in enumerate(rank_ddr_word_array):
      # iterate each rank word
          reverse_rank_ddr_word = torch.flip(rank_ddr_word, dims=[0])
          hex_str = ''.join([f'{rank_num:02x}' for rank_num in reverse_rank_ddr_word])
          # print(hex_str + ',\n')
          f.write(hex_str)
          if rank_ddr_word_index < rank_ddr_word_len - 1:
              f.write(',\n')
      f.write(';')

def generate_instr_args_init(mode,k,s,p,of,ox,oy,ix,iy,nif):
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
  ox_integer = ox
  oy_integer = oy
  ix_integer = ix
  ix_in_2pow_integer = int(math.log(ix_integer, 2))
  iy_integer = iy
  nif_integer = nif
  nif_in_2pow_integer = int(math.log(nif_integer, 2))
  row_num_real = 64 if mode_integer == 0 else 128  # 128

  # 计算表达式
  nif_mult_k_mult_k_integer = nif_integer * math.floor(k_real) * math.floor(k_real)  # nif * k * k
  N_chunks_integer = (
      math.ceil(ox_integer / pixels_in_row_real) *
      math.ceil(oy_integer / buffers_num_real) *
      math.ceil(of_integer / row_num_real)
  )
  bias_layer_base_buf_adr_rd_integer = 0
  tail_layer_base_buf_adr_rd_integer = 0
  rank_layer_base_buf_adr_rd_integer = 0
  weights_layer_base_ddr_adr_rd_integer = 0
  input_ddr_layer_base_adr_integer = 16 #xxxx
  # 假设 pixels_in_row 和 buffers_num 已经定义
  tilex_first_ix_word_num_real = math.ceil(((pixels_in_row - 1) * s_real + k_real - p_real) / pixels_in_row)
  tilex_last_ix_word_num_real = 0 if (ox_integer % pixels_in_row == 0) else math.ceil(((ox_integer % pixels_in_row - 1) * s_real + k_real - p_real) / pixels_in_row)
  tilex_mid_ix_word_num_real = s_real
  tiley_first_iy_row_num_real = (buffers_num - 1) * s_real + k_real - p_real
  tiley_last_iy_row_num_real = (oy_integer % buffers_num) * s_real
  tiley_mid_iy_row_num_real = buffers_num * s_real
  ix_index_num_real = math.ceil(ix_integer / pixels_in_row_real)
  # iy_index_num_real = math.ceil(iy_integer / buffers_num_real)
  iy_index_num_real = math.ceil(iy_integer)
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
      ox_integer,
      oy_integer,
      ix_integer,
      ix_in_2pow_integer,
      iy_integer,
      nif_integer,
      nif_in_2pow_integer,
      row_num_real,
      pixels_in_row_real,
      buffers_num_real,
      nif_mult_k_mult_k_integer,
      N_chunks_integer,
      bias_layer_base_buf_adr_rd_integer,
      tail_layer_base_buf_adr_rd_integer,
      rank_layer_base_buf_adr_rd_integer,
      weights_layer_base_ddr_adr_rd_integer,
      input_ddr_layer_base_adr_integer,
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

def collect_result(of, oy, ox):
    # collect the result from txt file
    conv_result = torch.randint(0,127,size=(of, oy, ox), dtype=torch.int8)

    return conv_result

if __name__ == "__main__":
    generate_conv_tests()