`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2024 06:46:55 PM
// Design Name: 
// Module Name: SA_fin
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


module SA_fin(
clk, reset, en, mode, channel_out_reset,channel_out_en, row_in, column_in, out
    );
    
    parameter row_num = 16;
parameter column_num = 16; 

//    parameter row_num = 16;
//parameter column_num = 16; 



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

input clk, reset, en, mode, channel_out_reset,channel_out_en;

input [8 * row_num - 1:0] row_in; //weight
input [16 * column_num - 1:0] column_in;  //feature map

output [out_width - 1: 0] out; // pox res per channel
//pe_parallel_pixel_88 = pe_parallel_pixel_18

wire [pe_out_width-1 : 0] all_out [row_num - 1: 0][column_num - 1 : 0]; // all results

wire [pe_out_width * column_num - 1 : 0] row_output;//row results
wire [out_width_88 - 1 : 0] row_output_88;//row results
wire [out_width_18 - 1 : 0] row_output_18;//column results


genvar i, j;

wire [23:0] up[row_num - 1 : 0][column_num - 1 : 0];
wire [23:0] bottom[row_num - 1 : 0][column_num - 1 : 0];
wire [17:0] left[row_num - 1 : 0][column_num - 1 : 0];
wire [17:0] right[row_num - 1 : 0][column_num - 1 : 0];

reg [row_counter_width-1 : 0] row_counter; 

wire [23:0] I_As[column_num - 1 : 0];
wire [17:0] I_Bs[row_num - 1 : 0];

wire loop_row_counter_add_begin, loop_row_counter_add_end;


generate
    for (i = 0; i < column_num; i = i + 1) begin
        assign I_As[i] = (mode == 1'b0)?   ({column_in[(i * 16 + 8) +: 8], 16'b0} + {{16{column_in[(i * 16 + 7)]}}, column_in[(i * 16) +: 8]}) :
                                   (mode == 1'b1)?  ({{8{column_in[(i * 16 + 15)]}}, column_in[(i * 16 + 8) +: 8], 8'b0} +
                                    {{16{column_in[(i * 16 + 7)]}}, column_in[(i * 16) +: 8]}):
                                   24'b0;
    end
endgenerate

generate
    for (i = 0; i < row_num; i = i + 1) begin
        assign I_Bs[i] = (mode == 1'b0)?  ({{10{row_in[i * 8 + 7]}}, row_in[(i * 8) +: 8]}) :
                                   (mode == 1'b1)?  ({{row_in[i * 8 +1]},1'b1, 16'b0} + {{17{row_in[i * 8]}},1'b1}):
                                   18'b0;
    end
endgenerate

generate
    for (i = 0; i < row_num; i = i + 1) begin: row
        for (j = 0; j < column_num; j = j + 1) begin: column        
            PE_fin pe_fin (
                .clk(clk),
                .reset(reset),
                .mode(mode),
                .left(left[i][j]),
                .up(up[i][j]),
                .en(en),
                .bottom(bottom[i][j]),
                .right(right[i][j]),
                .out(all_out[i][j]) // output is based on row                
            );
           
           assign up[i][j] = (i == 0) ? I_As[j] : bottom[i - 1][j];
           assign left[i][j] = (j == 0) ? I_Bs[i] : right[i][j - 1];
        end
    end
endgenerate

always@(posedge clk) begin
    if (channel_out_reset) begin
        row_counter <= 0;
    
    end
    else if (loop_row_counter_add_begin) begin 
        if (loop_row_counter_add_end == 1'b1) begin
            row_counter <= 0;
        end
        else begin
            row_counter <= (row_counter + 1);
        end
    end
    else begin
        row_counter <= row_counter;
    end
end

assign loop_row_counter_add_begin = channel_out_en;
assign loop_row_counter_add_end = loop_row_counter_add_begin && (row_counter == 6'd15);

generate
    for (j = 0; j < column_num; j = j + 1) begin
        assign row_output[j * pe_out_width +:pe_out_width] = (loop_row_counter_add_begin == 1'b0)? 0: all_out[row_counter][j];
    end
endgenerate


assign  out = (loop_row_counter_add_begin == 1'b0)? 0: 
                     (mode == 0)? {{(out_width - out_width_88){1'b0}},row_output_88} :
                    (mode == 1)? {{(out_width - out_width_18){1'b0}},row_output_18}:
                    0;

generate
    for (j = 0; j < column_num; j = j+1) begin
        assign row_output_88[((2 * j) * pixel_width_88) +: (2 * pixel_width_88)]
        = {{all_out[row_counter][j][(0+pixel_width_88)+: (pixel_width_88)]},
        {all_out[row_counter][j][(0)+: (pixel_width_88)]}};
        
        assign row_output_18[0 + ((2 * j) * pixel_width_18)+: (2*pixel_width_18)]
        = {{all_out[row_counter][j][(0+(pixel_width_18)) +: (pixel_width_18)]},
        {all_out[row_counter][j][(0) +: (pixel_width_18)]}};
       
        
        assign row_output_18[pixel_width_18 * pe_parallel_pixel_18 * column_num + ((2 * j) * pixel_width_18)+: (2* pixel_width_18)]
        ={{all_out[row_counter][j][(0+(3*pixel_width_18)) +: (pixel_width_18)]},
        {all_out[row_counter][j][(0+(2*pixel_width_18))+: (pixel_width_18)]}};

    end

endgenerate


endmodule
