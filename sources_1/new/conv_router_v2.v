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
mode,
of, ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset,
nif_in_2pow,
ix_in_2pow,

channel_out_add_end,
quantify_add_end,
conv_out_add_end,
    
nif_mult_k_mult_k,

cur_pox, cur_pof, cur_poy,
cur_ox_start, cur_of_start, cur_oy_start,
cur_oy_start_base_in_3,
ox_start, oy_start, of_start, pox, poy, pof, if_idx,

row_slab_start_idx,
slab_num, 

west_pad, east_pad,
row1_idx, row2_idx, row3_idx, 
row_start_idx, row_end_idx,
reg_start_idx, reg_end_idx,

conv_end,
//conv_min_pixels_add_end,
conv_pixels_add_end,
conv_nif_add_end,

row1_buf_adr,
row1_buf_idx,
row2_buf_adr,
row2_buf_idx,
row3_buf_adr,
row3_buf_idx,

row1_slab_adr,
row1_slab_idx,
row2_slab_adr,
row2_slab_idx,
row3_slab_adr,
row3_slab_idx,

valid_row1_adr,
valid_row2_adr,
valid_row3_adr
    );
    
    parameter pixels_in_row = 32;
    parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter buffers_num_minus_1 = buffers_num-1;
    
    // conv tiling module
    input mode;
    
    input [3:0] k, s, p;
    
    input [15:0] of, ox, oy, ix, iy, nif;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [15:0] nif_in_2pow, ix_in_2pow;
    
//    input shift_add2_end;
//    input stall;
    input channel_out_add_end, quantify_add_end, conv_out_add_end;
    
    input [15:0] nif_mult_k_mult_k;
    
    output reg [15:0] cur_pox, cur_pof, cur_poy;
    
    output reg [15:0] cur_ox_start, cur_of_start, cur_oy_start, cur_oy_start_base_in_3;
    
    output [3:0] west_pad, slab_num, east_pad;
    output [15:0] row1_idx, row2_idx, row3_idx;
    wire [15:0] row_y1, row_y2, row_y3; 
    output [15:0] row_start_idx, row_end_idx;
    output [15:0] reg_start_idx, reg_end_idx;
    
    output conv_end;
//    output conv_min_pixels_add_end, conv_pixels_add_end;
    output conv_pixels_add_end;
    
    output conv_nif_add_end;
    
    output [15:0] row1_buf_adr;
    output [1:0] row1_buf_idx;
    
    output [15:0] row2_buf_adr;
    output [1:0] row2_buf_idx;
    
    output [15:0] row3_buf_adr;
    output [1:0] row3_buf_idx;
    
    output [15:0] row_slab_start_idx;
    
    output [15:0] row1_slab_adr;
    output [1:0] row1_slab_idx;
    output [15:0] row2_slab_adr;
    output [1:0] row2_slab_idx;
    output [15:0] row3_slab_adr;
    output [1:0] row3_slab_idx;
    
    output valid_row1_adr, valid_row2_adr, valid_row3_adr;
    
    wire valid_adr;
    
    wire [15:0] row1_buf_adr_in_row;
    
    wire [15:0] row2_buf_adr_in_row;
    
    wire [15:0] row3_buf_adr_in_row;
    
    output [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;

    wire [15:0] next_ox_start, next_oy_start;
    
    wire [15:0] iy_start;
    wire[15:0] iy_start_plus_s;
    wire[15:0] iy_start_plus_2s;
    
    wire conv_rows_add_end1, conv_rows_add_end2, conv_rows_add_end3;
    
    wire conv_tiling_add_end;
    
    wire loop_if_add_end;
    
    assign conv_nif_add_end = loop_if_add_end;
    
    //conv tile module
//    wire [15:0] irow_y_size1, irow_y_size2, irow_y_size3;
    
    //address translation
    
//    wire [15:0] row_base0; // virtual base adr of row
    
//    wire [15:0] row_base0_in_3;
    wire [15:0] row_base0_in_3s;
    
//    wire [15:0] row1_base;
//    wire [15:0] row2_base;
//    wire [15:0] row3_base;
    
    wire [15:0] row1_base_in_3;
    wire [15:0] row1_base_in_3s;
    wire [15:0] row2_base_in_3;
    wire [15:0] row2_base_in_3s;
    wire [15:0] row3_base_in_3;
    wire [15:0] row3_base_in_3s;
    
    wire [15:0] idx1_in_k, idx2_in_k, idx3_in_k;
    
    wire [15:0] row1_bias0, row2_bias0, row3_bias0;
    wire [15:0] row1_bias, row2_bias, row3_bias;
    
    wire [3:0] s_mult_3;
    
    wire leq3_1, leq6_1, leq9_1;
    wire leq3_2, leq6_2, leq9_2;
    wire leq3_3, leq6_3, leq9_3;
    
    wire [15:0] row1_offset_s1;
//    wire [15:0] row1_offset_s2;
    wire [15:0] row1_buf_idx_s1;
//    wire [15:0] row1_buf_idx_s2;
    
    wire [15:0] row2_offset_s1;
//    wire [15:0] row2_offset_s2;
    wire [15:0] row2_buf_idx_s1;
//    wire [15:0] row2_buf_idx_s2;
    
    wire [15:0] row3_offset_s1;
//    wire [15:0] row3_offset_s2;
    wire [15:0] row3_buf_idx_s1;
//    wire [15:0] row3_buf_idx_s2;
    
//    wire assert_base_bias_idx1, assert_base_bias_idx2, assert_base_bias_idx3;

    wire [15:0] cur_pof_mult_cur_poy;
    
    assign cur_pof_mult_cur_poy = (cur_poy == 16'd1)? cur_pof: 
                                  (cur_poy == 16'd2)? (cur_pof << 1):  
                                  (cur_poy == 16'd3)? (cur_pof << 1) + cur_pof:   
                                  0;           
    
    reg ifx_stall;
    
    wire loop_if_stall_counter_add_end;
       //all tile have been in fifo, 
       //and no.cycles to transfer to out buf is less than that to compute
       //time to transfer fifo to out buf is covered by computation of next tile
       //or
       //all tile have been in out buf, 
       //and no.cycles to transfer to out buf is bigger than that to compute
       //computation of next tile is stalled by the transfer from fifo to out buf
       //the stall time can be shorter and uniform, optimize it later
    assign loop_if_stall_counter_add_end = 
    (ifx_stall == 1'b1) && 
    (((channel_out_add_end == 1'b1))
//    (((channel_out_add_end == 1'b1) && (nif_mult_k_mult_k > cur_pof_mult_cur_poy))
    || ((conv_out_add_end == 1'b1) && (nif_mult_k_mult_k <= cur_pof_mult_cur_poy)));
       
    
    always@(posedge clk)begin
       if(reset ==1'b1)begin
            ifx_stall <= 0;
       end
       else if(loop_if_add_end == 1'b1)begin
            ifx_stall <= 1;
       end
       else if(loop_if_stall_counter_add_end == 1'b1) begin
            ifx_stall <= 0;
       end
       else begin
            ifx_stall <= ifx_stall;
       end
    end
    
    always@(posedge clk)begin
       if(reset ==1'b1)begin
            cur_ox_start <= 0;
            cur_oy_start <= 0;
            cur_of_start <= 0;
            cur_pox <= 0;
            cur_poy <= 0;
            cur_pof <= 0;
            cur_oy_start_base_in_3 <= 0;
       end
       else if(ifx_stall == 1'b0) begin
            cur_ox_start <= ox_start;
            cur_oy_start <= oy_start;
            cur_of_start <= of_start;
            cur_pox <= pox;
            cur_poy <= poy;
            cur_pof <= pof;
            cur_oy_start_base_in_3 <= row_base0_in_3s;
       end
       else if (loop_if_stall_counter_add_end == 1'b1) begin //the last high ifstall
            cur_ox_start <= ox_start;
            cur_oy_start <= oy_start;
            cur_of_start <= of_start;
            cur_pox <= pox;
            cur_poy <= poy;
            cur_pof <= pof;
            cur_oy_start_base_in_3 <= row_base0_in_3s;
       end
       else begin
            cur_ox_start <= cur_ox_start;
            cur_oy_start <= cur_oy_start;
            cur_of_start <= cur_of_start;
            cur_pox <= cur_pox;
            cur_poy <= cur_poy;
            cur_pof <= cur_pof;
            cur_oy_start_base_in_3 <= cur_oy_start_base_in_3;
       end
    end

    //conv tiling module
    
    conv_tiling_v2 cv_tiling(
        .mode(mode),
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
        .conv_rows_add_end1(conv_rows_add_end1), 
        .conv_rows_add_end2(conv_rows_add_end2), 
        .conv_rows_add_end3(conv_rows_add_end3),
        
        .conv_tiling_add_end(conv_tiling_add_end),
        .loop_if_add_end(loop_if_add_end),

        .ox_start(ox_start), 
        .oy_start(oy_start), 
        .pox(pox), 
        .poy(poy),
        .of_start(of_start), 
        .pof(pof), 
        .if_idx(if_idx),
        .next_ox_start(next_ox_start), 
        .next_oy_start(next_oy_start),
        
        .row_base_in_3s(row_base0_in_3s) //m
    );
    
    assign conv_end = conv_tiling_add_end;
    //conv rows
    
//    wire [15:0] poy_minus_1, poy_minus_2, poy_minus_3;
    
    assign row1_idx = (poy < 1)? 16'hffff : row_y1;
    assign row2_idx = (poy < 2)? 16'hffff : row_y2;
    assign row3_idx = (poy < 3)? 16'hffff : row_y3;   
    
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
        .idx_in_k(idx1_in_k),
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
        .idx_in_k(idx2_in_k),
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
        .idx_in_k(idx3_in_k),
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
        
        .ifx_stall(ifx_stall),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_pixels_add_end(conv_pixels_add_end),
//        .conv_min_pixels_add_end(conv_min_pixels_add_end),
        .valid_adr(valid_adr)
    );
    
    assign valid_row1_adr = (poy < 1)? 0 : valid_adr;
    assign valid_row2_adr = (poy < 2)? 0 : valid_adr;
    assign valid_row3_adr = (poy < 3)? 0 : valid_adr;
    
    //address translation
    //clr downside
//    assign row_base0_in_3 = (s == 4'd1)? row_base0_in_3s:
//                          (s == 4'd2)? (row_base0_in_3s << 1):
//                          0;                 
//    assign row_base0 = row_base0_in_3 + (row_base0_in_3 << 1); // 3 * s * m                 
    
    //clr upside
    
    assign row1_bias0 = idx1_in_k + 1 - {{12'b0},p};
    assign row2_bias0 = idx2_in_k + 1 + {{12'b0},s} - {{12'b0},p};
    assign row3_bias0 = idx3_in_k + 1 + {{11'b0}, s, {1'b0}} - {{12'b0},p};
    
    
    assign row1_base_in_3s = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base0_in_3s - 1) : row_base0_in_3s;
    assign row2_base_in_3s = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row_base0_in_3s - 1) : row_base0_in_3s;
    assign row3_base_in_3s = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row_base0_in_3s - 1) : row_base0_in_3s;
    
    
    assign row1_base_in_3 = (s == 4'd1)? row1_base_in_3s:
                          (s == 4'd2)? (row1_base_in_3s << 1):
                          0;                    
    assign row2_base_in_3 = (s == 4'd1)? row2_base_in_3s:
                          (s == 4'd2)? (row2_base_in_3s << 1):
                          0;                    
    assign row3_base_in_3 = (s == 4'd1)? row3_base_in_3s:
                          (s == 4'd2)? (row3_base_in_3s << 1):
                          0;            
                          
    //clr downside                            
//    assign row1_base = row1_base_in_3 + (row1_base_in_3 << 1); // 3 * s * m                 
//    assign row2_base = row2_base_in_3 + (row2_base_in_3 << 1); // 3 * s * m
//    assign row3_base = row3_base_in_3 + (row3_base_in_3 << 1); // 3 * s * m
    //clr upside 
    assign s_mult_3 = (s << 1) + s;
    
    assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;
    assign row2_bias = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row2_bias0 + {12'b0, {s_mult_3}}) : row2_bias0;
    assign row3_bias = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;
    
    //row_base + row_bias = row_idx
//    assign assert_base_bias_idx1 = (row1_idx == 16'hffff)? 1:
//                                   (row1_base + row1_bias == row1_idx);
                                   
//    assign assert_base_bias_idx2 = (row2_idx == 16'hffff)? 1:
//                                   (row2_base + row2_bias == row2_idx); 
                                   
//    assign assert_base_bias_idx3 = (row3_idx == 16'hffff)? 1:
//                                   (row3_base + row3_bias == row3_idx);                                                             
    
    assign leq3_1 = (row1_bias <= 3)? 1 : 0;
    assign leq6_1 = (row1_bias <= 6)? 1 : 0;
    assign leq9_1 = (row1_bias <= 9)? 1 : 0;
    
    assign leq3_2 = (row2_bias <= 3)? 1 : 0;
    assign leq6_2 = (row2_bias <= 6)? 1 : 0;
    assign leq9_2 = (row2_bias <= 9)? 1 : 0;
    
    assign leq3_3 = (row3_bias <= 3)? 1 : 0;
    assign leq6_3 = (row3_bias <= 6)? 1 : 0;
    assign leq9_3 = (row3_bias <= 9)? 1 : 0;
    
    assign row1_buf_idx_s1 = (leq6_1 == 1'b1)? 
                             ((leq3_1 == 1'b1)? row1_bias: (row1_bias - 3)) :
                             ((leq9_1 == 1'b1)? (row1_bias - 6): (row1_bias - 9));
    
    assign row1_offset_s1 = (leq6_1 == 1'b1)? 
                            ((leq3_1 == 1'b1)? 0: 1) :
                            ((leq9_1 == 1'b1)? 2: 3);
                         
//    assign row1_buf_idx_s2 = (leq6_1 == 1'b1)? ((row1_bias + 1) >> 1):
//                         ((row1_bias - 6 + 1) >> 1);                                          
                         
//    assign row1_offset_s2 = ((leq6_1 == 1'b1)? (row1_bias + 1):(row1_bias-6 + 1))
//                          - (row1_buf_idx_s2 << 1)
//                          + ((leq6_1 == 1'b1)? 0 : 2);
                          
    assign row2_buf_idx_s1 = (leq6_2 == 1'b1)? 
                             ((leq3_2 == 1'b1)? row2_bias: (row2_bias - 3)) :
                             ((leq9_2 == 1'b1)? (row2_bias - 6): (row2_bias - 9));
    
    assign row2_offset_s1 = (leq6_2 == 1'b1)? 
                            ((leq3_2 == 1'b1)? 0: 1) :
                            ((leq9_2 == 1'b1)? 2: 3);
                         
//    assign row2_buf_idx_s2 = (leq6_2 == 1'b1)? ((row2_bias + 1) >> 1):
//                         ((row2_bias - 6 + 1) >> 1);                                          
                         
//    assign row2_offset_s2 = ((leq6_2 == 1'b1)? (row2_bias + 1):(row2_bias-6 + 1))
//                          - (row2_buf_idx_s2 << 1)
//                          + ((leq6_2 == 1'b1)? 0 : 2);
                          
    assign row3_buf_idx_s1 = (leq6_3 == 1'b1)? 
                             ((leq3_3 == 1'b1)? row3_bias: (row3_bias - 3)) :
                             ((leq9_3 == 1'b1)? (row3_bias - 6): (row3_bias - 9));
    
    assign row3_offset_s1 = (leq6_3 == 1'b1)? 
                            ((leq3_3 == 1'b1)? 0: 1) :
                            ((leq9_3 == 1'b1)? 2: 3);
                         
//    assign row3_buf_idx_s2 = (leq6_3 == 1'b1)? ((row3_bias + 1) >> 1):
//                         ((row3_bias - 6 + 1) >> 1);                                          
                         
//    assign row3_offset_s2 = ((leq6_3 == 1'b1)? (row3_bias + 1):(row3_bias-6 + 1))
//                          - (row3_buf_idx_s2 << 1)
//                          + ((leq6_3== 1'b1)? 0 : 2);
    
//    assign row1_buf_idx = (row1_idx == 16'hffff)? 0 :
//                          ((s == 4'd1)? row1_buf_idx_s1:
//                          (s == 4'd2)? row1_buf_idx_s2:
//                          0);
    
//    assign row1_buf_adr_in_row = (row1_idx == 16'hffff)? 16'hffff:
//                                 (row1_base_in_3 + 
//                                 ((s == 4'd1)? row1_offset_s1:
//                                  (s == 4'd2)? row1_offset_s2:
//                                  0));  
                                                        
    assign row1_buf_idx = (row1_idx == 16'hffff)? 0 :
                          (row1_buf_idx_s1);                      
                          
    assign row1_buf_adr_in_row = (row1_idx == 16'hffff)? 16'hffff:
                                 (row1_base_in_3 + row1_offset_s1);   
    
     //the adr is the virtual adr. when tile is small, it equals the phisical adr,
     // when tile is bigger, need mapping logic and schedule logic.
    // the adr need more completely logic
    //xxxxxxxxxxxx                      
    assign row1_buf_adr = (row1_idx == 16'hffff)? 16'hffff:
                        ((row1_buf_adr_in_row << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
                        + (if_idx - 1);                                         
    
//    assign row2_buf_idx = (row2_idx == 16'hffff)? 0 :
//                          ((s == 4'd1)? row2_buf_idx_s1:
//                          (s == 4'd2)? row2_buf_idx_s2:
//                          0);
                          
//    assign row2_buf_adr_in_row = (row2_idx == 16'hffff)? 16'hffff:
//                                 (row2_base_in_3 + 
//                                 ((s == 4'd1)? row2_offset_s1:
//                                  (s == 4'd2)? row2_offset_s2:
//                                  0));   
    
    assign row2_buf_idx = (row2_idx == 16'hffff)? 0 :
                          (row2_buf_idx_s1);
                          
    assign row2_buf_adr_in_row = (row2_idx == 16'hffff)? 16'hffff:
                                 (row2_base_in_3 + row2_offset_s1);  
                          
    assign row2_buf_adr = (row2_idx == 16'hffff)? 16'hffff :
                        ((row2_buf_adr_in_row << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
                        + (if_idx - 1);                                         
    
//    assign row3_buf_idx = (row3_idx == 16'hffff)? 0 :
//                          ((s == 4'd1)? row3_buf_idx_s1:
//                          (s == 4'd2)? row3_buf_idx_s2:
//                          0);
                          
//    assign row3_buf_adr_in_row = (row3_idx == 16'hffff)? 16'hffff:
//                                 row3_base_in_3 + 
//                                 ((s == 4'd1)? row3_offset_s1:
//                                  (s == 4'd2)? row3_offset_s2:
//                                  0);   
                          
    assign row3_buf_idx = (row3_idx == 16'hffff)? 0 :
                          (row3_buf_idx_s1);
                          
    assign row3_buf_adr_in_row = (row3_idx == 16'hffff)? 16'hffff:
                                 (row3_base_in_3 + row3_offset_s1);   
                                                        
    assign row3_buf_adr = (row3_idx == 16'hffff)? 16'hffff :
                        ((row3_buf_adr_in_row << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
                        + (if_idx - 1);                                         
    
    
    //slab
    assign row_slab_start_idx = (slab_num > 0)? (row_start_idx - 16'd32): 16'hffff;
    
    assign row1_slab_idx = (slab_num > 0)? row1_buf_idx : 0;
                          
    assign row1_slab_adr = (slab_num > 0)? (row1_buf_adr - nif): 16'hffff;
    
    assign row2_slab_idx = (slab_num > 0)? row2_buf_idx : 0;  
                          
    assign row2_slab_adr = (slab_num > 0)? (row2_buf_adr - nif): 16'hffff;
    
    assign row3_slab_idx = (slab_num > 0)? row3_buf_idx : 0;
                          
    assign row3_slab_adr = (slab_num > 0)? (row3_buf_adr - nif): 16'hffff;
    
endmodule
