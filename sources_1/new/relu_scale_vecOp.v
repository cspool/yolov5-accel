`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/18 19:21:26
// Design Name: 
// Module Name: relu_scale_vecOp
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


module relu_scale_vecOp (
    clk,
    mode,
    scale_set,
    product_add_bias_vector,
    quantified_vector
);
  parameter column_num_in_sa = 16;  // how many columns in a sa
  parameter headroom = 8;
  parameter pixel_width_88 = 16 + headroom;
  parameter pixel_width_18 = 8 + headroom;
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter scale_width = 8;  //8 bit scale
  parameter scale_set_width = scale_width * pe_parallel_weight_18;  //16 bit

  parameter mult_P_width = 40;
  parameter product_add_bias_vector_width = mult_P_width * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;

  parameter quantified_pixel_width = 8;
  parameter quantified_vector_width = (quantified_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //8 bit * 32 pixels * 2 channel

  input clk;
  input mode;
  input [scale_set_width-1 : 0] scale_set;
  //8 bit * 2 channel
  wire [scale_width-1 : 0] scale_88;
  wire [scale_width-1 : 0] scale_18_1, scale_18_2;

  input [product_add_bias_vector_width - 1:0] product_add_bias_vector;
  //40 bit * 32 pixels * 2 channel

  output [quantified_vector_width-1 : 0] quantified_vector;
  //8 bit * 32 pixels * 2 channel

  assign scale_88   = scale_set[scale_width-1 : 0];
  assign scale_18_1 = scale_88;
  assign scale_18_2 = scale_set[scale_set_width-1 : scale_width];

  genvar i;
  generate
    for (i = 0; i < pe_parallel_pixel_18 * column_num_in_sa; i = i + 1) begin
      //relu && right shift and bound in 8 bit
      assign quantified_vector[i*(quantified_pixel_width) +: (quantified_pixel_width)]
             = (mode == 1'b0)? (
               (product_add_bias_vector[i*mult_P_width + mult_P_width-1] == 1'b0)?
               (product_add_bias_vector[i*mult_P_width +: mult_P_width]) >> (scale_88):
               0):
             (mode == 1'b1)? (
               (product_add_bias_vector[i*mult_P_width + mult_P_width-1] == 1'b0)?
               (product_add_bias_vector[i*mult_P_width +: mult_P_width]) >> (scale_18_1):
               0):
             0;
    end
    for (i = 0; i < pe_parallel_pixel_18 * column_num_in_sa; i = i + 1) begin
      assign quantified_vector[(pe_parallel_pixel_18 * column_num_in_sa+i)*(quantified_pixel_width) +: (quantified_pixel_width)]
             = (mode == 1'b1) ? (
               (product_add_bias_vector[(pe_parallel_pixel_18 * column_num_in_sa + i)*mult_P_width + mult_P_width-1] == 1'b0)?
               (product_add_bias_vector[(pe_parallel_pixel_18 * column_num_in_sa + i)*mult_P_width +: mult_P_width]) >> (scale_18_2):
               0):
             0;
    end
  endgenerate

endmodule
