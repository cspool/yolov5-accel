`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/19 00:56:25
// Design Name: 
// Module Name: conv_load_input_ddr_controller_v3
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


module conv_load_input_ddr_controller_v3 #(
    parameter pixels_in_row = 32,
    parameter pixels_in_row_in_2pow = 5,
    parameter buffers_num = 3,
    parameter sa_column_num = 1,
    parameter row_num_in_mode0 = 64,  // 64 in 8 bit, 128 in 1 bit
    parameter row_num_in_mode1 = 128,  // 64 in 8 bit, 128 in 1 bit
    parameter row_num_mode0_2pow = 6,
    parameter row_num_mode1_2pow = 7,
    parameter ifs_in_row_2pow = 1,
    parameter input_buffer_size_2pow = 12,  //4096
    parameter ddr_cmd_word_num = 32
) (
    // conv tiling module
    input clk,
    conv_load_input_sig,
    reset,  //load input means fin of the last execuation term
    input ddr_cmd_ready,
    input ddr_rd_data_valid,
    input load_input_info_fifo_empty,

    input [ 3:0] mode_init,
    input [ 3:0] k_init,
    s_init,
    p_init,
    input [15:0] of_init,
    ox_init,
    oy_init,
    ix_init,
    iy_init,
    nif_init,
    input [ 3:0] nif_in_2pow_init,
    ix_in_2pow_init,
    input [31:0] input_ddr_layer_base_adr_init,
    //of_div_row_num_ceil = ceil(of / row_num)
    input [ 7:0] of_div_row_num_ceil_init,
    //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_first_tilex_first_split_size_init,
    // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_first_tilex_last_split_size_init,
    //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_first_tilex_mid_split_size_init,
    //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_last_tilex_first_split_size_init,
    //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_last_tilex_last_split_size_init,
    //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_last_tilex_mid_split_size_init,
    //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_mid_tilex_first_split_size_init,
    //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_mid_tilex_last_split_size_init,
    //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
    input [ 7:0] tiley_mid_tilex_mid_split_size_init,
    //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
    input [ 7:0] tilex_first_ix_word_num_init,
    //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
    input [ 7:0] tilex_last_ix_word_num_init,
    //tilex_mid_ix_word_num = s
    input [ 7:0] tilex_mid_ix_word_num_init,
    //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
    input [ 7:0] tiley_first_iy_row_num_init,
    // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
    input [ 7:0] tiley_last_iy_row_num_init,
    //tiley_mid_iy_row_num = buffers_num * s
    input [ 7:0] tiley_mid_iy_row_num_init,
    //ix_index_num = ceil(ix/pixels_in_row)
    //iy_index_num = ceil(iy/buffers_num)
    input [15:0] ix_index_num_init,
    iy_index_num_init,

    //load cmd
    output [31:0] load_input_ddr_base_adr,
    // reg [31:0] load_input_ddr_counter_base_adr;
    output [15:0] load_input_ddr_length,

    output            valid_load_input_ddr_cmd,
    //load info
    output     [15:0] load_input_row_idx,
    output     [15:0] load_input_row_start_idx,
    output     [15:0] load_input_if_idx,
    output     [15:0] load_input_row_buf_adr,
    output     [ 1:0] load_input_row_buf_idx,
    output            input_word_ddr_en_rd,
    output     [31:0] input_word_ddr_adr_rd,
    output            input_word_load_info_fifo_en_wt,
    output     [31:0] input_word_load_info_fifo_wt,
    //valid load input ddr word
    output            valid_load_input,
    output            conv_load_input_fin,
    output reg        state_conv_load_input
);
  wire       conv_load_input;

  reg  [3:0] mode;
  reg [3:0] k, s, p;
  reg [15:0] of, ox, oy, ix, iy, nif;
  reg [3:0] nif_in_2pow, ix_in_2pow;
  reg [31:0] input_ddr_layer_base_adr;

  //of_div_row_num_ceil = ceil(of / row_num)
  reg [ 7:0] of_div_row_num_ceil;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_first_split_size;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_last_split_size;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_mid_split_size;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_first_split_size;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_last_split_size;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_mid_split_size;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_first_split_size;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_last_split_size;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_mid_split_size;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  reg [ 7:0] tilex_first_ix_word_num;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  reg [ 7:0] tilex_last_ix_word_num;
  //tilex_mid_ix_word_num = s
  reg [ 7:0] tilex_mid_ix_word_num;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  reg [ 7:0] tiley_first_iy_row_num;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  reg [ 7:0] tiley_last_iy_row_num;
  //tiley_mid_iy_row_num = buffers_num * s
  reg [ 7:0] tiley_mid_iy_row_num;
  //ix_index_num = ceil(ix/pixels_in_row)
  //iy_index_num = ceil(iy/buffers_num)
  reg [15:0] ix_index_num, iy_index_num;
  wire [15:0] tilex_mid_ix_word_num_rectified;
  wire [15:0] tiley_mid_iy_row_num_rectified;

  reg  [15:0] shadow_load_input_ddr_length;

  reg  [15:0] conv_load_input_counter;
  wire        loop_conv_load_input_counter_add_begin;
  wire        loop_conv_load_input_counter_add_end;
  reg         instr_load_input_fin;

  //ddr word counter
  reg         input_ddr_word_signal;
  reg  [15:0] input_ddr_word_chunk_counter;  //current chunk counter
  reg  [15:0] input_ddr_word_tile_counter;  //current input tile counter
  wire loop_input_ddr_word_chunk_counter_add_begin, loop_input_ddr_word_chunk_counter_add_end;
  wire loop_input_ddr_word_tile_counter_add_begin, loop_input_ddr_word_tile_counter_add_end;
  wire loop_if_add_begin, loop_if_add_end;
  reg  [15:0] if_start;
  wire [ 7:0] chunk_ix_size;
  wire [ 7:0] chunk_iy_size;
  wire [ 7:0] chunk_ix_size_mult_chunk_iy_size;  //ix_size * iy_size
  //amount of ddr word in a chunk
  wire [ 7:0] input_tile_of_split_size;  //ceil(ix_size * iy_size * row_num / of_ceil)
  //ddr word counter in view of (iy,ix) chunk
  // wire [15:0] row_num;
  reg  [15:0] row_num;
  reg  [15:0] ix_load_index_counter;
  wire loop_ix_load_index_counter_add_begin, loop_ix_load_index_counter_add_end;
  reg [15:0] ix_load_index_base;
  wire loop_ix_load_index_base_add_begin, loop_ix_load_index_base_add_end;
  reg [15:0] iy_load_index_counter;
  wire loop_iy_load_index_counter_add_begin, loop_iy_load_index_counter_add_end;
  reg [15:0] iy_load_index_base, iy_load_index_base_minus_1_mod_3, iy_load_index_base_minus_1_in_3;
  wire loop_iy_load_index_base_add_begin, loop_iy_load_index_base_add_end;
  wire [15:0] ix_load_index;
  wire [15:0] iy_load_index, iy_load_index_minus_1_mod_3, iy_load_index_minus_1_in_3;

  //cur input data of SP pos has been loaded
  reg state_load_input_tile_fin;
  reg load_for_com_tile_f_signal;
  wire loop_load_for_com_tile_f_add_begin, loop_load_for_com_tile_f_add_end;
  reg        state_loop_load_for_com_tile_f_add_end;
  reg [15:0] load_for_com_tile_f_start;
  reg [ 7:0] of_chunk_counter;  //1, 2,..., of_div_row_num_ceil. a timer or recorder

  //load for computation of tile(y,x)
  reg [15:0] load_for_com_tile_y_start, load_for_com_tile_x_start;
  wire loop_load_for_com_tile_y_add_begin, loop_load_for_com_tile_y_add_end;
  wire loop_load_for_com_tile_x_add_begin, loop_load_for_com_tile_x_add_end;
  //adr mod mapping
  wire [ 3:0] row_num_limit_input_buffer_2pow = input_buffer_size_2pow - (nif_in_2pow - ifs_in_row_2pow + ix_in_2pow - pixels_in_row_in_2pow);
  wire [15:0] row_num_limit_mask_input_buffer = 16'hffff >> (16 - row_num_limit_input_buffer_2pow);
  wire [15:0]                                                                                                                                  load_input_row_buf_adr_in_row;

  always @(posedge clk) begin
    if (reset == 1'b1) //layer start?
    begin //set
      mode                               <= mode_init;
      k                                  <= k_init;
      s                                  <= s_init;
      p                                  <= p_init;
      of                                 <= of_init;
      ox                                 <= ox_init;
      oy                                 <= oy_init;
      ix                                 <= ix_init;
      iy                                 <= iy_init;
      nif                                <= nif_init;
      nif_in_2pow                        <= nif_in_2pow_init;
      ix_in_2pow                         <= ix_in_2pow_init;
      input_ddr_layer_base_adr           <= input_ddr_layer_base_adr_init;

      of_div_row_num_ceil                <= of_div_row_num_ceil_init;
      tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size_init;
      tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size_init;
      tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size_init;
      tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size_init;
      tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size_init;
      tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size_init;
      tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size_init;
      tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size_init;
      tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size_init;
      tilex_first_ix_word_num            <= tilex_first_ix_word_num_init;
      tilex_last_ix_word_num             <= tilex_last_ix_word_num_init;
      tilex_mid_ix_word_num              <= tilex_mid_ix_word_num_init;
      tiley_first_iy_row_num             <= tiley_first_iy_row_num_init;
      tiley_last_iy_row_num              <= tiley_last_iy_row_num_init;
      tiley_mid_iy_row_num               <= tiley_mid_iy_row_num_init;
      ix_index_num                       <= ix_index_num_init;
      iy_index_num                       <= iy_index_num_init;

      row_num                            <= (mode_init == 0) ? row_num_in_mode0 : (mode_init == 1) ? row_num_in_mode1 : 0;

    end else begin
      mode                               <= mode;
      k                                  <= k;
      s                                  <= s;
      p                                  <= p;
      of                                 <= of;
      ox                                 <= ox;
      oy                                 <= oy;
      ix                                 <= ix;
      iy                                 <= iy;
      nif                                <= nif;
      nif_in_2pow                        <= nif_in_2pow;
      ix_in_2pow                         <= ix_in_2pow;
      input_ddr_layer_base_adr           <= input_ddr_layer_base_adr;

      of_div_row_num_ceil                <= of_div_row_num_ceil;
      tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size;
      tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size;
      tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size;
      tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size;
      tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size;
      tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size;
      tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size;
      tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size;
      tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size;
      tilex_first_ix_word_num            <= tilex_first_ix_word_num;
      tilex_last_ix_word_num             <= tilex_last_ix_word_num;
      tilex_mid_ix_word_num              <= tilex_mid_ix_word_num;
      tiley_first_iy_row_num             <= tiley_first_iy_row_num;
      tiley_last_iy_row_num              <= tiley_last_iy_row_num;
      tiley_mid_iy_row_num               <= tiley_mid_iy_row_num;
      ix_index_num                       <= ix_index_num;
      iy_index_num                       <= iy_index_num;

      row_num                            <= row_num;
    end
  end
  // assign row_num = (mode == 0) ? row_num_in_mode0 : (mode == 1) ? row_num_in_mode1 : 0;

  //stage 1
  //current SP*nif input has been loaded
  always @(posedge clk) begin
    if (reset == 1'b1) begin  //set
      state_load_input_tile_fin <= 0;
    end else if ((loop_input_ddr_word_tile_counter_add_end == 1)
        //cur tile loading finished
        //before the last chunk in tile
        && ((loop_load_for_com_tile_f_add_end == 0) && (state_loop_load_for_com_tile_f_add_end == 0))) begin
      state_load_input_tile_fin <= 1;
    end else if (loop_load_for_com_tile_f_add_end == 1) begin
      state_load_input_tile_fin <= 0;
    end else begin
      state_load_input_tile_fin <= state_load_input_tile_fin;
    end
  end
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      load_for_com_tile_f_signal <= 0;
    end else if (conv_load_input == 1'b1) begin
      load_for_com_tile_f_signal <= 1;
    end else if (load_for_com_tile_f_signal == 1'b1) begin
      load_for_com_tile_f_signal <= 0;
    end else begin
      load_for_com_tile_f_signal <= load_for_com_tile_f_signal;
    end
  end
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      load_for_com_tile_f_start <= 1;
      of_chunk_counter          <= 1;
    end else if (loop_load_for_com_tile_f_add_begin == 1'b1) begin
      if (loop_load_for_com_tile_f_add_end == 1'b1) begin  // the last tile_f_start
        load_for_com_tile_f_start <= 1;
        of_chunk_counter          <= 1;
      end else begin
        load_for_com_tile_f_start <= load_for_com_tile_f_start + row_num;
        of_chunk_counter          <= of_chunk_counter + 1;
      end
    end else begin
      load_for_com_tile_f_start <= load_for_com_tile_f_start;
      of_chunk_counter          <= of_chunk_counter;
    end
  end
  assign loop_load_for_com_tile_f_add_begin = (load_for_com_tile_f_signal == 1'b1);
  assign loop_load_for_com_tile_f_add_end   = loop_load_for_com_tile_f_add_begin && ((load_for_com_tile_f_start + row_num) > of);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      state_loop_load_for_com_tile_f_add_end <= 0;
    end else if ((input_ddr_word_signal == 1'b1) && (loop_load_for_com_tile_f_add_end == 1'b1)) begin
      // expand the tile_f_end signal til the end of the load instr generation in cur chunk
      // because tile_f_end can not last long,
      // but tile_x_begin need waiting for the instr generation finished.
      state_loop_load_for_com_tile_f_add_end <= 1;
    end else if (loop_input_ddr_word_chunk_counter_add_end == 1'b1) begin
      state_loop_load_for_com_tile_f_add_end <= 0;
    end else begin
      state_loop_load_for_com_tile_f_add_end <= state_loop_load_for_com_tile_f_add_end;
    end
  end

  //loop ddr_word_counter
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      input_ddr_word_signal <= 0;
    end else if ((conv_load_input == 1'b1) && (state_load_input_tile_fin == 0) && (chunk_ix_size_mult_chunk_iy_size > 0)) begin
      input_ddr_word_signal <= 1;
    end else if (loop_input_ddr_word_chunk_counter_add_end == 1'b1) begin
      input_ddr_word_signal <= 0;
    end else begin
      input_ddr_word_signal <= input_ddr_word_signal;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      state_conv_load_input <= 0;
    end else if (valid_load_input_ddr_cmd == 1'b1) begin
      state_conv_load_input <= 1;
    end else if (loop_conv_load_input_counter_add_end == 1'b1) begin
      state_conv_load_input <= 0;
    end else begin
      state_conv_load_input <= state_conv_load_input;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      conv_load_input_counter <= 1;
    end else if (loop_conv_load_input_counter_add_begin == 1) begin
      if (loop_conv_load_input_counter_add_end == 1) begin
        conv_load_input_counter <= 1;
      end else begin
        conv_load_input_counter <= conv_load_input_counter + 1;
      end
    end else begin
      conv_load_input_counter <= conv_load_input_counter;
    end
  end

  assign loop_conv_load_input_counter_add_begin = valid_load_input;
  assign loop_conv_load_input_counter_add_end   = loop_conv_load_input_counter_add_begin && (conv_load_input_counter == shadow_load_input_ddr_length);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      if_start <= 1;
    end else if ((loop_if_add_begin == 1'b1)) begin
      if (loop_if_add_end == 1'b1) begin  //the last if_start
        if_start <= 1;
      end else begin
        if_start <= if_start + (load_input_ddr_length << ifs_in_row_2pow);
      end
    end else begin
      if_start <= if_start;
    end
  end
  assign loop_if_add_begin = (state_conv_load_input == 0)  //no valid load process at now
 && (input_ddr_word_signal == 1'b1) && (ddr_cmd_ready == 1'b1);
  assign loop_if_add_end   = loop_if_add_begin && ((if_start + (load_input_ddr_length << ifs_in_row_2pow)) > nif);

  always @(posedge clk) begin
    if (reset) begin
      shadow_load_input_ddr_length <= 0;
    end else if (valid_load_input_ddr_cmd) begin
      shadow_load_input_ddr_length <= load_input_ddr_length;
    end else begin
      shadow_load_input_ddr_length <= shadow_load_input_ddr_length;
    end
  end

  //chunk counter is reset every computation term
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      input_ddr_word_chunk_counter <= 1;
    end else if (loop_input_ddr_word_chunk_counter_add_begin == 1'b1) begin
      if (loop_input_ddr_word_chunk_counter_add_end == 1'b1) begin
        input_ddr_word_chunk_counter <= 1;
      end else begin
        input_ddr_word_chunk_counter <= input_ddr_word_chunk_counter + 1;
      end
    end else begin
      input_ddr_word_chunk_counter <= input_ddr_word_chunk_counter;
    end
  end
  assign loop_input_ddr_word_chunk_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_input_ddr_word_chunk_counter_add_end   = loop_input_ddr_word_chunk_counter_add_begin && ((input_ddr_word_chunk_counter == input_tile_of_split_size) || (input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size));

  //load instr of the chunk has finished
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      instr_load_input_fin <= 0;
    end else if (
        //instr generate finished
        loop_input_ddr_word_chunk_counter_add_end
        //no need to generate in current tile loading
        || ((conv_load_input == 1'b1) && (chunk_ix_size_mult_chunk_iy_size == 0))
        //no need to generate 2: before last chunk in ofs, loading of cur tile completed,
        //so chunk_ix_size_mult_chunk_iy_size(f(tile_x,tile_y) is the loading in the next tile  
        || ((conv_load_input == 1'b1) && (state_load_input_tile_fin == 1'b1) && (chunk_ix_size_mult_chunk_iy_size > 0))) begin
      instr_load_input_fin <= 1;
    end else if (conv_load_input_fin == 1'b1) begin
      instr_load_input_fin <= 0;
    end else begin
      instr_load_input_fin <= instr_load_input_fin;
    end
  end

  //tile counter is reset after the loading of nif input channel in current SP position
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      input_ddr_word_tile_counter <= 1;
    end else if (loop_input_ddr_word_tile_counter_add_begin == 1'b1) begin
      if (loop_input_ddr_word_tile_counter_add_end == 1'b1) begin
        input_ddr_word_tile_counter <= 1;
      end else begin
        input_ddr_word_tile_counter <= input_ddr_word_tile_counter + 1;
      end
    end else begin
      input_ddr_word_tile_counter <= input_ddr_word_tile_counter;
    end
  end
  assign loop_input_ddr_word_tile_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_input_ddr_word_tile_counter_add_end   = loop_input_ddr_word_tile_counter_add_begin && (input_ddr_word_tile_counter == chunk_ix_size_mult_chunk_iy_size);

  //the computation of tile(tile_y_start, tile_x_start) needed input[ix_start - p, ix_start - p + chunk_ix_size)
  //but need loading input [ix_load_index_base, ix_load_index_base + chunk_ix_size)
  //index_base + index_counter is in [ix_load_index_base, ix_load_index_base + chunk_ix_size)
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ix_load_index_counter <= 1;
    end else if (loop_ix_load_index_counter_add_begin == 1'b1) begin
      if (loop_ix_load_index_counter_add_end == 1'b1) begin
        ix_load_index_counter <= 1;
      end else begin
        ix_load_index_counter <= ix_load_index_counter + 1;
      end
    end else begin
      ix_load_index_counter <= ix_load_index_counter;
    end
  end
  assign loop_ix_load_index_counter_add_begin = (loop_if_add_end == 1'b1);
  assign loop_ix_load_index_counter_add_end   = loop_ix_load_index_counter_add_begin && (ix_load_index_counter == chunk_ix_size);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ix_load_index_base <= 1;
    end else if (loop_ix_load_index_base_add_begin == 1'b1) begin
      if (loop_ix_load_index_base_add_end == 1'b1) begin
        ix_load_index_base <= 1;
      end else begin
        ix_load_index_base <= ix_load_index_base + chunk_ix_size;
      end
    end else begin
      ix_load_index_base <= ix_load_index_base;
    end
  end
  assign loop_ix_load_index_base_add_begin = (loop_input_ddr_word_tile_counter_add_end == 1'b1);
  assign loop_ix_load_index_base_add_end   = loop_ix_load_index_base_add_begin && (ix_load_index_base + chunk_ix_size - 1 == ix_index_num);
  //the computation of tile(tile_y_start, tile_x_start) needed input[iy_start - p, iy_start - p + chunk_iy_size)
  //but need loading input [iy_load_index, iy_load_index + chunk_iy_size)
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      iy_load_index_counter <= 1;
    end else if (loop_iy_load_index_counter_add_begin == 1'b1) begin
      if (loop_iy_load_index_counter_add_end == 1'b1) begin
        iy_load_index_counter <= 1;
      end else begin
        iy_load_index_counter <= iy_load_index_counter + 1;
      end
    end else begin
      iy_load_index_counter <= iy_load_index_counter;
    end
  end
  assign loop_iy_load_index_counter_add_begin = (loop_ix_load_index_counter_add_end == 1'b1);
  assign loop_iy_load_index_counter_add_end   = loop_iy_load_index_counter_add_begin && (iy_load_index_counter == chunk_iy_size);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      iy_load_index_base               <= 1;
      iy_load_index_base_minus_1_mod_3 <= 0;  //0,1,2.
      iy_load_index_base_minus_1_in_3  <= 0;
    end else if (loop_iy_load_index_base_add_begin == 1'b1) begin
      if (loop_iy_load_index_base_add_end == 1'b1) begin
        iy_load_index_base               <= 1;
        iy_load_index_base_minus_1_mod_3 <= 0;  //0,1,2.
        iy_load_index_base_minus_1_in_3  <= 0;
      end else begin
        iy_load_index_base <= iy_load_index_base + chunk_iy_size;
        iy_load_index_base_minus_1_mod_3 <=  //
        (chunk_iy_size < (3 - iy_load_index_base_minus_1_mod_3)) ? (chunk_iy_size + iy_load_index_base_minus_1_mod_3) :  //
        (chunk_iy_size < (6 - iy_load_index_base_minus_1_mod_3)) ? (chunk_iy_size + iy_load_index_base_minus_1_mod_3 - 3) :  //
        (chunk_iy_size < (9 - iy_load_index_base_minus_1_mod_3)) ? (chunk_iy_size + iy_load_index_base_minus_1_mod_3 - 6) :  //
        (chunk_iy_size < (12 - iy_load_index_base_minus_1_mod_3)) ? (chunk_iy_size + iy_load_index_base_minus_1_mod_3 - 9) :  //
        (chunk_iy_size + iy_load_index_base_minus_1_mod_3 - 12);
        ////////////////////////////////
        iy_load_index_base_minus_1_in_3 <=  //
        (chunk_iy_size < (3 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3) :  //
        (chunk_iy_size < (6 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 1) :  //
        (chunk_iy_size < (9 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 2) :  //
        (chunk_iy_size < (12 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 3) :  //
        (iy_load_index_base_minus_1_in_3 + iy_load_index_base_minus_1_mod_3 + 4);
      end
    end else begin
      iy_load_index_base               <= iy_load_index_base;
      iy_load_index_base_minus_1_mod_3 <= iy_load_index_base_minus_1_mod_3;
      iy_load_index_base_minus_1_in_3  <= iy_load_index_base_minus_1_in_3;
    end
  end
  assign loop_iy_load_index_base_add_begin = (loop_ix_load_index_base_add_end == 1'b1);
  assign loop_iy_load_index_base_add_end   = loop_iy_load_index_base_add_begin && (iy_load_index_base + chunk_iy_size - 1 == iy_index_num);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      load_for_com_tile_x_start <= 1;
    end else if (loop_load_for_com_tile_x_add_begin == 1'b1) begin
      if (loop_load_for_com_tile_x_add_end == 1'b1) begin  // the last tile_x_start
        load_for_com_tile_x_start <= 1;
      end else begin
        load_for_com_tile_x_start <= load_for_com_tile_x_start + pixels_in_row;
      end
    end else begin
      load_for_com_tile_x_start <= load_for_com_tile_x_start;
    end
  end
  assign loop_load_for_com_tile_x_add_begin =
      //cur tile loading finished in just the last chunk of tile chunks
      ((loop_input_ddr_word_tile_counter_add_end == 1'b1) && ((loop_load_for_com_tile_f_add_end == 1'b1) || (state_loop_load_for_com_tile_f_add_end == 1'b1)) && (chunk_ix_size_mult_chunk_iy_size > 0))
      //cur tile loading finished before the last chunk of tile chunks
      || ((state_load_input_tile_fin == 1'b1) && ((loop_load_for_com_tile_f_add_end == 1'b1) || (state_loop_load_for_com_tile_f_add_end == 1'b1)) && (chunk_ix_size_mult_chunk_iy_size > 0))
         || (((loop_load_for_com_tile_f_add_end == 1'b1) || (state_loop_load_for_com_tile_f_add_end == 1'b1)) && (chunk_ix_size_mult_chunk_iy_size == 0));
  // assign loop_x_add_begin = (loop_f_add_end == 1'b1);//error
  assign loop_load_for_com_tile_x_add_end = loop_load_for_com_tile_x_add_begin && ((load_for_com_tile_x_start + pixels_in_row) > ox);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      load_for_com_tile_y_start <= 1;
    end else if (loop_load_for_com_tile_y_add_begin == 1'b1) begin
      if (loop_load_for_com_tile_y_add_end == 1'b1) begin  //the last tile_y_start
        load_for_com_tile_y_start <= 1;
      end else begin
        load_for_com_tile_y_start <= load_for_com_tile_y_start + sa_column_num;
      end
    end else begin
      load_for_com_tile_y_start <= load_for_com_tile_y_start;
    end
  end
  assign loop_load_for_com_tile_y_add_begin = (loop_load_for_com_tile_x_add_end == 1'b1);
  assign loop_load_for_com_tile_y_add_end   = loop_load_for_com_tile_y_add_begin && ((load_for_com_tile_y_start + sa_column_num) > oy);

  //stage 2
  reg conv_load_input_stage_1;
  always @(posedge clk) begin
    conv_load_input_stage_1 <= conv_load_input_sig;
  end
  assign conv_load_input = conv_load_input_stage_1;

  reg [15:0] ix_load_index_stage_1;
  reg [15:0] iy_load_index_stage_1;
  // assign ix_load_index = ix_load_index_base + ix_load_index_counter - 1;
  always @(posedge clk) begin
    ix_load_index_stage_1 <= ix_load_index_base + ix_load_index_counter - 1;
  end
  assign ix_load_index = ix_load_index_stage_1;
  // assign iy_load_index = iy_load_index_base + iy_load_index_counter - 1;
  always @(posedge clk) begin
    iy_load_index_stage_1 <= iy_load_index_base + iy_load_index_counter - 1;
  end
  assign iy_load_index = iy_load_index_stage_1;

  reg [15:0] iy_load_index_minus_1_mod_3_stage_1;
  // assign iy_load_index_minus_1_mod_3 =  //
  //     ((iy_load_index_counter - 1) < (3 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3) :  //
  //     ((iy_load_index_counter - 1) < (6 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 3) :  //
  //     ((iy_load_index_counter - 1) < (9 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 6) :  //
  //     ((iy_load_index_counter - 1) < (12 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 9) :  //
  //     (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 12);
  always @(posedge clk) begin
    iy_load_index_minus_1_mod_3_stage_1 <=  //
    ((iy_load_index_counter - 1) < (3 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3) :  //
    ((iy_load_index_counter - 1) < (6 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 3) :  //
    ((iy_load_index_counter - 1) < (9 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 6) :  //
    ((iy_load_index_counter - 1) < (12 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 9) :  //
    (iy_load_index_counter - 1 + iy_load_index_base_minus_1_mod_3 - 12);
  end
  assign iy_load_index_minus_1_mod_3 = iy_load_index_minus_1_mod_3_stage_1;

  reg [15:0] iy_load_index_minus_1_in_3_stage_1;
  // assign iy_load_index_minus_1_in_3 =  //
  //     ((iy_load_index_counter - 1) < (3 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 0) :  //
  //     ((iy_load_index_counter - 1) < (6 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 1) :  //
  //     ((iy_load_index_counter - 1) < (9 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 2) :  //
  //     ((iy_load_index_counter - 1) < (12 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 3) :  //
  //     (iy_load_index_base_minus_1_in_3 + 4);
  always @(posedge clk) begin
    iy_load_index_minus_1_in_3_stage_1 <=  //
    ((iy_load_index_counter - 1) < (3 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 0) :  //
    ((iy_load_index_counter - 1) < (6 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 1) :  //
    ((iy_load_index_counter - 1) < (9 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 2) :  //
    ((iy_load_index_counter - 1) < (12 - iy_load_index_base_minus_1_mod_3)) ? (iy_load_index_base_minus_1_in_3 + 3) :  //
    (iy_load_index_base_minus_1_in_3 + 4);
  end
  assign iy_load_index_minus_1_in_3 = iy_load_index_minus_1_in_3_stage_1;

  //cal the val of tiley_***_iy_row_num, tilex_***_ix_row_num
  //ox >= 32
  reg [15:0] tilex_mid_ix_word_num_rectified_stage_1;
  // assign tilex_mid_ix_word_num_rectified = //
  //     //the last ix word num is not s
  //     (ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ? tilex_last_ix_word_num :
  //     //s
  //     tilex_mid_ix_word_num;
  always @(posedge clk) begin
    tilex_mid_ix_word_num_rectified_stage_1 <=  //
    //the last ix word num is not s
    (ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ? tilex_last_ix_word_num :
    //s
    tilex_mid_ix_word_num;
  end
  assign tilex_mid_ix_word_num_rectified = tilex_mid_ix_word_num_rectified_stage_1;

  reg [7:0] chunk_ix_size_stage_1;
  // assign chunk_ix_size = (load_for_com_tile_x_start == 1) ? (
  //     //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  //     tilex_first_ix_word_num) : (load_for_com_tile_x_start > 1) ?
  //     //a entile row already loaded
  //     ((ix_load_index_base == 1) ? 0 :
  //     //tilex_mid_ix_word_num = s or less than s
  //     tilex_mid_ix_word_num_rectified) : 0;
  always @(posedge clk) begin
    chunk_ix_size_stage_1 <=  //
    (load_for_com_tile_x_start == 1) ? (
    //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
    tilex_first_ix_word_num) : (load_for_com_tile_x_start > 1) ?
    //a entile row already loaded
    ((ix_load_index_base == 1) ? 0 :
    //tilex_mid_ix_word_num = s or less than s
    tilex_mid_ix_word_num_rectified) : 0;
  end
  assign chunk_ix_size = chunk_ix_size_stage_1;

  //oy >= 3
  reg [15:0] tiley_mid_iy_row_num_rectified_stage_1;
  // assign tiley_mid_iy_row_num_rectified =
  //     //the last iy rows num is not s*buffer_num
  //     (iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ? tiley_last_iy_row_num :
  //     //s*buffer_num
  //     tiley_mid_iy_row_num;
  always @(posedge clk) begin
    tiley_mid_iy_row_num_rectified_stage_1 <=  //
    //the last iy rows num is not s*buffer_num
    (iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ? tiley_last_iy_row_num :
    //s*buffer_num
    tiley_mid_iy_row_num;
  end
  assign tiley_mid_iy_row_num_rectified = tiley_mid_iy_row_num_rectified_stage_1;

  reg [7:0] chunk_iy_size_stage_1;
  // assign chunk_iy_size = (load_for_com_tile_y_start == 1) ? (
  //     //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  //     tiley_first_iy_row_num) : (load_for_com_tile_y_start > 1) ?
  //     //tiley_mid_iy_row_num = buffers_num * s
  //     tiley_mid_iy_row_num_rectified : 0;
  always @(posedge clk) begin
    chunk_iy_size_stage_1 <= (load_for_com_tile_y_start == 1) ? (
    //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
    tiley_first_iy_row_num) : (load_for_com_tile_y_start > 1) ?
    //tiley_mid_iy_row_num = buffers_num * s
    tiley_mid_iy_row_num_rectified : 0;
  end

  reg [7:0] input_tile_of_split_size_stage_1;
  // assign input_tile_of_split_size = (load_for_com_tile_y_start == 1) ? (
  //     //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  //     (load_for_com_tile_x_start == 1) ? (
  //     //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  //     tiley_first_tilex_first_split_size) :
  //     //2,3,...
  //     (load_for_com_tile_x_start > 1) ? (
  //     //already loaded
  //     (ix_load_index_base == 1) ? 0 : (
  //     //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  //     (ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
  //     //the last ix word num is not s(last)
  //     tiley_first_tilex_last_split_size :
  //     //s
  //     tiley_first_tilex_mid_split_size)) : 0) :
  //     //2,3,...
  //     (load_for_com_tile_y_start > 1) ? (
  //     //tiley_mid_iy_row_num = buffers_num * s
  //     (load_for_com_tile_x_start == 1) ? (
  //     //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  //     ((iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ?
  //     //the last iy rows num is not s*buffer_num
  //     tiley_last_tilex_first_split_size :
  //     //s*buffer_num
  //     tiley_mid_tilex_first_split_size)) :
  //     //2,3,...
  //     (load_for_com_tile_x_start > 1) ? (
  //     //alaready loaded
  //     (ix_load_index_base == 1) ? 0 :
  //     //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  //     ((iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ?
  //     //the last iy rows num is not s*buffer_num
  //     ((ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
  //     //the last ix word num is not s(last)
  //     tiley_last_tilex_last_split_size :
  //     //s
  //     tiley_last_tilex_mid_split_size) :
  //     //s*buffer_num
  //     ((ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
  //     //the last ix word num is not s(last)
  //     tiley_mid_tilex_last_split_size :
  //     //s
  //     tiley_mid_tilex_mid_split_size))) : 0) : 0;
  always @(posedge clk) begin
    input_tile_of_split_size_stage_1 <= (load_for_com_tile_y_start == 1) ? (
    //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
    (load_for_com_tile_x_start == 1) ? (
    //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
    tiley_first_tilex_first_split_size) :
    //2,3,...
    (load_for_com_tile_x_start > 1) ? (
    //already loaded
    (ix_load_index_base == 1) ? 0 : (
    //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
    (ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
    //the last ix word num is not s(last)
    tiley_first_tilex_last_split_size :
    //s
    tiley_first_tilex_mid_split_size)) : 0) :
    //2,3,...
    (load_for_com_tile_y_start > 1) ? (
    //tiley_mid_iy_row_num = buffers_num * s
    (load_for_com_tile_x_start == 1) ? (
    //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
    ((iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ?
    //the last iy rows num is not s*buffer_num
    tiley_last_tilex_first_split_size :
    //s*buffer_num
    tiley_mid_tilex_first_split_size)) :
    //2,3,...
    (load_for_com_tile_x_start > 1) ? (
    //alaready loaded
    (ix_load_index_base == 1) ? 0 :
    //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
    ((iy_load_index_base + tiley_mid_iy_row_num - 1 > iy_index_num) ?
    //the last iy rows num is not s*buffer_num
    ((ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
    //the last ix word num is not s(last)
    tiley_last_tilex_last_split_size :
    //s
    tiley_last_tilex_mid_split_size) :
    //s*buffer_num
    ((ix_load_index_base + tilex_mid_ix_word_num - 1 > ix_index_num) ?
    //the last ix word num is not s(last)
    tiley_mid_tilex_last_split_size :
    //s
    tiley_mid_tilex_mid_split_size))) : 0) : 0;
  end
  assign input_tile_of_split_size = input_tile_of_split_size_stage_1;

  reg [7:0] chunk_ix_size_mult_chunk_iy_size_stage_1;
  // assign chunk_ix_size_mult_chunk_iy_size =  //
  //     (chunk_ix_size == 0) ? 0 :  //
  //     (chunk_ix_size == 1) ? chunk_iy_size :  // 
  //     (chunk_ix_size == 2) ? (chunk_iy_size << 1) :  // 
  //     (chunk_ix_size == 3) ? (chunk_iy_size << 1) + chunk_iy_size : 0;
  always @(posedge clk) begin
    chunk_ix_size_mult_chunk_iy_size_stage_1 <=  //
    (chunk_ix_size == 0) ? 0 :  //
    (chunk_ix_size == 1) ? chunk_iy_size :  // 
    (chunk_ix_size == 2) ? (chunk_iy_size << 1) :  // 
    (chunk_ix_size == 3) ? (chunk_iy_size << 1) + chunk_iy_size : 0;
  end
  assign chunk_ix_size_mult_chunk_iy_size = chunk_ix_size_mult_chunk_iy_size_stage_1;

  reg [15:0] load_input_if_idx_stage_1;
  // assign load_input_if_idx = if_start;
  always @(posedge clk) begin
    load_input_if_idx_stage_1 <= if_start;
  end
  assign load_input_if_idx = load_input_if_idx_stage_1;

  reg [31:0] load_input_ddr_base_adr_stage_1;
  // assign load_input_ddr_base_adr = ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //no need reading
  //     (input_ddr_layer_base_adr +  //
  //     (((load_input_row_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow)) +  //
  //     (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)) +  //
  //     ((if_start - 1) >> ifs_in_row_2pow));
  always @(posedge clk) begin
    load_input_ddr_base_adr_stage_1 <= ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //no need reading
    (input_ddr_layer_base_adr +  //
    (((load_input_row_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow)) +  //
    (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)) +  //
    ((if_start - 1) >> ifs_in_row_2pow));
  end
  assign load_input_ddr_base_adr = load_input_ddr_base_adr_stage_1;

  reg [15:0] load_input_ddr_length_stage_1;
  // assign load_input_ddr_length = ((if_start + (ddr_cmd_word_num << ifs_in_row_2pow)) > nif) ? ((((nif - if_start + 1) & 16'b1) == 0) ?  //even length
  //     ((nif - if_start + 1) >> ifs_in_row_2pow) :  //even length
  //     ((nif - if_start + 1) >> ifs_in_row_2pow) + 1  //odd length + 1
  //     ) : ddr_cmd_word_num;
  always @(posedge clk) begin
    load_input_ddr_length_stage_1 <=  //
    ((if_start + (ddr_cmd_word_num << ifs_in_row_2pow)) > nif) ?  //
    ((((nif - if_start + 1) & 16'b1) == 0) ?  //even length
    ((nif - if_start + 1) >> ifs_in_row_2pow) :  //even length
    ((nif - if_start + 1) >> ifs_in_row_2pow) + 1  //odd length + 1
    ) : ddr_cmd_word_num;
  end
  assign load_input_ddr_length = load_input_ddr_length_stage_1;


  // assign valid_load_input_ddr_cmd = input_word_ddr_en_rd;
  reg valid_load_input_ddr_cmd_stage_1;
  // assign valid_load_input_ddr_cmd = //
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : loop_if_add_begin;
  always @(posedge clk) begin
    valid_load_input_ddr_cmd_stage_1 <= //
  ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : loop_if_add_begin;
  end
  assign valid_load_input_ddr_cmd = valid_load_input_ddr_cmd_stage_1;

  //cal DDR rd adr, buf wt index, adr
  reg [15:0] load_input_row_idx_stage_1;
  // assign load_input_row_idx = ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : iy_load_index;
  always @(posedge clk) begin
    load_input_row_idx_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ?  //
    0 : iy_load_index;
  end
  assign load_input_row_idx = load_input_row_idx_stage_1;

  reg [15:0] load_input_row_start_idx_stage_1;
  // assign load_input_row_start_idx = //
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : //
  // ((ix_load_index - 1) << pixels_in_row_in_2pow) + 1;
  always @(posedge clk) begin
    load_input_row_start_idx_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
    ((ix_load_index - 1) << pixels_in_row_in_2pow) + 1;
  end
  assign load_input_row_start_idx = load_input_row_start_idx_stage_1;

  //load ddr words instr generate
  reg [31:0] input_word_ddr_adr_rd_stage_1;
  // assign input_word_ddr_adr_rd =  //
  //     ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
  //     (input_ddr_layer_base_adr +  //
  //     (((load_input_row_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow)) +  //
  //     (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)) +  //
  //     ((if_start - 1) >> ifs_in_row_2pow));
  always @(posedge clk) begin
    input_word_ddr_adr_rd_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
    (input_ddr_layer_base_adr +  //
    (((load_input_row_idx - 1) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow)) +  //
    (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)) +  //
    ((if_start - 1) >> ifs_in_row_2pow));
  end
  assign input_word_ddr_adr_rd = input_word_ddr_adr_rd_stage_1;

  reg input_word_ddr_en_rd_stage_1;
  // assign input_word_ddr_en_rd = //
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : loop_if_add_begin;
  always @(posedge clk) begin
    input_word_ddr_en_rd_stage_1 <= //
  ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : loop_if_add_begin;
  end
  assign input_word_ddr_en_rd = input_word_ddr_en_rd_stage_1;

  // ddr words of input row write into input buffer
  // consider the rows whose row_idx is in [p+1, p+iy], the rest of rows dont need address translation
  //row buf index
  reg [1:0] load_input_row_buf_idx_stage_1;
  // assign load_input_row_buf_idx = //
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : //
  // iy_load_index_minus_1_mod_3 + 1;
  always @(posedge clk) begin
    load_input_row_buf_idx_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
    iy_load_index_minus_1_mod_3 + 1;
  end
  assign load_input_row_buf_idx = load_input_row_buf_idx_stage_1;

  //row buf adr of the row index
  reg [15:0] load_input_row_buf_adr_in_row_stage_1;
  // assign load_input_row_buf_adr_in_row = //
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 : //
  // iy_load_index_minus_1_in_3;
  always @(posedge clk) begin
    load_input_row_buf_adr_in_row_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
    iy_load_index_minus_1_in_3;
  end
  assign load_input_row_buf_adr_in_row = load_input_row_buf_adr_in_row_stage_1;

  reg [15:0] load_input_row_buf_adr_stage_1;
  // assign load_input_row_buf_adr =
  // ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num))? 0:
  //        (((load_input_row_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow))
  //        + (((load_input_row_start_idx-1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow)
  //        + ((if_start - 1) >> ifs_in_row_2pow));
  always @(posedge clk) begin
    load_input_row_buf_adr_stage_1 <=  //
    ((iy_load_index > iy_index_num) || (ix_load_index > ix_index_num)) ? 0 :  //
    (((load_input_row_buf_adr_in_row & row_num_limit_mask_input_buffer) << ((nif_in_2pow - ifs_in_row_2pow) + ix_in_2pow - pixels_in_row_in_2pow)) +  //
    (((load_input_row_start_idx - 1) << (nif_in_2pow - ifs_in_row_2pow)) >> pixels_in_row_in_2pow) +  //
    ((if_start - 1) >> ifs_in_row_2pow));
  end
  assign load_input_row_buf_adr = load_input_row_buf_adr_stage_1;

  //accecpt load rows
  //FIFO should be in the tb or top module
  //fifo
  reg  [15:0] ddr_input_length_counter;
  reg         signal_ddr_input_length_counter;
  wire        loop_ddr_input_length_counter_add_begin;
  wire        loop_ddr_input_length_counter_add_end;
  // reg         state_ddr_input_length_counter_add_end;
  reg  [15:0] load_input_buf_adr_fifo_info;
  reg  [ 1:0] load_input_row_buf_idx_fifo_info;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      signal_ddr_input_length_counter  <= 0;
      load_input_buf_adr_fifo_info     <= 0;
      load_input_row_buf_idx_fifo_info <= 0;
    end else if (input_word_ddr_en_rd == 1'b1) begin
      signal_ddr_input_length_counter  <= 1;
      load_input_buf_adr_fifo_info     <= load_input_row_buf_adr;
      load_input_row_buf_idx_fifo_info <= load_input_row_buf_idx;
    end else if (loop_ddr_input_length_counter_add_end == 1'b1) begin
      signal_ddr_input_length_counter  <= 0;
      load_input_buf_adr_fifo_info     <= 0;
      load_input_row_buf_idx_fifo_info <= 0;
    end else begin
      signal_ddr_input_length_counter  <= signal_ddr_input_length_counter;
      load_input_buf_adr_fifo_info     <= load_input_buf_adr_fifo_info;
      load_input_row_buf_idx_fifo_info <= load_input_row_buf_idx_fifo_info;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ddr_input_length_counter <= 1;
    end else if (loop_ddr_input_length_counter_add_begin == 1'b1) begin
      if (loop_ddr_input_length_counter_add_end == 1'b1) begin
        ddr_input_length_counter <= 1;
      end else begin
        ddr_input_length_counter <= ddr_input_length_counter + 1;
      end
    end else begin
      ddr_input_length_counter <= ddr_input_length_counter;
    end
  end

  assign loop_ddr_input_length_counter_add_begin = (signal_ddr_input_length_counter == 1'b1);
  assign loop_ddr_input_length_counter_add_end   = loop_ddr_input_length_counter_add_begin && (ddr_input_length_counter == load_input_ddr_length);


  assign input_word_load_info_fifo_en_wt         = loop_ddr_input_length_counter_add_begin;
  assign input_word_load_info_fifo_wt            = {14'b0, load_input_row_buf_idx_fifo_info, (load_input_buf_adr_fifo_info + ddr_input_length_counter - 16'd1)};

  //rd input 
  assign valid_load_input                        = (state_conv_load_input == 1) && (ddr_rd_data_valid == 1);

  //should wait for the inbuf writing finished
  assign conv_load_input_fin                     = (instr_load_input_fin == 1'b1) && (signal_ddr_input_length_counter == 1'b0) && (load_input_info_fifo_empty == 1);



endmodule
