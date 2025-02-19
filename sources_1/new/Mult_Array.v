`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 04:03:16 PM
// Design Name: 
// Module Name: Mult_Array
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


module Mult_Array (
    clk,
    en,
    vector_A,
    vector_B,
    vector_P
);
  parameter mult_A_width = 24;
  parameter mult_B_width = 16;
  parameter mult_P_width = 40;
  parameter mult_array_length = 576;
  parameter mult_dsp_array_length = 528;  //0 of 528 is used to calculate load adress
  parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
  parameter vector_A_width = mult_array_length * mult_A_width;
  parameter vector_B_width = mult_array_length * mult_B_width;
  parameter vector_P_width = mult_array_length * mult_P_width;

  input clk, en;

  input [vector_A_width-1 : 0] vector_A;
  input [vector_B_width-1 : 0] vector_B;
  output [vector_P_width-1 : 0] vector_P;

  genvar i;

  generate
    for (i = 0; i < mult_dsp_array_length; i = i + 1) begin : mult_dsp_array
      // //sum s24 * E s16
      // signed_mult_dsp_24_16 signed_mult_dsp_24_16 (
      //   .CLK(clk),  // input wire CLK
      //   .CE(en),
      //   .A(vector_A[(i * mult_A_width) +: mult_A_width]),      // input wire [23 : 0] A
      //   .B(vector_B[(i * mult_B_width) +: mult_B_width]),      // input wire [15 : 0] B
      //   .P(vector_P[(i * mult_P_width) +: mult_P_width])      // output wire [39 : 0] P
      // );
      // sum s24 * E u16
      mult_dsp_s24_u16 mult_dsp_s24_u16 (
          .CLK(clk),                                       // input wire CLK
          .CE (en),
          .A  (vector_A[(i*mult_A_width)+:mult_A_width]),  // input wire [23 : 0] A
          .B  (vector_B[(i*mult_B_width)+:mult_B_width]),  // input wire [15 : 0] B
          .P  (vector_P[(i*mult_P_width)+:mult_P_width])   // output wire [39 : 0] P
      );
    end

    for (i = 0; i < mult_lut_array_length; i = i + 1) begin : mult_lut_array
      // //sum s24 * E s16
      // signed_mult_lut_24_16 signed_mult_lut_24_16 (
      //   .CLK(clk),  // input wire CLK
      //   .CE(en),
      //   .A(vector_A[((mult_dsp_array_length + i) * mult_A_width) +: mult_A_width]),      // input wire [23 : 0] A
      //   .B(vector_B[((mult_dsp_array_length + i) * mult_B_width) +: mult_B_width]),      // input wire [15 : 0] B
      //   .P(vector_P[((mult_dsp_array_length + i) * mult_P_width) +: mult_P_width])      // output wire [39 : 0] P
      // );
      // sum s24 * E u16
      mult_lut_s24_u16 mult_lut_s24_u16 (
          .CLK(clk),                                                               // input wire CLK
          .CE (en),
          .A  (vector_A[((mult_dsp_array_length+i)*mult_A_width)+:mult_A_width]),  // input wire [23 : 0] A
          .B  (vector_B[((mult_dsp_array_length+i)*mult_B_width)+:mult_B_width]),  // input wire [15 : 0] B
          .P  (vector_P[((mult_dsp_array_length+i)*mult_P_width)+:mult_P_width])   // output wire [39 : 0] P
      );
    end
  endgenerate


endmodule
