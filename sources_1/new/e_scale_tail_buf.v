`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 11:00:46 AM
// Design Name: 
// Module Name: e_scale_tail_buf
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


module e_scale_tail_buf(
        clk,    
        mode,
        e_scale_tail_buf_rd,
        e_scale_tail_buf_wr,
        e_scale_tail_buf_adr,
        e_scale_tail_buf_data_wr,
        e_scale_tail_buf_data_rd
    );
    
    input clk;
    
    input mode;
    input e_scale_tail_buf_rd;
    input e_scale_tail_buf_wr;
    input [9 : 0] e_scale_tail_buf_adr;
    input [31 : 0] e_scale_tail_buf_data_wr;
    wire [31 : 0] e_scale_tail_buf_data1_rd, e_scale_tail_buf_data2_rd;
    output [31 : 0] e_scale_tail_buf_data_rd;
    
    e_scale_tail_buf_mode0 e_scale_tail_buf_mode0 (
      .clka(clk),    // input wire clka
      .ena(e_scale_tail_buf_rd),      // input wire ena
      .wea(e_scale_tail_buf_wr),      // input wire [0 : 0] wea
      .addra(e_scale_tail_buf_adr),  // input wire [9 : 0] addra
      .dina(e_scale_tail_buf_data_wr),    // input wire [31 : 0] dina
      .douta(e_scale_tail_buf_data1_rd)  // output wire [31 : 0] douta
    );

    e_scale_tail_buf_mode1 e_scale_tail_buf_mode1 (
      .clka(clk),    // input wire clka
      .ena(e_scale_tail_buf_rd),      // input wire ena
      .wea(e_scale_tail_buf_wr),      // input wire [0 : 0] wea
      .addra(e_scale_tail_buf_adr),  // input wire [9 : 0] addra
      .dina(e_scale_tail_buf_data_wr),    // input wire [31 : 0] dina
      .douta(e_scale_tail_buf_data2_rd)  // output wire [31 : 0] douta
    );

    assign e_scale_tail_buf_data_rd = (mode == 1'b0)? e_scale_tail_buf_data1_rd:
                              (mode == 1'b1)? e_scale_tail_buf_data2_rd:
                              0;
                              
endmodule
