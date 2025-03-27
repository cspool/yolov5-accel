`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/14 23:02:28
// Design Name: 
// Module Name: Mult_Array_hete_naive
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


module Mult_Array_hete_naive (
    clk,
    vector_A,
    vector_B,
    vector_P
);
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 2;  //how many columns in conv core
  parameter buffers_num = 3;
  parameter headroom = 8;
  parameter pixel_width_88 = 16 + headroom;
  parameter pixel_width_18 = 8 + headroom;
  parameter mult_A_width = 24;
  parameter mult_B_width = 16;
  parameter mult_P_width = 40;
  parameter mult_array_length = 576;
  parameter mult_dsp_array_length = 528;  //0 of 528 is used to calculate load adress
  parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
  parameter mult_array_length_per_sa = mult_array_length / sa_row_num / buffers_num;  //48
  parameter mult_dsp_array_length_per_sa = mult_dsp_array_length / sa_row_num / buffers_num;  //44
  parameter mult_lut_array_length_per_sa = mult_lut_array_length / sa_row_num / buffers_num;  //4
  parameter vector_A_width = mult_array_length * mult_A_width;
  parameter vector_B_width = mult_array_length * mult_B_width;
  parameter vector_P_width = mult_array_length * mult_P_width;

  input clk;

  input [vector_A_width-1 : 0] vector_A;
  input [vector_B_width-1 : 0] vector_B;
  output [vector_P_width-1 : 0] vector_P;

  wire [mult_array_length * 42 -1 : 0] vector_P_in_42;

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
      // sum s24 * E s18
      mult_dsp_s24_s18_naive mult_dsp_s24_s18 (
          .CLK(clk),                                                                                                                        // input wire CLK
          .A  (vector_A[(i*mult_A_width)+:mult_A_width]),                                                                                   // input wire [23 : 0] A
          .B  ({{(18 - mult_B_width) {vector_B[(i*mult_B_width)+mult_B_width-1]}},  //signed E
 vector_B[(i*mult_B_width)+:mult_B_width]}),  // input wire [17 : 0] B
          .P  (vector_P_in_42[(i*42)+:42])                                                                                                  // output wire [41 : 0] P
      );

      assign vector_P[(i*mult_P_width)+:mult_P_width] = vector_P_in_42[(i*42)+:mult_P_width];
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
      // sum s24 * E s18
      //       mult_lut_s24_s18 mult_lut_s24_s18 (
      //           .CLK(clk),                                                                                                                                                                        // input wire CLK
      //           .CE (en),
      //           .A  (vector_A[((mult_dsp_array_length+i)*mult_A_width)+:mult_A_width]),                                                                                                           // input wire [23 : 0] A
      //           .B  ({{(18 - mult_B_width) {vector_B[((mult_dsp_array_length+i)*mult_B_width)+mult_B_width-1]}},  //signed E
      //  vector_B[((mult_dsp_array_length+i)*mult_B_width)+:mult_B_width]}),  // input wire [17 : 0] B
      //           .P  (vector_P_in_42[((mult_dsp_array_length+i)*42)+:42])                                                                                                                          // output wire [41 : 0] P
      //       );

      //       assign vector_P[((mult_dsp_array_length+i)*mult_P_width)+:mult_P_width] = vector_P_in_42[((mult_dsp_array_length+i)*42)+:mult_P_width];

      // sum s16 * E u8
      mult_lut_s16_u8_naive mult_lut_s16_u8 (
          .CLK(clk),                                                                 // input wire CLK
          .A  (vector_A[((mult_dsp_array_length+i)*mult_A_width)+:pixel_width_18]),  // input wire [15 : 0] A
          .B  (vector_B[((mult_dsp_array_length+i)*mult_B_width)+:8]),               // input wire [7 : 0] B
          .P  (vector_P_in_42[((mult_dsp_array_length+i)*42)+:24])                   // output wire [23 : 0] P
      );

      assign vector_P[((mult_dsp_array_length+i)*mult_P_width)+:mult_P_width] =  //
          {
            {(mult_P_width - 24) {vector_P_in_42[((mult_dsp_array_length+i)*42)+24-1]}}, vector_P_in_42[((mult_dsp_array_length+i)*42)+:24]
          };

    end
  endgenerate


endmodule

