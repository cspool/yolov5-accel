`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/14 21:37:13
// Design Name: 
// Module Name: conv_router_v2
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


module conv_router_v2(
ox, oy, ix, iy,
k, s, p,
clk, en, reset,

west_pad, slab_num, east_pad,
row_idx1, row_idx2, row_idx3, 
row_start_idx, row_end_idx,
reg_start_idx, reg_end_idx,

conv_end
    );
    
    parameter pixels_in_row = 32;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
    
    // conv tiling module
    
    input [3:0] k, s, p;
    
    input [15:0] ox, oy, ix, iy;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    output [3:0] west_pad, slab_num, east_pad;
    output [15:0] row_idx1, row_idx2, row_idx3;
    wire [15:0] row_y1, row_y2, row_y3; 
    output [15:0] row_start_idx, row_end_idx;
    output [15:0] reg_start_idx, reg_end_idx;
    
    output conv_end;
    
    wire [15:0] ox_start, oy_start, pox, poy;
    
    wire [15:0] next_ox_start, next_oy_start;
    
    wire conv_rows_add_end1, conv_rows_add_end2, conv_rows_add_end3;
    
    wire conv_tiling_add_end;
    
    //conv tile module
//    wire [15:0] irow_y_size1, irow_y_size2, irow_y_size3;
    
    wire conv_pixels_add_end;
    
    //conv tiling module
    
    conv_tiling_v2 cv_tiling(
        .ox(ox), 
        .oy(oy), 
        .ix(ix), 
        .iy(iy),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .en(en), 
        .reset(reset),
        .conv_rows_add_end1(conv_rows_add_end1), 
        .conv_rows_add_end2(conv_rows_add_end2), 
        .conv_rows_add_end3(conv_rows_add_end3),
        
        .conv_tiling_add_end(conv_tiling_add_end),

        .ox_start(ox_start), 
        .oy_start(oy_start), 
        .pox(pox), 
        .poy(poy),
        .next_ox_start(next_ox_start), 
        .next_oy_start(next_oy_start)
    );
    
    assign conv_end = conv_tiling_add_end;
    
    //conv rows
    wire [15:0] iy_start;
    wire[15:0] iy_start_plus_s;
    wire[15:0] iy_start_plus_2s;
    
//    wire [15:0] poy_minus_1, poy_minus_2, poy_minus_3;
    
    assign row_idx1 = (poy < 1)? 16'hffff : row_y1;
    assign row_idx2 = (poy < 2)? 16'hffff : row_y2;
    assign row_idx3 = (poy < 3)? 16'hffff : row_y3;   
    
//    assign poy_minus_1 = (poy < 1)? 0 : poy-1;
//    assign poy_minus_2 = (poy < 2)? 0 : poy-2;
//    assign poy_minus_3 = (poy < 3)? 0 : poy-3;
    
//    assign irow_y_size1 = (s == 4'd1)? poy_minus_1:
//                                (s == 4'd2)? poy_minus_1 << 1:
//                                16'hffff;
                                
//    assign irow_y_size2 = (s == 4'd1)? poy_minus_2:
//                                (s == 4'd2)? poy_minus_2 << 1:
//                                16'hffff; 
                                
//    assign irow_y_size3 = (s == 4'd1)? poy_minus_3:
//                                (s == 4'd2)? poy_minus_3 << 1:
//                                16'hffff;
    
    // iy_start = (oy_start - 1) * s + 1
    assign iy_start = (s == 4'd1)? oy_start:
                      (s == 4'd2)? (oy_start << 1) - 1:
                      0;
                        
    assign iy_start_plus_s = iy_start + {{12'b0}, s};
    assign iy_start_plus_2s = iy_start + {{11'b0}, s, {1'b0}};

    conv_rows cv_rows_1(
        .iy_start(iy_start), 
        .iy(iy),
//        .irow_y_size(irow_y_size1),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .reset(reset), 
        .en(en),
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .row_y(row_y1),
        .conv_rows_add_end(conv_rows_add_end1)
    );
    
    conv_rows cv_rows_2(
        .iy_start(iy_start_plus_s), 
        .iy(iy),
//        .irow_y_size(irow_y_size2),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .reset(reset), 
        .en(en),
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .row_y(row_y2),
        .conv_rows_add_end(conv_rows_add_end2)
    );
    
    conv_rows cv_rows_3(
        .iy_start(iy_start_plus_2s), 
        .iy(iy),
//        .irow_y_size(irow_y_size3),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .reset(reset), 
        .en(en),
        .conv_pixels_add_end(conv_pixels_add_end),
        
        .row_y(row_y3),
        .conv_rows_add_end(conv_rows_add_end3)
    );
    
    //conv pixels
    conv_pixels cv_pixels(
        .ix(ix), 
        .ox_start(ox_start),
        .next_ox_start(next_ox_start),
        .pox(pox),
        .k(k), 
        .s(s), 
        .p(p),
        .clk(clk), 
        .reset(reset), 
        .en(en),
        
        .conv_tiling_add_end(conv_tiling_add_end),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_pixels_add_end(conv_pixels_add_end)
    );
    
    
    
endmodule
