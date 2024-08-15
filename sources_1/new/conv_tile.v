`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/07 19:24:27
// Design Name: 
// Module Name: conv_tile
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


module conv_tile(
ox_start, oy_start, ix, iy,
pox, poy,
k, s, p,
clk, reset, en,

next_ox_start, next_oy_start, next_pox, next_poy,

loop_tiling_add_end,

west_pad1, slab_num1, east_pad1,
west_pad2, slab_num2, east_pad2,
west_pad3, slab_num3, east_pad3,
row_idx1, row_start_idx1, row_end_idx1,
row_idx2, row_start_idx2, row_end_idx2,
row_idx3, row_start_idx3, row_end_idx3,
reg_start_idx1, reg_end_idx1,
reg_start_idx2, reg_end_idx2,
reg_start_idx3, reg_end_idx3,

conv_tile_add_end1, conv_tile_add_end2, conv_tile_add_end3
    );
    
   parameter pixels_in_row = 32;
   parameter buffers_num = 3;
    
    input [15:0] ox_start, oy_start, ix, iy, pox, poy;
    input clk, reset, en;
    input [3:0]  k, s, p;
    
    input [15:0] next_ox_start, next_oy_start, next_pox, next_poy;
    
    input loop_tiling_add_end;
    
//    wire [15:0] next_row_y1, next_row_y2, next_row_y3;
    
    wire [15:0] row_y1, row_y2, row_y3;
    
    output [3:0] west_pad1, slab_num1, east_pad1;
    output [3:0] west_pad2, slab_num2, east_pad2;
    output [3:0] west_pad3, slab_num3, east_pad3;
    output [15:0] row_idx1, row_start_idx1, row_end_idx1;
    output [15:0] row_idx2, row_start_idx2, row_end_idx2;
    output [15:0] row_idx3, row_start_idx3, row_end_idx3;
    output [15:0] reg_start_idx1, reg_end_idx1;
    output [15:0] reg_start_idx2, reg_end_idx2;
    output [15:0] reg_start_idx3, reg_end_idx3;
    
    wire conv_row_add_end1, conv_row_add_end2, conv_row_add_end3;
    
    output conv_tile_add_end1, conv_tile_add_end2, conv_tile_add_end3;
    
    wire [15:0] iy_start;
    
//    wire [15:0] next_iy_start;
//    wire [15:0] iy_last_start;
    
//    wire[15:0] iy_last_start_s_1;
    
    wire[15:0] s_mult_buffers_num;
    
    wire[15:0] iy_start_plus_s;
    wire[15:0] iy_start_plus_2s;
    
//    wire[15:0] next_iy_start_plus_s;
//    wire[15:0] next_iy_start_plus_2s;
    
    reg [15:0] irow_y1, irow_y2, irow_y3;
    reg [15:0] ky1, ky2, ky3;
    
//    reg signal_add_1, signal_add_2, signal_add_3;
    wire loop_irow_y1_add_begin, loop_irow_y1_add_end, loop_ky1_add_begin, loop_ky1_add_end;
    wire loop_irow_y2_add_begin, loop_irow_y2_add_end, loop_ky2_add_begin, loop_ky2_add_end;
    wire loop_irow_y3_add_begin, loop_irow_y3_add_end, loop_ky3_add_begin, loop_ky3_add_end;
    
    wire [15:0] p_plus_1, p_plus_iy;
    
    wire [15:0] ky1_plus_irow_y1,ky2_plus_irow_y2,ky3_plus_irow_y3;
    
//    wire [15:0] next_ky1_plus_irow_y1, next_ky2_plus_irow_y2, next_ky3_plus_irow_y3;
    
    wire [15:0] poy_minus_1, poy_minus_2, poy_minus_3;
    wire [15:0] poy_minus_1_mult_s, poy_minus_2_mult_s, poy_minus_3_mult_s;
    
    assign poy_minus_1 = (poy < 1)? 0 : poy-1;
    assign poy_minus_2 = (poy < 2)? 0 : poy-2;
    assign poy_minus_3 = (poy < 3)? 0 : poy-3;
    
    assign poy_minus_1_mult_s = (s == 4'd1)? poy_minus_1:
                                (s == 4'd2)? poy_minus_1 << 1:
                                16'hffff;
                                
    assign poy_minus_2_mult_s = (s == 4'd1)? poy_minus_2:
                                (s == 4'd2)? poy_minus_2 << 1:
                                16'hffff; 
                                
    assign poy_minus_3_mult_s = (s == 4'd1)? poy_minus_3:
                                (s == 4'd2)? poy_minus_3 << 1:
                                16'hffff;
    
    // iy_start = (oy_start - 1) * s + 1
    assign iy_start = (s == 4'd1)? oy_start:
                      (s == 4'd2)? (oy_start << 1) - 1:
                      0;
                      
    // iy_last_start = iy_start + (poy-1) * s
//    assign iy_last_start_s_1 = iy_start + poy_minus_1;
    
//    assign iy_last_start = (s == 4'd1)? iy_last_start_s_1:
//                           (s == 4'd2)? iy_last_start_s_1 + poy_minus_1:
//                           0;
    
    assign s_mult_buffers_num = (s == 4'd1)? buffers_num:
                        (s == 4'd2)? (buffers_num << 1):
                        0;
                        
    assign iy_start_plus_s = iy_start + {{12'b0}, s};
    assign iy_start_plus_2s = iy_start + {{11'b0}, s, {1'b0}};
    
//    assign next_iy_start_plus_s = next_iy_start + {{12'b0}, s};
//    assign next_iy_start_plus_2s = next_iy_start + {{11'b0}, s, {1'b0}};
    
    assign p_plus_1 = {{12'b0},p} + 16'd1;
    assign p_plus_iy = {{12'b0},p} + iy;
             
             
    //router 1                  
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            signal_add_1 <= 0;  
//        end
//        else if ((en == 1'b1) || (conv_row_end1 == 1'b1)) begin // fire
//            signal_add_1 <= 1;
//        end
//        else if (loop_irow_y1_add_end == 1'b1) begin
//            signal_add_1 <= 0;
//        end
//        else begin
//            signal_add_1 <= signal_add_1;
//        end
//    end   
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky1 <= 0;
            
        end
        else if (loop_ky1_add_begin == 1'b1) begin
            if (loop_ky1_add_end == 1'b1) begin //the last ky1
                ky1 <= 0;
            end
            else begin
                ky1 <= ky1 + 1;
            end
        end
        else begin
            ky1 <= ky1;
        end
    end  
    
    assign loop_ky1_add_begin = (conv_row_add_end1 == 1'b1);
    assign loop_ky1_add_end = loop_ky1_add_begin && ((ky1 + 1) == (k));
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            irow_y1 <= 0;
            
        end
        else if (loop_irow_y1_add_begin == 1'b1) begin
            if (loop_irow_y1_add_end == 1'b1) begin
                irow_y1 <= 0;
            end
            else begin
                irow_y1 <= irow_y1 + s_mult_buffers_num;
            end
        end
        else begin
            irow_y1 <= irow_y1;
        end
    end
    
    assign loop_irow_y1_add_begin = loop_ky1_add_end;
    assign loop_irow_y1_add_end = loop_irow_y1_add_begin && ((irow_y1 + s_mult_buffers_num) > poy_minus_1_mult_s);
    
    conv_row cv_row1(
        .row_y(row_y1), 
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
        
        .loop_tiling_add_end(loop_tiling_add_end),
        
        .west_pad(west_pad1), 
        .slab_num(slab_num1), 
        .east_pad(east_pad1),
        .row_idx(row_idx1), 
        .row_start_idx(row_start_idx1), 
        .row_end_idx(row_end_idx1),
        .reg_start_idx(reg_start_idx1), 
        .reg_end_idx(reg_end_idx1),
        
        .conv_row_add_end(conv_row_add_end1)
    );
    
    //router 2   
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            signal_add_2 <= 0;
            
//        end
//        else if ((en == 1'b1) || (conv_row_end2 == 1'b1)) begin
//            signal_add_2 <= 1;
//        end
//        else if (loop_irow_y2_add_end == 1'b1) begin
//            signal_add_2 <= 0;
//        end
//        else begin
//            signal_add_2 <= signal_add_2;
//        end
//    end
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky2 <= 0;
            
        end
        else if (loop_ky2_add_begin == 1'b1) begin
            if (loop_ky2_add_end == 1'b1) begin // the last ky2
                ky2 <= 0;
            end
            else begin
                ky2 <= ky2 + 1;
            end
        end
        else begin
            ky2 <= ky2;
        end
    end  
    
    assign loop_ky2_add_begin = (conv_row_add_end2 == 1'b1);
    assign loop_ky2_add_end = loop_ky2_add_begin && ((ky2 + 1) == (k));
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            irow_y2 <= 0;
            
        end
        else if (loop_irow_y2_add_begin == 1'b1) begin
            if (loop_irow_y2_add_end == 1'b1) begin
                irow_y2 <= 0;
            end
            else begin
                irow_y2 <= irow_y2 + s_mult_buffers_num;
            end
        end
        else begin
            irow_y2 <= irow_y2;
        end
    end
    
    assign loop_irow_y2_add_begin = loop_ky2_add_end;
    assign loop_irow_y2_add_end = loop_irow_y2_add_begin && ((irow_y2 + s_mult_buffers_num) > poy_minus_2_mult_s);
    
    conv_row cv_row2(
        .row_y(row_y2), 
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
        
        .loop_tiling_add_end(loop_tiling_add_end),
        
        .west_pad(west_pad2), 
        .slab_num(slab_num2), 
        .east_pad(east_pad2),
        .row_idx(row_idx2), 
        .row_start_idx(row_start_idx2), 
        .row_end_idx(row_end_idx2),
        .reg_start_idx(reg_start_idx2), 
        .reg_end_idx(reg_end_idx2),
        
        .conv_row_add_end(conv_row_add_end2)
    );
    
    // router 3
    
//    always@(posedge clk) begin
//        if (reset == 1'b1) begin
//            signal_add_3 <= 0; 
//        end
//        else if (en == 1'b1) begin
//            signal_add_3 <= 1;
//        end
//        else if (loop_irow_y3_add_end == 1'b1) begin //loop_tiling_end == 1'b1
//            signal_add_3 <= 0;
//        end
//        else begin
//            signal_add_3 <= signal_add_3;
//        end
//    end
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky3 <= 0;
            
        end
        else if (loop_ky3_add_begin == 1'b1) begin
            if (loop_ky3_add_end == 1'b1) begin //the last ky3
                ky3 <= 0;
            end
            else begin
                ky3 <= ky3 + 1;
            end
        end
        else begin
            ky3 <= ky3;
        end
    end 
    
    assign loop_ky3_add_begin = (conv_row_add_end3 == 1'b1);
    assign loop_ky3_add_end = loop_ky3_add_begin && ((ky3 + 1) == (k));
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            irow_y3 <= 0;
            
        end
        else if (loop_irow_y3_add_begin == 1'b1) begin
            if (loop_irow_y3_add_end == 1'b1) begin
                irow_y3 <= 0;
            end
            else begin
                irow_y3 <= irow_y3 + s_mult_buffers_num;
            end
        end
        else begin
            irow_y3 <= irow_y3;
        end
    end
    
    assign loop_irow_y3_add_begin = loop_ky3_add_end;
    assign loop_irow_y3_add_end = loop_irow_y3_add_begin && ((irow_y3 + s_mult_buffers_num) > poy_minus_3_mult_s);
    
    conv_row cv_row3(
        .row_y(row_y3), 
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
        
        .loop_tiling_add_end(loop_tiling_add_end),
        
        .west_pad(west_pad3), 
        .slab_num(slab_num3), 
        .east_pad(east_pad3),
        .row_idx(row_idx3), 
        .row_start_idx(row_start_idx3), 
        .row_end_idx(row_end_idx3),
        .reg_start_idx(reg_start_idx3), 
        .reg_end_idx(reg_end_idx3),
        
        .conv_row_add_end(conv_row_add_end3)
    );

    //next val
//    assign next_ky1_plus_irow_y1 = (((reset == 1'b1) || (loop_ky1_add_end == 1'b1))? 0 : ky1) 
//                            + (((reset == 1'b1) || (loop_irow_y1_add_end == 1'b1))? 0 : irow_y1)
//                            + next_iy_start;
                            
//    assign next_ky2_plus_irow_y2 = (((reset == 1'b1) || (loop_ky2_add_end == 1'b1))? 0 : ky2) 
//                            + (((reset == 1'b1) || (loop_irow_y2_add_end == 1'b1))? 0 : irow_y2)
//                            + next_iy_start_plus_s;
                            
//    assign next_ky3_plus_irow_y3 = (((reset == 1'b1) || (loop_ky3_add_end == 1'b1))? 0 : ky3) 
//                            + (((reset == 1'b1) || (loop_irow_y3_add_end == 1'b1))? 0 : irow_y3)
//                            + next_iy_start_plus_2s;
    
    assign ky1_plus_irow_y1 = ky1 + irow_y1 + iy_start;
                            
    assign ky2_plus_irow_y2 = ky2 + irow_y2 + iy_start_plus_s;
                            
    assign ky3_plus_irow_y3 = ky3 + irow_y3 + iy_start_plus_2s;
    
//    assign next_row_y1 = ((next_ky1_plus_irow_y1 < p_plus_1) || (next_ky1_plus_irow_y1 > p_plus_iy))? 16'hffff: (next_ky1_plus_irow_y1 - {{12'b0},p});
//    assign next_row_y2 = ((next_ky2_plus_irow_y2 < p_plus_1) || (next_ky2_plus_irow_y2 > p_plus_iy))? 16'hffff: (next_ky2_plus_irow_y2 - {{12'b0},p});
//    assign next_row_y3 = ((next_ky3_plus_irow_y3 < p_plus_1) || (next_ky3_plus_irow_y3 > p_plus_iy))? 16'hffff: (next_ky3_plus_irow_y3 - {{12'b0},p});
    
    assign row_y1 = ((ky1_plus_irow_y1 < p_plus_1) || (ky1_plus_irow_y1 > p_plus_iy))? 16'hffff: (ky1_plus_irow_y1 - {{12'b0},p});
    assign row_y2 = ((ky2_plus_irow_y2 < p_plus_1) || (ky2_plus_irow_y2 > p_plus_iy))? 16'hffff: (ky2_plus_irow_y2 - {{12'b0},p});
    assign row_y3 = ((ky3_plus_irow_y3 < p_plus_1) || (ky3_plus_irow_y3 > p_plus_iy))? 16'hffff: (ky3_plus_irow_y3 - {{12'b0},p});
    
    //stall control
    assign conv_tile_add_end1 = loop_irow_y1_add_end; 
    assign conv_tile_add_end2 = loop_irow_y2_add_end; 
    assign conv_tile_add_end3 = loop_irow_y3_add_end; 
    
endmodule
