import numpy as np
import math
import torch
import torch.nn.functional as F

pixels_in_row = 32
buffers_num = 3

instr_args_init_mem = []
# 定义变量
mode_integer = 0
k_real = 3
s_real = 1
p_real = 1
of_integer = 128
ox_integer = 128
oy_integer = 3
ix_integer = 128
ix_in_2pow_integer = 7
iy_integer = 3
nif_integer = 2
nif_in_2pow_integer = 1
row_num_real = 64  # 128
pixels_in_row_real = 32
buffers_num_real = 3

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
input_ddr_layer_base_adr_integer = 0

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