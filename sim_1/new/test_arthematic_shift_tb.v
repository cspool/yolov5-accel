`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/16 14:49:02
// Design Name: 
// Module Name: test_arthematic_shift_tb
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


module test_arthematic_shift_tb ();

  reg  [31:0] in;
  reg  [ 4:0] shift_amount;
  reg         signext;
  wire [31:0] out;
  wire [31:0] out1;
  wire [31:0] out2;

  test_arthematic_shift test_arthematic_shift (
      in,
      shift_amount,
      signext,
      out,
      out1,
      out2
  );

  initial begin
    in           = -32'd999;
    shift_amount = 3;
    signext      = 1;

    #20;
    signext = 0;
  end

endmodule
