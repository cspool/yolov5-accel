`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/07 12:43:20
// Design Name: 
// Module Name: conv_tiling
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

//conv_router v1

module conv_tiling(
ox, oy, ix, iy,
k, s, p,
clk, en, reset,

west_pad1, slab_num1, east_pad1,
west_pad2, slab_num2, east_pad2,
west_pad3, slab_num3, east_pad3,
row_idx1, row_start_idx1, row_end_idx1,
row_idx2, row_start_idx2, row_end_idx2,
row_idx3, row_start_idx3, row_end_idx3,
reg_start_idx1, reg_end_idx1,
reg_start_idx2, reg_end_idx2,
reg_start_idx3, reg_end_idx3,

next_ox_start, next_oy_start, next_pox, next_poy
    );
    
   parameter pixels_in_row = 32;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
    
    input [3:0] k, s, p;
    
    input [15:0] ox, oy, ix, iy;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    wire [15:0] ox_start, oy_start, pox, poy;
    
    output [3:0] west_pad1, slab_num1, east_pad1;
    output [3:0] west_pad2, slab_num2, east_pad2;
    output [3:0] west_pad3, slab_num3, east_pad3;
    output [15:0] row_idx1, row_start_idx1, row_end_idx1;
    output [15:0] row_idx2, row_start_idx2, row_end_idx2;
    output [15:0] row_idx3, row_start_idx3, row_end_idx3;
    output [15:0] reg_start_idx1, reg_end_idx1;
    output [15:0] reg_start_idx2, reg_end_idx2;
    output [15:0] reg_start_idx3, reg_end_idx3;
    
    output [15:0] next_ox_start, next_oy_start, next_pox, next_poy;
    
    wire conv_tile_add_end1, conv_tile_add_end2, conv_tile_add_end3;
    
//reg signal_add; // add is valid a cycle before add operations
wire loop_y_add_end, loop_x_add_end;
wire loop_y_add_begin, loop_x_add_begin;

reg [15:0] tile_y_start, tile_x_start; // tile_y_start is the inner loop

//always@(posedge clk)begin
//    if(reset ==1'b1)begin
//        signal_add<=0;
//    end
//    else if(en==1'b1)begin
//        signal_add<=1;   
//    end
//    else if(loop_x_add_end==1'b1)begin
//        signal_add<=0;
//    end
//    else begin
//        signal_add<=signal_add;
//    end
//end

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


assign loop_y_add_begin = (conv_tile_add_end1 == 1'b1);

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
             
assign next_pox = (next_ox_start + pixels_in_row_minus_1 > ox)? (ox - next_ox_start + 1):
             pixels_in_row;
             
assign next_poy = (next_oy_start + buffers_num_minus_1 > oy)? (oy - next_oy_start + 1):
             buffers_num;   
             
//conv_tile

conv_tile cv_tile(
    .ox_start(ox_start),
    .oy_start(oy_start), 
    .next_ox_start(next_ox_start),
    .next_oy_start(next_oy_start),
    .ix(ix), 
    .iy(iy),
    .pox(pox), 
    .poy(poy),
    .next_pox(next_pox),
    .next_poy(next_poy),
    .k(k), 
    .s(s), 
    .p(p),
    .clk(clk), 
    .reset(reset), 
    .en(en),
    
    .loop_tiling_add_end(loop_x_add_end),     

    
    .west_pad1(west_pad1), 
    .slab_num1(slab_num1), 
    .east_pad1(east_pad1),
    .west_pad2(west_pad2), 
    .slab_num2(slab_num2), 
    .east_pad2(east_pad2),
    .west_pad3(west_pad3), 
    .slab_num3(slab_num3), 
    .east_pad3(east_pad3),
    .row_idx1(row_idx1), 
    .row_start_idx1(row_start_idx1), 
    .row_end_idx1(row_end_idx1),
    .row_idx2(row_idx2), 
    .row_start_idx2(row_start_idx2), 
    .row_end_idx2(row_end_idx2),
    .row_idx3(row_idx3), 
    .row_start_idx3(row_start_idx3), 
    .row_end_idx3(row_end_idx3),
    
    .reg_start_idx1(reg_start_idx1), 
    .reg_end_idx1(reg_end_idx1),
    .reg_start_idx2(reg_start_idx2), 
    .reg_end_idx2(reg_end_idx2),
    .reg_start_idx3(reg_start_idx3), 
    .reg_end_idx3(reg_end_idx3),
    
    .conv_tile_add_end1(conv_tile_add_end1),
    .conv_tile_add_end2(conv_tile_add_end2),
    .conv_tile_add_end3(conv_tile_add_end3)
);
    
endmodule
