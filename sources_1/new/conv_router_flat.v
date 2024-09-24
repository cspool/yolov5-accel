`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 04:12:55 PM
// Design Name: 
// Module Name: conv_router_flat
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


module conv_router_flat(
mode,
of, ox, oy, ix, iy, nif,
k, s, p,
clk, en, reset, //en means initial finish
nif_in_2pow,
ix_in_2pow,

channel_out_add_end,
quantify_add_end,
conv_out_add_end,
    
nif_mult_k_mult_k,

cur_pox, cur_pof, cur_poy,
cur_ox_start, cur_of_start, cur_oy_start,
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
   parameter pixels_in_row_mult_2_minus_1 = 63;
   parameter pixels_in_row_mult_2_minus_2 = 62;
   parameter pixels_in_row_in_2pow = 5;
   parameter buffers_num = 3;
   parameter pixels_in_row_minus_1 = pixels_in_row-1;
   parameter pixels_in_row_minus_2 = pixels_in_row-2;
   parameter pixels_in_row_minus_3 = pixels_in_row-3;
   parameter buffers_num_minus_1 = buffers_num-1;
   
   parameter row_num_in_mode0 = 64; // 64 in 8 bit, 128 in 1 bit
   parameter row_num_in_mode1 = 128; // 64 in 8 bit, 128 in 1 bit
    
    // conv tiling module
    input mode;
    
    input [3:0] k, s, p;
    
    input [15:0] of, ox, oy, ix, iy, nif;
    
    input clk, en, reset; // reset is valid a cycle before en being valid
    
    input [3:0] nif_in_2pow, ix_in_2pow;
    
//    input shift_add2_end;
//    input stall;
    input channel_out_add_end, quantify_add_end, conv_out_add_end;
    
    input [15:0] nif_mult_k_mult_k;
    
    output reg [15:0] cur_pox, cur_pof, cur_poy;
    
    output reg [15:0] cur_ox_start, cur_of_start, cur_oy_start;
    
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

    //conv tile module
    
    //address translation
//    wire [15:0] row_base0_in_3s;
    
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
    wire [15:0] row1_buf_idx_s1;
    
    wire [15:0] row2_offset_s1;
    wire [15:0] row2_buf_idx_s1;
    
    wire [15:0] row3_offset_s1;
    wire [15:0] row3_buf_idx_s1;
           
        
    wire loop_y_add_begin, loop_y_add_end;
    wire loop_x_add_begin, loop_x_add_end;
    wire loop_f_add_begin, loop_f_add_end;
    wire loop_if_add_begin, loop_if_add_end;
    
    reg [15:0] tile_y_start, tile_x_start, tile_f_start; // tile_f_start is the inner loop
    
    reg [15:0] if_start;
    
    wire [15:0] row_num;
    
    reg[15:0] row_base_in_3s;
    
    //conv rows
    wire [15:0] iy_start_1, iy_start_2, iy_start_3;

    reg [15:0] ky1, ky2, ky3;

    wire loop_ky1_add_begin, loop_ky1_add_end;
    wire loop_ky2_add_begin, loop_ky2_add_end;
    wire loop_ky3_add_begin, loop_ky3_add_end;
     
    wire [15:0] p_plus_1, p_plus_iy;
    
    wire [15:0] ky1_plus_irow_y1;
    wire [15:0] ky2_plus_irow_y2;
    wire [15:0] ky3_plus_irow_y3;
    
    //conv pixels
    wire [15:0] ix_start;
   
   wire [15:0] next_ix_start;
   
   wire [15:0] ix_end;

   wire [3:0] left_pad, right_pad, overlap;
   
   wire [3:0] next_left_pad, next_overlap;
   
   wire [15:0] row_start_fix;
   
   wire [15:0] row_end;
   
   wire [15:0] row_end_low, row_end_high;
   
   wire [15:0] row_end_fix0, row_end_fix;
   
   wire [15:0] ix_end_s_1;
   
   wire [15:0] p_plus_ix;
   
   wire[15:0] ix_minus_1;
   
   wire [15:0] pox_minus_1; 
   wire [15:0] pox_minus_2;
   wire [15:0] pox_minus_3;
   wire [15:0] pox_mult_2;
   
   wire [15:0] reg_from_initial;
   
   wire [15:0] next_reg_from_initial;

   reg [15:0] reg_from;
   wire [15:0] reg_to;

   reg [15:0] adr1;
   
   reg signal_adr1_add;
   
   wire loop_adr1_add_begin, loop_adr1_add_end;
   
   wire stall_in_row;
   
   reg[3:0] row_length, stall_in_row_counter;
    
    //stall signal
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
    (conv_out_add_end == 1'b1);
//    (((channel_out_add_end == 1'b1))
//    (((channel_out_add_end == 1'b1) && (nif_mult_k_mult_k > cur_pof_mult_cur_poy))
//    || ((conv_out_add_end == 1'b1) && (nif_mult_k_mult_k <= cur_pof_mult_cur_poy)));
       
    
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
       end
       else if(ifx_stall == 1'b0) begin
            cur_ox_start <= ox_start;
            cur_oy_start <= oy_start;
            cur_of_start <= of_start;
            cur_pox <= pox;
            cur_poy <= poy;
            cur_pof <= pof;
       end
       else if (loop_if_stall_counter_add_end == 1'b1) begin //the last high ifstall
            cur_ox_start <= ox_start;
            cur_oy_start <= oy_start;
            cur_of_start <= of_start;
            cur_pox <= pox;
            cur_poy <= poy;
            cur_pof <= pof;
       end
       else begin
            cur_ox_start <= cur_ox_start;
            cur_oy_start <= cur_oy_start;
            cur_of_start <= cur_of_start;
            cur_pox <= cur_pox;
            cur_poy <= cur_poy;
            cur_pof <= cur_pof;
       end
    end

    //conv tiling module

    assign row_num = (mode == 1'b0)? row_num_in_mode0 :
                          (mode == 1'b1)? row_num_in_mode1 : 0;

    //loop if
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           if_start <= 1;
       end
       else if((loop_if_add_begin == 1'b1))begin
           if(loop_if_add_end == 1'b1) begin //the last if_start
              if_start <= 1;
           end
           else begin
              if_start <= if_start + 1; 
           end
       end
       else begin
            if_start <= if_start;
       end
    end
    
    
    assign loop_if_add_begin = (conv_rows_add_end1 == 1'b1);
    
    assign loop_if_add_end = loop_if_add_begin && (if_start + 1) > nif;
    
    assign conv_nif_add_end = loop_if_add_end;
    
    //loop of
    always@(posedge clk)begin 
        if(reset ==1'b1)begin
            tile_f_start <= 1;
        end
        else if(loop_f_add_begin == 1'b1) begin
           if(loop_f_add_end == 1'b1) begin // the last tile_f_start
              tile_f_start <= 1;
           end
           else begin
              tile_f_start <= tile_f_start + row_num; 
           end
       end
       else begin
            tile_f_start <= tile_f_start;
       end
    end
    
    assign loop_f_add_begin = (loop_if_add_end == 1'b1);
    
    assign loop_f_add_end = loop_f_add_begin && (tile_f_start + row_num) > of;
    
    //loop ox
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
    
    assign loop_x_add_begin = (loop_f_add_end == 1'b1);
    
    assign loop_x_add_end = loop_x_add_begin && (tile_x_start + pixels_in_row) > ox;
    
    //loop oy
    always@(posedge clk)begin
       if(reset ==1'b1)begin
           tile_y_start <= 1;
           row_base_in_3s <= 0;
       end
       else if(loop_y_add_begin == 1'b1)begin
           if(loop_y_add_end == 1'b1) begin //the last tile_y_start
              tile_y_start <= 1;
              row_base_in_3s <= 0;
           end
           else begin
              tile_y_start <= tile_y_start + buffers_num; 
              row_base_in_3s <= row_base_in_3s + 1; //oy_start in 3
           end
       end
       else begin
            tile_y_start <= tile_y_start;
            row_base_in_3s <= row_base_in_3s;
       end
    end
    
    assign loop_y_add_begin = (loop_x_add_end==1'b1);
    
    assign loop_y_add_end = loop_y_add_begin && (tile_y_start + buffers_num) > oy;
    
    //next ox_st, oy_st, pox, poy
    assign next_ox_start = ((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;
    
    assign ox_start = tile_x_start;
    
    assign next_oy_start = ((reset ==1'b1) || (loop_y_add_end == 1'b1))? 1 : tile_y_start + buffers_num;
    
    assign oy_start = tile_y_start;
    
    assign of_start = tile_f_start;
    
    assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
                 pixels_in_row;
                 
    assign poy = (tile_y_start + buffers_num_minus_1 > oy)? (oy - tile_y_start + 1):
                 buffers_num;   
                 
    assign pof = (tile_f_start + row_num - 1 > of)? (of - tile_f_start + 1):
                 row_num;
    
    //assign conv_tiling_add_end = loop_x_add_end; 
    assign conv_tiling_add_end = loop_y_add_end; 
    
    assign if_idx = if_start;     
    
    assign conv_end = conv_tiling_add_end;


    assign row1_idx = (poy < 1)? 16'hffff : row_y1;
    assign row2_idx = (poy < 2)? 16'hffff : row_y2;
    assign row3_idx = (poy < 3)? 16'hffff : row_y3;   
    
    assign iy_start = (s == 4'd1)? oy_start:
                      (s == 4'd2)? (oy_start << 1) - 1:
                      0;
                        
    assign iy_start_plus_s = iy_start + {{12'b0}, s};
    assign iy_start_plus_2s = iy_start + {{11'b0}, s, {1'b0}};

    

    //conv rows
    //conv row 1
    assign p_plus_1 = {{12'b0},p} + 16'd1;
    assign p_plus_iy = {{12'b0},p} + iy;

    assign iy_start_1 = iy_start;

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
    
    assign loop_ky1_add_begin = (conv_pixels_add_end == 1'b1);
    assign loop_ky1_add_end = loop_ky1_add_begin && ((ky1 + 1) == (k));

    assign ky1_plus_irow_y1 = ky1 + iy_start_1;                         
  
    assign row_y1 = ((ky1_plus_irow_y1 < p_plus_1) || (ky1_plus_irow_y1 > p_plus_iy))? 16'hffff: (ky1_plus_irow_y1 - {{12'b0},p});

    assign conv_rows_add_end1 = loop_ky1_add_end;
    
    assign idx1_in_k = ky1;
    
    //conv row 2
    assign iy_start_2 = iy_start_plus_s;

    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky2 <= 0;
        end
        else if (loop_ky2_add_begin == 1'b1) begin
            if (loop_ky2_add_end == 1'b1) begin //the last ky2
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
    
    assign loop_ky2_add_begin = (conv_pixels_add_end == 1'b1);
    assign loop_ky2_add_end = loop_ky2_add_begin && ((ky2 + 1) == (k));

    assign ky2_plus_irow_y2 = ky2 + iy_start_2;                         
  
    assign row_y2 = ((ky2_plus_irow_y2 < p_plus_1) || (ky2_plus_irow_y2 > p_plus_iy))? 16'hffff: (ky2_plus_irow_y2 - {{12'b0},p});

    assign conv_rows_add_end2 = loop_ky2_add_end;
    
    assign idx2_in_k = ky2;
    
    //conv row 3
    assign iy_start_3 = iy_start_plus_2s;

    always@(posedge clk) begin
        if (reset == 1'b1) begin
            ky3 <= 0;
        end
        else if (loop_ky3_add_begin == 1'b1) begin
            if (loop_ky3_add_end == 1'b1) begin //the last ky2
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
    
    assign loop_ky3_add_begin = (conv_pixels_add_end == 1'b1);
    assign loop_ky3_add_end = loop_ky3_add_begin && ((ky3 + 1) == (k));

    assign ky3_plus_irow_y3 = ky3 + iy_start_3;                         
  
    assign row_y3 = ((ky3_plus_irow_y3 < p_plus_1) || (ky3_plus_irow_y3 > p_plus_iy))? 16'hffff: (ky3_plus_irow_y3 - {{12'b0},p});

    assign conv_rows_add_end3 = loop_ky3_add_end;
    
    assign idx3_in_k = ky3;

    //conv pixels
    //assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
//                 pixels_in_row;
   assign pox_minus_1 = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start):
                 pixels_in_row_minus_1;
   assign pox_minus_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start - 1):
                 pixels_in_row_minus_2;
   assign pox_minus_3 = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start - 2):
                 pixels_in_row_minus_3;
                 
   assign pox_mult_2 = (pox << 1);
   
   // ix_start = (ox_start - 1) * s + 1;
   assign ix_start = (s == 4'd1)? tile_x_start:
                     (s == 4'd2)? (tile_x_start << 1) - 1:
                     0;
                     
   //next ix_start
   //next_ox_start = ((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;
//   assign next_ix_start = (s == 4'd1)? next_ox_start:
//                     (s == 4'd2)? (next_ox_start << 1) - 1:
//                     0;
   assign next_ix_start = (s == 4'd1)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row):
                     (s == 4'd2)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : (tile_x_start << 1) + pixels_in_row_mult_2_minus_1):
                     0;
   
   // ix_end = ix_start + (pox-1) * s + k-1; 
   //assign ix_start = (s == 4'd1)? tile_x_start:
//                     (s == 4'd2)? (tile_x_start << 1) - 1:
//                     0;                
   assign ix_end_s_1 = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
                     (s == 4'd2)? ((tile_x_start << 1) + k + pox_minus_3):
                     0; 
   
//   assign ix_end = (s == 4'd1)? ix_end_s_1:
//                   (s == 4'd2)? ix_end_s_1 + pox_minus_1:
//                   0;
   
   assign ix_end = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
                   (s == 4'd2)? (tile_x_start + k + pox_mult_2 - 3):
                   0;

//   assign ix_start = (s == 4'd1)? tile_x_start:
//                     (s == 4'd2)? (tile_x_start << 1) - 1:
//                     0; 
//   assign left_pad = (ix_start <= {{12'b0}, p})? ({{12'b0}, p} - ix_start + 1):0;
   assign left_pad = (ix_start <= {{12'b0}, p})?
   ((s == 4'd1)? ({{12'b0}, p} - tile_x_start + 1):
   (s == 4'd2)? ({{12'b0}, p} - (tile_x_start << 1) + 2):0):0;
   
   //next left_pad
//   assign next_ix_start = (s == 4'd1)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row):
//                     (s == 4'd2)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? 1 : (tile_x_start << 1) + pixels_in_row_mult_2_minus_1):
//                     0;
//   assign next_left_pad = (next_ix_start <= {{12'b0}, p})? ({{12'b0}, p} - next_ix_start + 1):0;
   
   assign next_left_pad = 
   (next_ix_start <= {{12'b0}, p})?
   ((s == 4'd1)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? {{12'b0}, p} : ({{12'b0}, p} - tile_x_start - pixels_in_row_minus_1)):
   (s == 4'd2)? (((reset ==1'b1) || (loop_x_add_end == 1'b1))? {{12'b0}, p} : ({{12'b0}, p} - (tile_x_start << 1) - pixels_in_row_mult_2_minus_2))  :0) :0;
   
   assign p_plus_ix = {{12'b0}, p} + ix;
   
   assign right_pad = (ix_end > p_plus_ix)? (ix_end - p_plus_ix): 0;
   
   assign overlap = (ix_start <= p_plus_1)? 0: {{12'b0}, p};
   
   //next overlap
   assign next_overlap = (next_ix_start <= p_plus_1)? 0: {{12'b0}, p};
   
   assign row_start_fix = ix_start + left_pad - p_plus_1 + overlap;
   
   assign row_end = ix_end - right_pad - p_plus_1;
   
   assign ix_minus_1 = ix - 1;
                   
   assign row_end_low = (row_end+1) & 16'h001f;
   assign row_end_high = (row_end+1) & 16'hffe0;
   
   assign row_end_fix0 = (row_end_low == 16'h0)? (row_end - 16'h0001):
                        (row_end_high + 16'h001f);
                        
   assign row_end_fix = (row_end_fix0 > ix_minus_1)? ix_minus_1:
                             row_end_fix0;
  
   assign reg_from_initial = left_pad + {{12'b0}, overlap} + 1;
   
   //next reg_from_initial
   assign next_reg_from_initial = next_left_pad + {{12'b0}, next_overlap} + 1;                          
   
   assign valid_adr = loop_adr1_add_begin;
   
   // for adr1 in range(0, row_end_min_fix - row_start_fix + 1, pixels_in_row)
   always@(posedge clk) begin
        if (reset == 1'b1) begin
            signal_adr1_add <= 0;
        end
        else if (en == 1'b1) begin
            signal_adr1_add <= 1;
        end
        else if (conv_tiling_add_end == 1'b1) begin // all end
            signal_adr1_add <= 0;
        end
        else begin
            signal_adr1_add <= signal_adr1_add;
        end
    end   
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            adr1 <= 0;    
            reg_from <= next_reg_from_initial;
        end
        else if (loop_adr1_add_begin == 1'b1) begin
            if (loop_adr1_add_end == 1'b1) begin// the last adr1 or adr2
                adr1 <= 0;    
                reg_from <= next_reg_from_initial;
            end
            else begin
                adr1 <= adr1 + pixels_in_row;
                reg_from <= reg_to + 1;
            end
        end
        else begin
            adr1 <= adr1;
            reg_from <= reg_from;
        end
    end  
    
    assign loop_adr1_add_begin = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0);
  
    assign loop_adr1_add_end = loop_adr1_add_begin && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
                    
    assign reg_to = (row_start_idx + pixels_in_row_minus_1 > row_end)?
                    (reg_from + row_end - row_start_idx):
                    (reg_from + pixels_in_row_minus_1);       
    
    //stall in row
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            row_length <= 0;
        end
        else if (en == 1'b1) begin
            row_length <= 1;
        end
        else if (loop_adr1_add_begin == 1'b1) begin
            if (loop_adr1_add_end == 1'b1) begin// the last adr1
                row_length <= 1;
            end
            else begin
                row_length <= row_length + 1;
            end
        end
        else begin
            row_length <= row_length;
        end
    end  
    
    always@(posedge clk) begin
        if (reset == 1'b1) begin
            stall_in_row_counter <= 0;
        end
        else if (en == 1'b1) begin //first cycle no need stall
            stall_in_row_counter <= 0;
        end
        else if (loop_adr1_add_end == 1'b1) begin // the last pixels word
            if (conv_tiling_add_end == 1'b1) begin // all end
                stall_in_row_counter <= 0;
            end 
            else begin
                stall_in_row_counter <= (k - row_length);
            end
        end
        else if (stall_in_row_counter > 0)begin
            stall_in_row_counter <= stall_in_row_counter - 1;
        end
        else begin
            stall_in_row_counter <= stall_in_row_counter;
        end
    end 

    assign stall_in_row = ((stall_in_row_counter > 0)? 1 : 0) || (ifx_stall == 1'b1);
                           
    assign row_start_idx = adr1 + row_start_fix;                       
                           
    assign row_end_idx = row_start_idx + pixels_in_row - 1;
    
    assign west_pad = (row_start_idx == row_start_fix)? left_pad: 0;
    
    assign slab_num = (row_start_idx == row_start_fix)? overlap: 0;
    
    assign east_pad = (loop_adr1_add_end == 1'b1) ? right_pad:0;
                           
    assign reg_start_idx = reg_from;

    assign reg_end_idx = reg_to + east_pad;
    
    assign conv_pixels_add_end = (loop_adr1_add_end == 1'b1);
    
    assign valid_row1_adr = (poy < 1)? 0 : valid_adr;
    assign valid_row2_adr = (poy < 2)? 0 : valid_adr;
    assign valid_row3_adr = (poy < 3)? 0 : valid_adr;
    
    //address translation
    
    assign row1_bias0 = idx1_in_k + 1 - {{12'b0},p};
    assign row2_bias0 = idx2_in_k + 1 + {{12'b0},s} - {{12'b0},p};
    assign row3_bias0 = idx3_in_k + 1 + {{11'b0}, s, {1'b0}} - {{12'b0},p};
    
    
    assign row1_base_in_3s = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    assign row2_base_in_3s = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    assign row3_base_in_3s = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    
    
    assign row1_base_in_3 = (s == 4'd1)? row1_base_in_3s:
                          (s == 4'd2)? (row1_base_in_3s << 1):
                          0;                    
    assign row2_base_in_3 = (s == 4'd1)? row2_base_in_3s:
                          (s == 4'd2)? (row2_base_in_3s << 1):
                          0;                    
    assign row3_base_in_3 = (s == 4'd1)? row3_base_in_3s:
                          (s == 4'd2)? (row3_base_in_3s << 1):
                          0;            

    assign s_mult_3 = (s << 1) + s;
    
    assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;
    assign row2_bias = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row2_bias0 + {12'b0, {s_mult_3}}) : row2_bias0;
    assign row3_bias = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;
                                                            
    
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
                          
    assign row2_buf_idx_s1 = (leq6_2 == 1'b1)? 
                             ((leq3_2 == 1'b1)? row2_bias: (row2_bias - 3)) :
                             ((leq9_2 == 1'b1)? (row2_bias - 6): (row2_bias - 9));
    
    assign row2_offset_s1 = (leq6_2 == 1'b1)? 
                            ((leq3_2 == 1'b1)? 0: 1) :
                            ((leq9_2 == 1'b1)? 2: 3);
                          
    assign row3_buf_idx_s1 = (leq6_3 == 1'b1)? 
                             ((leq3_3 == 1'b1)? row3_bias: (row3_bias - 3)) :
                             ((leq9_3 == 1'b1)? (row3_bias - 6): (row3_bias - 9));
    
    assign row3_offset_s1 = (leq6_3 == 1'b1)? 
                            ((leq3_3 == 1'b1)? 0: 1) :
                            ((leq9_3 == 1'b1)? 2: 3);
 
                                                        
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
    
    
    assign row2_buf_idx = (row2_idx == 16'hffff)? 0 :
                          (row2_buf_idx_s1);
                          
    assign row2_buf_adr_in_row = (row2_idx == 16'hffff)? 16'hffff:
                                 (row2_base_in_3 + row2_offset_s1);  
                          
    assign row2_buf_adr = (row2_idx == 16'hffff)? 16'hffff :
                        ((row2_buf_adr_in_row << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
                        + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
                        + (if_idx - 1);                                         
    
                          
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
