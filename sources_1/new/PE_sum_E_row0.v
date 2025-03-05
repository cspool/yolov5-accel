`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 15:33:24
// Design Name: 
// Module Name: PE_sum_E_row0
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


module PE_sum_E_row0 (
    clk,
    reset,
    en,

    mode,
    left,
    up,
    right,
    bottom,

    mult_out,

    out
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

  input clk, reset, en;
  input [3:0] mode;

  input [24:0] up;
  input [24:0] left;

  output reg [24:0] bottom;
  output reg [24:0] right;

  output [42:0] mult_out;

  output [pe_out_width - 1 : 0] out;

  always @(posedge clk) begin
    if (reset) begin
      right  <= 0;
      bottom <= 0;
    end else if (en) begin
      right  <= left;
      bottom <= up;
    end else begin
      right  <= right;
      bottom <= bottom;
    end
  end

  mac_dsp_s25_s18_row0 mac_row0 (
      .clk     (clk),
      .reset   (reset),
      .en      (en),
      .I_A     (up),
      .I_B     (left),
      .mode    (mode),
      .mult_out(mult_out),
      .O       (out)
  );
endmodule


