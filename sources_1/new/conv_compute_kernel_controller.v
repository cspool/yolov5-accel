`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/07 23:58:59
// Design Name: 
// Module Name: conv_compute_kernel_controller
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


module conv_compute_kernel_controller(clk,
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
                               row_start_idx,
                               row_end_idx,
                               reg_start_idx,
                               reg_end_idx,
                               row_slab_start_idx,
                               valid_adr,
                               iy_start,
                               ky,
                               if_start,
                               row_base_in_3s,

                               com_control_end,
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
    output [15:0] row_start_idx, row_end_idx;
    output [15:0] reg_start_idx, reg_end_idx;
    output [15:0] row_slab_start_idx;
    
    //conv tile module
    wire loop_y_add_begin, loop_y_add_end;
    wire loop_x_add_begin, loop_x_add_end;
    wire loop_f_add_begin, loop_f_add_end;
    wire loop_if_add_begin, loop_if_add_end;
    reg [15:0] tile_y_start, tile_x_start, tile_f_start; // tile_f_start is the inner loop
    output reg [15:0] if_start;
    wire [15:0] row_num;
    output reg [15:0] row_base_in_3s;
    output valid_adr; 
    output [15:0] iy_start;
    output com_control_end;
    output conv_pixels_add_end;
    output conv_nif_add_end;
    //conv rows
    output reg [15:0] ky;
    wire loop_ky_add_begin, loop_ky_add_end;
    wire [15:0] p_plus_1, p_plus_iy;
    //conv pixels
    wire [15:0] ix_start;
    wire [15:0] ix_end;
    wire [3:0] left_pad, right_pad, overlap;
    wire [15:0] row_start_fix;
    wire [15:0] row_end;
    wire [15:0] row_end_low, row_end_high;
    wire [15:0] row_end_fix0, row_end_fix;
    wire [15:0] p_plus_ix;
    wire [15:0] ix_mask = (16'hffff) >> (16 - ix_in_2pow);
    reg [15:0] reg_from;
    wire [15:0] reg_to;
    reg [15:0] adr1;
    reg signal_adr1_add;
    wire loop_adr1_add_begin, loop_adr1_add_end;
    wire stall_in_row;
    wire last_pixel_and_tile_end, last_pixel_not_tile_end;
    reg[3:0] row_length, stall_in_row_counter;

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
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    //assign conv_rows_add_end1   = ((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k));
    assign loop_f_add_begin = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    
    //assign loop_y_add_end = ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy);
    // assign next_oy_start = ((reset == 1'b1) || (loop_y_add_end == 1'b1))? 1 : tile_y_start + buffers_num;
    // assign next_oy_start = ((reset == 1'b1) || (((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy)))? 1 : tile_y_start + buffers_num;
    
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
    assign com_control_end               = loop_y_add_end;
    
    assign if_idx = if_start;
    
    assign iy_start = (s == 4'd1)? tile_y_start:
    (s == 4'd2)? (tile_y_start << 1) - 1:
    0;
    
    //conv rows
    //conv row 1
    assign p_plus_1  = {{12'b0},p} + 16'd1;
    assign p_plus_iy = {{12'b0},p} + iy;
    
    // assign iy_start_1 = iy_start;
    
    always@(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            ky <= 0;
        end
        else if (loop_ky_add_begin == 1'b1)
        begin
            if (loop_ky_add_end == 1'b1)
            begin //the last ky
                ky <= 0;
            end
            else
            begin
                ky <= ky + 1;
            end
        end
        else
        begin
            ky <= ky;
        end
    end
    
    //assign conv_pixels_add_end    = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
    //    assign loop_ky_add_begin = (conv_pixels_add_end == 1'b1);
    //    assign loop_ky_add_end   = loop_ky_add_begin && ((ky + 1) == (k));
    assign loop_ky_add_begin = 
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
    assign loop_ky_add_end = 
    (s == 4'd1)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + ox - 1) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    (
    ((tile_x_start + k + pixels_in_row_minus_2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    )
    )
    ):
    (s == 4'd2)? (
    (tile_x_start + pixels_in_row_minus_1 > ox)? (
    ((k + (ox << 1) -2) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    (
    (((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) > p_plus_ix)? (
    ((ix & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((ix - 1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    )
    )
    ):
    0;
    
    //conv pixels
    
    // ix_start = (ox_start - 1) * s + 1;
    assign ix_start = (s == 4'd1)? tile_x_start:
    (s == 4'd2)? (tile_x_start << 1) - 1:
    0;
    
    //next ix_start
    //next_ox_start = ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 1 : tile_x_start + pixels_in_row;
    // assign next_ix_start = (s == 4'd1)? next_ox_start:
    //        (s == 4'd2)? (next_ox_start << 1) - 1:
    //        0;
    //assign loop_x_add_end = (((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox);
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
    // assign ix_end_s_1 = (s == 4'd1)? (tile_x_start + k + pox_minus_2):
    // (s == 4'd2)? ((tile_x_start << 1) + k + pox_minus_3):
    // 0;
    
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
    //assign loop_x_add_end = (((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox);
    //    assign next_overlap = 
    //    ((reset == 1'b1) || (loop_x_add_end == 1'b1))? 0: {{12'b0}, p};
    // assign next_overlap = 
    //        ((reset == 1'b1) || ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)))? 0: {{12'b0}, p};
    
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
    
    // assign ix_minus_1 = ix - 1;
    
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
            //assign loop_y_add_end      = ((((signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix))) && ((ky + 1) == (k)) && ((if_start + 1) > nif) && ((tile_f_start + row_num) > of)) && ((tile_x_start + pixels_in_row) > ox)) && ((tile_y_start + buffers_num) > oy);
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + ox) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + ox - 1) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + ox) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((tile_x_start + k + pixels_in_row_minus_2) - p_plus_1 - 16'h0001) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((tile_x_start + k + pixels_in_row_minus_1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - (tile_x_start - 1)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    ((((k + (ox << 1) -1) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((k + (ox << 1) -2) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((((k + (ox << 1) -1) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > ((((ix & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    )
    ):
    
    (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'h001f) == 16'h0)? (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((tile_x_start << 1) + k + pixels_in_row_mult_2 -4) - p_plus_1 - 16'h0001) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
    && ((if_start + 1) > nif)
    && ((tile_f_start + row_num) > of)
    && ((tile_x_start + pixels_in_row) > ox)
    && ((tile_y_start + buffers_num) > oy)
    ):
    (
    (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0)
    && ((adr1 + pixels_in_row) > (((((((tile_x_start << 1) + k + pixels_in_row_mult_2 -3) - p_plus_1) & 16'hffe0) + 16'h001f) & ix_mask) - ((tile_x_start << 1) - 2)))
    && ((ky + 1) == (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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
    ((ky + 1) != (k))
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

    //slab
    assign row_slab_start_idx = 
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd1)) ? //
    adr1 + tile_x_start - 1 - 16'd32 : //
    ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd2)) ? //
    adr1 + (tile_x_start << 1) - 2 - 16'd32 : 16'hffff;

    
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

endmodule
