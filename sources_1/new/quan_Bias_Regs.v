`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/18 13:10:02
// Design Name: 
// Module Name: quan_Bias_Regs
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module quan_Bias_Regs (
    clk,
    reset,
    bias_set,
    mode,
    bias_word,
    bias_reg_start,
    bias_reg_size,
    next_out_sa_row_idx,
    bias_4_channel_sets
);
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa
  parameter column_num = 16;  // how many columns in a sa
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;
  parameter bias_width = 8;  //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18;  //16 bit
  parameter bias_set_4_channel_width = bias_set_width * sa_row_num;  //4 * 16 bit
  parameter bias_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  parameter bias_word_length = 512;

  input clk, reset, bias_set;
  input [3:0] mode;
  input [bias_word_length-1 : 0] bias_word;
  input [7:0] bias_reg_start;  // 1-64
  input [7:0] bias_reg_size;  // 1-64
  input [5:0] next_out_sa_row_idx;  //output sa row idx [1,16]
  output reg [bias_set_4_channel_width-1 : 0] bias_4_channel_sets;
  reg  [      bias_set_width -1 : 0]                                                                            bias_tile     [sa_row_num * row_num_in_sa-1 : 0];
  wire [                        7:0] bias_reg_end = bias_reg_start + bias_reg_size - 1;  //[reg_start, reg_end]
  wire [bias_sets_num_in_row -1 : 0]                                                                            bias_regs_ops;
  assign bias_regs_ops = ({64'hffffffffffffffff} << (bias_reg_start - 1)) & ({64'hffffffffffffffff} >> (64 - bias_reg_end));
  //64*8 / 512 = 1
  //mode 0: 512 = bias(8 bit) * 64 -> bias_set({0, bias}) * 64 -> regs[1,64]
  //128*8 / 512 = 2
  //mode 1: 512 = bias_set(16bit) * 32 -> regs[start,start+31]
  wire [sa_row_num*row_num_in_sa*bias_set_width - 1 : 0] bias_word_val, bias_word_val_mode0, bias_word_val_mode1;
  assign bias_word_val = (mode == 0) ? bias_word_val_mode0 : (mode == 1) ? bias_word_val_mode1 : 0;

  genvar k;
  for (
      k = 0; k < sa_row_num * row_num_in_sa; k = k + 1
  )  //64
      begin
    assign bias_word_val_mode0[k*bias_set_width+:bias_set_width] = {{(bias_set_width - bias_width) {1'b0}}, bias_word[k*bias_width+:bias_width]};
  end
  assign bias_word_val_mode1 = (bias_reg_start == 1) ? {{(bias_word_length) {1'b0}}, bias_word} : (bias_reg_start == 33) ? {bias_word, {(bias_word_length) {1'b0}}} : 0;

  genvar i, j;
  generate
    for (
        i = 1; i <= sa_row_num * row_num_in_sa; i = i + 1
    )  //64
        begin
      always @(posedge clk) begin
        if (reset) begin
          bias_tile[i-1] <= 0;
        end else if ((bias_set == 1'b1) && (bias_regs_ops[i-1] == 1'b1)) begin
          bias_tile[i-1] <= bias_word_val[(i-1)*bias_set_width+:bias_set_width];
        end else begin
          bias_tile[i-1] <= bias_tile[i-1];
        end
      end
    end
  endgenerate

  // assign bias_4_channel_sets = (out_sa_row_idx == 6'd0) ? 0 :
  //     //row 4
  //     {bias_tile[(4-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 3
  //     bias_tile[(3-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 2
  //     bias_tile[(2-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 1
  //     bias_tile[(1-1)*row_num_in_sa+out_sa_row_idx-1]};

  always @(posedge clk) begin
    if (reset) begin
      bias_4_channel_sets <= {(bias_set_4_channel_width) {1'b0}};
    end else begin
      bias_4_channel_sets <= (next_out_sa_row_idx == 6'd0) ? {(bias_set_4_channel_width) {1'b0}} :
      //row 4
      {bias_tile[(4-1)*row_num_in_sa+next_out_sa_row_idx-1],
      //row 3
      bias_tile[(3-1)*row_num_in_sa+next_out_sa_row_idx-1],
      //row 2
      bias_tile[(2-1)*row_num_in_sa+next_out_sa_row_idx-1],
      //row 1
      bias_tile[(1-1)*row_num_in_sa+next_out_sa_row_idx-1]};
    end
  end

endmodule
