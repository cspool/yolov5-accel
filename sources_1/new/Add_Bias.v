`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/03/2024 08:04:13 PM
// Design Name:
// Module Name: Add_Bias
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


module Add_Bias (
    clk,
    en,
    reset,
    mode,

    rowi_channel_seti,  // pox res per channel

    bias_set,

    add_bias_row  // pox res per channel
);
  parameter row_num = 16;
  parameter column_num = 16;
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;

  parameter headroom = 8;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;  // width of 18 is bigger than 88

  parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
  parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
  parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;

  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core

  parameter bias_width = 8;  //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18;  //16 bit
  parameter bias_set_4_channel_width = bias_set_width * sa_row_num;  //4 * 16 bit

  parameter bias_sets_num_in_row = sa_row_num * row_num;  //64

  parameter bias_tile_length = bias_set_width * bias_sets_num_in_row;  //64 * 16bit

  parameter add_bias_row_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
  parameter add_bias_row_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
  parameter add_bias_row_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;
  //res_width_88 == res_width_18_one_channel

  input mode;

  input clk, en, reset;

  input [out_width - 1:0] rowi_channel_seti;

  input [bias_set_width-1 : 0] bias_set;  //2 bias 16 bit, or 1 bias 8 bit

  output reg [add_bias_row_width - 1:0] add_bias_row;

  // reg mode;

  // always@(posedge clk)
  // begin
  //   if (reset == 1'b1)
  //   begin //set
  //     mode <= mode_init;
  //   end
  //   else
  //   begin
  //     mode <= mode;
  //   end
  // end

  wire [bias_width-1 : 0] bias_88;
  wire [bias_width-1:0] bias_18_1, bias_18_2;

  wire [out_width_88 - 1 : 0] row_88;
  wire [out_width_18 / pe_parallel_weight_18 - 1 : 0] row_18_1, row_18_2;

  wire [add_bias_row_width_88 - 1 : 0] res_88;
  wire [add_bias_row_width_18_2 - 1 : 0] res_18_1, res_18_2;

  assign row_88    = rowi_channel_seti[out_width_88-1 : 0];

  assign row_18_1  = rowi_channel_seti[out_width_18/pe_parallel_weight_18-1 : 0];
  assign row_18_2  = rowi_channel_seti[out_width_18-1 : out_width_18/pe_parallel_weight_18];

  assign bias_88   = bias_set[bias_width-1 : 0];
  assign bias_18_1 = bias_88;
  assign bias_18_2 = bias_set[bias_set_width-1 : bias_width];

  genvar i;

  generate
    for (i = 0; i < pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num; i = i + 1) begin
      assign res_88[(i*pixel_width_88)+:pixel_width_88] = row_88[(i*pixel_width_88)+:pixel_width_88] + {{(pixel_width_88 - bias_width) {bias_88[bias_width-1]}}, bias_88};  //bias_18_1 = bias_88
    end
    for (i = 0; i < pe_parallel_pixel_18 * 1 * column_num; i = i + 1) begin
      assign res_18_1[(i*pixel_width_18)+:pixel_width_18] = row_18_1[(i*pixel_width_18)+:pixel_width_18] + {{(pixel_width_18 - bias_width) {bias_18_1[bias_width-1]}}, bias_18_1};
    end
    for (i = 0; i < pe_parallel_pixel_18 * 1 * column_num; i = i + 1) begin
      assign res_18_2[(i*pixel_width_18)+:pixel_width_18] = row_18_2[(i*pixel_width_18)+:pixel_width_18] + {{(pixel_width_18 - bias_width) {bias_18_2[bias_width-1]}}, bias_18_2};
    end
  endgenerate

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      add_bias_row <= 0;
    end else if (en == 1'b1) begin
      add_bias_row <= (mode == 1'b0) ? {{(add_bias_row_width - add_bias_row_width_88) {1'b0}}, res_88} : (mode == 1'b1) ? {res_18_2, res_18_1} : 0;
    end else begin
      add_bias_row <= add_bias_row;
    end
  end


endmodule
