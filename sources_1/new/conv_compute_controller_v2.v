`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/06 11:02:33
// Design Name: 
// Module Name: conv_compute_controller_v2
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


module conv_compute_controller_v2(clk,
                               reset,
                               conv_compute,
                               mode_init,
                               of_init,
                               ox_init,
                               oy_init,
                               ix_init,
                               iy_init,
                               nif_init,
                               k_init,
                               s_init,
                               p_init,
                               nif_in_2pow_init,
                               ix_in_2pow_init,
                               ox_start,
                               oy_start,
                               of_start,
                               pox,
                               poy,
                               pof,
                               if_idx,
                               west_pad,
                               slab_num,
                               east_pad,
                               row1_idx,
                               row2_idx,
                               row3_idx,
                               row_start_idx,
                               row_end_idx,
                               reg_start_idx,
                               reg_end_idx,
                               row1_buf_adr,
                               row1_buf_idx,
                               row1_buf_word_select,
                               row2_buf_adr,
                               row2_buf_idx,
                               row2_buf_word_select,
                               row3_buf_adr,
                               row3_buf_idx,
                               row3_buf_word_select,
                               row_slab_start_idx,
                               row1_slab_adr,
                               row1_slab_idx,
                               row2_slab_adr,
                               row2_slab_idx,
                               row3_slab_adr,
                               row3_slab_idx,
                               row1_slab_adr_to_wr,
                               row1_slab_idx_to_wr,
                               row2_slab_adr_to_wr,
                               row2_slab_idx_to_wr,
                               row3_slab_adr_to_wr,
                               row3_slab_idx_to_wr,
                               valid_row1_adr,
                               valid_row2_adr,
                               valid_row3_adr,
                               conv_end,
                               conv_pixels_add_end,
                               conv_nif_add_end
                               );
    parameter pixels_in_row                = 32;
    parameter pixels_in_row_mult_2         = pixels_in_row * 2;
    parameter pixels_in_row_mult_2_minus_1 = pixels_in_row_mult_2 - 1;
    parameter pixels_in_row_mult_2_minus_2 = pixels_in_row_mult_2 - 2;
    parameter pixels_in_row_mult_2_minus_3 = pixels_in_row_mult_2 - 3;
    parameter pixels_in_row_mult_2_minus_4 = pixels_in_row_mult_2 - 4;
    parameter pixels_in_row_in_2pow        = 5;
    parameter buffers_num                  = 3;
    parameter pixels_in_row_minus_1        = pixels_in_row-1;
    parameter pixels_in_row_minus_2        = pixels_in_row-2;
    parameter pixels_in_row_minus_3        = pixels_in_row-3;
    parameter buffers_num_minus_1          = buffers_num-1;
    parameter row_num_in_mode0             = 64; // 64 in 8 bit, 128 in 1 bit
    parameter row_num_in_mode1             = 128; // 64 in 8 bit, 128 in 1 bit
    parameter ifs_in_row_2pow              = 1;
    parameter input_buffer_size_2pow       = 12;//4096
    parameter slab_buffer_size_2pow        = 13;//8192
    
    // conv tiling module
    input clk, reset, conv_compute;
    input [3:0] mode_init;
    input [3:0] k_init, s_init, p_init;
    input [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;
    input [3:0] nif_in_2pow_init, ix_in_2pow_init;
    reg [3:0] mode;
    reg [3:0] k, s, p;
    reg [15:0] of, ox, oy, ix, iy, nif;
    reg [3:0] nif_in_2pow, ix_in_2pow;
    output [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;
    output [3:0] west_pad, slab_num, east_pad;
    output [15:0] row1_idx, row2_idx, row3_idx;
    // wire [15:0] row_y1, row_y2, row_y3;
    output [15:0] row_start_idx, row_end_idx;
    output [15:0] reg_start_idx, reg_end_idx;
    output [15:0] row1_buf_adr;
    output [1:0] row1_buf_idx;
    output row1_buf_word_select;
    output [15:0] row2_buf_adr;
    output [1:0] row2_buf_idx;
    output row2_buf_word_select;
    output [15:0] row3_buf_adr;
    output [1:0] row3_buf_idx;
    output row3_buf_word_select;
    output [15:0] row_slab_start_idx;
    output [15:0] row1_slab_adr;
    output [1:0] row1_slab_idx;
    output [15:0] row2_slab_adr;
    output [1:0] row2_slab_idx;
    output [15:0] row3_slab_adr;
    output [1:0] row3_slab_idx;
    output [15:0] row1_slab_adr_to_wr;
    output [1:0] row1_slab_idx_to_wr;
    output [15:0] row2_slab_adr_to_wr;
    output [1:0] row2_slab_idx_to_wr;
    output [15:0] row3_slab_adr_to_wr;
    output [1:0] row3_slab_idx_to_wr;
    //valid is the buf/slab rd en signal, which equals slab_to_wr signal
    output valid_row1_adr, valid_row2_adr, valid_row3_adr;
    output conv_end;
    output conv_pixels_add_end;
    output conv_nif_add_end;
    wire valid_adr;
    wire [15:0] row1_buf_adr_in_row;
    wire [15:0] row2_buf_adr_in_row;
    wire [15:0] row3_buf_adr_in_row;
    wire [15:0] iy_start;
    // wire[15:0] iy_start_plus_s;
    // wire[15:0] iy_start_plus_2s;
    wire conv_rows_add_end1, conv_rows_add_end2, conv_rows_add_end3;
    // wire conv_tiling_add_end;
    
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
    // wire [15:0] iy_start_1, iy_start_2, iy_start_3;
    reg [15:0] ky1, ky2, ky3;
    wire loop_ky1_add_begin, loop_ky1_add_end;
    wire loop_ky2_add_begin, loop_ky2_add_end;
    wire loop_ky3_add_begin, loop_ky3_add_end;
    wire [15:0] p_plus_1, p_plus_iy;
    // wire [15:0] ky1_plus_irow_y1;
    // wire [15:0] ky2_plus_irow_y2;
    // wire [15:0] ky3_plus_irow_y3;
    //conv pixels
    wire [15:0] ix_start;
    // wire [15:0] next_ix_start;
    wire [15:0] ix_end;
    wire [3:0] left_pad, right_pad, overlap;
    // wire [3:0] next_left_pad, next_overlap;
    wire [15:0] row_start_fix;
    wire [15:0] row_end;
    wire [15:0] row_end_low, row_end_high;
    wire [15:0] row_end_fix0, row_end_fix;
    wire [15:0] ix_end_s_1;
    wire [15:0] p_plus_ix;
    wire[15:0] ix_minus_1;
    wire [15:0] ix_mask = (16'hffff) >> (16 - ix_in_2pow);
    wire [15:0] pox_minus_1;
    wire [15:0] pox_minus_2;
    wire [15:0] pox_minus_3;
    wire [15:0] pox_mult_2;
    // wire [15:0] reg_from_initial;
    // wire [15:0] next_reg_from_initial;
    reg [15:0] reg_from;
    wire [15:0] reg_to;
    reg [15:0] adr1;
    reg signal_adr1_add;
    wire loop_adr1_add_begin, loop_adr1_add_end;
    wire stall_in_row;
    wire last_pixel_and_tile_end, last_pixel_not_tile_end;
    reg[3:0] row_length, stall_in_row_counter;
    //adr mod mapping
    wire [3:0] row_num_limit_input_buffer_2pow = input_buffer_size_2pow - (
    nif_in_2pow - ifs_in_row_2pow + ix_in_2pow - pixels_in_row_in_2pow);
    wire [3:0] row_num_limit_slab_buffer_2pow = slab_buffer_size_2pow - (
    nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow);
    wire [15:0] row_num_limit_mask_input_buffer = 16'hffff >> (16 - row_num_limit_input_buffer_2pow);
    wire [15:0] row_num_limit_mask_slab_buffer  = 16'hffff >> (16 - row_num_limit_slab_buffer_2pow);
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin //set
            mode        <= mode_init;
            k           <= k_init;
            s           <= s_init;
            p           <= p_init;
            of          <= of_init;
            ox          <= ox_init;
            oy          <= oy_init;
            ix          <= ix_init;
            iy          <= iy_init;
            nif         <= nif_init;
            nif_in_2pow <= nif_in_2pow_init;
            ix_in_2pow  <= ix_in_2pow_init;
        end
        else
        begin
            mode        <= mode;
            k           <= k;
            s           <= s;
            p           <= p;
            of          <= of;
            ox          <= ox;
            oy          <= oy;
            ix          <= ix;
            iy          <= iy;
            nif         <= nif;
            nif_in_2pow <= nif_in_2pow;
            ix_in_2pow  <= ix_in_2pow;
        end
    end
    //stall signal
    reg ifx_stall;
    wire loop_if_stall_counter_add_end;
    assign loop_if_stall_counter_add_end = 
    (ifx_stall == 1'b1) && (conv_compute == 1'b1);
    //  (conv_compute_continue == 1'b1);
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            ifx_stall <= 0;
        end
        else if (loop_if_add_end == 1'b1)
        begin
            ifx_stall <= 1;
        end
            else if (loop_if_stall_counter_add_end == 1'b1)
            begin
            ifx_stall <= 0;
            end
        else
        begin
            ifx_stall <= ifx_stall;
        end
    end

    //conv tiling module
    assign row_num = (mode == 0)? row_num_in_mode0 :
    (mode == 1)? row_num_in_mode1 : 0;
    
    //loop if
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            if_start <= 1;
        end
        else if ((loop_if_add_begin == 1'b1))
        begin
            if (loop_if_add_end == 1'b1)
            begin //the last if_start
                if_start <= 1;
            end
            else
            begin
                if_start <= if_start + 1;
            end
        end
        else
        begin
            if_start <= if_start;
        end
    end
    
    //    assign loop_if_add_begin = (conv_rows_add_end1 == 1'b1);
    assign loop_if_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    0;
    
    //    assign loop_if_add_end = loop_if_add_begin && ((if_start + 1) > nif);
    assign loop_if_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    0;
    
    assign conv_nif_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    0;
    
    //loop of
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            tile_f_start <= 1;
        end
        else if (loop_f_add_begin == 1'b1)
        begin
            if (loop_f_add_end == 1'b1)
            begin // the last tile_f_start
                tile_f_start <= 1;
            end
            else
            begin
                tile_f_start <= tile_f_start + row_num;
            end
        end
        else
        begin
            tile_f_start <= tile_f_start;
        end
    end
    
    
    //    assign loop_f_add_begin = (loop_if_add_end == 1'b1);
    //assign conv_rows_add_end1   = ((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k));
    assign loop_f_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    )
    )
    ):
    0;
    
    //    assign loop_f_add_end = loop_f_add_begin && ((tile_f_start + row_num) > of);
    assign loop_f_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    )
    ):
    0;
    
    //loop ox
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            tile_x_start <= 1;
        end
        else if (loop_x_add_begin == 1'b1)
        begin
            if (loop_x_add_end == 1'b1)
            begin // the last tile_x_start
                tile_x_start <= 1;
            end
            else
            begin
                tile_x_start <= tile_x_start + pixels_in_row;
            end
        end
        else
        begin
            tile_x_start <= tile_x_start;
        end
    end
    
    
    //    assign loop_x_add_begin = (loop_f_add_end == 1'b1);
    
    //    assign loop_x_add_end = loop_x_add_begin && ((tile_x_start + pixels_in_row) > ox);
    assign loop_x_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    )
    ):
    0;
    
    assign loop_x_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    )
    ):
    0;
    
    //loop oy
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            tile_y_start   <= 1;
            row_base_in_3s <= 0;
        end
        else if (loop_y_add_begin == 1'b1)
        begin
            if (loop_y_add_end == 1'b1)
            begin //the last tile_y_start
                tile_y_start   <= 1;
                row_base_in_3s <= 0;
            end
            else
            begin
                tile_y_start   <= tile_y_start + buffers_num;
                row_base_in_3s <= row_base_in_3s + 1; //oy_start in 3
            end
        end
        else
        begin
            tile_y_start   <= tile_y_start;
            row_base_in_3s <= row_base_in_3s;
        end
    end
    
    //    assign loop_y_add_begin = (loop_x_add_end == 1'b1);
    
    //    assign loop_y_add_end = loop_y_add_begin && ((tile_y_start + buffers_num) > oy);
    assign loop_y_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    )
    ):
    0;
    assign loop_y_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    )
    ):
    0;
    
    //next ox_st, oy_st, pox, poy
    
    // assign next_ox_start = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;
    
    assign ox_start = tile_x_start;
    
    //assign loop_y_add_end = ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy);
    // assign next_oy_start = ((reset == 1'b1) || (loop_y_add_end == 1'b1))? 1 : tile_y_start + buffers_num;
    // assign next_oy_start = ((reset == 1'b1) || (((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy)))? 1 : tile_y_start + buffers_num;
    
    assign oy_start = tile_y_start;
    
    assign of_start = tile_f_start;
    
    // assign next_of_start = ((reset == 1'b1) || (loop_f_add_end == 1'b1))? 1 : tile_f_start + row_num;
    
    assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
    pixels_in_row;
    
    assign poy = (tile_y_start + buffers_num_minus_1 > oy)? (oy - tile_y_start + 1):
    buffers_num;
    
    assign pof = (tile_f_start + row_num - 1 > of)? (of - tile_f_start + 1):
    row_num;
    
    //assign conv_tiling_add_end  = loop_x_add_end;
    // assign conv_tiling_add_end = loop_y_add_end;
    assign conv_end               = loop_y_add_end;
    
    assign if_idx = if_start;
    
    // assign row1_idx = (poy < 1)? 16'hffff : row_y1;
    // assign row2_idx = (poy < 2)? 16'hffff : row_y2;
    // assign row3_idx = (poy < 3)? 16'hffff : row_y3;
    // assign row_y1 = ((ky1_plus_irow_y1 < p_plus_1) || (ky1_plus_irow_y1 > p_plus_iy))? 16'hffff: (ky1_plus_irow_y1 - {{12'b0},p});
    // assign row_y2 = ((ky2_plus_irow_y2 < p_plus_1) || (ky2_plus_irow_y2 > p_plus_iy))? 16'hffff: (ky2_plus_irow_y2 - {{12'b0},p});
    // assign row_y3 = ((ky3_plus_irow_y3 < p_plus_1) || (ky3_plus_irow_y3 > p_plus_iy))? 16'hffff: (ky3_plus_irow_y3 - {{12'b0},p});
    // assign ky1_plus_irow_y1 = ky1 + iy_start;
    // assign ky2_plus_irow_y2 = ky2 + iy_start_plus_s; assign iy_start_plus_s  = iy_start + {{12'b0}, s};
    // assign ky3_plus_irow_y3 = ky3 + iy_start_plus_2s; assign iy_start_plus_2s = iy_start + {{11'b0}, s, {1'b0}};
    assign row1_idx = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    ((ky1 + iy_start) - {{12'b0},p});

    assign row2_idx = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff: 
    ((ky2 + iy_start + {{12'b0}, s}) - {{12'b0},p});

    assign row3_idx = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: 
    ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});
    
    assign iy_start = (s == 4'd1)? tile_y_start:
    (s == 4'd2)? (tile_y_start << 1) - 1:
    0;
    
    // assign iy_start_plus_s  = iy_start + {{12'b0}, s};
    // assign iy_start_plus_2s = iy_start + {{11'b0}, s, {1'b0}};
    
    //conv rows
    //conv row 1
    assign p_plus_1  = {{12'b0},p} + 16'd1;
    assign p_plus_iy = {{12'b0},p} + iy;
    
    // assign iy_start_1 = iy_start;
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            ky1 <= 0;
        end
        else if (loop_ky1_add_begin == 1'b1)
        begin
            if (loop_ky1_add_end == 1'b1)
            begin //the last ky1
                ky1 <= 0;
            end
            else
            begin
                ky1 <= ky1 + 1;
            end
        end
        else
        begin
            ky1 <= ky1;
        end
    end
    
    //assign conv_pixels_add_end    = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    //    assign loop_ky1_add_begin = (conv_pixels_add_end == 1'b1);
    //    assign loop_ky1_add_end   = loop_ky1_add_begin && ((ky1 + 1) == (k));
    assign loop_ky1_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    
    
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    )
    ):
    0;
    assign loop_ky1_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    0;
    
    // assign ky1_plus_irow_y1 = ky1 + iy_start_1;
    // assign iy_start_1 = iy_start;
    // assign ky1_plus_irow_y1 = ky1 + iy_start;
    
    // assign row_y1 = ((ky1_plus_irow_y1 < p_plus_1) || (ky1_plus_irow_y1 > p_plus_iy))? 16'hffff: (ky1_plus_irow_y1 - {{12'b0},p});
    
    //    assign conv_rows_add_end1 = loop_ky1_add_end;
    assign conv_rows_add_end1 = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    )
    )
    ):
    0;
    
    assign idx1_in_k = ky1;
    
    //conv row 2
    // assign iy_start_2 = iy_start_plus_s;
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            ky2 <= 0;
        end
        else if (loop_ky2_add_begin == 1'b1)
        begin
            if (loop_ky2_add_end == 1'b1)
            begin //the last ky2
                ky2 <= 0;
            end
            else
            begin
                ky2 <= ky2 + 1;
            end
        end
        else
        begin
            ky2 <= ky2;
        end
    end
    //assign conv_pixels_add_end    = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    //    assign loop_ky2_add_begin = (conv_pixels_add_end == 1'b1);
    //    assign loop_ky2_add_end   = loop_ky2_add_begin && ((ky2 + 1) == (k));
    assign loop_ky2_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    
    
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    )
    ):
    0;
    assign loop_ky2_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    )
    ):
    0;
    
    // assign ky2_plus_irow_y2 = ky2 + iy_start_2;
    // assign iy_start_2 = iy_start_plus_s;
    // assign ky2_plus_irow_y2 = ky2 + iy_start_plus_s;
    
    // assign row_y2 = ((ky2_plus_irow_y2 < p_plus_1) || (ky2_plus_irow_y2 > p_plus_iy))? 16'hffff: (ky2_plus_irow_y2 - {{12'b0},p});
    
    //    assign conv_rows_add_end2 = loop_ky2_add_end;
    assign conv_rows_add_end2 = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky2 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky2 + 1) == (k))
    )
    )
    ):
    0;
    
    assign idx2_in_k = ky2;
    
    //conv row 3
    // assign iy_start_3 = iy_start_plus_2s;
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            ky3 <= 0;
        end
        else if (loop_ky3_add_begin == 1'b1)
        begin
            if (loop_ky3_add_end == 1'b1)
            begin //the last ky2
                ky3 <= 0;
            end
            else
            begin
                ky3 <= ky3 + 1;
            end
        end
        else
        begin
            ky3 <= ky3;
        end
    end
    
    //assign conv_pixels_add_end    = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    //    assign loop_ky3_add_begin = (conv_pixels_add_end == 1'b1);
    //    assign loop_ky3_add_end   = loop_ky3_add_begin && ((ky3 + 1) == (k));
    assign loop_ky3_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    
    
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    )
    ):
    0;
    assign loop_ky3_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    )
    ):
    0;
    
    // assign ky3_plus_irow_y3 = ky3 + iy_start_3;
    // assign iy_start_3 = iy_start_plus_2s;
    // assign ky3_plus_irow_y3 = ky3 + iy_start_plus_2s;
    
    // assign row_y3 = ((ky3_plus_irow_y3 < p_plus_1) || (ky3_plus_irow_y3 > p_plus_iy))? 16'hffff: (ky3_plus_irow_y3 - {{12'b0},p});
    
    //    assign conv_rows_add_end3 = loop_ky3_add_end;
    assign conv_rows_add_end3 = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky3 + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky3 + 1) == (k))
    )
    )
    ):
    0;
    
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
    assign pox_mult_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? ((ox - tile_x_start + 1) << 1):
    pixels_in_row_mult_2;
    
    // ix_start = (ox_start - 1) * s + 1;
    assign ix_start = (s == 4'd1)? tile_x_start:
    (s == 4'd2)? (tile_x_start << 1) - 1:
    0;
    
    //next ix_start
    //next_ox_start = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;
    // assign next_ix_start = (s == 4'd1)? next_ox_start:
    //        (s == 4'd2)? (next_ox_start << 1) - 1:
    //        0;
    //assign loop_x_add_end = (((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox);
    //   assign next_ix_start = 
    //   (s == 4'd1)? (
    //        ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row
    //   ):
    //   (s == 4'd2)? (
    //        ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : (tile_x_start << 1) + pixels_in_row_mult_2_minus_1
    //   ):
    //   0;
    
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
    
    //   assign ix_end = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
    //                   (s == 4'd2)? ((tile_x_start << 1) + k + pox_mult_2 -4):
    //                   0;
    
    //   assign ix_end = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
    //                   (s == 4'd2)? ((tile_x_start << 1) + k + pox_mult_2 -4):
    //                   0;
    //   assign pox_minus_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start - 1):
    //                 pixels_in_row_minus_2;
    //   assign pox_mult_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? ((ox - tile_x_start + 1) << 1):
    //                 pixels_in_row_mult_2;
    
    assign ix_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    (k + ox - 1)
    ):
    (
    (tile_x_start + k + pixels_in_row_minus_2)
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    (k + (ox << 1) -2)
    ):
    (
    ((tile_x_start << 1) + k + pixels_in_row_mult_2 -4)
    )
    ):
    0;
    
    //   assign ix_start = (s == 4'd1)? tile_x_start:
    //                     (s == 4'd2)? (tile_x_start << 1) - 1:
    //                     0;
    //   assign left_pad = (ix_start < = {{12'b0}, p})? ({{12'b0}, p} - ix_start + 1):0;
    //   assign left_pad = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= {{12'b0}, p})? ({{12'b0}, p} - tile_x_start + 1) :0
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= {{12'b0}, p})? ({{12'b0}, p} - (tile_x_start << 1) + 2) :0
    //   ):
    //   0;
    assign left_pad = (tile_x_start == 1)? {{12'b0}, p} :0;
    
    //next left_pad
    //   assign next_ix_start = (s == 4'd1)? (((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row):
    //                     (s == 4'd2)? (((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : (tile_x_start << 1) + pixels_in_row_mult_2_minus_1):
    //                     0;
    //   assign next_left_pad = (next_ix_start < = {{12'b0}, p})? ({{12'b0}, p} - next_ix_start + 1):0;
    
    //   assign next_left_pad = 
    //   (
    //       (s == 4'd1)? (
    //           ((reset == 1'b1) || (loop_x_add_end == 1'b1))? (
    //                (1 <= {{12'b0}, p})? {{12'b0}, p} :0
    //           ):
    //           (
    //                ((tile_x_start + pixels_in_row) <= {{12'b0}, p})? ({{12'b0}, p} - tile_x_start - pixels_in_row_minus_1):0
    //           )
    //       ):
    //       (s == 4'd2)? (
    //           ((reset == 1'b1) || (loop_x_add_end == 1'b1))? (
    //                (1 <= {{12'b0}, p})? ({{12'b0}, p}) :0
    //           ):
    //           (
    //                ((tile_x_start << 1) + pixels_in_row_mult_2_minus_1 <= {{12'b0}, p})? ({{12'b0}, p} - (tile_x_start << 1) - pixels_in_row_mult_2_minus_2): 0
    //           )
    //       ):
    //       0
    //   );
    
    // assign next_left_pad = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? {{12'b0}, p}:0;
    
    assign p_plus_ix = {{12'b0}, p} + ix;
    
    //   assign ix_end = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
    //                   (s == 4'd2)? ((tile_x_start << 1) + k + pox_mult_2 -4):
    //                   0;
    //   assign right_pad = (ix_end > p_plus_ix)? (ix_end - p_plus_ix): 0;
    //   assign pox_minus_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start - 1):
    //                 pixels_in_row_minus_2;
    //   assign pox_mult_2 = (tile_x_start + pixels_in_row_minus_1 > ox)? ((ox - tile_x_start + 1) << 1):
    //                 pixels_in_row_mult_2;
    //   assign right_pad = (ix_end > p_plus_ix)? (ix_end - p_plus_ix): 0;
    
    assign right_pad = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > ({{12'b0}, p} + ix))? (k + ox - 1 - {{12'b0}, p} - ix): 0
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > ({{12'b0}, p} + ix))? (tile_x_start + k + pixels_in_row_minus_2 - {{12'b0}, p} - ix): 0
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    //ix_end = (k + (ox << 1) -2)
    ((k + (ox << 1) -2) > ({{12'b0}, p} + ix))? ((k + (ox << 1) -2) - {{12'b0}, p} - ix): 0
    ):
    (
    //ix_end = ((tile_x_start << 1) + k + pixels_in_row_mult_2 -4)
    (((tile_x_start << 1) + k + pixels_in_row_mult_2_minus_4) > ({{12'b0}, p} + ix))? (((tile_x_start << 1) + k + pixels_in_row_mult_2_minus_4) - {{12'b0}, p} - ix): 0
    )
    ):
    0;
    
    //assign ix_start = (s == 4'd1)? tile_x_start:
    //                     (s == 4'd2)? (tile_x_start << 1) - 1:
    //                     0;
    
    //    assign overlap = (ix_start < = p_plus_1)? 0: {{12'b0}, p};
    // or assign overlap = (ix_start == 1)? 0: {{12'b0}, p};
    //   assign overlap = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= p_plus_1)? 0: {{12'b0}, p}
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= p_plus_1)? 0: {{12'b0}, p}
    //   ):
    //   0;
    assign overlap = (tile_x_start == 1)? 0: {{12'b0}, p};
    
    //next overlap
    //   assign next_overlap  = (next_ix_start <  = p_plus_1)? 0: {{12'b0}, p};
    // or assign next_overlap = (next_ix_start == 1)? 0: {{12'b0}, p};
    //   assign next_ix_start = (s == 4'd1)? (((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row):
    //                     (s == 4'd2)? (((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : (tile_x_start << 1) + pixels_in_row_mult_2_minus_1):
    //                     0;
    //   assign next_overlap = 
    //   (s == 4'd1)? (
    //        ((reset == 1'b1) || (loop_x_add_end == 1'b1))? (
    //            (1 == 1)? 0: {{12'b0}, p}
    //        ):
    //        (
    //            ((tile_x_start + pixels_in_row) == 1)? 0: {{12'b0}, p}
    
    //        )
    //   ):
    //   (s == 4'd2)? (
    //        ((reset == 1'b1) || (loop_x_add_end == 1'b1))? (
    //            (1 == 1)? 0: {{12'b0}, p}
    //        ):
    //        (
    //            (((tile_x_start << 1) + pixels_in_row_mult_2_minus_1) == 1)? 0: {{12'b0}, p}
    //        )
    //   ):
    //   0;
    //assign loop_x_add_end = (((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox);
    //    assign next_overlap = 
    //    ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 0: {{12'b0}, p};
    // assign next_overlap = 
    //        ((reset == 1'b1) || ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)))? 0: {{12'b0}, p};
    
    //   assign row_start_fix = ix_start + left_pad - p_plus_1 + overlap;
    //assign overlap = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= p_plus_1)? 0: {{12'b0}, p}
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= p_plus_1)? 0: {{12'b0}, p}
    //   ):
    //   0;
    // or assign overlap = (tile_x_start == 1)? 0: {{12'b0}, p};
    // or assign overlap = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= {{12'b0}, p})? 0: {{12'b0}, p}
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= {{12'b0}, p})? 0: {{12'b0}, p}
    //   ):
    //   0;
    
    //assign left_pad = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= {{12'b0}, p})? ({{12'b0}, p} - tile_x_start + 1) :0
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= {{12'b0}, p})? ({{12'b0}, p} - (tile_x_start << 1) + 2) :0
    //   ):
    //   0;
    //   assign ix_start = (s == 4'd1)? tile_x_start:
    //                     (s == 4'd2)? (tile_x_start << 1) - 1:
    //                     0;
    //   assign row_start_fix = 
    //   //ix_start + left_pad - p_plus_1 + overlap;
    //   (s == 4'd1)? (
    //        (tile_x_start <= {{12'b0}, p})? (
    //            tile_x_start + ({{12'b0}, p} - tile_x_start + 1) + 0 - p_plus_1
    //        ):
    //        (
    //            tile_x_start + 0 + {{12'b0}, p} - p_plus_1
    //        )
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= {{12'b0}, p})? (
    //            (tile_x_start << 1) - 1 + ({{12'b0}, p} - (tile_x_start << 1) + 2) + 0 - p_plus_1
    //        ):
    //        (
    //            (tile_x_start << 1) - 1 + 0 + {{12'b0}, p} - p_plus_1
    //        )
    //   ):
    //   0;
    //   assign row_start_fix = 
    //   (s == 4'd1)? (
    //        (tile_x_start <= {{12'b0}, p})? (
    //            0
    //        ):
    //        (
    //            tile_x_start - 1
    //        )
    //   ):
    //   (s == 4'd2)? (
    //        (((tile_x_start << 1) - 1) <= {{12'b0}, p})? (
    //             0
    //        ):
    //        (
    //            (tile_x_start << 1) - 2
    //        )
    //   ):
    //   0;
    
    //    assign row_start_fix = ix_start + left_pad - p_plus_1 + overlap;
    // assign overlap          = (tile_x_start == 1)? 0: {{12'b0}, p};
    // assign left_pad         = (tile_x_start == 1)? {{12'b0}, p} :0;
    //assign ix_start = (s == 4'd1)? tile_x_start:
    //                     (s == 4'd2)? (tile_x_start << 1) - 1:
    //                     0;
    assign row_start_fix = 
    (s == 4'd1)? tile_x_start - 1:
    (s == 4'd2)? (tile_x_start << 1) - 2:
    0;
    
    //   assign row_end   = ix_end - right_pad - p_plus_1;
    //   assign right_pad = (ix_end > p_plus_ix)? (ix_end - p_plus_ix): 0;
    //   assign ix_end = 
    //   (s == 4'd1)? (
    //         (tile_x_start + pixels_in_row_minus_1 > ox)? (
    //                (k + ox - 1)
    //         ):
    //         (
    //                (tile_x_start + k + pixels_in_row_minus_2)
    //         )
    //   ):
    //   (s == 4'd2)? (
    //         (tile_x_start + pixels_in_row_minus_1 > ox)? (
    //                (k + (ox << 1) -2)
    //         ):
    //         (
    //                ((tile_x_start << 1) + k + pixels_in_row_mult_2 -4)
    //         )
    //   ):
    //   0;
    //   assign row_end = 
    //   (ix_end > p_plus_ix)? (
    //        ix - 1
    //   ):
    //   ix_end - p_plus_1;
    
    assign row_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ix - 1
    ):
    (k + ox - 1) - p_plus_1
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ix - 1
    ):
    (tile_x_start + k + pixels_in_row_minus_2) - p_plus_1
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ix - 1
    ):
    (k + (ox << 1) -2) - p_plus_1
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ix - 1
    ):
    ((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1
    )
    ):
    0;
    
    assign ix_minus_1 = ix - 1;
    
    //   assign row_end_low = (row_end+1) & 16'h001f;
    
    assign row_end_low = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ix & 16'h001f
    ):
    ((k + ox) - p_plus_1) & 16'h001f
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ix & 16'h001f
    ):
    ((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ix & 16'h001f
    ):
    ((k + (ox << 1) -1) - p_plus_1) & 16'h001f
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ix & 16'h001f
    ):
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f
    )
    ):
    0;
    
    //   assign row_end_high = (row_end+1) & 16'hffe0;
    assign row_end_high = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ix & 16'hffe0
    ):
    ((k + ox) - p_plus_1) & 16'hffe0
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ix & 16'hffe0
    ):
    ((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ix & 16'hffe0
    ):
    ((k + (ox << 1) -1) - p_plus_1) & 16'hffe0
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ix & 16'hffe0
    ):
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0
    )
    ):
    0;
    
    //   assign row_end_fix0 = (row_end_low == 16'h0)?
    //(row_end - 16'h0001):
    //                        (row_end_high + 16'h001f);
    
    assign row_end_fix0 = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001):
    ((ix & 16'hffe0) + 16'h001f)
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)?
    ((k + ox - 1) - p_plus_1 - 16'h0001):
    ((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f)
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001):
    ((ix & 16'hffe0) + 16'h001f)
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)?
    ((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001):
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f)
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001):
    ((ix & 16'hffe0) + 16'h001f)
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)?
    ((k + (ox << 1) -2) - p_plus_1 - 16'h0001):
    ((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f)
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001):
    ((ix & 16'hffe0) + 16'h001f)
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)?
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001):
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f)
    )
    ):
    0;
    
    
    //   assign row_end_fix = (row_end_fix0 > ix_minus_1)? ix_minus_1:
    //                             row_end_fix0;
    
    //   assign row_end_fix = row_end_fix0 & ix_mask;
    
    assign row_end_fix = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001) & ix_mask:
    ((ix & 16'hffe0) + 16'h001f) & ix_mask
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)?
    ((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask:
    ((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001) & ix_mask:
    ((ix & 16'hffe0) + 16'h001f) & ix_mask
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)?
    ((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask:
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001) & ix_mask:
    ((ix & 16'hffe0) + 16'h001f) & ix_mask
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)?
    ((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask:
    ((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)?
    (ix - 1 - 16'h0001) & ix_mask:
    ((ix & 16'hffe0) + 16'h001f) & ix_mask
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)?
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask:
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask
    )
    ):
    0;
    
    //   assign overlap          = (tile_x_start == 1)? 0: {{12'b0}, p};
    //assign left_pad            = (tile_x_start == 1)? {{12'b0}, p} :0;
    //   assign reg_from_initial = left_pad + {{12'b0}, overlap} + 1;
    // assign reg_from_initial   = (reset == 1'b1)? {{{12'b0}, p_init} + 1} :p_plus_1;
    
    //next reg_from_initial
    //assign next_overlap             = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 0: {{12'b0}, p};
    //assign next_left_pad            = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? {{12'b0}, p}:0;
    //   assign next_reg_from_initial = next_left_pad + {{12'b0}, next_overlap} + 1;
    // assign next_reg_from_initial   = (reset == 1'b1)? {{{12'b0}, p_init} + 1} :p_plus_1;
    
    assign valid_adr = loop_adr1_add_begin;
    
    // for adr1 in range(0, row_end_min_fix - row_start_fix + 1, pixels_in_row)
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            signal_adr1_add <= 0;
        end
        else if (conv_compute == 1'b1)
        begin
            signal_adr1_add <= 1;
        end
            //        else if (conv_tiling_add_end == 1'b1) begin // all end
            //assign conv_tiling_add_end = loop_y_add_end;
            //assign loop_y_add_end      = ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky1 + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy);
            else if (loop_y_add_end == 1'b1)
            begin // all end
            signal_adr1_add <= 0;
            end
        else
        begin
            signal_adr1_add <= signal_adr1_add;
        end
    end
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            adr1                   <= 0;
            //            reg_from <= next_reg_from_initial;
            //            reg_from <= p_plus_1;
            reg_from               <= p_init + 1;
        end
        else if (loop_adr1_add_begin == 1'b1)
        begin
            if (loop_adr1_add_end == 1'b1)
            begin// the last adr1 or adr2
                adr1                   <= 0;
                //            reg_from <= next_reg_from_initial;
                reg_from               <= p_plus_1;
            end
            else
            begin
                adr1     <= adr1 + pixels_in_row;
                reg_from <= reg_to + 1;
            end
        end
        else
        begin
            adr1     <= adr1;
            reg_from <= reg_from;
        end
    end
    
    assign loop_adr1_add_begin = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0);
    assign loop_adr1_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    
    
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    )
    ):
    0;
    
    assign reg_to = (row_start_idx + pixels_in_row_minus_1 > row_end)?
    (reg_from + row_end - row_start_idx):
    (reg_from + pixels_in_row_minus_1);
    
    //stall in row
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            row_length <= 0;
        end
        else if (conv_compute == 1'b1)
        begin
            row_length <= 1;
        end
            else if (loop_adr1_add_begin == 1'b1)
            begin
            if (loop_adr1_add_end == 1'b1)
            begin// the last adr1
                row_length <= 1;
            end
            else
            begin
                row_length <= row_length + 1;
            end
            end
        else
        begin
            row_length <= row_length;
        end
    end
    
    //assign loop_adr1_add_end = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            stall_in_row_counter <= 0;
        end
        else if (conv_compute == 1'b1)
        begin //first cycle no need stall
            stall_in_row_counter <= 0;
        end
            //        else if (loop_adr1_add_end == 1'b1) begin // the last pixels word
            //            if (conv_tiling_add_end == 1'b1) begin // all end
            //                stall_in_row_counter <= 0;
            //            end
            //            else begin
            //                stall_in_row_counter <= (k - row_length);
            //            end
            //        end
            else if (last_pixel_and_tile_end == 1'b1)
            begin // the last pixels word all end
            stall_in_row_counter <= 0;
            end
            else if (last_pixel_not_tile_end == 1'b1)
            begin
            stall_in_row_counter <= (k - row_length);
            end
            else if (stall_in_row_counter > 0)
            begin
            stall_in_row_counter <= stall_in_row_counter - 1;
            end
        else
        begin
            stall_in_row_counter <= stall_in_row_counter;
        end
    end
    
    //    assign last_pixel_and_tile_end = (loop_adr1_add_end == 1'b1) && (loop_y_add_end == 1'b1);
    assign last_pixel_and_tile_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky1 + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    )
    ):
    0;
    
    //    assign last_pixel_not_tile_end = (loop_adr1_add_end == 1'b1) && (loop_y_add_end == 1'b0);
    assign last_pixel_not_tile_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && (
    ((ky1 + 1) != (k))
    || ((if_start + 1) <= nif)
    || ((tile_f_start + row_num) <= of)
    || ((tile_x_start + pixels_in_row) <= ox)
    || ((tile_y_start + buffers_num) <= oy)
    )
    )
    )
    ):
    0;
    
    assign stall_in_row = ((stall_in_row_counter > 0)? 1 : 0) || (ifx_stall == 1'b1);
    // stall_in_row == 0 < = > (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    
    //    assign row_start_fix = 
    //   (s == 4'd1)? tile_x_start - 1:
    //   (s == 4'd2)? (tile_x_start << 1) - 2:
    //   0;
    
    //    assign row_start_idx = adr1 + row_start_fix;
    assign row_start_idx = 
    (s == 4'd1)? adr1 + tile_x_start - 1:
    (s == 4'd2)? adr1 + (tile_x_start << 1) - 2:
    0;
    
    //    assign row_end_idx = row_start_idx + pixels_in_row - 1;
    assign row_end_idx = 
    (s == 4'd1)? adr1 + tile_x_start + pixels_in_row_minus_2:
    (s == 4'd2)? adr1 + (tile_x_start << 1) + pixels_in_row_minus_3:
    0;
    
    //    assign west_pad = (row_start_idx == row_start_fix)? left_pad: 0;
    // assign left_pad = (tile_x_start == 1)? {{12'b0}, p} :0;
    // assign west_pad       = (adr1 == 0)? left_pad: 0;
    assign west_pad       = ((adr1 == 0) && (tile_x_start == 1))? {{12'b0}, p}: 0;
    
    //    assign slab_num = (row_start_idx == row_start_fix)? overlap: 0;
    // assign overlap = (tile_x_start == 1)? 0: {{12'b0}, p};
    // assign slab_num       = (adr1 == 0)? overlap: 0;
    assign slab_num       = ((adr1 == 0) && (tile_x_start != 1))? {{12'b0}, p}: 0;
    
    assign east_pad = (loop_adr1_add_end == 1'b1) ? right_pad:0;
    
    assign reg_start_idx = reg_from;
    
    //    assign reg_to = (row_start_idx + pixels_in_row_minus_1 > row_end)?
    //                    (reg_from + row_end - row_start_idx):
    //                    (reg_from + pixels_in_row_minus_1);
    //    assign reg_end_idx = reg_to + east_pad;
    assign reg_end_idx = 
    (row_start_idx + pixels_in_row_minus_1 > row_end)? (
    (loop_adr1_add_end == 1'b1) ? (
    reg_from + row_end - row_start_idx + right_pad
    ):
    (
    reg_from + row_end - row_start_idx
    )
    ):
    (
    (loop_adr1_add_end == 1'b1) ? (
    reg_from + pixels_in_row_minus_1 + right_pad
    ):
    (
    reg_from + pixels_in_row_minus_1
    )
    );
    
    //assign loop_adr1_add_end       = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    //    assign conv_pixels_add_end = (loop_adr1_add_end == 1'b1);
    assign conv_pixels_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    
    
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    )
    )
    ):
    0;
    
    assign valid_row1_adr = (poy < 1)? 0 : valid_adr;
    assign valid_row2_adr = (poy < 2)? 0 : valid_adr;
    assign valid_row3_adr = (poy < 3)? 0 : valid_adr;
    
    //address translation
    // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
    //    assign row1_bias0 = idx1_in_k + 1 - {{12'b0},p};
    //    assign row2_bias0 = idx2_in_k + 1 + {{12'b0},s} - {{12'b0},p};
    //    assign row3_bias0 = idx3_in_k + 1 + {{11'b0}, s, {1'b0}} - {{12'b0},p};
    assign row1_bias0       = ky1 + 1 - {{12'b0},p};
    assign row2_bias0       = ky2 + 1 + {{12'b0},s} - {{12'b0},p};
    assign row3_bias0       = ky3 + 1 + {{11'b0}, s, {1'b0}} - {{12'b0},p};
    
    assign row1_base_in_3s = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    assign row2_base_in_3s = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    assign row3_base_in_3s = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
    
    //    assign row1_base_in_3 = (s == 4'd1)? row1_base_in_3s:
    //                          (s == 4'd2)? (row1_base_in_3s << 1):
    //                          0;
    //    assign row2_base_in_3 = (s == 4'd1)? row2_base_in_3s:
    //                          (s == 4'd2)? (row2_base_in_3s << 1):
    //                          0;
    //    assign row3_base_in_3 = (s == 4'd1)? row3_base_in_3s:
    //                          (s == 4'd2)? (row3_base_in_3s << 1):
    //                          0;
    
    assign row1_base_in_3 = 
    (s == 4'd1)? (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s
    ):
    (s == 4'd2)? (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)
    ):
    0;
    assign row2_base_in_3 = 
    (s == 4'd1)? (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s
    ):
    (s == 4'd2)? (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)
    ):
    0;
    assign row3_base_in_3 = 
    (s == 4'd1)? (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s
    ):
    (s == 4'd2)? (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)
    ):
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
    
      //  assign row1_buf_idx_s1 = (leq6_1 == 1'b1)?
      //                           ((leq3_1 == 1'b1)? row1_bias: (row1_bias - 3)) :
      //                           ((leq9_1 == 1'b1)? (row1_bias - 6): (row1_bias - 9));
      //  assign row1_buf_idx_s1 = (row1_bias <= 6)?
      //                           ((row1_bias <= 3)? row1_bias: (row1_bias - 3)) :
      //                           ((row1_bias <= 9)? (row1_bias - 6): (row1_bias - 9));
      //  assign row1_offset_s1 = (leq6_1 == 1'b1)?
      //                          ((leq3_1 == 1'b1)? 0: 1) :
      //                          ((leq9_1 == 1'b1)? 2: 3);
    
    //    assign row2_buf_idx_s1 = (leq6_2 == 1'b1)?
    //                             ((leq3_2 == 1'b1)? row2_bias: (row2_bias - 3)) :
    //                             ((leq9_2 == 1'b1)? (row2_bias - 6): (row2_bias - 9));
    
    //    assign row2_offset_s1 = (leq6_2 == 1'b1)?
    //                            ((leq3_2 == 1'b1)? 0: 1) :
    //                            ((leq9_2 == 1'b1)? 2: 3);
    
    //    assign row3_buf_idx_s1 = (leq6_3 == 1'b1)?
    //                             ((leq3_3 == 1'b1)? row3_bias: (row3_bias - 3)) :
    //                             ((leq9_3 == 1'b1)? (row3_bias - 6): (row3_bias - 9));
    
    //    assign row3_offset_s1 = (leq6_3 == 1'b1)?
    //                            ((leq3_3 == 1'b1)? 0: 1) :
    //                            ((leq9_3 == 1'b1)? 2: 3);
    
    //    assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;
    //    assign row2_bias = ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (row2_bias0 + {12'b0, {s_mult_3}}) : row2_bias0;
    //    assign row3_bias = ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (row3_bias0 + {12'b0, {s_mult_3}}) : row3_bias0;
    
    assign row1_buf_idx_s1 = 
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
      //row1_bias0 <= 0
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (
      ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? 
      (row1_bias0 + {12'b0, {s_mult_3}}): 
      ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)
    ):
    (
      ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? 
      ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): 
      ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9)
    )
    ):
    (
      //row1_bias0 > 0
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    );
    
    assign row1_offset_s1 = 
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? 0: 1) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? 2: 3)
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? 0: 1) :
    ((row1_bias0 <= 9)? 2: 3)
    );
    
    assign row2_buf_idx_s1 = 
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    );
    
    assign row2_offset_s1 = 
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? 0: 1) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? 2: 3)
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? 0: 1) :
    ((row2_bias0 <= 9)? 2: 3)
    );
    
    assign row3_buf_idx_s1 = 
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    );
    assign row3_offset_s1 = 
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? 0: 1) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? 2: 3)
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? 0: 1) :
    ((row3_bias0 <= 9)? 2: 3)
    );
    
    // assign row1_idx = 
    // ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    // ((ky1 + iy_start) - {{12'b0},p});
    // assign row1_buf_idx = 
    // (row1_idx == 16'hffff)? 0 :
    // (
    // ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    // ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row1_bias0 <= 6)?
    // ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    // ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    // )
    // );
    assign row1_buf_idx = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 0 :
    (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    )
    );
    
    //  assign row1_buf_adr_in_row = (row1_idx == 16'hffff)? 16'hffff:
    //  (row1_base_in_3 + row1_offset_s1);
    
    //    assign row1_offset_s1 = 
    //    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    //        ((row1_bias0 + {12'b0, {s_mult_3}}) <= 6)?
    //        (((row1_bias0 + {12'b0, {s_mult_3}}) <= 3)? 0: 1) :
    //        (((row1_bias0 + {12'b0, {s_mult_3}}) <= 9)? 2: 3)
    //    ):
    //    (
    //        (row1_bias0 <= 6)?
    //        ((row1_bias0 <= 3)? 0: 1) :
    //        ((row1_bias0 <= 9)? 2: 3)
    //    );
    //    assign row1_base_in_3 = 
    //    (s == 4'd1)? (
    //        ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s
    //    ):
    //    (s == 4'd2)? (
    //        ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? ((row_base_in_3s - 1) << 1) : (row_base_in_3s << 1)
    //    ):
    //    0;
    // assign row1_idx = 
    // ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    // ((ky1 + iy_start) - {{12'b0},p});
    // assign row1_buf_adr_in_row = 
    // (row1_idx == 16'hffff)? 16'hffff:
    // (
    // (s == 4'd1)? (
    // ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    // ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    // ):
    // (
    // (row1_bias0 <= 6)?
    // ((row1_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    // ((row1_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    // )
    // ):
    // (s == 4'd2)? (
    // ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    // ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    // ):
    // (
    // (row1_bias0 <= 6)?
    // ((row1_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    // ((row1_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    // )
    // ):
    // 0
    // );
    assign row1_buf_adr_in_row = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff:
    (
    (s == 4'd1)? (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    ((row1_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    )
    ):
    (s == 4'd2)? (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    ((row1_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    )
    ):
    0
    );
    //the adr is the virtual adr. when tile is small, it equals the phisical adr,
    // when tile is bigger, need mapping logic and schedule logic.
    // the adr need more completely logic
    // assign row1_buf_adr = (row1_idx == 16'hffff)? 16'hffff:
    // (((row1_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    // + ((if_start - 1) >> ifs_in_row_2pow); //if_idx
    // assign row1_idx = 
    // ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    // ((ky1 + iy_start) - {{12'b0},p});
    assign row1_buf_adr = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff:
    (((row1_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    + ((if_start - 1) >> ifs_in_row_2pow); //if_idx
    
    assign row1_buf_word_select = (if_start - 1) & 16'h0001;
    
    //    assign row2_buf_idx = (row2_idx == 16'hffff)? 0 :
    //                          (row2_buf_idx_s1);
    // assign row2_buf_idx = 
    // (row2_idx == 16'hffff)? 0 :
    // (
    // ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    // ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row2_bias0 <= 6)?
    // ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    // ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    // )
    // );
    // assign row2_idx = 
    // ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff: 
    // ((ky2 + iy_start + {{12'b0}, s}) - {{12'b0},p});
    assign row2_buf_idx = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 0 :
    (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    )
    );


    //    assign row2_buf_adr_in_row = (row2_idx == 16'hffff)? 16'hffff:
    //                                 (row2_base_in_3 + row2_offset_s1);
    
    // assign row2_buf_adr_in_row = 
    // (row2_idx == 16'hffff)? 16'hffff:
    // (
    // (s == 4'd1)? (
    // ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    // ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    // ):
    // (
    // (row2_bias0 <= 6)?
    // ((row2_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    // ((row2_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    // )
    // ):
    // (s == 4'd2)? (
    // ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    // ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    // ):
    // (
    // (row2_bias0 <= 6)?
    // ((row2_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    // ((row2_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    // )
    // ):
    // 0
    // );
    // assign row2_idx = 
    // ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff: 
    // ((ky2 + iy_start + {{12'b0}, s}) - {{12'b0},p});
    assign row2_buf_adr_in_row = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff:
    (
    (s == 4'd1)? (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    ((row2_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    )
    ):
    (s == 4'd2)? (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    ((row2_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    )
    ):
    0
    );
    
    // assign row2_buf_adr = (row2_idx == 16'hffff)? 16'hffff :
    // (((row2_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    // + ((if_start - 1) >> ifs_in_row_2pow);
    // assign row2_idx = 
    // ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff: 
    // ((ky2 + iy_start + {{12'b0}, s}) - {{12'b0},p});
    assign row2_buf_adr = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff :
    (((row2_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    + ((if_start - 1) >> ifs_in_row_2pow);
    
    //row2_buf_adr_in_row = row2_buf_adr_in_row % buf_row_limit
    // = row2_buf_adr_in_row & (16'hffff >> (16 - row_words_2pow))
    // row_words_2pow = (nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow
    
    assign row2_buf_word_select = (if_start - 1) & 16'h0001;
    
    
    //    assign row3_buf_idx = (row3_idx == 16'hffff)? 0 :
    //                          (row3_buf_idx_s1);
    
    // assign row3_buf_idx = 
    // (row3_idx == 16'hffff)? 0 :
    // (
    // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row3_bias0 <= 6)?
    // ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    // ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    // )
    // );
    // assign row3_idx = 
    // ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: 
    // ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});
    assign row3_buf_idx = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
    (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    )
    );

    //    assign row3_buf_adr_in_row = (row3_idx == 16'hffff)? 16'hffff:
    //                                 (row3_base_in_3 + row3_offset_s1);
    // assign row3_buf_adr_in_row = 
    // (row3_idx == 16'hffff)? 16'hffff:
    // (
    // (s == 4'd1)? (
    // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    // ):
    // (
    // (row3_bias0 <= 6)?
    // ((row3_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    // ((row3_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    // )
    // ):
    // (s == 4'd2)? (
    // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    // ):
    // (
    // (row3_bias0 <= 6)?
    // ((row3_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    // ((row3_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    // )
    // ):
    // 0
    // );
    // assign row3_idx = 
    // ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: 
    // ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});
    assign row3_buf_adr_in_row = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff:
    (
    (s == 4'd1)? (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row_base_in_3s - 1): (row_base_in_3s - 1) + 1) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? (row_base_in_3s - 1) + 2: (row_base_in_3s - 1) + 3)
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? row_base_in_3s: row_base_in_3s + 1) :
    ((row3_bias0 <= 9)? row_base_in_3s + 2: row_base_in_3s + 3)
    )
    ):
    (s == 4'd2)? (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? ((row_base_in_3s - 1) << 1): ((row_base_in_3s - 1) << 1) + 1) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row_base_in_3s - 1) << 1) + 2: ((row_base_in_3s - 1) << 1) + 3)
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? (row_base_in_3s << 1): (row_base_in_3s << 1) + 1) :
    ((row3_bias0 <= 9)? (row_base_in_3s << 1) + 2: (row_base_in_3s << 1) + 3)
    )
    ):
    0
    );
    
    // assign row3_buf_adr = (row3_idx == 16'hffff)? 16'hffff :
    // (((row3_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    // + ((if_start - 1) >> ifs_in_row_2pow);
    // assign row3_idx = 
    // ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: 
    // ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});
    assign row3_buf_adr = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff :
    (((row3_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
    + ((if_start - 1) >> ifs_in_row_2pow);
    
    assign row3_buf_word_select = (if_start - 1) & 16'h0001;
    
    //slab
    // assign row_slab_start_idx = (slab_num > 0)? (row_start_idx - 16'd32): 16'hffff;
    // assign slab_num       = ((adr1 == 0) && (tile_x_start != 1))? {{12'b0}, p}: 0;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0)) 
    // assign row_slab_start_idx =
    // (slab_num > 0)? 
    // ((s == 4'd1)? adr1 + tile_x_start - 1 - 16'd32:
    // (s == 4'd2)? adr1 + (tile_x_start << 1) - 2 - 16'd32:
    // 0): 16'hffff;
    assign row_slab_start_idx = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd1))? adr1 + tile_x_start - 1 - 16'd32:
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd2))? adr1 + (tile_x_start << 1) - 2 - 16'd32:
    16'hffff;

    // assign row1_slab_idx = (slab_num > 0)? row1_buf_idx : 0;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0)) 
    // assign row1_slab_idx = 
    // (slab_num > 0)?
    // ((row1_idx == 16'hffff)? 0 :
    // (
    // ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    // ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row1_bias0 <= 6)?
    // ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    // ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    // )
    // )):0;
    // assign row1_slab_idx = 
    // ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    // ((row1_idx == 16'hffff)? 0 :
    // (
    // ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    // ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row1_bias0 <= 6)?
    // ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    // ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    // )
    // )):0;
    // assign row1_idx = 
    // ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    // ((ky1 + iy_start) - {{12'b0},p});
    assign row1_slab_idx = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 0 :
    (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    )
    )):0;

    // assign row1_slab_adr = (slab_num > 0)?
    // (((row1_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1):
    // 16'hffff;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))
    assign row1_slab_adr = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((row1_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1):
    16'hffff;

    // assign row1_slab_adr_to_wr = (row1_idx == 16'hffff)? 16'hffff :
    // (((row1_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1);
    // assign row1_idx = 
    // ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff: 
    // ((ky1 + iy_start) - {{12'b0},p});
    assign row1_slab_adr_to_wr = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 16'hffff :
    (((row1_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1);

    // assign row1_slab_idx_to_wr = row1_buf_idx;
    assign row1_slab_idx_to_wr = 
    ((poy < 1) || ((ky1 + iy_start) < p_plus_1) || ((ky1 + iy_start) > p_plus_iy))? 0 :
    (
    ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (
    ((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row1_bias0 + {12'b0, {s_mult_3}}): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row1_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row1_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row1_bias0 <= 6)?
    ((row1_bias0 <= 3)? row1_bias0: (row1_bias0 - 3)) :
    ((row1_bias0 <= 9)? (row1_bias0 - 6): (row1_bias0 - 9))
    )
    );

    // assign row2_slab_idx = (slab_num > 0)? row2_buf_idx : 0;
    // assign row2_slab_idx = 
    // (slab_num > 0)?
    // ((row2_idx == 16'hffff)? 0 :
    // (
    // ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    // ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row2_bias0 <= 6)?
    // ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    // ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    // )
    // )):0;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))
    assign row2_slab_idx = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 0 :
    (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    )
    )):0;

    //    assign row2_slab_adr = (slab_num > 0)? (row2_buf_adr - nif): 16'hffff;
    // assign row2_slab_adr = (slab_num > 0)?
    // (((row2_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1):
    // 16'hffff;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))
    assign row2_slab_adr = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((row2_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1):
    16'hffff;

    // assign row2_slab_adr_to_wr = (row2_idx == 16'hffff)? 16'hffff :
    // (((row2_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1);
    // assign row2_idx = 
    // ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff: 
    // ((ky2 + iy_start + {{12'b0}, s}) - {{12'b0},p});
    assign row2_slab_adr_to_wr = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 16'hffff :
    (((row2_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1);

    // assign row2_slab_idx_to_wr = row2_buf_idx;
    assign row2_slab_idx_to_wr = 
    ((poy < 2) || ((ky2 + iy_start + {{12'b0}, s}) < p_plus_1) || ((ky2 + iy_start + {{12'b0}, s}) > p_plus_iy))? 0 :
    (
    ((row2_bias0[15] == 1'b1) || (row2_bias0 == 0))? (
    ((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row2_bias0 + {12'b0, {s_mult_3}}): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row2_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row2_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row2_bias0 <= 6)?
    ((row2_bias0 <= 3)? row2_bias0: (row2_bias0 - 3)) :
    ((row2_bias0 <= 9)? (row2_bias0 - 6): (row2_bias0 - 9))
    )
    );
    
    // assign row3_slab_idx = (slab_num > 0)? row3_buf_idx : 0;
    // assign row3_slab_idx = 
    // (slab_num > 0)?
    // ((row3_idx == 16'hffff)? 0 :
    // (
    // ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    // ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    // (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    // ):
    // (
    // (row3_bias0 <= 6)?
    // ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    // ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    // )
    // )):0;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))
    assign row3_slab_idx = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
    (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    )
    )):0;

    // assign row3_slab_adr = (slab_num > 0)?
    // (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1):
    // 16'hffff;
    // (slab_num > 0) <==> ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))
    assign row3_slab_adr = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0))?
    (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_slab_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1):
    16'hffff;

    // assign row3_slab_adr_to_wr = (row3_idx == 16'hffff)? 16'hffff :
    // (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    // + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    // + (if_start - 1);
    // assign row3_idx = 
    // ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff: 
    // ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) - {{12'b0},p});
    assign row3_slab_adr_to_wr = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 16'hffff :
    (((row3_buf_adr_in_row & row_num_limit_mask_slab_buffer) << (nif_in_2pow + ix_in_2pow - pixels_in_row_in_2pow))
    + ((row_start_idx << nif_in_2pow) >> pixels_in_row_in_2pow))
    + (if_start - 1);

    // assign row3_slab_idx_to_wr = row3_buf_idx;
    assign row3_slab_idx_to_wr = 
    ((poy < 3) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) < p_plus_1) || ((ky3 + iy_start + {{11'b0}, s, {1'b0}}) > p_plus_iy))? 0 :
    (
    ((row3_bias0[15] == 1'b1) || (row3_bias0 == 0))? (
    ((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd6)?
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd3)? (row3_bias0 + {12'b0, {s_mult_3}}): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd3)) :
    (((row3_bias0 + {12'b0, {s_mult_3}}) <= 16'd9)? ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd6): ((row3_bias0 + {12'b0, {s_mult_3}}) - 16'd9))
    ):
    (
    (row3_bias0 <= 6)?
    ((row3_bias0 <= 3)? row3_bias0: (row3_bias0 - 3)) :
    ((row3_bias0 <= 9)? (row3_bias0 - 6): (row3_bias0 - 9))
    )
    );
endmodule

