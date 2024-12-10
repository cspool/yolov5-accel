import numpy as np
import math
import torch
import torch.nn.functional as F

# 假设参数
input_channels = 2  # 输入通道数 5112
output_channels = 129  # 输出通道数（卷积核的编号）1024
kernel_height = 3  # 卷积核的高度
kernel_width = 3  # 卷积核的宽度
stride = 1  # 步长
padding = 0  # 填充

input_height = 32  # 输入的高度和宽度 128
input_width = 32

weights = torch.randint(0, 256, size=(output_channels, input_channels*kernel_height * kernel_width), dtype=torch.uint8)

weights_3d = weights.reshape(output_channels, input_channels, kernel_height, kernel_width)

# input channel num should be an even num. if not, expand 3 channels -> 4 channels, last channel is 0
input_data = torch.randint(0, 256, size=(input_channels, input_height, input_width), dtype=torch.uint8)

# ddr arguments
ddr_word_width = 512
activation_word_width = 8
weight_word_width = 8 # 8 or 1

# reshape input tensor into ddr words
activation_x_num_in_ddr_word = 32
activation_in_channel_num_in_ddr_word = 2

assert input_channels % 2 == 0 and input_width % 32 == 0


##generate data
# (C, H, W) ---> (H, W/32, C/2, 32*2)
input_tensor = input_data.view(input_channels // 2, 2, input_height, input_width // 32, 32)\
    .permute(2, 3, 0, 1, 4).contiguous().view(input_height, input_width // 32, input_channels // 2, 64)

print("Input data shape (Input Channels, Input Height, Input Width):", input_data.shape)
print(f"input tensors shape: {input_tensor.shape}")
print(input_tensor)

## reshape weight tensor into ddr words
# the amount of weights word can occupy a complete ddr word 
weights_out_channel_in_word = ddr_word_width // weight_word_width
weights_word_num = output_channels // weights_out_channel_in_word

# the amount of half word to transmis the rest weights
weights_out_channel_in_half = output_channels % weights_out_channel_in_word
weights_half_num = 1 if weights_out_channel_in_half > 0 else 0

# weights tensor reshape in ddr word 
split_dim = 0
 
weights_sizes = [weights_out_channel_in_word, ] * weights_word_num + [weights_out_channel_in_half,] \
    if weights_half_num > 0 else [weights_out_channel_in_word, ] * weights_word_num
    
# every weight tensor is a [k*k*ID, FP] array, every row is a ddr word carrying FP weights
weights_tensors = weights.split(weights_sizes, dim=split_dim)

weights_tensor_list = []
print("Weights shape (Output Channels, Input Channels, Kernel Height, Kernel Width):", weights_3d.shape)
print(f"weight tensors shape:")
for index, weights_tensor in enumerate(weights_tensors):
    print(f"index: {index} \n weights tensor shape: {weights_tensor.shape} \n {weights_tensor} \n")
    
    kernel_num = weights_tensor.shape[0]
    # each weight word contains 64 weights from 64 kernels
    weights_tensor_list.extend(
        [F.pad(wt, (0, 64 - kernel_num)) for wt in weights_tensor.permute(1,0).reshape(-1,).split(kernel_num, dim=0)]
        )

weights_ddr_words = torch.stack(weights_tensor_list, dim=0)
print(f"weights ddr words: {weights_ddr_words}")

print("---------")


## print input tensors and weight tensors into txt to initialize the bram rom
with open('./input_tensors.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    input_tensor_shape = input_tensor.shape
    input_ddr_words = input_tensor.flatten().split(split_size=input_tensor_shape[-1], dim=0)
    
    # iterate each word
    for input_ddr_word_index, input_ddr_word in enumerate(input_ddr_words):
        
        reverse_input_ddr_word = torch.flip(input_ddr_word, dims=[0])
        # concate each num in a word to a hex num
        hex_str = ''.join([f'{input_num:02x}' for input_num in reverse_input_ddr_word])
        # print(f"{hex_str} \n")
        f.write(hex_str + "\n")

    f.write(";")
    
with open('./weights_tensors.txt', "w") as f:
    f.write("MEMORY_INITIALIZATION_RADIX = 16;\nMEMORY_INITIALIZATION_VECTOR = \n")
    
    weights_ddr_words_shape = weights_ddr_words.shape
    weights_ddr_words = weights_ddr_words.flatten().split(split_size=weights_ddr_words_shape[-1], dim=0)
    
    for weight_ddr_word_index, weight_ddr_word in enumerate(weights_ddr_words):
    # iterate each word
        reverse_weight_ddr_word = torch.flip(weight_ddr_word, dims=[0])
        hex_str = ''.join([f'{weight_num:02x}' for weight_num in reverse_weight_ddr_word])
        print(hex_str + '\n')
        f.write(hex_str + '\n')
    
    f.write(";")