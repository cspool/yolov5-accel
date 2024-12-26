`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/23/2024 10:40:14 AM
// Design Name:
// Module Name: conv_load_input_controller
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


module conv_load_input_controller(
    mode_init,
    of_init, ox_init, oy_init, ix_init, iy_init, nif_init,
    k_init, s_init, p_init,
    clk, conv_load_input, reset,
    nif_in_2pow_init,
    ix_in_2pow_init,

    ox_start, oy_start, pox, poy, if_idx,

    row1_idx,
    row_start_idx, row_end_idx,

    conv_end,
    conv_pixels_add_end,
    conv_nif_add_end,

    row1_buf_adr,
    row1_buf_idx,
    row1_buf_word_select,

    valid_row1_adr
  );
  parameter pixels_in_row = 32;
  parameter pixels_in_row_mult_2 = pixels_in_row * 2;
  parameter pixels_in_row_mult_2_minus_1 = pixels_in_row_mult_2 - 1;
  parameter pixels_in_row_mult_2_minus_2 = pixels_in_row_mult_2 - 2;
  parameter pixels_in_row_mult_2_minus_3 = pixels_in_row_mult_2 - 3;
  parameter pixels_in_row_mult_2_minus_4 = pixels_in_row_mult_2 - 4;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
  parameter pixels_in_row_minus_1 = pixels_in_row-1;
  parameter pixels_in_row_minus_2 = pixels_in_row-2;
  parameter pixels_in_row_minus_3 = pixels_in_row-3;
  parameter buffers_num_minus_1 = buffers_num-1;

  parameter row_num_in_mode0 = 64; // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128; // 64 in 8 bit, 128 in 1 bit

  parameter ifs_in_row_2pow = 1;

  parameter input_buffer_size_2pow = 12;//4096

  // conv tiling module
  input mode_init;
  input [3:0] k_init, s_init, p_init;
  input [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;
  input clk, conv_load_input, reset;
  input [3:0] nif_in_2pow_init, ix_in_2pow_init;

  reg mode;
  reg [3:0] k, s, p;
  reg [15:0] of, ox, oy, ix, iy, nif;
  reg [3:0] nif_in_2pow, ix_in_2pow;

  output [15:0] row1_idx;
  wire [15:0] row_y1;
  output [15:0] row_start_idx, row_end_idx;

  output conv_end;
  output conv_pixels_add_end;
  output conv_nif_add_end;

  output [15:0] row1_buf_adr;
  output [1:0] row1_buf_idx;
  output row1_buf_word_select;

  output valid_row1_adr;

  wire valid_adr;
  wire [15:0] row1_buf_adr_in_row;

  output [15:0] ox_start, oy_start, pox, poy, if_idx;

  wire [15:0] iy_start;
  wire[15:0] iy_start_plus_s;
  wire[15:0] iy_start_plus_2s;

  wire conv_tiling_add_end;

  //conv tile module
  //address translation
  //    wire [15:0] row_base0_in_3s;
  wire [15:0] row1_base_in_3;
  wire [15:0] row1_base_in_3s;

  wire [15:0] row1_bias0;
  wire [15:0] row1_bias;

  wire [3:0] s_mult_3;

  wire leq3_1, leq6_1, leq9_1;

  wire [15:0] row1_offset_s1;
  wire [15:0] row1_buf_idx_s1;

  wire loop_y_add_begin, loop_y_add_end;
  wire loop_x_add_begin, loop_x_add_end;
  wire loop_if_add_begin, loop_if_add_end;

  reg [15:0] tile_y_start, tile_x_start; // tile_x_start is the inner loop
  reg [15:0] if_start;

  wire [15:0] row_num;

  reg[15:0] row_base_in_3s;

  wire [15:0] ix_start;

  //adr mod mapping
  wire [3:0] row_num_limit_input_buffer_2pow = input_buffer_size_2pow - (
         nif_in_2pow - ifs_in_row_2pow + ix_in_2pow - pixels_in_row_in_2pow);

  wire [15:0] row_num_limit_mask_input_buffer = 16'hffff >> (16 - row_num_limit_input_buffer_2pow);

  //ddr word counter
  reg input_ddr_word_signal;
  reg [15:0] input_ddr_word_chunk_counter; //current chunk counter
  reg [15:0] input_ddr_word_tile_counter; //current input tile counter
  wire loop_input_ddr_word_chunk_counter_add_begin, loop_input_ddr_word_chunk_counter_add_end;
  wire loop_input_ddr_word_tile_counter_add_begin, loop_input_ddr_word_tile_counter_add_end;

  //ddr word stall
  reg input_ddr_word_stall;
  wire [15:0] input_tile_of_split_size; //ceil(ix_size * iy_size * row_num / of_ceil)
  wire [15:0] of_ceil = ceil(of / row_num) * row_num;

  //chunk_ix_counter
  reg [15:0] chunk_ix_counter;
  wire loop_chunk_ix_counter_add_begin, loop_chunk_ix_counter_add_end;

  reg [15:0] chunk_iy_counter;
  wire loop_chunk_iy_counter_add_begin, loop_chunk_iy_counter_add_end;

  wire [15:0] chunk_ix_size;
  wire [15:0] chunk_iy_size;
  wire [15:0] chunk_ix_size_mult_chunk_iy_size;//ix_size * iy_size

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      mode <= mode_init;
      k <= k_init;
      s <= s_init;
      p <= p_init;
      of <= of_init;
      ox <= ox_init;
      oy <= oy_init;
      ix <= ix_init;
      iy <= iy_init;
      nif <= nif_init;
      nif_in_2pow <= nif_in_2pow_init;
      ix_in_2pow <= ix_in_2pow_init;
    end
    else
    begin
      mode <= mode;
      k <= k;
      s <= s;
      p <= p;
      of <= of;
      ox <= ox;
      oy <= oy;
      ix <= ix;
      iy <= iy;
      nif <= nif;
      nif_in_2pow <= nif_in_2pow;
      ix_in_2pow <= ix_in_2pow;
    end
  end

  assign row_num = (mode == 1'b0)? row_num_in_mode0 :
         (mode == 1'b1)? row_num_in_mode1 : 0;

  //loop ddr_word_counter

  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      input_ddr_word_signal <= 0;
    end
    else if(conv_load_input == 1'b1)
    begin
      input_ddr_word_signal <= 1;
    end
    else if(loop_input_ddr_word_chunk_counter_add_end == 1'b1)
    begin
      input_ddr_word_signal <= 0;
    end
    else
    begin
      input_ddr_word_signal <= input_ddr_word_signal;
    end
  end

  //loop if, a input chunk load (x_size, y_size, f_size) = (32, 1, nif)
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      if_start <= 1;
    end
    else if((loop_if_add_begin == 1'b1))
    begin
      if(loop_if_add_end == 1'b1)
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
  assign loop_if_add_begin = (conv_load_input == 1'b1);
  assign loop_if_add_end = loop_if_add_begin && ((if_start + 1) > nif);

  //chunk counter is reset every computation term
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      input_ddr_word_chunk_counter <= 1;
    end
    else if(loop_input_ddr_word_chunk_counter_add_begin == 1'b1)
    begin
      if(loop_input_ddr_word_chunk_counter_add_end == 1'b1)
      begin
        input_ddr_word_chunk_counter <= 1;
      end
      else
      begin
        input_ddr_word_chunk_counter <= input_ddr_word_chunk_counter + 1;
      end
    end
    else
    begin
      input_ddr_word_chunk_counter <= input_ddr_word_chunk_counter;
    end
  end
  assign loop_input_ddr_word_chunk_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_input_ddr_word_chunk_counter_add_end = loop_input_ddr_word_chunk_counter_add_begin
         && (
           (input_ddr_word_chunk_counter == input_tile_of_split_size)
           || (input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size)
         );

  //tile counter is reset after the computation of nof channel in current SP position
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      input_ddr_word_tile_counter <= 1;
    end
    else if(loop_input_ddr_word_tile_counter_add_begin == 1'b1)
    begin
      if(loop_input_ddr_word_tile_counter_add_end == 1'b1)
      begin
        input_ddr_word_tile_counter <= 1;
      end
      else
      begin
        input_ddr_word_tile_counter <= input_ddr_word_tile_counter + 1;
      end
    end
    else
    begin
      input_ddr_word_tile_counter <= input_ddr_word_tile_counter;
    end
  end
  assign loop_input_ddr_word_tile_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_input_ddr_word_tile_counter_add_end = loop_input_ddr_word_tile_counter_add_begin
         && ((input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size));


  assign input_tile_of_split_size = ceil(chunk_ix_size * chunk_iy_size * row_num / of_ceil);

  assign chunk_ix_size_mult_chunk_iy_size = (chunk_ix_size == 1)? chunk_iy_size:
         (chunk_ix_size == 2)? (chunk_iy_size << 1):
         (chunk_ix_size == 3)? (chunk_iy_size << 1) + chunk_iy_size: 0;

  //loop [ix_start, ix_start + chunk_ix_size)
  //chunk_ix_counter
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      chunk_ix_counter <= 1;
    end
    else if(loop_chunk_ix_counter_add_begin == 1'b1)
    begin
      if(loop_chunk_ix_counter_add_end == 1'b1)
      begin
        chunk_ix_counter <= 1;
      end
      else
      begin
        chunk_ix_counter <= chunk_ix_counter + 1;
      end
    end
    else
    begin
      chunk_ix_counter <= chunk_ix_counter;
    end
  end
  assign loop_chunk_ix_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_chunk_ix_counter_add_end = loop_chunk_ix_counter_add_begin
         && ((chunk_ix_counter == chunk_ix_size));

  assign chunk_ix_size = (ix_start == 1)? ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row) :
         (ix_start > 1)? s: 0;

  //loop [iy_start, iy_start + chunk_iy_size)
  //chunk_iy_counter
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      chunk_iy_counter <= 1;
    end
    else if(loop_chunk_iy_counter_add_begin == 1'b1)
    begin
      if(loop_chunk_iy_counter_add_end == 1'b1)
      begin
        chunk_iy_counter <= 1;
      end
      else
      begin
        chunk_iy_counter <= chunk_iy_counter + 1;
      end
    end
    else
    begin
      chunk_iy_counter <= chunk_iy_counter;
    end
  end
  assign loop_chunk_iy_counter_add_begin = (loop_chunk_ix_counter_add_end == 1'b1);
  assign loop_chunk_iy_counter_add_end = loop_chunk_iy_counter_add_begin
         && ((chunk_iy_counter == chunk_iy_size));

  assign chunk_iy_size = (iy_start == 1)? ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row) :
         (ix_start > 1)? s: 0;

  //output tersor tiling
  //loop ox
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      tile_x_start <= 1;
    end
    else if(loop_x_add_begin == 1'b1)
    begin
      if(loop_x_add_end == 1'b1)
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

  assign loop_x_add_begin = (loop_input_ddr_word_tile_counter_add_end == 1'b1);
  assign loop_x_add_end = loop_x_add_begin && ((tile_x_start + pixels_in_row) > ox);

  //loop oy
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      tile_y_start <= 1;
      row_base_in_3s <= 0;
    end
    else if(loop_y_add_begin == 1'b1)
    begin
      if(loop_y_add_end == 1'b1)
      begin //the last tile_y_start
        tile_y_start <= 1;
        row_base_in_3s <= 0;
      end
      else
      begin
        tile_y_start <= tile_y_start + buffers_num;
        row_base_in_3s <= row_base_in_3s + 1; //oy_start in 3
      end
    end
    else
    begin
      tile_y_start <= tile_y_start;
      row_base_in_3s <= row_base_in_3s;
    end
  end

  assign loop_y_add_begin = (loop_x_add_end==1'b1);
  assign loop_y_add_end = loop_y_add_begin && ((tile_y_start + buffers_num) > oy);

  assign ox_start = tile_x_start;
  assign oy_start = tile_y_start;

  assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
         pixels_in_row;

  assign poy = (tile_y_start + buffers_num_minus_1 > oy)? (oy - tile_y_start + 1):
         buffers_num;

  assign conv_tiling_add_end = loop_y_add_end;

  assign if_idx = if_start;

  assign conv_end = conv_tiling_add_end;

  assign row1_idx = (poy < 1)? 16'hffff : row_y1;

  //need - p
  assign iy_start = (s == 4'd1)? oy_start:
         (s == 4'd2)? (oy_start << 1) - 1:
         0;

  // ix_start = (ox_start - 1) * s + 1;
  assign ix_start = (s == 4'd1)? tile_x_start:
         (s == 4'd2)? (tile_x_start << 1) - 1:
         0;


  //xxxxxx
  assign row1_bias0 = iy_start + chunk_iy_counter - 1 - {{12'b0},p};

  assign row1_base_in_3s = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;

  assign row1_base_in_3 = (s == 4'd1)? row1_base_in_3s:
         (s == 4'd2)? (row1_base_in_3s << 1):
         0;

  assign s_mult_3 = (s << 1) + s;

  assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;

  assign leq3_1 = (row1_bias <= 3)? 1 : 0;
  assign leq6_1 = (row1_bias <= 6)? 1 : 0;
  assign leq9_1 = (row1_bias <= 9)? 1 : 0;


  assign row1_buf_idx_s1 = (leq6_1 == 1'b1)?
         ((leq3_1 == 1'b1)? row1_bias: (row1_bias - 3)) :
         ((leq9_1 == 1'b1)? (row1_bias - 6): (row1_bias - 9));

  assign row1_offset_s1 = (leq6_1 == 1'b1)?
         ((leq3_1 == 1'b1)? 0: 1) :
         ((leq9_1 == 1'b1)? 2: 3);

  assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;

  assign row1_buf_adr_in_row = (row1_idx == 16'hffff)? 16'hffff:
         (row1_base_in_3 + row1_offset_s1);

  assign row1_buf_adr = (row1_idx == 16'hffff)? 16'hffff:
         (((row1_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
          + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
         + ((if_idx - 1) >> ifs_in_row_2pow);

  assign row1_buf_word_select = (if_idx - 1) & 16'h0001;


endmodule
