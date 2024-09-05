`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2024 05:12:57 PM
// Design Name: 
// Module Name: Bias_Regs
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


module Bias_Regs(
clk, set,
mode,

bias_tile_val,

out_sa_row_idx,

bias_4_channel_sets
    );
    parameter sa_row_num = 4; //how many rows in conv core
    parameter sa_column_num = 3; //how many columns in conv core
    
parameter row_num = 16; // how many rows in a sa
parameter column_num = 16; // how many columns in a sa

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 


parameter bias_width = 8; //8 bit bias
parameter bias_set_width = bias_width * pe_parallel_weight_18; //16 bit
parameter bias_set_4_channel_width = bias_set_width * sa_row_num; //4 * 16 bit

    parameter bias_sets_num_in_row = sa_row_num * row_num; //64
    
    parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit
    
    input clk, set, mode;
    
    input [bias_tile_length -1 : 0] bias_tile_val; 
    // tile bias, will be set at first of the tiling compute, maybe set in several cycles
    
    input [5:0] out_sa_row_idx; //output sa row idx [1,16]
    
    
    output [bias_set_4_channel_width-1 :0] bias_4_channel_sets;
    
    reg [bias_set_width -1 : 0] bias_tile[sa_row_num-1 :0][row_num-1 :0];
    
    
    genvar i, j;
    
    generate 
        for (i = 1; i <= sa_row_num; i = i + 1) begin //4
            for (j = 1; j <= row_num; j = j + 1) begin //16
                always@(posedge clk)begin
                   if (set == 1'b1) begin
                        bias_tile[i-1][j-1] <= 
                        bias_tile_val[((i-1)*row_num + (j-1))*bias_set_width +: bias_set_width];
                   end
                   else begin
                        bias_tile[i-1][j-1] <= bias_tile[i-1][j-1];
                   end
                end
            end
        end
    endgenerate

    assign bias_4_channel_sets = (out_sa_row_idx == 6'd0)? 0:
                                 {bias_tile[4-1][out_sa_row_idx-1],
                                 bias_tile[3-1][out_sa_row_idx-1],
                                 bias_tile[2-1][out_sa_row_idx-1],
                                 bias_tile[1-1][out_sa_row_idx-1]};
    
endmodule
