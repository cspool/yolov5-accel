`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/16 14:49:54
// Design Name: 
// Module Name: test_arthematic_shift
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


module test_arthematic_shift (
    input  wire [31:0] in,
    input  wire [ 4:0] shift_amount,
    input  wire        signext,
    output wire [31:0] out,
    output wire [31:0] out1,
    output wire [31:0] out2
);

  assign out  = signext ? ($signed(in) >>> shift_amount) : (in >> shift_amount);
  assign out1 = $signed(in) >>> shift_amount;
  assign out2 = (in >> shift_amount);

endmodule
