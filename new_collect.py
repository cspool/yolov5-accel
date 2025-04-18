import torch


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
            time, scale, valid, out_f_idx, out_y_idx, out_x_idx, result_word = line_spilt
            if len(result_word) < 128: continue  # 修改为128，因为现在需要128个16进制数
            if valid != "1": continue
            out_f_idx, out_y_idx, out_x_idx = int(out_f_idx), int(out_y_idx), int(out_x_idx)
            out_f_idx = 2 * out_f_idx + 1
            
            # 将128位16进制数转换为64个2位16进制数，并进一步转换为10进制数
            hex_values = [result_word[i:i+2] for i in range(0, len(result_word), 2)]
            decimal_values = [int(value, 16) for value in hex_values]
            
            # 将数据分为前64个和后64个
            first_channel_values = decimal_values[32:]  # 前64个16进制数转换为32个十进制数
            second_channel_values = decimal_values[:32]  # 后64个16进制数转换为32个十进制数
            
            # 计算第一个通道的写入索引 (of, oy, ox)
            start_idx1 = (out_f_idx - 1, out_y_idx - 1, (out_x_idx - 1))
            end_idx1 = (out_f_idx - 1, out_y_idx - 1, out_x_idx - 1 + 32)
            
            # 计算第二个通道的写入索引 (of+1, oy, ox)
            start_idx2 = (out_f_idx, out_y_idx - 1, (out_x_idx - 1))  # 注意of+1
            end_idx2 = (out_f_idx, out_y_idx - 1, out_x_idx - 1 + 32)
            
            # 将数据写入张量，编号小的数写入坐标大的位置
            # 第一个通道 (of, oy, ox)
            fpga_output_tensors[0, start_idx1[0], start_idx1[1], start_idx1[2]:end_idx1[2]] = \
                torch.tensor(first_channel_values[::-1], dtype=torch.uint8)
            
            # 第二个通道 (of+1, oy, ox)，需要确保不超出张量边界
            if out_f_idx < of:  # 确保of+1不超过张量维度
                fpga_output_tensors[0, start_idx2[0], start_idx2[1], start_idx2[2]:end_idx2[2]] = \
                    torch.tensor(second_channel_values[::-1], dtype=torch.uint8)

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

# 测试调用
of, oy, ox = 128, 6, 64
collect_result(of, oy, ox)