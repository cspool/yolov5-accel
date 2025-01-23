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
    ix_chunks_num_init,
    iy_chunks_num_init,

    load_input_row_idx,
    load_input_row_start_idx,
    load_input_if_idx,
    load_input_row_buf_adr,
    load_input_row_buf_idx,
    input_word_ddr_en_rd,
    input_word_ddr_adr_rd,
    input_word_load_info_fifo_en_wt,
    input_word_load_info_fifo_wt,
    conv_load_input_fin
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
  //of_div_row_num_ceil = ceil(of / row_num)
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
  //ix_chunks_num = ceil(ix/pixels_in_row)
  //iy_chunks_num = ceil(iy/buffers_num)
  input [15:0] ix_chunks_num_init, iy_chunks_num_init;

  reg mode;
  reg [3:0] k, s, p;
  reg [15:0] of, ox, oy, ix, iy, nif;
  reg [3:0] nif_in_2pow, ix_in_2pow;
  reg [15:0] input_ddr_layer_base_adr;

  //of_div_row_num_ceil = ceil(of / row_num)
  reg [7:0] of_div_row_num_ceil;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
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
  //ix_chunks_num = ceil(ix/pixels_in_row)
  //iy_chunks_num = ceil(iy/buffers_num)
  reg [15:0] ix_chunks_num, iy_chunks_num;

  output [15:0] load_input_row_idx;
  output [15:0] load_input_row_start_idx;
  output [15:0] load_input_if_idx;
  output [15:0] load_input_row_buf_adr;
  output [1:0] load_input_row_buf_idx;
  output input_word_ddr_en_rd;
  output [15:0] input_word_ddr_adr_rd;
  output input_word_load_info_fifo_en_wt;
  output [31:0] input_word_load_info_fifo_wt;
  output conv_load_input_fin;

  //ddr word counter
  reg input_ddr_word_signal;
  reg [15:0] input_ddr_word_chunk_counter; //current chunk counter
  reg [15:0] input_ddr_word_tile_counter; //current input tile counter
  wire loop_input_ddr_word_chunk_counter_add_begin, loop_input_ddr_word_chunk_counter_add_end;
  wire loop_input_ddr_word_tile_counter_add_begin, loop_input_ddr_word_tile_counter_add_end;
  wire loop_if_add_begin, loop_if_add_end;
  reg [15:0] if_start;
  wire [7:0] chunk_ix_size;
  wire [7:0] chunk_iy_size;
  wire [7:0] chunk_ix_size_mult_chunk_iy_size;//ix_size * iy_size
  //amount of ddr word in a chunk
  wire [7:0] input_tile_of_split_size; //ceil(ix_size * iy_size * row_num / of_ceil)
  //ddr word counter in view of (iy,ix) chunk
  wire [15:0] row_num;
  reg [15:0] ix_load_index;
  wire loop_ix_load_index_add_begin, loop_ix_load_index_add_end;
  reg [15:0] iy_load_index, iy_load_index_mod_3, iy_load_index_in_3;
  wire loop_iy_load_index_add_begin, loop_iy_load_index_add_end;

  //cur input data of SP pos has been loaded
  reg state_load_input_tile_fin;
  reg load_for_com_tile_f_signal;
  wire loop_load_for_com_tile_f_add_begin, loop_load_for_com_tile_f_add_end;
  reg state_loop_load_for_com_tile_f_add_end;
  reg [15:0] load_for_com_tile_f_start;
  reg [7:0] of_chunk_counter; //1, 2,..., of_div_row_num_ceil. a timer or recorder

  //load for computation of tile(y,x)
  reg [15:0] load_for_com_tile_y_start, load_for_com_tile_x_start;
  wire loop_load_for_com_tile_y_add_begin, loop_load_for_com_tile_y_add_end;
  wire loop_load_for_com_tile_x_add_begin, loop_load_for_com_tile_x_add_end;
  //adr mod mapping
  wire [3:0] row_num_limit_input_buffer_2pow = input_buffer_size_2pow - (
         nif_in_2pow - ifs_in_row_2pow + ix_in_2pow - pixels_in_row_in_2pow);
  wire [15:0] row_num_limit_mask_input_buffer = 16'hffff >> (16 - row_num_limit_input_buffer_2pow);
  wire [15:0] load_input_row_buf_adr_in_row;

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
      ix_chunks_num <= ix_chunks_num_init;
      iy_chunks_num <= iy_chunks_num_init;
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
      ix_chunks_num <= ix_chunks_num;
      iy_chunks_num <= iy_chunks_num;
    end
  end
  assign row_num = (mode == 1'b0)? row_num_in_mode0 :
         (mode == 1'b1)? row_num_in_mode1 : 0;

  //current SP*nif input has been loaded
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      state_load_input_tile_fin <= 0;
    end
    else if ((loop_input_ddr_word_tile_counter_add_end == 1)
             && ((loop_load_for_com_tile_f_add_end | state_loop_load_for_com_tile_f_add_end) == 0))
    begin
      state_load_input_tile_fin <= 1;
    end
    else if (loop_load_for_com_tile_f_add_end == 1)
    begin
      state_load_input_tile_fin <= 0;
    end
    else
    begin
      state_load_input_tile_fin <= state_load_input_tile_fin;
    end
  end
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      load_for_com_tile_f_signal <= 0;
    end
    else if(conv_load_input == 1'b1)
    begin
      load_for_com_tile_f_signal <= 1;
    end
    else if(load_for_com_tile_f_signal == 1'b1)
    begin
      load_for_com_tile_f_signal <= 0;
    end
    else
    begin
      load_for_com_tile_f_signal <= load_for_com_tile_f_signal;
    end
  end
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      load_for_com_tile_f_start <= 1;
      of_chunk_counter <= 1;
    end
    else if(loop_load_for_com_tile_f_add_begin == 1'b1)
    begin
      if(loop_load_for_com_tile_f_add_end == 1'b1)
      begin // the last tile_f_start
        load_for_com_tile_f_start <= 1;
        of_chunk_counter <= 1;
      end
      else
      begin
        load_for_com_tile_f_start <= load_for_com_tile_f_start + row_num;
        of_chunk_counter <= of_chunk_counter + 1;
      end
    end
    else
    begin
      load_for_com_tile_f_start <= load_for_com_tile_f_start;
      of_chunk_counter <= of_chunk_counter;
    end
  end
  assign loop_load_for_com_tile_f_add_begin = (load_for_com_tile_f_signal == 1'b1);
  assign loop_load_for_com_tile_f_add_end = loop_load_for_com_tile_f_add_begin && ((load_for_com_tile_f_start + row_num) > of);

  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      state_loop_load_for_com_tile_f_add_end <= 0;
    end
    else if((input_ddr_word_signal == 1'b1) && (loop_load_for_com_tile_f_add_end == 1'b1))
    begin
      state_loop_load_for_com_tile_f_add_end <= 1;
    end
    else if(loop_input_ddr_word_chunk_counter_add_end == 1'b1)
    begin
      state_loop_load_for_com_tile_f_add_end <= 0;
    end
    else
    begin
      state_loop_load_for_com_tile_f_add_end <= state_loop_load_for_com_tile_f_add_end;
    end
  end

  //loop ddr_word_counter
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      input_ddr_word_signal <= 0;
    end
    else if((conv_load_input == 1'b1)
            && (state_load_input_tile_fin == 0)
            && (chunk_ix_size_mult_chunk_iy_size > 0))
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
  assign load_input_if_idx = if_start;

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
  assign conv_load_input_fin = loop_input_ddr_word_chunk_counter_add_end
         || ((conv_load_input == 1'b1)
             && (chunk_ix_size_mult_chunk_iy_size == 0));

  //tile counter is reset after the loading of nif input channel in current SP position
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
  //the computation of tile(tile_y_start, tile_x_start) needed input[ix_start - p, ix_start - p + chunk_ix_size)
  //but need loading input [ix_load_index, ix_load_index + chunk_ix_size)
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      ix_load_index <= 1;
    end
    else if(loop_ix_load_index_add_begin == 1'b1)
    begin
      if(loop_ix_load_index_add_end == 1'b1)
      begin
        ix_load_index <= 1;
      end
      else
      begin
        ix_load_index <= ix_load_index + 1;
      end
    end
    else
    begin
      ix_load_index <= ix_load_index;
    end
  end
  assign loop_ix_load_index_add_begin = (loop_if_add_end == 1'b1);
  assign loop_ix_load_index_add_end = loop_ix_load_index_add_begin
         && ((ix_load_index == ix_chunks_num));

  //the computation of tile(tile_y_start, tile_x_start) needed input[iy_start - p, iy_start - p + chunk_iy_size)
  //but need loading input [iy_load_index, iy_load_index + chunk_iy_size)
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      iy_load_index <= 1;
      iy_load_index_mod_3 <= 0;//0,1,2.
      iy_load_index_in_3 <= 0;
    end
    else if(loop_iy_load_index_add_begin == 1'b1)
    begin
      if(loop_iy_load_index_add_end == 1'b1)
      begin
        iy_load_index <= 1;
        iy_load_index_mod_3 <= 0;
        iy_load_index_in_3 <= 0;
      end
      else
      begin
        iy_load_index <= iy_load_index + 1;
        iy_load_index_mod_3 <= (iy_load_index_mod_3 == 2)? 0: (iy_load_index_mod_3 + 1);
        iy_load_index_in_3 <= (iy_load_index_mod_3 == 2)? iy_load_index_in_3 + 1: iy_load_index_in_3;
      end
    end
    else
    begin
      iy_load_index <= iy_load_index;
      iy_load_index_mod_3 <= iy_load_index_mod_3;
      iy_load_index_in_3 <= iy_load_index_in_3;
    end
  end
  assign loop_iy_load_index_add_begin = (loop_ix_load_index_add_end == 1'b1);
  assign loop_iy_load_index_add_end = loop_iy_load_index_add_begin
         && ((iy_load_index == iy_chunks_num));

  //cal the val of tiley_***_iy_row_num, tilex_***_ix_row_num
  //ox >= 32
  assign chunk_ix_size = (load_for_com_tile_x_start == 1)? (
           //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
           tilex_first_ix_word_num
         ):
         (load_for_com_tile_x_start > 1)? (
           (load_for_com_tile_x_start + pixels_in_row > ox)?
           //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
           tilex_last_ix_word_num:
           //tilex_mid_ix_word_num = s
           tilex_mid_ix_word_num
         ): 0;
  //oy >= 3
  assign chunk_iy_size = (load_for_com_tile_y_start == 1)? (
           //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
           tiley_first_iy_row_num
         ):
         (load_for_com_tile_y_start > 1)? (
           (load_for_com_tile_y_start + buffers_num > oy)?
           // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
           tiley_last_iy_row_num:
           //tiley_mid_iy_row_num = buffers_num * s
           tiley_mid_iy_row_num
         ):
         0;
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      load_for_com_tile_x_start <= 1;
    end
    else if(loop_load_for_com_tile_x_add_begin == 1'b1)
    begin
      if(loop_load_for_com_tile_x_add_end == 1'b1)
      begin // the last tile_x_start
        load_for_com_tile_x_start <= 1;
      end
      else
      begin
        load_for_com_tile_x_start <= load_for_com_tile_x_start + pixels_in_row;
      end
    end
    else
    begin
      load_for_com_tile_x_start <= load_for_com_tile_x_start;
    end
  end
  assign loop_load_for_com_tile_x_add_begin =
         ((loop_input_ddr_word_tile_counter_add_end == 1'b1) && ((loop_load_for_com_tile_f_add_end | state_loop_load_for_com_tile_f_add_end) == 1'b1) && (chunk_ix_size_mult_chunk_iy_size > 0))
         || ((state_load_input_tile_fin == 1'b1) && ((loop_load_for_com_tile_f_add_end | state_loop_load_for_com_tile_f_add_end) == 1'b1) && (chunk_ix_size_mult_chunk_iy_size > 0))
         || (((loop_load_for_com_tile_f_add_end | state_loop_load_for_com_tile_f_add_end) == 1'b1) && (chunk_ix_size_mult_chunk_iy_size == 0));
  // assign loop_x_add_begin = (loop_f_add_end == 1'b1);//error
  assign loop_load_for_com_tile_x_add_end = loop_load_for_com_tile_x_add_begin && ((load_for_com_tile_x_start + pixels_in_row) > ox);
  always@(posedge clk)
  begin
    if(reset ==1'b1)
    begin
      load_for_com_tile_y_start <= 1;
    end
    else if(loop_load_for_com_tile_y_add_begin == 1'b1)
    begin
      if(loop_load_for_com_tile_y_add_end == 1'b1)
      begin //the last tile_y_start
        load_for_com_tile_y_start <= 1;
      end
      else
      begin
        load_for_com_tile_y_start <= load_for_com_tile_y_start + buffers_num;
      end
    end
    else
    begin
      load_for_com_tile_y_start <= load_for_com_tile_y_start;
    end
  end
  assign loop_load_for_com_tile_y_add_begin = (loop_load_for_com_tile_x_add_end==1'b1);
  assign loop_load_for_com_tile_y_add_end = loop_load_for_com_tile_y_add_begin && ((load_for_com_tile_y_start + buffers_num) > oy);

  // assign input_tile_of_split_size = ceil(chunk_ix_size * chunk_iy_size / of_div_row_num_ceil);
  assign input_tile_of_split_size =
         (load_for_com_tile_y_start == 1)? (
           //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
           (load_for_com_tile_x_start == 1)? (
             //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
             //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_first_split_size
           ):
           (load_for_com_tile_x_start > 1)? (
             (load_for_com_tile_x_start + pixels_in_row > ox)?
             //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
             // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_last_split_size:
             //tilex_mid_ix_word_num = s
             //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
             tiley_first_tilex_mid_split_size
           ): 0
         ):
         (load_for_com_tile_y_start > 1)? (
           (load_for_com_tile_y_start + buffers_num > oy)?
           // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
           (
             (load_for_com_tile_x_start == 1)? (
               //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
               //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
               tiley_last_tilex_first_split_size
             ):
             (load_for_com_tile_x_start > 1)? (
               (load_for_com_tile_x_start + pixels_in_row > ox)?
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
             (load_for_com_tile_x_start == 1)? (
               //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
               //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
               tiley_mid_tilex_first_split_size
             ):
             (load_for_com_tile_x_start > 1)? (
               (load_for_com_tile_x_start + pixels_in_row > ox)?
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
  assign chunk_ix_size_mult_chunk_iy_size =  (chunk_ix_size == 1)? 0:
         (chunk_ix_size == 1)? chunk_iy_size:
         (chunk_ix_size == 2)? (chunk_iy_size << 1):
         (chunk_ix_size == 3)? (chunk_iy_size << 1) + chunk_iy_size: 0;

  //cal DDR rd adr, buf wt index, adr
  assign load_input_row_idx = iy_load_index;
  assign load_input_row_start_idx = ((ix_load_index - 1) << pixels_in_row_in_2pow) + 1;
  //load ddr words instr generate
  assign input_word_ddr_adr_rd = input_ddr_layer_base_adr
         + (((load_input_row_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
            + (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow))
         + ((if_start - 1) >> ifs_in_row_2pow);
  assign input_word_ddr_en_rd = loop_if_add_begin;

  // ddr words of input row write into input buffer
  // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
  //row buf index
  assign load_input_row_buf_idx = iy_load_index_mod_3 + 1;
  //row buf adr of the row index
  assign load_input_row_buf_adr_in_row = iy_load_index_in_3;
  assign load_input_row_buf_adr =
         ((load_input_row_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
         + (((load_input_row_start_idx-1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)
         + ((if_start - 1) >> ifs_in_row_2pow);

  //FIFO should be in the tb or top module
  //fifo
  assign input_word_load_info_fifo_en_wt = input_word_ddr_en_rd;
  assign input_word_load_info_fifo_wt = {load_input_row_buf_idx,load_input_row_buf_adr};


endmodule
