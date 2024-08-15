`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 21:35:44
// Design Name: 
// Module Name: conv_tiling_v2
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


module conv_tiling_v2(
ox, oy, ix, iy,
k, s, p,
clk, en, reset,

conv_rows_add_end1, conv_rows_add_end2, conv_rows_add_end3,

conv_tiling_add_end,

ox_start, oy_start, pox, poy,
next_ox_start, next_oy_start
    );
    
   parameter pixels_in_row = 32;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
    
    input [3:0] k, s, p;
    
    input [15:0] ox, oy, ix, iy;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    output [15:0] ox_start, oy_start, pox, poy;
    
    output [15:0] next_ox_start, next_oy_start;
    
    input conv_rows_add_end1, conv_rows_add_end2, conv_rows_add_end3;
    
    output conv_tiling_add_end;
    
//reg signal_add; // add is valid a cycle before add operations
wire loop_y_add_end, loop_x_add_end;
wire loop_y_add_begin, loop_x_add_begin;

reg [15:0] tile_y_start, tile_x_start; // tile_y_start is the inner loop

always@(posedge clk)begin
   if(reset ==1'b1)begin
       tile_y_start <= 1;
   end
   else if(loop_y_add_begin == 1'b1)begin
       if(loop_y_add_end == 1'b1) begin //the last tile_y_start
          tile_y_start <= 1;
       end
       else begin
          tile_y_start <= tile_y_start + buffers_num; 
       end
   end
   else begin
        tile_y_start <= tile_y_start;
   end
end


assign loop_y_add_begin = (conv_rows_add_end1 == 1'b1);

assign loop_y_add_end = loop_y_add_begin && (tile_y_start + buffers_num) > oy;


always@(posedge clk)begin 
    if(reset ==1'b1)begin
        tile_x_start <= 1;
    end
    else if(loop_x_add_begin == 1'b1)begin
       if(loop_x_add_end == 1'b1) begin // the last tile_x_start
          tile_x_start <= 1;
       end
       else begin
          tile_x_start <= tile_x_start + pixels_in_row; 
       end
   end
   else begin
        tile_x_start <= tile_x_start;
   end
end


assign loop_x_add_begin = loop_y_add_end;

assign loop_x_add_end = loop_x_add_begin && (tile_x_start + pixels_in_row) > ox;

//next ox_st, oy_st, pox, poy
assign next_ox_start = ((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;

assign ox_start = tile_x_start;

assign next_oy_start = ((reset ==1'b1) || (loop_y_add_end == 1'b1))? 1 : tile_y_start + buffers_num;

assign oy_start = tile_y_start;

assign pox = (ox_start + pixels_in_row_minus_1 > ox)? (ox - ox_start + 1):
             pixels_in_row;
             
assign poy = (oy_start + buffers_num_minus_1 > oy)? (oy - oy_start + 1):
             buffers_num;    

assign conv_tiling_add_end = loop_x_add_end;             

endmodule
