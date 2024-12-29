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
    clk, conv_load_input, reset,
    ddr_en,

    mode_init,
    of_init, ox_init, oy_init, ix_init, iy_init, nif_init,
    k_init, s_init, p_init,
    nif_in_2pow_init,
    ix_in_2pow_init,
    input_ddr_layer_base_adr_init,
    of_div_row_num_ceil_init,
    tiley_first_tilex_first_split_size_init,
    tiley_first_tilex_last_split_size_init,
    tiley_first_tilex_mid_split_size_init,
    tiley_last_tilex_first_split_size_init,
    tiley_last_tilex_last_split_size_init,
    tiley_last_tilex_mid_split_size_init,
    tiley_mid_tilex_first_split_size_init,
    tiley_mid_tilex_last_split_size_init,
    tiley_mid_tilex_mid_split_size_init,
    tilex_first_ix_word_num_init,
    tilex_last_ix_word_num_init,
    tilex_mid_ix_word_num_init,
    tiley_first_iy_row_num_init,
    tiley_last_iy_row_num_init,
    tiley_mid_iy_row_num_init,

    load_input_row_idx,
    load_input_row_start_idx,
    load_input_if_idx,
    load_input_row_buf_adr,
    load_input_row_buf_idx,
    input_word_ddr_en_rd,
    input_word_ddr_adr_rd,
    input_word_load_info_fifo_en_wt,
    input_word_load_info_fifo_wt
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
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;//4096

  // conv tiling module
  input clk, conv_load_input, reset; //load input means fin of the last execuation term
  input ddr_en;

  input mode_init;
  input [3:0] k_init, s_init, p_init;
  input [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;

  input [3:0] nif_in_2pow_init, ix_in_2pow_init;
  input [15:0] input_ddr_layer_base_adr_init;

  input [7:0] of_div_row_num_ceil_init;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_first_tilex_first_split_size_init;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_first_tilex_last_split_size_init;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_first_tilex_mid_split_size_init;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_last_tilex_first_split_size_init;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_last_tilex_last_split_size_init;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_last_tilex_mid_split_size_init;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_mid_tilex_first_split_size_init;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_mid_tilex_last_split_size_init;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  input [7:0] tiley_mid_tilex_mid_split_size_init;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  input [7:0] tilex_first_ix_word_num_init;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  input [7:0] tilex_last_ix_word_num_init;
  //tilex_mid_ix_word_num = s
  input [7:0] tilex_mid_ix_word_num_init;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  input [7:0] tiley_first_iy_row_num_init;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  input [7:0] tiley_last_iy_row_num_init;
  //tiley_mid_iy_row_num = buffers_num * s
  input [7:0] tiley_mid_iy_row_num_init;

  reg mode;
  reg [3:0] k, s, p;
  reg [15:0] of, ox, oy, ix, iy, nif;
  reg [3:0] nif_in_2pow, ix_in_2pow;
  reg [15:0] input_ddr_layer_base_adr;
  reg [7:0] of_div_row_num_ceil;
  //of_div_row_num_ceil = ceil(of / row_num)
  reg [7:0] tiley_first_tilex_first_split_size;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_first_tilex_last_split_size;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_first_tilex_mid_split_size;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_first_split_size;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_last_split_size;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_last_tilex_mid_split_size;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_first_split_size;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_last_split_size;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [7:0] tiley_mid_tilex_mid_split_size;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  reg [7:0] tilex_first_ix_word_num;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  reg [7:0] tilex_last_ix_word_num;
  //tilex_mid_ix_word_num = s
  reg [7:0] tilex_mid_ix_word_num;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  reg [7:0] tiley_first_iy_row_num;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  reg [7:0] tiley_last_iy_row_num;
  //tiley_mid_iy_row_num = buffers_num * s
  reg [7:0] tiley_mid_iy_row_num;

  output [15:0] load_input_row_idx;
  output [15:0] load_input_row_start_idx;
  output [15:0] load_input_if_idx;
  output [15:0] load_input_row_buf_adr;
  output [1:0] load_input_row_buf_idx;

  output input_word_ddr_en_rd;
  output [15:0] input_word_ddr_adr_rd;

  output input_word_load_info_fifo_en_wt;
  output [31:0] input_word_load_info_fifo_wt;

  wire valid_adr;
  wire [15:0] row1_buf_adr_in_row;
  wire [15:0] iy_start;
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
  wire loop_f_add_begin, loop_f_add_end;
  wire loop_if_add_begin, loop_if_add_end;
  reg [15:0] tile_y_start, tile_x_start, tile_f_start; // tile_f_start is the inner loop
  reg [15:0] if_start;
  reg [7:0] of_chunk_counter; //1, 2,..., of_div_row_num_ceil, a timer or recorder
  wire [15:0] row_num;
  // wire [3:0] row_num_2pow;
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

  reg state_load_input_tile_fin;

  //ddr word stall
  wire [7:0] input_tile_of_split_size; //ceil(ix_size * iy_size * row_num / of_ceil)
  // wire [15:0] of_ceil;

  //chunk_ix_counter
  reg [7:0] chunk_ix_counter;
  wire loop_chunk_ix_counter_add_begin, loop_chunk_ix_counter_add_end;

  reg [7:0] chunk_iy_counter;
  wire loop_chunk_iy_counter_add_begin, loop_chunk_iy_counter_add_end;

  wire [7:0] chunk_ix_size;
  wire [7:0] chunk_iy_size;
  wire [7:0] chunk_ix_size_mult_chunk_iy_size;//ix_size * iy_size

  always@(posedge clk)
  begin
    if (reset == 1'b1) //layer start?
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
      input_ddr_layer_base_adr <= input_ddr_layer_base_adr_init;

      of_div_row_num_ceil <= of_div_row_num_ceil_init;
      tiley_first_tilex_first_split_size  <= tiley_first_tilex_first_split_size_init;
      tiley_first_tilex_last_split_size  <=  tiley_first_tilex_last_split_size_init;
      tiley_first_tilex_mid_split_size  <= tiley_first_tilex_mid_split_size_init;
      tiley_last_tilex_first_split_size  <=  tiley_last_tilex_first_split_size_init;
      tiley_last_tilex_last_split_size  <= tiley_last_tilex_last_split_size_init;
      tiley_last_tilex_mid_split_size  <= tiley_last_tilex_mid_split_size_init;
      tiley_mid_tilex_first_split_size  <= tiley_mid_tilex_first_split_size_init;
      tiley_mid_tilex_last_split_size  <= tiley_mid_tilex_last_split_size_init;
      tiley_mid_tilex_mid_split_size  <= tiley_mid_tilex_mid_split_size_init;
      tilex_first_ix_word_num  <= tilex_first_ix_word_num_init;
      tilex_last_ix_word_num  <= tilex_last_ix_word_num_init;
      tilex_mid_ix_word_num  <= tilex_mid_ix_word_num_init;
      tiley_first_iy_row_num  <= tiley_first_iy_row_num_init;
      tiley_last_iy_row_num  <= tiley_last_iy_row_num_init;
      tiley_mid_iy_row_num  <= tiley_mid_iy_row_num_init;
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
      input_ddr_layer_base_adr <= input_ddr_layer_base_adr;

      of_div_row_num_ceil <= of_div_row_num_ceil;
      tiley_first_tilex_first_split_size  <= tiley_first_tilex_first_split_size ;
      tiley_first_tilex_last_split_size  <=  tiley_first_tilex_last_split_size ;
      tiley_first_tilex_mid_split_size  <= tiley_first_tilex_mid_split_size ;
      tiley_last_tilex_first_split_size  <=  tiley_last_tilex_first_split_size ;
      tiley_last_tilex_last_split_size  <= tiley_last_tilex_last_split_size ;
      tiley_last_tilex_mid_split_size  <= tiley_last_tilex_mid_split_size ;
      tiley_mid_tilex_first_split_size  <= tiley_mid_tilex_first_split_size ;
      tiley_mid_tilex_last_split_size  <= tiley_mid_tilex_last_split_size ;
      tiley_mid_tilex_mid_split_size  <= tiley_mid_tilex_mid_split_size ;
      tilex_first_ix_word_num  <= tilex_first_ix_word_num ;
      tilex_last_ix_word_num  <= tilex_last_ix_word_num ;
      tilex_mid_ix_word_num  <= tilex_mid_ix_word_num ;
      tiley_first_iy_row_num  <= tiley_first_iy_row_num  ;
      tiley_last_iy_row_num  <= tiley_last_iy_row_num ;
      tiley_mid_iy_row_num  <= tiley_mid_iy_row_num ;
    end
  end

  assign row_num = (mode == 1'b0)? row_num_in_mode0 :
         (mode == 1'b1)? row_num_in_mode1 : 0;
  // assign row_num_2pow = (mode == 1'b0)? row_num_mode0_2pow :
  //        (mode == 1'b1)? row_num_mode1_2pow : 0;

  //state of SP tile input load

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      state_load_input_tile_fin <= 0;
    end
    else if (input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size)
    begin
      state_load_input_tile_fin <= 1;
    end
    else if (loop_f_add_end == 1)
    begin
      state_load_input_tile_fin <= 0;
    end
    else
    begin
      state_load_input_tile_fin <= state_load_input_tile_fin;
    end
  end

  //loop ddr_word_counter
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      input_ddr_word_signal <= 0;
    end
    else if((conv_load_input == 1'b1) && (state_load_input_tile_fin == 0))
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
        if_start <= if_start + 2;
      end
    end
    else
    begin
      if_start <= if_start;
    end
  end
  assign loop_if_add_begin = (input_ddr_word_signal == 1'b1) && (ddr_en == 1'b1);
  assign loop_if_add_end = loop_if_add_begin && ((if_start + 2) > nif);

  assign if_idx = if_start;

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
         && (input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size);

  //  assign chunk_ix_size = (tile_x_start == 1)? (
  //   //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  //   tilex_first_ix_word_num
  // ):
  // (tile_x_start > 1)? (
  //   (tile_x_start + pixels_in_row_minus_1 > ox)?
  //   //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row)
  //   // = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  //   tilex_last_ix_word_num:
  //   //tilex_mid_ix_word_num = s
  //   tilex_mid_ix_word_num
  // ): 0;

  //  assign chunk_iy_size = (tile_y_start == 1)? (
  //    //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  //    tiley_first_iy_row_num
  //  ):
  //  (tile_y_start > 1)? (
  //    (tile_y_start + buffers_num_minus_1 > oy)?
  //    // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s
  //    // (oy % buffers_num) * s
  //    tiley_last_iy_row_num:
  //    //tiley_mid_iy_row_num = buffers_num * s
  //    tiley_mid_iy_row_num
  //  ):
  //  0;

  // assign input_tile_of_split_size = ceil(chunk_ix_size * chunk_iy_size / of_div_row_num_ceil);

  assign input_tile_of_split_size =
         (tile_y_start == 1)? (
           //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
           (tile_x_start == 1)? (
             //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
             //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_first_split_size
           ):
           (tile_x_start > 1)? (
             (tile_x_start + pixels_in_row_minus_1 > ox)?
             //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
             // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_last_split_size:
             //tilex_mid_ix_word_num = s
             //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_mid_split_size
           ): 0
         ):
         (tile_y_start > 1)? (
           (tile_y_start + buffers_num_minus_1 > oy)?
           // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
           (
             (tile_x_start == 1)? (
               //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
               //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
               tiley_last_tilex_first_split_size
             ):
             (tile_x_start > 1)? (
               (tile_x_start + pixels_in_row_minus_1 > ox)?
               //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
               //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
               tiley_last_tilex_last_split_size:
               //tilex_mid_ix_word_num = s
               //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
               tiley_last_tilex_mid_split_size
             ): 0
           ):
           //tiley_mid_iy_row_num = buffers_num * s
           (
             (tile_x_start == 1)? (
               //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
               //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
               tiley_mid_tilex_first_split_size
             ):
             (tile_x_start > 1)? (
               (tile_x_start + pixels_in_row_minus_1 > ox)?
               //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
               //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
               tiley_mid_tilex_last_split_size:
               //tilex_mid_ix_word_num = s
               //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
               tiley_mid_tilex_mid_split_size
             ): 0
           )
         ):
         0;

  // assign of_ceil = ceil(of / row_num) * row_num;

  assign chunk_ix_size_mult_chunk_iy_size = (chunk_ix_size == 1)? chunk_iy_size:
         (chunk_ix_size == 2)? (chunk_iy_size << 1):
         (chunk_ix_size == 3)? (chunk_iy_size << 1) + chunk_iy_size: 0;

  //loop [ix_start - p, ix_start - p + chunk_ix_size)
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

  // assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
  //        pixels_in_row;
  // assign chunk_ix_size = (tile_x_start == 1)? ceil(((pox - 1) * s + k - p)/pixels_in_row) :
  //        (tile_x_start > 1)? ceil(pox * s /pixels_in_row): 0;

  // assign chunk_ix_size = (tile_x_start == 1)? (
  //          (tile_x_start + pixels_in_row_minus_1 > ox)?
  //          ceil(((ox - tile_x_start) * s + k - p)/pixels_in_row): //ceil(((ox % pixels_in_row - 1)*s+k-p)/pixels_in_row)
  //          ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  //        ):
  //        (tile_x_start > 1)? (
  //          (tile_x_start + pixels_in_row_minus_1 > ox)?
  //          ceil((ox - tile_x_start + 1) * s /pixels_in_row): //ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  //          s
  //        ): 0;

  //ox >= 32
  assign chunk_ix_size = (tile_x_start == 1)? (
           //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
           tilex_first_ix_word_num
         ):
         (tile_x_start > 1)? (
           (tile_x_start + pixels_in_row_minus_1 > ox)?
           //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
           tilex_last_ix_word_num:
           //tilex_mid_ix_word_num = s
           tilex_mid_ix_word_num
         ): 0;

  //loop [iy_start - p, iy_start - p + chunk_iy_size)
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

  // assign poy = (tile_y_start + buffers_num_minus_1 > oy)? (oy - tile_y_start + 1):
  //        buffers_num;
  // assign chunk_iy_size = (tile_y_start == 1)? (poy - 1) * s + k - p :
  //        (tile_y_start > 1)? poy * s: 0;

  // assign chunk_iy_size = (tile_y_start == 1)? (
  //          (tile_y_start + buffers_num_minus_1 > oy)?
  //          (oy - tile_y_start) * s + k - p: // (oy % buffers_num - 1) * s + k - p
  //          (buffers_num - 1) * s + k - p
  //        ):
  //        (tile_y_start > 1)? (
  //          (tile_y_start + buffers_num_minus_1 > oy)?
  //          (oy - tile_y_start + 1) * s: // (oy % buffers_num) * s
  //          buffers_num * s
  //        ):
  //        0;

  //oy >= 3
  assign chunk_iy_size = (tile_y_start == 1)? (
           //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
           tiley_first_iy_row_num
         ):
         (tile_y_start > 1)? (
           (tile_y_start + buffers_num_minus_1 > oy)?
           // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
           tiley_last_iy_row_num:
           //tiley_mid_iy_row_num = buffers_num * s
           tiley_mid_iy_row_num
         ):
         0;

  //output tersor tiling
  //loop of
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      tile_f_start <= 1;
      of_chunk_counter <= 1;
    end
    else if(loop_f_add_begin == 1'b1)
    begin
      if(loop_f_add_end == 1'b1)
      begin // the last tile_f_start
        tile_f_start <= 1;
        of_chunk_counter <= 1;
      end
      else
      begin
        tile_f_start <= tile_f_start + row_num;
        of_chunk_counter <= of_chunk_counter + 1;
      end
    end
    else
    begin
      tile_f_start <= tile_f_start;
      of_chunk_counter <= of_chunk_counter;
    end
  end

  assign loop_f_add_begin = (conv_load_input == 1'b1);
  assign loop_f_add_end = loop_f_add_begin && ((tile_f_start + row_num) > of);

  //loop ox, seperate from loop of
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

  //loop oy, seperate from loop of
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
        row_base_in_3s <= row_base_in_3s + 1; //tile_y_start in 3
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

  // assign ox_start = tile_x_start;
  // assign oy_start = tile_y_start;

  assign pox = (tile_x_start + pixels_in_row_minus_1 > ox)? (ox - tile_x_start + 1):
         pixels_in_row;

  assign poy = (tile_y_start + buffers_num_minus_1 > oy)? (oy - tile_y_start + 1):
         buffers_num;

  assign conv_load_input_chunk_end = loop_input_ddr_word_chunk_counter_add_end;

  assign row1_idx = (((chunk_iy_counter - 1 + iy_start) < (p + 1))
                     || ((chunk_iy_counter - 1 + iy_start) > (p + 1)))?
         16'hffff: ((chunk_iy_counter - 1 + iy_start) - {{12'b0},p});

  assign iy_start = (s == 4'd1)? tile_y_start:
         (s == 4'd2)? (tile_y_start << 1) - 1:
         0;

  // ix_start = (ox_start - 1) * s + 1;
  assign ix_start = (s == 4'd1)? tile_x_start:
         (s == 4'd2)? (tile_x_start << 1) - 1:
         0;

  assign row_start_idx = ((chunk_ix_counter - 1) << pixels_in_row_in_2pow) + ix_start;

  //load ddr words instr generate
  assign input_word_ddr_adr_rd = input_ddr_layer_base_adr
         + (((row1_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
            + (((row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
         + ((if_start - 1) >> ifs_in_row_2pow);

  assign input_word_ddr_en_rd = loop_if_add_begin;

  // ddr words of input row write into input buffer
  // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
  assign row1_bias0 = chunk_iy_counter - {{12'b0},p};
  assign row1_base_in_3s = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row_base_in_3s - 1) : row_base_in_3s;
  assign row1_base_in_3 = (s == 4'd1)? row1_base_in_3s:
         (s == 4'd2)? (row1_base_in_3s << 1):
         0;
  assign s_mult_3 = (s << 1) + s;
  assign row1_bias = ((row1_bias0[15] == 1'b1) || (row1_bias0 == 0))? (row1_bias0 + {12'b0, {s_mult_3}}) : row1_bias0;
  assign leq3_1 = (row1_bias <= 3)? 1 : 0;
  assign leq6_1 = (row1_bias <= 6)? 1 : 0;
  assign leq9_1 = (row1_bias <= 9)? 1 : 0;

  //row buf index
  assign row1_buf_idx_s1 = (leq6_1 == 1'b1)?
         ((leq3_1 == 1'b1)? row1_bias: (row1_bias - 3)) :
         ((leq9_1 == 1'b1)? (row1_bias - 6): (row1_bias - 9));

  assign row1_offset_s1 = (leq6_1 == 1'b1)?
         ((leq3_1 == 1'b1)? 0: 1) :
         ((leq9_1 == 1'b1)? 2: 3);

  //row buf adr of the row index
  assign row1_buf_adr_in_row = (row1_idx == 16'hffff)? 16'hffff:
         (row1_base_in_3 + row1_offset_s1);

  assign input_word_buf_adr_wr = (row1_idx == 16'hffff)? 16'hffff:
         (((row1_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
          + ((row_start_idx << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
         + ((if_start - 1) >> ifs_in_row_2pow);

  //FIFO should be in the tb or top module
  //fifo
  assign input_word_load_info_fifo_en_wt = input_word_ddr_en_rd;
  assign input_word_load_info_fifo_wt = {row1_buf_idx_s1,input_word_buf_adr_wr};


endmodule
