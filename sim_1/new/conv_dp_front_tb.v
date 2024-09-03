`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/25 21:24:40
// Design Name: 
// Module Name: conv_dp_front_tb
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


module conv_dp_front_tb(

    );
    
            parameter row_num = 16;
parameter column_num = 16; 
    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
   parameter shift_regs_num = 70;
   
   parameter weights_in_row = row_num * 4; // 8bit
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

    
    reg [3:0] k, s, p;
    
    reg [15:0] of, ox, oy, ix, iy, nif;
    
    reg clk, en, reset; // reset is valid a cycle before en being valid
    
    reg [15:0] nif_in_2pow, ix_in_2pow;
    
    reg [31:0] nif_mult_k_mult_k;
    
    reg mode;
    
    wire [out_width - 1: 0] out_row1_channel_set1; // pox res per channel
    wire [out_width - 1: 0] out_row1_channel_set2; // pox res per channel
    wire [out_width - 1: 0] out_row1_channel_set3; // pox res per channel
    wire [out_width - 1: 0] out_row1_channel_set4; // pox res per channel
    wire [out_width - 1: 0] out_row2_channel_set1; // pox res per channel
    wire [out_width - 1: 0] out_row2_channel_set2; // pox res per channel
    wire [out_width - 1: 0] out_row2_channel_set3; // pox res per channel
    wire [out_width - 1: 0] out_row2_channel_set4; // pox res per channel
    wire [out_width - 1: 0] out_row3_channel_set1; // pox res per channel
    wire [out_width - 1: 0] out_row3_channel_set2; // pox res per channel
    wire [out_width - 1: 0] out_row3_channel_set3; // pox res per channel
    wire [out_width - 1: 0] out_row3_channel_set4; // pox res per channel

conv_datapath_front cv_datapath_front(
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
    
    .mode(mode),
    
    .out_row1_channel_set1(out_row1_channel_set1), // pox res per channel
    .out_row1_channel_set2(out_row1_channel_set2), // pox res per channel
    .out_row1_channel_set3(out_row1_channel_set3), // pox res per channel
    .out_row1_channel_set4(out_row1_channel_set4), // pox res per channel
    .out_row2_channel_set1(out_row2_channel_set1), // pox res per channel
    .out_row2_channel_set2(out_row2_channel_set2), // pox res per channel
    .out_row2_channel_set3(out_row2_channel_set3), // pox res per channel
    .out_row2_channel_set4(out_row2_channel_set4), // pox res per channel
    .out_row3_channel_set1(out_row3_channel_set1), // pox res per channel
    .out_row3_channel_set2(out_row3_channel_set2), // pox res per channel
    .out_row3_channel_set3(out_row3_channel_set3), // pox res per channel
    .out_row3_channel_set4(out_row3_channel_set4) // pox res per channel
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
        
        
        #10;
        
        reset = 0; en = 1; //the start signal
        
        #10;
        reset = 0; en = 0;
        
        #500;
        reset = 0; en = 0;
        
        
        
    end





endmodule
