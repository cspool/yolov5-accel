`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 10:38:08
// Design Name: 
// Module Name: conv_bram_handler
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


module conv_bram_handler(
row1_buf_adr,
row1_buf_idx,
row2_buf_adr,
row2_buf_idx,
row3_buf_adr,
row3_buf_idx,

buf1_pixels_32,
buf2_pixels_32,
buf3_pixels_32,

buf1_adr,
buf2_adr,
buf3_adr,

row1_pixels_32,
row2_pixels_32,
row3_pixels_32
    );
    
    parameter pixels_in_row = 32;
    
    input [15:0] row1_buf_adr;
    input [1:0] row1_buf_idx;
    
    input [15:0] row2_buf_adr;
    input [1:0] row2_buf_idx;
    
    input [15:0] row3_buf_adr;
    input [1:0] row3_buf_idx;
    
    input [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
    input [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    input [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
    
    output [15:0] buf1_adr;
    output [15:0] buf2_adr;
    output [15:0] buf3_adr;
    
    output [pixels_in_row * 8 - 1: 0] row1_pixels_32;
    output [pixels_in_row * 8 - 1: 0] row2_pixels_32;
    output [pixels_in_row * 8 - 1: 0] row3_pixels_32;
    
    
    assign buf1_adr = (row1_buf_idx == 2'd1)? row1_buf_adr:
                      (row2_buf_idx == 2'd1)? row2_buf_adr: 
                      (row3_buf_idx == 2'd1)? row3_buf_adr:
                      0;
                      
    assign buf2_adr = (row1_buf_idx == 2'd2)? row1_buf_adr:
                      (row2_buf_idx == 2'd2)? row2_buf_adr: 
                      (row3_buf_idx == 2'd2)? row3_buf_adr:
                      0;
                      
    assign buf3_adr = (row1_buf_idx == 2'd3)? row1_buf_adr:
                      (row2_buf_idx == 2'd3)? row2_buf_adr: 
                      (row3_buf_idx == 2'd3)? row3_buf_adr: 
                      0;
                      
    assign row1_pixels_32 = (row1_buf_idx == 2'd1)? buf1_pixels_32:
                      (row2_buf_idx == 2'd1)? buf2_pixels_32: 
                      (row3_buf_idx == 2'd1)? buf3_pixels_32:
                      0;
                      
    assign row2_pixels_32 = (row1_buf_idx == 2'd2)? buf1_pixels_32:
                      (row2_buf_idx == 2'd2)? buf2_pixels_32: 
                      (row3_buf_idx == 2'd2)? buf3_pixels_32:
                      0;
                      
    assign row3_pixels_32 = (row1_buf_idx == 2'd3)? buf1_pixels_32:
                      (row2_buf_idx == 2'd3)? buf2_pixels_32: 
                      (row3_buf_idx == 2'd3)? buf3_pixels_32:
                      0;
    
endmodule
