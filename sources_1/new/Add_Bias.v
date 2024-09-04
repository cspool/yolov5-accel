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

add_bias_rowi_channel_seti // pox res per channel
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

parameter bias_width = 8 * pe_parallel_weight_18; //8bit * 2; vconv pixel out_width

parameter res_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter res_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter res_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;
//res_width_88 == res_width_18_one_channel

    input mode;

    input clk, en, reset;
    
    input [out_width - 1: 0] rowi_channel_seti;
    
    input [bias_width-1 :0] bias; //2 bias 16 bit, or 1 bias 24 bit
    
    output reg [res_width - 1: 0] add_bias_rowi_channel_seti;
    
    wire [8-1 :0] bias_88;
    wire [8-1:0] bias_18_1, bias_18_2;
    
    wire [out_width_88 - 1 : 0] row_88;
    wire [out_width_18 / pe_parallel_weight_18 - 1 : 0] row_18_1, row_18_2;
    
    wire [res_width_88 - 1 : 0] res_88;
    wire [res_width_18_2 - 1 : 0] res_18_1, res_18_2;

    assign row_88 = rowi_channel_seti[out_width_88 - 1 : 0];
    
    assign row_18_1 = rowi_channel_seti[out_width_18 / pe_parallel_weight_18 - 1 : 0];
    assign row_18_2 = rowi_channel_seti[out_width_18 - 1 : out_width_18 / pe_parallel_weight_18];
    
    assign bias_88 = bias[8-1 :0];
    assign bias_18_1 = bias_88;
    assign bias_18_2 = bias[bias_width-1 :8];
    
    assign res_18_1 = res_88[res_width_18_2 - 1 : 0];
    
    genvar i;
    
    generate
        for (i = 0; i < pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num; i = i + 1) begin
            assign res_88[(i * pixel_width_88) +: pixel_width_88] =
            ((mode == 1'b0)? row_88[(i * pixel_width_88) +: pixel_width_88]:
            (mode == 1'b1)? row_18_1[(i * pixel_width_18) +: pixel_width_18]:0)
            + bias_88; //bias_18_1 = bias_88
        end
        for (i = 0; i < pe_parallel_pixel_18 * 1 * column_num; i = i + 1) begin
            assign res_18_2[(i * pixel_width_18) +: pixel_width_18] =
            row_18_2[(i * pixel_width_18) +: pixel_width_18] 
            + bias_18_2;
        end
    endgenerate
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            add_bias_rowi_channel_seti <= 0;  
        end
        else if (en == 1'b1) begin
            add_bias_rowi_channel_seti <= 
            (mode == 1'b0)? {{(res_width-res_width_88){1'b0}}, res_88}:
            (mode == 1'b1)? {row_18_2, row_18_1}: 0; // need shift
        end
        else begin
            add_bias_rowi_channel_seti <= add_bias_rowi_channel_seti;
        end
    end
    
    
endmodule
