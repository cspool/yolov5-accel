`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 22:07:07
// Design Name: 
// Module Name: conv_datapath
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


module conv_datapath(
ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset,
nif_in_2pow,
ix_in_2pow


    );
    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
   parameter shift_regs_num = 70;
   
    
    //cv router wire
    input [3:0] k, s, p;
    
    input [15:0] ox, oy, ix, iy, nif;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [15:0] nif_in_2pow, ix_in_2pow;
    
    wire [3:0] west_pad, slab_num, east_pad;
    wire [15:0] row1_idx, row2_idx, row3_idx;
    
    wire [15:0] row_start_idx, row_end_idx;
    wire [15:0] reg_start_idx, reg_end_idx;
    wire [15:0] if_idx;
    
    wire conv_end;
    wire conv_min_pixels_add_end, conv_pixels_add_end;
    
    wire [15:0] row1_buf_adr;
    wire [1:0] row1_buf_idx;
    
    wire [15:0] row2_buf_adr;
    wire [1:0] row2_buf_idx;
    
    wire [15:0] row3_buf_adr;
    wire [1:0] row3_buf_idx;
    
    //cv_bram_handler wire
    
    wire [15:0] buf1_adr;
    wire [15:0] buf2_adr;
    wire [15:0] buf3_adr;
    
    wire [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
        
    //in buf handler
    wire ena;
    
    //shift regs
    wire [pixels_in_row * 8 - 1: 0] row1_pixels_32, row2_pixels_32, row3_pixels_32;
    wire [2 * 8 - 1: 0] row1_slab_2, row2_slab_2, row3_slab_2;
    wire [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;

    
    
    assign ena = 1;
    
    conv_router_v2 cv_router(
        .ox(ox), 
        .oy(oy), 
        .ix(ix), 
        .iy(iy),
        .nif(nif),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .en(en), 
        .reset(reset),
        .nif_in_2pow(nif_in_2pow), 
        .ix_in_2pow(ix_in_2pow),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        
        .row1_idx(row1_idx), 
        .row2_idx(row2_idx), 
        .row3_idx(row3_idx), 
        
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_end(conv_end),
        .if_idx(if_idx),
        
        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx)
    );
    
    Shift_Regs shift_regs(
        .reset(reset),
        .clk(clk),
        
        .k(k),
        .s(s),
        
        .west_pad(west_pad),
        .slab_num(slab_num),
        .east_pad(east_pad),
        .row1_idx(row1_idx), 
        .row2_idx(row2_idx), 
        .row3_idx(row3_idx),
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
            
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
            
        .row1_pixels_32(row1_pixels_32), 
        .row2_pixels_32(row2_pixels_32), 
        .row3_pixels_32(row3_pixels_32),
        .row1_slab_2(row1_slab_2), 
        .row2_slab_2(row2_slab_2), 
        .row3_slab_2(row3_slab_2),
        
        .conv_min_pixels_add_end(conv_min_pixels_add_end),
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .re_row1_pixels(re_row1_pixels),
        .re_row2_pixels(re_row2_pixels),
        .re_row3_pixels(re_row3_pixels)
    );
    
        
    conv_bram_handler cv_bram_handler(
        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        
        .buf1_pixels_32(buf1_pixels_32),
        .buf2_pixels_32(buf2_pixels_32),
        .buf3_pixels_32(buf3_pixels_32),
        
        .buf1_adr(buf1_adr),
        .buf2_adr(buf2_adr),
        .buf3_adr(buf3_adr),
        
        .row1_pixels_32(row1_pixels_32),
        .row2_pixels_32(row2_pixels_32),
        .row3_pixels_32(row3_pixels_32)
    );
    
    ROM1_handler rom1_handler(
        .clk(clk),
        .ena(ena),
        .s(s),
        .address(buf1_adr),
        .data(buf1_pixels_32)
    );
    
    ROM2_handler rom2_handler(
        .clk(clk),
        .ena(ena),
        .s(s),
        .address(buf2_adr),
        .data(buf2_pixels_32)
    );
    
    ROM3_handler rom3_handler(
        .clk(clk),
        .ena(ena),
        .s(s),
        .address(buf3_adr),
        .data(buf3_pixels_32)
    );
    
    
endmodule
