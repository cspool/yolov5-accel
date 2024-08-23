`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/20 22:06:36
// Design Name: 
// Module Name: Shift_Regs_tb
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


module Shift_Regs_tb(

    );
    parameter shift_regs_num = 70;
    parameter pixels_in_row = 32;
    
    reg reset,clk;
    
    reg [3:0] k, s;
    
    reg [3:0] west_pad, slab_num, east_pad;
    reg [15:0] row1_idx, row2_idx, row3_idx;

    reg [15:0] row_start_idx, row_end_idx;
    
    reg [15:0] reg_start_idx, reg_end_idx;
    
    reg [32 * 8 - 1: 0] row1_pixels_32, row2_pixels_32, row3_pixels_32;
    reg [2 * 8 - 1: 0] row1_slab_2, row2_slab_2, row3_slab_2;
    
    reg conv_min_pixels_add_end, conv_pixels_add_end;
    
    wire [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;
    
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
    
   always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
    clk=0;
        reset = 1; 
        #10;
        
        reset = 0;
        k = 3;
        s = 1; //3,1,1 word 1
        west_pad = 1;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd0; 
        row_end_idx = 16'd31;
    
        reg_start_idx = 16'd2; 
        reg_end_idx = 16'd33;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        reset = 0; 
        k = 3;
        s = 1; //3,1,1 word 2
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd32; 
        row_end_idx = 16'd63;
    
        reg_start_idx = 16'd33; 
        reg_end_idx = 16'd33;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
    
        row1_pixels_32 = 256'hbfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a0;
        row2_pixels_32 = 256'hdfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0;
        row3_pixels_32 = 256'hfffefdfcfbfaf9f8f7f6f5f4f3f2f1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #100;
        reset = 1;
        
        
        #10;
        reset = 0;
        k = 3;
        s = 1; //3,1,1 word 1 slab
        west_pad = 0;
        slab_num = 1; 
        east_pad = 1;

        row_start_idx = 16'd32; 
        row_end_idx = 16'd63;
    
        reg_start_idx = 16'd2; 
        reg_end_idx = 16'd33;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        row1_pixels_32 = 256'hbfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a0;
        row2_pixels_32 = 256'hdfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0;
        row3_pixels_32 = 256'hfffefdfcfbfaf9f8f7f6f5f4f3f2f1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0;
    
        row1_slab_2 = 16'h001f;
        row2_slab_2 = 16'h003f;
        row3_slab_2 = 16'h005f;
        
        #10;
        reset = 0; 
        k = 3;
        s = 1; //3,1,1 word 2 slab
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd32; 
        row_end_idx = 16'd63;
    
        reg_start_idx = 16'd33; 
        reg_end_idx = 16'd33;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
    
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #100;
        reset = 1;
        
        
        #10;
        reset = 0;
        k = 3;
        s = 1; //3,1,1 word 1 west pad
        west_pad = 1;
        slab_num = 0; 
        east_pad = 1;

        row_start_idx = 16'd0; 
        row_end_idx = 16'd31;
    
        reg_start_idx = 16'd2; 
        reg_end_idx = 16'd33;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #100;
        reset = 1;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 1 east pad
        west_pad = 2;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd0; 
        row_end_idx = 16'd31;
    
        reg_start_idx = 16'd3; 
        reg_end_idx = 16'd34;
        
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 2
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd32; 
        row_end_idx = 16'd63;
    
        reg_start_idx = 16'd35; 
        reg_end_idx = 16'd66;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'hbfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a0;
        row2_pixels_32 = 256'hdfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0;
        row3_pixels_32 = 256'hfffefdfcfbfaf9f8f7f6f5f4f3f2f1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 3
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd64; 
        row_end_idx = 16'd95;
    
        reg_start_idx = 16'd66; 
        reg_end_idx = 16'd67;
        
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'h626160;
        row2_pixels_32 = 256'h727170;
        row3_pixels_32 = 256'h828180;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #100;
        reset = 1;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 1 slab
        west_pad = 0;
        slab_num = 2; 
        east_pad = 0;

        row_start_idx = 16'd64; 
        row_end_idx = 16'd95;
    
        reg_start_idx = 16'd3; 
        reg_end_idx = 16'd34;
        
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h8180;
        row2_slab_2 = 16'h8382;
        row3_slab_2 = 16'h8584;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 2
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd96; 
        row_end_idx = 16'd127;
    
        reg_start_idx = 16'd35; 
        reg_end_idx = 16'd66;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'hbfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a0;
        row2_pixels_32 = 256'hdfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0;
        row3_pixels_32 = 256'hfffefdfcfbfaf9f8f7f6f5f4f3f2f1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 3
        west_pad = 0;
        slab_num = 0; 
        east_pad = 0;

        row_start_idx = 16'd128; 
        row_end_idx = 16'd159;
    
        reg_start_idx = 16'd66; 
        reg_end_idx = 16'd67;
        
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'h626160;
        row2_pixels_32 = 256'h727170;
        row3_pixels_32 = 256'h828180;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #100;
        reset = 1;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 1 slab
        west_pad = 0;
        slab_num = 2; 
        east_pad = 0;

        row_start_idx = 16'd64; 
        row_end_idx = 16'd95;
    
        reg_start_idx = 16'd3; 
        reg_end_idx = 16'd34;
        
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
        row2_pixels_32 = 256'h3f3e3d3c3b3a393837363534333231302f2e2d2c2b2a29282726252423222120;
        row3_pixels_32 = 256'h5f5e5d5c5b5a955857565554535251504f4e4d4c4b4a49484746454443424140;
    
        row1_slab_2 = 16'h8180;
        row2_slab_2 = 16'h8382;
        row3_slab_2 = 16'h8584;
        
        
        #10;
        //6,2,2
        reset = 0;
        k = 6;
        s = 2; //6,2,2 word 2
        west_pad = 0;
        slab_num = 0; 
        east_pad = 2;

        row_start_idx = 16'd96; 
        row_end_idx = 16'd127;
    
        reg_start_idx = 16'd35; 
        reg_end_idx = 16'd66;
        
        conv_min_pixels_add_end = 1;
        conv_pixels_add_end = 1;
    
        row1_idx = 16'd1;
        row2_idx = 16'd2;
        row3_idx = 16'd3;
        
        row1_pixels_32 = 256'hbfbebdbcbbbab9b8b7b6b5b4b3b2b1b0afaeadacabaaa9a8a7a6a5a4a3a2a1a0;
        row2_pixels_32 = 256'hdfdedddcdbdad9d8d7d6d5d4d3d2d1d0cfcecdcccbcac9c8c7c6c5c4c3c2c1c0;
        row3_pixels_32 = 256'hfffefdfcfbfaf9f8f7f6f5f4f3f2f1f0efeeedecebeae9e8e7e6e5e4e3e2e1e0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        
        #10;
        conv_min_pixels_add_end = 0;
        conv_pixels_add_end = 0;
        row1_pixels_32 = 256'h0;
        row2_pixels_32 = 256'h0;
        row3_pixels_32 = 256'h0;
    
        row1_slab_2 = 16'h0;
        row2_slab_2 = 16'h0;
        row3_slab_2 = 16'h0;
        
        #10;
        
        end
    
endmodule
