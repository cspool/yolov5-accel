`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2024 06:57:16 PM
// Design Name: 
// Module Name: signed_mac_dsp_88_18_fin_row0
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


module signed_mac_dsp_88_18_fin_row0 (
    clk,
    reset,
    en,
    I_A,
    I_B,
    mode,

    mult_out,
    O
);

  parameter headroom = 8;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;

  parameter pixel_width = pixel_width_88;

  input clk;
  input reset;
  input en;

  input [23:0] I_A;
  input [17:0] I_B;
  input mode;

  output [41:0] mult_out;
  output reg [pe_out_width-1:0] O;
  wire [                  41:0] mult_O;


  wire [pixel_width_88 - 1 : 0] adder_88_18_1;  //24 bit
  wire [pixel_width_88 - 1 : 0] adder_88_18_2;
  wire                          adder_88_18_2_sign;

  wire [pixel_width_88 - 1 : 0] res_88_18_1;  //24 bit
  wire [pixel_width_88 - 1 : 0] res_88_18_2;
  wire [pixel_width_18 - 1 : 0] res_18_3;  //16 bit

  wire [pixel_width_18 - 1 : 0] res_18_4;

  assign mult_out           = mult_O;

  assign adder_88_18_1      = (mode == 1'b0) ? {{(pixel_width_88 - 16) {mult_O[15]}}, mult_O[15:0]} : (mode == 1'b1) ? {{(pixel_width_88 - 8) {mult_O[7]}}, mult_O[7:0]} : 1'b0;

  assign adder_88_18_2      = (mode == 1'b0) ? {{(pixel_width_88 - 16) {mult_O[31]}}, mult_O[31:16]} : (mode == 1'b1) ? {{(pixel_width_88 - 8) {mult_O[15]}}, mult_O[15:8]} : 1'b0;

  assign adder_88_18_2_sign = (mode == 1'b0) ? mult_O[15] : (mode == 1'b1) ? mult_O[7] : 1'b0;


  assign res_88_18_1        = ((mode == 1'b0) ? O[pixel_width_88-1 : 0] : (mode == 1'b1) ? ({{((pixel_width_88 - 16)) {O[pixel_width_18-1]}}, O[0+:(pixel_width_18)]}) : 0) + adder_88_18_1;

  assign res_88_18_2        = ((mode == 1'b0) ? O[2*pixel_width_88-1 : pixel_width_88] : (mode == 1'b1) ? ({{((pixel_width_88 - 16)) {O[2*pixel_width_18-1]}}, O[(pixel_width_18)+:(pixel_width_18)]}) : 0) + adder_88_18_2 + adder_88_18_2_sign;

  assign res_18_3           = O[(2*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 8) {mult_O[23]}}, mult_O[23-:8]} + mult_O[15];

  assign res_18_4           = O[(3*pixel_width_18)+:(pixel_width_18)] + {{(pixel_width_18 - 8) {mult_O[31]}}, mult_O[31-:8]} + mult_O[23];
  // // s24 * s18
  // signed_mult_dsp mult_s24_s18 (
  //   .CLK(clk),  // input wire CLK
  //   .A(I_A),      // input wire [23 : 0] A
  //   .B(I_B),      // input wire [17 : 0] B
  //   .P(mult_O)      // output wire [41 : 0] P
  // );

  // u24 * s18
  mult_dsp_u24_s18 mult_u24_s18 (
      .CLK(clk),    // input wire CLK
      .A  (I_A),    // input wire [23 : 0] A
      .B  (I_B),    // input wire [17 : 0] B
      .P  (mult_O)  // output wire [41 : 0] P
  );

  always @(posedge clk) begin
    if (reset) begin
      O <= 0;
    end else if (en) begin
      if (mode == 1'b0) begin  //8bit * 8bit
        O[pixel_width_88-1 : 0]                <= res_88_18_1[pixel_width_88-1 : 0];
        O[2*pixel_width_88-1 : pixel_width_88] <= res_88_18_2[pixel_width_88-1 : 0];
      end else if (mode == 1'b1) begin
        O[0+:(pixel_width_18)]                  <= res_88_18_1[pixel_width_18-1 : 0];
        O[(pixel_width_18)+:(pixel_width_18)]   <= res_88_18_2[pixel_width_18-1 : 0];
        O[(2*pixel_width_18)+:(pixel_width_18)] <= res_18_3;
        O[(3*pixel_width_18)+:(pixel_width_18)] <= res_18_4;

      end else begin
        O <= O;
      end
    end

  end

endmodule

