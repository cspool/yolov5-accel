`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2024 07:39:57 PM
// Design Name: 
// Module Name: ROM3_handler
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


module ROM3_handler(
address,
   data,
   clk,
   ena,
   cfg
);

input clk;
input ena;
input [1:0]cfg;
input wire [12:0] address;
output wire [255:0] data;

wire [255:0] data1;
wire [255:0] data2;
wire [255:0] data3;
wire [255:0] data4;


ROM3_256_32_32_1_1_0 rom3_cfg1 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data1)  // output wire [255 : 0] douta
);

ROM3_256_32_32_3_1_1 rom3_cfg2 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data2)  // output wire [255 : 0] douta
);

ROM3_256_16_64_3_2_1 rom3_cfg3 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data3)  // output wire [255 : 0] douta
);

ROM3_256_16_64_6_2_2 rom3_cfg4 (
  .clka(clk),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(address),  // input wire [12 : 0] addra
  .douta(data4)  // output wire [255 : 0] douta
);

assign data = (cfg == 2'd0)? data1:
                      (cfg == 2'd1)? data2:
                      (cfg == 2'd2)? data3:
                      data4;
                      
endmodule
