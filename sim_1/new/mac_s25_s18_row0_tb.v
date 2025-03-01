`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/28 12:41:20
// Design Name: 
// Module Name: mac_s25_s18_row0_tb
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


module mac_s25_s18_row0_tb ();

  reg mode;
  reg [24:0] I_A, I_B;
  reg clk, reset, en;

  wire [  42:0] mult_out;
  wire [64-1:0] out;

  mac_dsp_s25_s18_row0_debug mac_row0 (
      .clk     (clk),
      .reset   (reset),
      .en      (en),
      .I_A     (I_A),
      .I_B     (I_B),
      .mode    (mode),
      .mult_out(mult_out),
      .O       (out)
  );

  always #5 clk = ~clk;

  initial begin
    mode  = 0;
    clk   = 0;
    reset = 1;
    en    = 0;
    I_A   = 25'h0;
    I_B   = 25'h0;

    #10;
    reset = 0;
    en    = 1;

    I_A   = 25'h0570023;
    I_B   = 25'h1fffac;

    #10;
    I_A = 25'h0;
    I_B = 25'h0;



  end


endmodule
