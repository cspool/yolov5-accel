import numpy as np
import math
import torch
import torch.nn.functional as F

nif = 4
iy = 8
ix = 128
of = 128
k = 1
s = 1
p = 0
#编程尽量统一数据类型，因为会有隐性implicit类型转换
input_data = torch.ones(size=(1, nif, iy, ix), dtype=torch.int8) * torch.tensor([-33], dtype=torch.int8).view(1,1,1,1)
weight_data = torch.ones(size=(of,nif,k,k), dtype=torch.int8)
conv_out = F.conv2d(input_data.to(dtype=torch.int), weight_data.to(dtype=torch.int), torch.zeros(size=(of,), dtype=torch.int8).to(dtype=torch.int), stride=s, padding=p) ##int8 conv_out
# 调整 E 和 scale 的形状以匹配输出张量
E_data = torch.ones(size=(1, of, 1, 1), dtype=torch.int)  # 调整为 (1, of, 1, 1)
bias_data = torch.ones(size=(of,), dtype=torch.int).view(1, of, 1, 1)
scale_data = torch.zeros(size=(of,), dtype=torch.int).view(1, of, 1, 1)  # 调整为 (1, of, 1, 1)
# 将每个通道的值乘以对应的 E[i]
conv_out = conv_out * E_data  # 使用广播机制
# 将每个通道的值add对应的 bias[i]
conv_out = conv_out + bias_data  # 使用广播机制
# 对每个输出通道的值应用 ReLU 激活函数
conv_out = F.relu(conv_out)
# 对每个通道的值进行逻辑右移 rank[i] 位
output_tensor = torch.bitwise_right_shift(conv_out, scale_data).to(dtype=torch.uint8)  # 使用广播机制
print(output_tensor)