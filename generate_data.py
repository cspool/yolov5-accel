import numpy as np
import math
import torch
import torch.nn.functional as F

# 假设参数
input_channels = 2  # 输入通道数 512
output_channels = 128  # 输出通道数（卷积核的编号）1024
kernel_height = 3  # 卷积核的高度
kernel_width = 3  # 卷积核的宽度
stride = 1  # 步长
padding = 1  # 填充

input_height = 128  # 输入的高度和宽度 128
input_width = 128

# ddr arguments
ddr_word_width = 512
activation_word_width = 8
weight_word_width = 8 # 8 or 1
out_channel_parallel = 64 if weight_word_width == 8 else 128 
# 64 or 128, cannot be less because hardware adr mapping is based a static parallel
bias_word_width = 8
e_scale_tail_width = 16
e_scale_rank_width = 8

## generate data
# weights[F, ID*K*K]
weights = torch.randint(0, 256, size=(output_channels, input_channels*kernel_height * kernel_width), dtype=torch.uint8) \
if weight_word_width == 8 else torch.randint(0, 2, size=(output_channels, input_channels*kernel_height * kernel_width), dtype=torch.uint8)


weights_3d = weights.reshape(output_channels, input_channels, kernel_height, kernel_width)

# input[ID, IH, IW]
# input channel num should be an even num. if not, expand 3 channels -> 4 channels, last channel is 0
input_data = torch.randint(0, 256, size=(input_channels, input_height, input_width), dtype=torch.uint8)

# bias[1, F]
bias_data = torch.randint(0, 256, size=(1, output_channels), dtype=torch.uint8)

# e_scale_tail[F]
e_scale_tail_data = torch.randint(0, 256*256, size=(output_channels,), dtype=torch.uint16)
e_scale_tail_data = torch.ones_like(e_scale_tail_data)

# e_scale_rank[F]
e_scale_rank_data = torch.randint(0, 256, size=(output_channels,), dtype=torch.uint8)
e_scale_rank_data = torch.zeros_like(e_scale_rank_data)

## reshape data in DDR word
# reshape input tensor into ddr words
activation_x_num_in_ddr_word = 32
activation_in_channel_num_in_ddr_word = 2 # ddr_word_width / activation_x_num_in_ddr_word / weight_word_width

assert input_channels % 2 == 0 and input_width % 32 == 0

# reshape input data
# (C, H, W) ---> (H, W/32, C/2, 32*2); input ddr words in tensor format
input_tensor = input_data.view(input_channels // 2, 2, input_height, input_width // 32, 32)\
    .permute(2, 3, 0, 1, 4).contiguous().view(input_height, input_width // 32, input_channels // 2, 64)

print("Input data shape (Input Channels, Input Height, Input Width):", input_data.shape)
print(f"input tensors shape: {input_tensor.shape}")
print(input_tensor)

input_tensor_shape = input_tensor.shape
input_ddr_words = input_tensor.reshape(-1).split(split_size=input_tensor_shape[-1], dim=0)
    
## write input into input txt
with open('./input_tensors.txt', "w") as f:
    for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_words):
    # iterate each input word
        dec_str = ''.join([f'{input_num:03d} ' for input_num in input_ddr_word])
        f.write(dec_str + '\n')

## reshape weight data
# the amount of out channel of weights per complete ddr word
weights_out_channel_in_word = min(ddr_word_width // weight_word_width, out_channel_parallel, output_channels) #64 or 128 or F

# weights_tensor[FP, ID*K*K]
weights_tensors = weights.split(weights_out_channel_in_word, dim=0)

weights_tensor_list = []
print("Weights shape (Output Channels, Input Channels, Kernel Height, Kernel Width):", weights_3d.shape)
print(f"weight tensors shape:")
for index, weights_tensor in enumerate(weights_tensors):
    print(f"index: {index} \n weights tensor shape: {weights_tensor.shape} \n {weights_tensor} \n")
    
    weights_data_in_word = ddr_word_width // weight_word_width
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

## reshape bias data
# the amount of out channel of bias per complete ddr word 
bias_out_channel_in_word = min(ddr_word_width // bias_word_width, out_channel_parallel, output_channels) #64 or F

bias_tensors = bias_data.split(bias_out_channel_in_word, dim=1)
bias_tensor_list = [] #bias ddr words in tensor format
print(f"bias tensors shape:")
for index, bias_tensor in enumerate(bias_tensors):
    print(f"index: {index} \n bias tensor shape: {bias_tensor.shape} \n {bias_tensor} \n")
    
    bias_data_in_word = ddr_word_width // bias_word_width
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

## reshape e_scale_tail data
# the amount of out channel of tail per complete ddr word 
tail_out_channel_in_word = min(ddr_word_width // e_scale_tail_width, out_channel_parallel, output_channels) #32 or F

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

## reshape e_scale_rank data
# the amount of out channel of tail per complete ddr word 
rank_out_channel_in_word = min(ddr_word_width // e_scale_rank_width, out_channel_parallel, output_channels) #64 or F

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


print("---------")
    
## write DDR words in txt file 
with open('./DDR_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    # weight
    weights_ddr_words_shape = weights_ddr_words.shape
    weights_ddr_words = weights_ddr_words.reshape(-1,).split(split_size=weights_ddr_words_shape[-1], dim=0)
    
    for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_words):
    # iterate each weight word
        reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
        hex_str = ''.join([f'{weight_num:02x}' for weight_num in reverse_weight_ddr_word]) \
            if weight_word_width == 8 else ''.join([f'{weight_num:01b}' for weight_num in reverse_weight_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str + ',\n')
    
    f.write('\n')
    
    # bias
    bias_ddr_words_shape = bias_ddr_words.shape
    bias_ddr_words = bias_ddr_words.reshape(-1,).split(split_size=bias_ddr_words_shape[-1], dim=0)
    
    for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_words):
    # iterate each bias word
        reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
        hex_str = ''.join([f'{bias_num:02x}' for bias_num in reverse_bias_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str + ',\n')
    
    f.write('\n')
    
    # tail
    tail_ddr_words_shape = tail_ddr_words.shape
    tail_ddr_words = tail_ddr_words.reshape(-1,).split(split_size=tail_ddr_words_shape[-1], dim=0)
     
    for tail_ddr_word_index, tail_ddr_word in enumerate(tail_ddr_words):
    # iterate each tail word

        for num_index in range(tail_ddr_words_shape[-1]-1, -1, -1):
            tail_num = tail_ddr_word[num_index]
            hex_str = ''.join(f'{tail_num:04x}')
            # print(hex_str + ',\n')
            f.write(hex_str)
        f.write(',\n')
        
    f.write('\n')
    
    # rank
    rank_ddr_words_shape = rank_ddr_words.shape
    rank_ddr_words = rank_ddr_words.reshape(-1,).split(split_size=rank_ddr_words_shape[-1], dim=0)
    
    for rank_ddr_word_index, rank_ddr_word in enumerate(rank_ddr_words):
    # iterate each rank word
        reverse_rank_ddr_word = torch.flip(rank_ddr_word, dims=[0])
        hex_str = ''.join([f'{rank_num:02x}' for rank_num in reverse_rank_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str + ',\n')
    
    f.write('\n')
            
    # input
    input_ddr_word_len = len(input_ddr_words)
    
    # iterate each input word
    for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_words):
        
        reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
        # concate each num in a word to a hex num
        hex_str = ''.join([f'{input_num:02x}' for input_num in reverse_input_ddr_word])
        # print(f"{hex_str} \n")
        f.write(hex_str)
        if input_ddr_word_index < input_ddr_word_len - 1:
            f.write(',\n')

    f.write(";")
    
# input buffer data
with open('./input_buffer_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    # input
    input_ddr_word_len = len(input_ddr_words)
    
    # iterate each input word
    for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_words):
        
        reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
        # concate each num in a word to a hex num
        hex_str = ''.join([f'{input_num:02x}' for input_num in reverse_input_ddr_word])
        # print(f"{hex_str} \n")
        f.write(hex_str)
        if input_ddr_word_index < input_ddr_word_len - 1:
            f.write(',\n')

    f.write(";")
    
# weight buffer data
with open('./weight_buffer_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    #weight
    weights_ddr_word_len = len(weights_ddr_words)
    
    for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_words):
    # iterate each weight word
        reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
        hex_str = ''.join([f'{weight_num:02x}' for weight_num in reverse_weight_ddr_word]) \
            if weight_word_width == 8 else ''.join([f'{weight_num:01b}' for weight_num in reverse_weight_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str)
        if weight_ddr_word_index < weights_ddr_word_len - 1:
            f.write(',\n')
    
    f.write(';')
    
# bias buffer data
with open('./bias_buffer_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    # bias
    bias_ddr_word_len = len(bias_ddr_words)
    for bias_ddr_word_index, bias_ddr_word in enumerate(bias_ddr_words):
    # iterate each bias word
        reverse_bias_ddr_word = torch.flip(bias_ddr_word, dims=[0])
        hex_str = ''.join([f'{bias_num:02x}' for bias_num in reverse_bias_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str)
        if bias_ddr_word_index < bias_ddr_word_len - 1:
            f.write(',\n')
    f.write(';')

# tail buffer data
with open('./tail_buffer_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    # tail
    tail_ddr_word_len = len(tail_ddr_words)
    for tail_ddr_word_index, tail_ddr_word in enumerate(tail_ddr_words):
    # iterate each tail word

        for num_index in range(tail_ddr_words_shape[-1]-1, -1, -1):
            tail_num = tail_ddr_word[num_index]
            hex_str = ''.join(f'{tail_num:04x}')
            # print(hex_str + ',\n')
            f.write(hex_str)
        
        if tail_ddr_word_index < tail_ddr_word_len - 1:
            f.write(',\n')
    f.write(';')

# rank buffer data
with open('./rank_buffer_data.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    # rank
    rank_ddr_word_len = len(rank_ddr_words)
    for rank_ddr_word_index, rank_ddr_word in enumerate(rank_ddr_words):
    # iterate each rank word
        reverse_rank_ddr_word = torch.flip(rank_ddr_word, dims=[0])
        hex_str = ''.join([f'{rank_num:02x}' for rank_num in reverse_rank_ddr_word])
        # print(hex_str + ',\n')
        f.write(hex_str)
        if rank_ddr_word_index < rank_ddr_word_len - 1:
            f.write(',\n')
    f.write(';')