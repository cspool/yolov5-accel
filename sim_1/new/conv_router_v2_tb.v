`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 21:36:54
// Design Name: 
// Module Name: conv_router_v2_tb
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


module conv_router_v2_tb(

    );
    
    reg [3:0] k, s, p;
    
    reg [15:0] ox, oy, ix, iy, nif;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    reg [15:0] nif_in_2pow, ix_in_2pow;
    reg shift_add_end;
    
    wire [3:0] west_pad, slab_num, east_pad;
    wire [15:0] row1_idx, row2_idx, row3_idx; 
    wire [15:0] row_start_idx, row_end_idx;
    wire [15:0] reg_start_idx, reg_end_idx;
    wire [15:0] if_idx;
    wire conv_end;
    
    wire [15:0] row1_buf_adr;
    wire [1:0] row1_buf_idx;
    
    wire [15:0] row2_buf_adr;
    wire [1:0] row2_buf_idx;
    
    wire [15:0] row3_buf_adr;
    wire [1:0] row3_buf_idx;
    
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
        .shift_add_end(shift_add_end),
        
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
    
    
    always begin
        #5;
        clk <= ~clk;
    end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0;
        k = 3; s = 1; p = 1; ox = 32; oy = 32; ix = 128; iy = 128; nif = 1;
        nif_in_2pow = 0; ix_in_2pow = 7;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 1;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 1;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 0;
        
        #10;
        reset = 0; en = 0;
        shift_add_end = 1;
        
        #16;
        reset = 0; en = 0;
        shift_add_end = 0;
        
    end
      
endmodule
