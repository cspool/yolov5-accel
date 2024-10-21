`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 11:00:46 AM
// Design Name: 
// Module Name: bias_buf
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


module bias_buf(
        clk,    
        mode,
        bias_buf_rd,
        bias_buf_wr,
        bias_buf_adr,
        bias_buf_data_wr,
        bias_buf_data_rd
    );
    
    input clk;
    
    input mode;
    input bias_buf_rd;
    input bias_buf_wr;
    input [9 : 0] bias_buf_adr;
    input [15 : 0] bias_buf_data_wr;
    wire [15 : 0] bias_buf_data1_rd, bias_buf_data2_rd;
    output [15 : 0] bias_buf_data_rd;
    
    bias_buf_mode0 bias_buf_mode0 (
      .clka(clk),    // input wire clka
      .ena(bias_buf_rd),      // input wire ena
      .wea(bias_buf_wr),      // input wire [0 : 0] wea
      .addra(bias_buf_adr),  // input wire [9 : 0] addra
      .dina(bias_buf_data_wr),    // input wire [15 : 0] dina
      .douta(bias_buf_data1_rd)  // output wire [15 : 0] douta
    );
    
    bias_buf_mode1 bias_buf_mode1 (
      .clka(clk),    // input wire clka
      .ena(bias_buf_rd),      // input wire ena
      .wea(bias_buf_wr),      // input wire [0 : 0] wea
      .addra(bias_buf_adr),  // input wire [9 : 0] addra
      .dina(bias_buf_data_wr),    // input wire [15 : 0] dina
      .douta(bias_buf_data2_rd)  // output wire [15 : 0] douta
    );
    
    assign bias_buf_data_rd = (mode == 1'b0)? bias_buf_data1_rd:
                              (mode == 1'b1)? bias_buf_data2_rd:
                              0;
    
endmodule
