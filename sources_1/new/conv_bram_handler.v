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
reset,clk,en,

row1_buf_adr,
row1_buf_idx,
row2_buf_adr,
row2_buf_idx,
row3_buf_adr,
row3_buf_idx,

last_row1_buf_idx,
last_row2_buf_idx,
last_row3_buf_idx,

row1_slab_adr,
row1_slab_idx,
row2_slab_adr,
row2_slab_idx,
row3_slab_adr,
row3_slab_idx,

last_row1_slab_idx,
last_row2_slab_idx,
last_row3_slab_idx,

buf1_pixels_32,
buf2_pixels_32,
buf3_pixels_32,

slab1_pixels_2,
slab2_pixels_2,
slab3_pixels_2,

valid_row1_adr,
valid_row2_adr,
valid_row3_adr,

buf1_adr,
buf2_adr,
buf3_adr,

slab1_adr,
slab2_adr,
slab3_adr,

valid_mem1_adr, valid_mem2_adr, valid_mem3_adr,

last_row1_pixels_32,
last_row2_pixels_32,
last_row3_pixels_32,

last_row1_slab_2,
last_row2_slab_2,
last_row3_slab_2,

slab1_adr_wr,
slab2_adr_wr,
slab3_adr_wr,
slab1_pixels_2_wr,
slab2_pixels_2_wr,
slab3_pixels_2_wr,
valid_slab1_adr_wr, valid_slab2_adr_wr, valid_slab3_adr_wr
    );
    
    parameter pixels_in_row = 32;
    
    input reset,clk,en;
    //buffer
    //cycle 0
    input [15:0] row1_buf_adr;
    input [1:0] row1_buf_idx;
    input [15:0] row2_buf_adr;
    input [1:0] row2_buf_idx;
    input [15:0] row3_buf_adr;
    input [1:0] row3_buf_idx;
    
    //cycle 1
    input [pixels_in_row * 8 - 1: 0] buf1_pixels_32; //next cycle
    input [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    input [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
    
    input [1:0] last_row1_buf_idx;
    input [1:0] last_row2_buf_idx;
    input [1:0] last_row3_buf_idx;
    
    //slab
    //cycle 0
    input [15:0] row1_slab_adr;
    input [1:0] row1_slab_idx;
    input [15:0] row2_slab_adr;
    input [1:0] row2_slab_idx;
    input [15:0] row3_slab_adr;
    input [1:0] row3_slab_idx;
    
    //cycle 1
    input [15:0] slab1_pixels_2;
    input [15:0] slab2_pixels_2;
    input [15:0] slab3_pixels_2;
    
    input [1:0] last_row1_slab_idx;
    input [1:0] last_row2_slab_idx;
    input [1:0] last_row3_slab_idx;
    
    //valid
    //cycle 0
    input valid_row1_adr,valid_row2_adr,valid_row3_adr;
    
    //buffer
    //cycle 0
    output [15:0] buf1_adr;
    output [15:0] buf2_adr;
    output [15:0] buf3_adr;
    
    //cycle 1
    output [pixels_in_row * 8 - 1: 0] last_row1_pixels_32;
    output [pixels_in_row * 8 - 1: 0] last_row2_pixels_32;
    output [pixels_in_row * 8 - 1: 0] last_row3_pixels_32;
    
    //slab read
    //cycle 0
    output [15:0] slab1_adr;
    output [15:0] slab2_adr;
    output [15:0] slab3_adr;
    
    //cycle 1
    output [15:0] last_row1_slab_2;
    output [15:0] last_row2_slab_2;
    output [15:0] last_row3_slab_2;
    
    //cycle 0
    output valid_mem1_adr, valid_mem2_adr, valid_mem3_adr;
    
    //slab write
    //cycle 0
    output reg [15:0] slab1_adr_wr;
    output reg [15:0] slab2_adr_wr;
    output reg [15:0] slab3_adr_wr;
    
    output [15:0] slab1_pixels_2_wr;
    output [15:0] slab2_pixels_2_wr;
    output [15:0] slab3_pixels_2_wr;
    
    output reg valid_slab1_adr_wr, valid_slab2_adr_wr, valid_slab3_adr_wr;
    
    //in buffer
    //cycle 0
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
    
    //cycle 1               
    assign last_row1_pixels_32 = (last_row1_buf_idx == 2'd1)? buf1_pixels_32:
                      (last_row1_buf_idx == 2'd2)? buf2_pixels_32: 
                      (last_row1_buf_idx == 2'd3)? buf3_pixels_32:
                      0;
                      
    assign last_row2_pixels_32 = (last_row2_buf_idx == 2'd1)? buf1_pixels_32:
                      (last_row2_buf_idx == 2'd2)? buf2_pixels_32: 
                      (last_row2_buf_idx == 2'd3)? buf3_pixels_32:
                      0;
                      
    assign last_row3_pixels_32 = (last_row3_buf_idx == 2'd1)? buf1_pixels_32:
                      (last_row3_buf_idx == 2'd2)? buf2_pixels_32: 
                      (last_row3_buf_idx == 2'd3)? buf3_pixels_32:
                      0;
                      
    //slab read
    //cycle 0
    assign slab1_adr = (row1_slab_idx == 2'd1)? row1_slab_adr:
                      (row2_slab_idx == 2'd1)? row2_slab_adr: 
                      (row3_slab_idx == 2'd1)? row3_slab_adr:
                      0;
                      
    assign slab2_adr = (row1_slab_idx == 2'd2)? row1_slab_adr:
                      (row2_slab_idx == 2'd2)? row2_slab_adr: 
                      (row3_slab_idx == 2'd2)? row3_slab_adr:
                      0;
                      
    assign slab3_adr = (row1_slab_idx == 2'd3)? row1_slab_adr:
                      (row2_slab_idx == 2'd3)? row2_slab_adr: 
                      (row3_slab_idx == 2'd3)? row3_slab_adr: 
                      0;
    
    //cycle 1
    assign last_row1_slab_2 = (last_row1_slab_idx == 2'd1)? slab1_pixels_2:
                      (last_row1_slab_idx == 2'd2)? slab2_pixels_2: 
                      (last_row1_slab_idx == 2'd3)? slab3_pixels_2:
                      0;
                      
    assign last_row2_slab_2 = (last_row2_slab_idx == 2'd1)? slab1_pixels_2:
                      (last_row2_slab_idx == 2'd2)? slab2_pixels_2: 
                      (last_row2_slab_idx == 2'd3)? slab3_pixels_2:
                      0;
                      
    assign last_row3_slab_2 = (last_row3_slab_idx == 2'd1)? slab1_pixels_2:
                      (last_row3_slab_idx == 2'd2)? slab2_pixels_2: 
                      (last_row3_slab_idx == 2'd3)? slab3_pixels_2:
                      0;
    
    //cycle 0
    //valid
    //row_i_buf_idx == row_i_slab_idx
    assign valid_mem1_adr = (row1_buf_idx == 2'd1)? valid_row1_adr:
                      (row2_buf_idx == 2'd1)? valid_row2_adr: 
                      (row3_buf_idx == 2'd1)? valid_row3_adr:
                      0;
    
    assign valid_mem2_adr = (row1_buf_idx == 2'd2)? valid_row1_adr:
                      (row2_buf_idx == 2'd2)? valid_row2_adr: 
                      (row3_buf_idx == 2'd2)? valid_row3_adr:
                      0;
                      
    assign valid_mem3_adr = (row1_buf_idx == 2'd3)? valid_row1_adr:
                      (row2_buf_idx == 2'd3)? valid_row2_adr: 
                      (row3_buf_idx == 2'd3)? valid_row3_adr:
                      0;
    
    //slab write
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            slab1_adr_wr <= 16'hffff;
            slab2_adr_wr <= 16'hffff;
            slab3_adr_wr <= 16'hffff;
            valid_slab1_adr_wr <= 0;
            valid_slab2_adr_wr <= 0;
            valid_slab3_adr_wr <= 0;
        end
        else begin
            slab1_adr_wr <= buf1_adr;
            slab2_adr_wr <= buf2_adr;
            slab3_adr_wr <= buf3_adr;
            valid_slab1_adr_wr <= valid_mem1_adr;
            valid_slab2_adr_wr <= valid_mem2_adr;
            valid_slab3_adr_wr <= valid_mem3_adr;
        end
    end
    
    //cycle 1
    assign slab1_pixels_2_wr = buf1_pixels_32[15:0];
    assign slab2_pixels_2_wr = buf2_pixels_32[15:0];
    assign slab3_pixels_2_wr = buf3_pixels_32[15:0];
    
endmodule
