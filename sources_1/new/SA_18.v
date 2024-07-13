`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 07:24:19 PM
// Design Name: 
// Module Name: SA_18
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


module SA_18(
clk, reset, en, channel_out_reset,channel_out_en, row_in, column_in, out
    );
    
parameter row_num = 32;
parameter column_num = 32; 
//parameter row_num = 3;
//parameter column_num = 3; 
parameter headroom = 4;

parameter pixel_width_88 = 16 + headroom;
parameter pixel_width_18 = 10 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18;

parameter pixel_width = pixel_width_88;

parameter row_counter_width = ($clog2(row_num+1));

input clk, reset, en, channel_out_reset,channel_out_en;

input [8 * row_num - 1:0] row_in;
input [16 * column_num - 1:0] column_in;

output [pixel_width * 2 * column_num - 1: 0] out; // pox res per channel

wire [pe_out_width-1 : 0] all_out [row_num - 1: 0][column_num - 1 : 0]; // all results

//wire [pe_out_width * column_num - 1 : 0] all_out [row_num - 1: 0]; // all results
//wire [pe_out_width * column_num - 1 : 0] row_output;//row results

//wire [pixel_width * 2 * column_num - 1 : 0] row_output_88;//row results
//wire [pixel_width * 2 * column_num - 1 : 0]row_output_18  [1:0];//row results


genvar i, j;

wire [15:0] up[row_num - 1 : 0][column_num - 1 : 0];
wire [15:0] bottom[row_num - 1 : 0][column_num - 1 : 0];
wire [7:0] left[row_num - 1 : 0][column_num - 1 : 0];
wire [7:0] right[row_num - 1 : 0][column_num - 1 : 0];

reg [row_counter_width-1 : 0] row_counter; 

generate
    for (i = 0; i < row_num; i = i + 1) begin: row
        for (j = 0; j < column_num; j = j + 1) begin: column        
            PE_18 pe_18 (
                .clk(clk),
                .reset(reset),
                .left(left[i][j]),
                .up(up[i][j]),
                .en(en),
                .bottom(bottom[i][j]),
                .right(right[i][j]),
                .out(all_out[i][j]) // output is based on row                
//                .out(all_out[i][pe_out_width * j +: pe_out_width]) // output is based on row
            );
           assign up[i][j] = (i == 0) ? column_in[16 * j +: 16] : bottom[i - 1][j];
           assign left[i][j] = (j == 0) ? row_in[8 * i +: 8] : right[i][j - 1];
        end
    end
endgenerate

reg low_or_high;

always@(posedge clk) begin
    if (channel_out_reset) begin
        row_counter <= -1;
        low_or_high <= 1;
    
    end
    else if (channel_out_en) begin 
        row_counter <= (((row_counter+1) & ({(row_counter_width){1'b1}}))>>1);
        low_or_high <= ~low_or_high;
       
    end
    else begin
        row_counter <= row_counter;
        low_or_high <= low_or_high;
        
    end
end

//assign row_output = (row_counter == {(row_counter_width){1'b1}})? 0: all_out[row_counter];

//assign  out = (row_counter == {(row_counter_width){1'b1}})? 0: 
//                    (mode == 0)? row_output_88 :
//                    (mode == 1)? row_output_18[low_or_high]:
//                    0;

generate
    for (j = 0; j < column_num; j = j+1) begin: column
                
        assign out[((2 * j) * pixel_width)+: (2*pixel_width)]
        = (row_counter == {(row_counter_width){1'b1}})? 0: 
        (low_or_high == 1'b0)? 
        {{{(pixel_width-pixel_width_18){1'b0}},all_out[row_counter][j][(pixel_width_18) +: (pixel_width_18)]},
        {{(pixel_width-pixel_width_18){1'b0}}, all_out[row_counter][j][0 +: (pixel_width_18)]}}:
        (low_or_high == 1'b1)?
         {{{(pixel_width-pixel_width_18){1'b0}},all_out[row_counter][j][(3*pixel_width_18) +: (pixel_width_18)]},
         {{(pixel_width-pixel_width_18){1'b0}}, all_out[row_counter][j][(2*pixel_width_18) +: (pixel_width_18)]}}:
        0;
    end

endgenerate
 
endmodule
