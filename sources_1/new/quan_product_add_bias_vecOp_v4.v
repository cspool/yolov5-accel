`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 19:29:46
// Design Name: 
// Module Name: quan_product_add_bias_vecOp_v4
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


module quan_product_add_bias_vecOp_v4 (
    clk,
    core_product_add_bias_en_pre,
    core_product_add_bias_en_out,
    // reset,
    mode,
    sum_mult_E_vector,  // pox res per channel
    next_bias_set,
    bias_set,
    product_add_bias_vector  // pox res per channel
);

  parameter row_num_in_sa = 16;
  parameter column_num_in_sa = 16;
  parameter headroom = 8;
  parameter pixel_width_88 = 16 + headroom;
  parameter pixel_width_18 = 8 + headroom;
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core
  parameter bias_width = 8;  //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18;  //16 bit
  parameter mult_P_width = 40;
  parameter sum_mult_E_vector_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel
  parameter sum_mult_E_vector_in_mult_P_width_width_88 = mult_P_width * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num_in_sa;
  parameter sum_mult_E_vector_in_mult_P_width_width_18_2 = mult_P_width * 1 * pe_parallel_pixel_18 * column_num_in_sa;
  parameter product_add_bias_vector_width = mult_P_width * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter product_add_bias_vector_width_88 = mult_P_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter product_add_bias_vector_width_18_2 = mult_P_width * pe_parallel_pixel_18 * 1 * column_num_in_sa;

  input clk, core_product_add_bias_en_pre;
  output reg core_product_add_bias_en_out;
  input [3:0] mode;
  input [sum_mult_E_vector_in_mult_P_width_width - 1:0] sum_mult_E_vector;
  input [bias_set_width-1 : 0] next_bias_set;  //2 bias 16 bit, or 1 bias 8 bit
  output reg [bias_set_width-1 : 0] bias_set;
  output reg [product_add_bias_vector_width - 1:0] product_add_bias_vector;

  wire [bias_width-1 : 0] bias_88;
  reg  [bias_width-1 : 0] bias_88_vector[pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa-1:0];
  wire [bias_width-1:0] bias_18_1, bias_18_2;
  reg  [                                  bias_width-1 : 0] bias_18_1_vector     [pe_parallel_pixel_18 * 1 * column_num_in_sa-1:0];
  reg  [                                  bias_width-1 : 0] bias_18_2_vector     [pe_parallel_pixel_18 * 1 * column_num_in_sa-1:0];

  wire [sum_mult_E_vector_in_mult_P_width_width_88 - 1 : 0] sum_mult_E_vector_88;
  wire [sum_mult_E_vector_in_mult_P_width_width_18_2 - 1 : 0] sum_mult_E_vector_18_1, sum_mult_E_vector_18_2;

  wire [product_add_bias_vector_width_88 - 1 : 0] product_add_bias_vector_88;
  wire [product_add_bias_vector_width_18_2 - 1 : 0] product_add_bias_vector_18_1, product_add_bias_vector_18_2;

  assign sum_mult_E_vector_88   = sum_mult_E_vector[sum_mult_E_vector_in_mult_P_width_width_88-1 : 0];
  assign sum_mult_E_vector_18_1 = sum_mult_E_vector[sum_mult_E_vector_in_mult_P_width_width_18_2-1 : 0];
  assign sum_mult_E_vector_18_2 = sum_mult_E_vector[sum_mult_E_vector_in_mult_P_width_width-1 : sum_mult_E_vector_in_mult_P_width_width_18_2];

  always @(posedge clk) begin

    bias_set                     <= next_bias_set;
    core_product_add_bias_en_out <= core_product_add_bias_en_pre;
  end

  assign bias_88   = bias_set[bias_width-1 : 0];
  assign bias_18_1 = bias_88;
  assign bias_18_2 = bias_set[bias_set_width-1 : bias_width];

  genvar i;
  generate
    for (i = 0; i < pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa; i = i + 1) begin
      always @(posedge clk) begin

        bias_88_vector[i] <= next_bias_set[bias_width-1 : 0];

      end
      assign product_add_bias_vector_88[(i*mult_P_width)+:mult_P_width] =
          //sum * E
          sum_mult_E_vector_88[(i*mult_P_width)+:mult_P_width] +
          //bias
          {{(mult_P_width - bias_width) {bias_88_vector[i][bias_width-1]}}, bias_88_vector[i]};  //bias_18_1 = bias_88
    end
    for (i = 0; i < pe_parallel_pixel_18 * 1 * column_num_in_sa; i = i + 1) begin
      always @(posedge clk) begin

        bias_18_1_vector[i] <= next_bias_set[bias_width-1 : 0];

      end
      assign product_add_bias_vector_18_1[(i*mult_P_width)+:mult_P_width] =
          //sum * E
          sum_mult_E_vector_18_1[(i*mult_P_width)+:mult_P_width] +
          //bias
          {{(mult_P_width - bias_width) {bias_18_1_vector[i][bias_width-1]}}, bias_18_1_vector[i]};
    end
    for (i = 0; i < pe_parallel_pixel_18 * 1 * column_num_in_sa; i = i + 1) begin
      always @(posedge clk) begin

        bias_18_2_vector[i] <= next_bias_set[bias_set_width-1 : bias_width];

      end
      assign product_add_bias_vector_18_2[(i*mult_P_width)+:mult_P_width] =
          //sum * E
          sum_mult_E_vector_18_2[(i*mult_P_width)+:mult_P_width] +
          //bias
          {{(mult_P_width - bias_width) {bias_18_2_vector[i][bias_width-1]}}, bias_18_2_vector[i]};
    end
  endgenerate

  always @(posedge clk) begin
    if (core_product_add_bias_en_out == 1'b1) begin
      product_add_bias_vector <=
      //mode 0
      (mode == 0) ? {{(product_add_bias_vector_width - product_add_bias_vector_width_88) {1'b0}}, product_add_bias_vector_88} :
      // mode 1
      (mode == 1) ? {product_add_bias_vector_18_2, product_add_bias_vector_18_1} : 0;
    end else begin
      product_add_bias_vector <= product_add_bias_vector;
    end
  end

endmodule
