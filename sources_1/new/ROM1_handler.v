`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 06:56:49 PM
// Design Name: 
// Module Name: ROM1_handler
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


module ROM1_handler(
   clk,
   ena,
   s,
   address,
   
   data
);

input clk;
input ena;
input [3:0] s;
input [15:0] address;

output [255:0] data;


wire [255:0] data1;
wire [255:0] data2;


rom1_s1 rom1_s1 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data1)  // output wire [255 : 0] douta
);

rom1_s2 rom1_s2 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data2)  // output wire [255 : 0] douta
);

assign data = (s == 4'd1)? data1:
              (s == 4'd2)? data2:
              0;

endmodule
