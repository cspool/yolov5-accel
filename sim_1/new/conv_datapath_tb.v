`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/23 17:37:54
// Design Name: 
// Module Name: conv_datapath_tb
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


module conv_datapath_tb();

    
parameter sa_row_num = 4; //how many rows in conv core
parameter sa_column_num = 3; //how many columns in conv core
    
parameter row_num = 16; // how many rows in a sa
parameter column_num = 16; // how many columns in a sa
parameter pixels_in_row = 32;
parameter pixels_in_row_in_2pow = 5;
parameter buffers_num = sa_column_num;
parameter pixels_in_row_minus_1 = pixels_in_row-1;
parameter buffers_num_minus_1 = buffers_num-1;
parameter shift_regs_num = 70;
   
parameter weights_in_row = row_num * sa_row_num; // 8bit, length of 1 bit is shorter than that in 8 bit 
parameter weight_row_length = weights_in_row * 8;

parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num+1));

parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;

parameter bias_width = 8; //8 bit bias
parameter bias_set_width = bias_width * pe_parallel_weight_18; //32; vconv pixel out_width
parameter bias_4_channel_sets_width = bias_set_width * sa_row_num;

parameter bias_sets_num_in_row = sa_row_num * row_num; //64
parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit

parameter res_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter res_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter res_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;
    
    reg [3:0] k, s, p;
    
    reg [15:0] of, ox, oy, ix, iy, nif;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    reg [15:0] nif_in_2pow, ix_in_2pow;
    
    reg [31:0] nif_mult_k_mult_k;
    
    reg mode;
    
    reg [bias_tile_length -1 : 0] bias_tile_val;

conv_datapath cv_datapath(
    .of(of),
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
    .nif_mult_k_mult_k(nif_mult_k_mult_k),
    
    .mode(mode)
);


always begin
    #5;
    clk <= ~clk;
end
    
    initial begin
    // cfg 0
        clk = 0;
        reset = 1; en = 0;
        k = 1; s = 1; p = 0; 
        of = 64; ox = 64; oy = 3; ix = 256; iy = 256; // a tile computation
        ix_in_2pow = 8;
        mode = 0;
        nif = 8; nif_in_2pow = 3; nif_mult_k_mult_k = 8;
        bias_tile_val = {{16'h0001},{16'h0002},{16'h0003},{16'h0004},
                         {16'h0005},{16'h0006},{16'h0007},{16'h0008},
                         {16'h0009},{16'h00a0},{16'h00a1},{16'h00a2},
                         {16'h00a3},{16'h00a4},{16'h00a5},{16'h00a6},//1
                         {16'h0001},{16'h0002},{16'h0003},{16'h0004},
                         {16'h0005},{16'h0006},{16'h0007},{16'h0008},
                         {16'h0009},{16'h00a0},{16'h00a1},{16'h00a2},
                         {16'h00a3},{16'h00a4},{16'h00a5},{16'h00a6},//2
                         {16'h0001},{16'h0002},{16'h0003},{16'h0004},
                         {16'h0005},{16'h0006},{16'h0007},{16'h0008},
                         {16'h0009},{16'h00a0},{16'h00a1},{16'h00a2},
                         {16'h00a3},{16'h00a4},{16'h00a5},{16'h00a6},//3
                         {16'h0001},{16'h0002},{16'h0003},{16'h0004},
                         {16'h0005},{16'h0006},{16'h0007},{16'h0008},
                         {16'h0009},{16'h00a0},{16'h00a1},{16'h00a2},
                         {16'h00a3},{16'h00a4},{16'h00a5},{16'h00a6}//4
                         };
        
        #10;
        
        reset = 0; en = 1; //the start signal
        
        #10;
        reset = 0; en = 0;
        
        #500;
        reset = 0; en = 0;
        
        
        
    end





endmodule
