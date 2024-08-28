`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/24 17:24:37
// Design Name: 
// Module Name: conv_datapath_front
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


module conv_datapath_front(
ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset,
nif_in_2pow,
ix_in_2pow,

re_row1_pixels, re_row2_pixels, re_row3_pixels
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
    
    output [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;
    
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
    
    wire [15:0] row_slab_start_idx;
    
    wire valid_row1_adr, valid_row2_adr, valid_row3_adr;
    
    //cv_bram_handler wire
    
    wire [15:0] buf1_adr;
    wire [15:0] buf2_adr;
    wire [15:0] buf3_adr;
    
    wire [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
    
    wire [15:0] row1_slab_adr;
    wire [1:0] row1_slab_idx;
    wire [15:0] row2_slab_adr;
    wire [1:0] row2_slab_idx;
    wire [15:0] row3_slab_adr;
    wire [1:0] row3_slab_idx;
    
    wire [15:0] slab1_pixels_2;
    wire [15:0] slab2_pixels_2;
    wire [15:0] slab3_pixels_2;
    
    wire [15:0] slab1_adr;
    wire [15:0] slab2_adr;
    wire [15:0] slab3_adr;
    
    wire valid_mem1_adr, valid_mem2_adr, valid_mem3_adr;
    
    wire [15:0] row1_slab_2;
    wire [15:0] row2_slab_2;
    wire [15:0] row3_slab_2;
    
    //slab write
    wire [15:0] slab1_adr_wr;
    wire [15:0] slab2_adr_wr;
    wire [15:0] slab3_adr_wr;
    
    wire [15:0] slab1_pixels_2_wr;
    wire [15:0] slab2_pixels_2_wr;
    wire [15:0] slab3_pixels_2_wr;
    
    wire valid_slab1_adr_wr, valid_slab2_adr_wr, valid_slab3_adr_wr;
        
    //in buf handler
    
    //shift regs
    wire [pixels_in_row * 8 - 1: 0] row1_pixels_32, row2_pixels_32, row3_pixels_32;
    wire shift_add2_end;
    wire stall;
    
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
        .shift_add2_end(shift_add2_end),
        .stall(stall),
        
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
        
        .if_idx(if_idx),
        
        .conv_end(conv_end),
        .conv_min_pixels_add_end(conv_min_pixels_add_end), 
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        
        .row_slab_start_idx(row_slab_start_idx),
    
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr)
    );
    
    Shift_Regs shift_regs(
        .reset(reset),
        .clk(clk),
        .en(en),
        
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
        .re_row3_pixels(re_row3_pixels),
        .shift_add2_end(shift_add2_end),
        .stall(stall)
    );
    
        
    conv_bram_handler cv_bram_handler(
        .reset(reset),
        .clk(clk),
        .en(en),
                
        //cycle 0 in
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr),

        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        //cycle 1 in
        .buf1_pixels_32(buf1_pixels_32),
        .buf2_pixels_32(buf2_pixels_32),
        .buf3_pixels_32(buf3_pixels_32),
        
        .slab1_pixels_2(slab1_pixels_2),
        .slab2_pixels_2(slab2_pixels_2),
        .slab3_pixels_2(slab3_pixels_2),
        
        //cycle 0 out
        .buf1_adr(buf1_adr),
        .buf2_adr(buf2_adr),
        .buf3_adr(buf3_adr),
        
        .slab1_adr(slab1_adr),
        .slab2_adr(slab2_adr),
        .slab3_adr(slab3_adr),
        
        .valid_mem1_adr(valid_mem1_adr),
        .valid_mem2_adr(valid_mem2_adr),
        .valid_mem3_adr(valid_mem3_adr),
        
        //cycle 1 out
        .row1_pixels_32(row1_pixels_32),
        .row2_pixels_32(row2_pixels_32),
        .row3_pixels_32(row3_pixels_32),
        
        .row1_slab_2(row1_slab_2),
        .row2_slab_2(row2_slab_2),
        .row3_slab_2(row3_slab_2),
        
        //cycle 1 out
        .slab1_adr_wr(slab1_adr_wr),
        .slab2_adr_wr(slab2_adr_wr),
        .slab3_adr_wr(slab3_adr_wr),
        .slab1_pixels_2_wr(slab1_pixels_2_wr),
        .slab2_pixels_2_wr(slab2_pixels_2_wr),
        .slab3_pixels_2_wr(slab3_pixels_2_wr),
        .valid_slab1_adr_wr(valid_slab1_adr_wr),
        .valid_slab2_adr_wr(valid_slab2_adr_wr),
        .valid_slab3_adr_wr(valid_slab3_adr_wr)
    );
    
    ROM1_handler rom1_handler(
        .clk(clk),
        .ena(valid_mem1_adr),
        .s(s),
        .address(buf1_adr),
        .data(buf1_pixels_32)
    );
    
    ROM2_handler rom2_handler(
        .clk(clk),
        .ena(valid_mem2_adr),
        .s(s),
        .address(buf2_adr),
        .data(buf2_pixels_32)
    );
    
    ROM3_handler rom3_handler(
        .clk(clk),
        .ena(valid_mem3_adr),
        .s(s),
        .address(buf3_adr),
        .data(buf3_pixels_32)
    );
    
    slab_1 slab_1 (
      .clka(clk),    // input wire clka
      .ena(valid_slab1_adr_wr),      // input wire ena
      .wea(valid_slab1_adr_wr),      // input wire [0 : 0] wea
      .addra(slab1_adr_wr),  // input wire [14 : 0] addra
      .dina(slab1_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem1_adr),      // input wire enb
      .addrb(slab1_adr),  // input wire [14 : 0] addrb
      .doutb(slab1_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_2 slab_2 (
      .clka(clk),    // input wire clka
      .ena(valid_slab2_adr_wr),      // input wire ena
      .wea(valid_slab2_adr_wr),      // input wire [0 : 0] wea
      .addra(slab2_adr_wr),  // input wire [14 : 0] addra
      .dina(slab2_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem2_adr),      // input wire enb
      .addrb(slab2_adr),  // input wire [14 : 0] addrb
      .doutb(slab2_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_3 slab_3 (
      .clka(clk),    // input wire clka
      .ena(valid_slab3_adr_wr),      // input wire ena
      .wea(valid_slab3_adr_wr),      // input wire [0 : 0] wea
      .addra(slab3_adr_wr),  // input wire [14 : 0] addra
      .dina(slab3_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_mem3_adr),      // input wire enb
      .addrb(slab3_adr),  // input wire [14 : 0] addrb
      .doutb(slab3_pixels_2)  // output wire [15 : 0] doutb
    );
    
    
endmodule

