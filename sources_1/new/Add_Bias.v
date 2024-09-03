`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 08:04:13 PM
// Design Name: 
// Module Name: Add_Bias
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


module Add_Bias(
clk, en, reset,
mode,

rowi_channel_seti, // pox res per channel

bias,

add_bias_rowi_channel_seti, // pox res per channel


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


    input mode;

    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [out_width - 1: 0] rowi_channel_seti; // pox res per channel
    
    input [31:0] bias; //2 16bit bias or 1 24bit bias
    
    output [out_width - 1: 0] add_bias_rowi_channel_seti; // pox res per channel
    
    
    
endmodule
