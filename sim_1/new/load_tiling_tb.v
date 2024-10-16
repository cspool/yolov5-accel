`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 05:02:04 PM
// Design Name: 
// Module Name: load_tiling_tb
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


module load_tiling_tb(

    );
    
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core

    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
    parameter buffers_num = sa_column_num;
    
    reg [3:0] k_init, s_init, p_init;
    
    reg [15:0] ix_init, iy_init, nif_init;
    
    reg clk, load_ddr_start, reset;
    
    reg load_ddr_continue;
    
    reg [3:0] nif_in_2pow_init, ix_in_2pow_init, buf_depth_2pow_init;

    reg [15:0] word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num;
    
    reg valid_load_data;
    
    load_tiling ld_tiling (
        .ix_init(ix_init),
        .iy_init(iy_init), 
        .nif_init(nif_init),
        .k_init(k_init), 
        .s_init(s_init), 
        .p_init(p_init),
        .clk(clk), 
        .load_ddr_start(load_ddr_start), 
        .reset(reset),
        .load_ddr_continue(load_ddr_continue),
        .nif_in_2pow_init(nif_in_2pow_init),
        .ix_in_2pow_init(ix_in_2pow_init),
        .buf_depth_2pow_init(buf_depth_2pow_init),
        
        .word_lenth_mult_word_num_mult_spare_num(word_lenth_mult_word_num_mult_spare_num), 
        .word_num_mult_spare_num(word_num_mult_spare_num),
        .valid_load_data(valid_load_data)
        
    );
    
    always begin
        #5; 
        clk <= ~clk;
    end
    
    initial begin
        clk = 0;
        k_init = 1; s_init = 1; p_init = 0;
        ix_init = 8; iy_init = 8; nif_init = 8;
        nif_in_2pow_init = 3; 
        ix_in_2pow_init = 3; 
        buf_depth_2pow_init = 10; //1024
        word_lenth_mult_word_num_mult_spare_num = pixels_in_row * 1;
        word_num_mult_spare_num = 1;
        valid_load_data = 0;
        load_ddr_continue = 0;
        
        load_ddr_start = 0; //load_en
        reset = 1;
        
        #10;
        load_ddr_start = 1; //load_en
        reset = 0;
        
        #100;
        valid_load_data = 1;
        
        #50;
        valid_load_data = 0;
        
        #10;
        valid_load_data = 1;
        
        #70;
        valid_load_data = 0;
        
        #800;
        
        load_ddr_continue = 1;
        
        #10;
        
        load_ddr_continue = 0;
        
        
    end
    
endmodule
