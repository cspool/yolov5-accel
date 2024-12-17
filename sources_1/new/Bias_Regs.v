`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/04/2024 05:12:57 PM
// Design Name:
// Module Name: Bias_Regs
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


module Bias_Regs(
    mode,
    clk, set,

    bias_word,
    bias_reg_start,
    bias_reg_size,

    out_sa_row_idx,

    bias_4_channel_sets
  );
  parameter sa_row_num = 4; //how many rows in conv core
  parameter sa_column_num = 3; //how many columns in conv core

  parameter row_num = 16; // how many rows in a sa
  parameter column_num = 16; // how many columns in a sa

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter bias_width = 8; //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18; //16 bit
  parameter bias_set_4_channel_width = bias_set_width * sa_row_num; //4 * 16 bit

  parameter bias_sets_num_in_row = sa_row_num * row_num; //64

  parameter bias_word_length = 512;

  parameter bias_regs_tile_mode0 = bias_word_length / bias_width;
  parameter bias_regs_tile_mode1 = bias_word_length / bias_set_width;

  input mode;
  input clk, set;

  input [bias_word_length-1 : 0] bias_word;
  input [7:0] bias_reg_start; // 0-63
  input [7:0] bias_reg_size; // 0-63

  input [5:0] out_sa_row_idx; //output sa row idx [1,16]

  output [bias_set_4_channel_width-1 :0] bias_4_channel_sets;

  reg [bias_set_width -1 : 0] bias_tile[sa_row_num * row_num-1 :0];

  wire [7:0] bias_reg_end = bias_reg_start + bias_reg_size; //[reg_start, reg_end)

  wire [bias_sets_num_in_row -1 : 0] bias_regs_ops;

  assign bias_regs_ops = ({64'b1} << bias_reg_start) & ({64'b1} >> (64 - bias_reg_end));

  genvar i, j;

  generate
    for (i = 1; i <= sa_row_num * row_num; i = i + 1) //64
    begin
      always@(posedge clk)
      begin
        if ((set == 1'b1) && (bias_regs_ops[i-1] == 1'b1))
        begin
          bias_tile[i-1] <=
                   (mode == 1'b0)? bias_word[(i-1)*bias_width +: bias_width]:
                   (mode == 1'b1)? bias_word[(i-1)*bias_set_width +: bias_set_width]:
                   0;
        end
        else
        begin
          bias_tile[i-1] <= bias_tile[i-1];
        end
      end
    end
  endgenerate

  assign bias_4_channel_sets = (out_sa_row_idx == 6'd0)? 0:
         {bias_tile[(4-1) * row_num + out_sa_row_idx-1],
          bias_tile[(3-1) * row_num + out_sa_row_idx-1],
          bias_tile[(2-1) * row_num + out_sa_row_idx-1],
          bias_tile[(1-1) * row_num + out_sa_row_idx-1]};

endmodule
