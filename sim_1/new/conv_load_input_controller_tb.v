`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/29/2024 02:42:43 PM
// Design Name:
// Module Name: conv_load_input_controller_tb
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


module conv_load_input_controller_tb ();
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
  parameter row_num_in_mode0 = 64;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;  //4096
  parameter buf_rd_ratio = 2;

  //conv_load_input_controller
  reg clk, conv_load_input, reset;  //load input means fin of the last execuation term
  reg ddr_en;
  reg mode_init;
  reg [3:0] k_init, s_init, p_init;
  reg [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;
  reg [3:0] nif_in_2pow_init, ix_in_2pow_init;
  reg [15:0] input_ddr_layer_base_adr_init;
  reg [ 7:0] of_div_row_num_ceil_init;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_first_split_size_init;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_last_split_size_init;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_first_tilex_mid_split_size_init;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_first_split_size_init;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_last_split_size_init;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_last_tilex_mid_split_size_init;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_first_split_size_init;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_last_split_size_init;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  reg [ 7:0] tiley_mid_tilex_mid_split_size_init;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  reg [ 7:0] tilex_first_ix_word_num_init;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row)*s+k-p)/pixels_in_row)
  reg [ 7:0] tilex_last_ix_word_num_init;
  //tilex_mid_ix_word_num = s
  reg [ 7:0] tilex_mid_ix_word_num_init;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  reg [ 7:0] tiley_first_iy_row_num_init;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  reg [ 7:0] tiley_last_iy_row_num_init;
  //tiley_mid_iy_row_num = buffers_num * s
  reg [ 7:0] tiley_mid_iy_row_num_init;
  //ix_chunks_num = ceil(ix/pixels_in_row)
  //iy_chunks_num = ceil(iy/buffers_num)
  reg [15:0] ix_index_num_init, iy_index_num_init;
  //   conv_load_input_controller
  wire                                                             [                   15:0]                         load_input_row_idx;
  wire                                                             [                   15:0]                         load_input_row_start_idx;
  wire                                                             [                   15:0]                         load_input_if_idx;
  wire                                                             [                   15:0]                         load_input_row_buf_adr;
  wire                                                             [                    1:0]                         load_input_row_buf_idx;
  wire                                                                                                               input_word_ddr_en_rd;
  wire                                                             [                   15:0]                         input_word_ddr_adr_rd;
  wire                                                                                                               input_word_load_info_fifo_en_wt;
  wire                                                             [                   31:0]                         input_word_load_info_fifo_wt;
  wire                                                                                                               conv_load_input_fin;

  reg                                                                                                                valid_load_input;
  wire                                                             [                  511:0]                         load_input_word;
  reg                                                              [                  511:0]                         last_load_input_word;
  reg                                                                                                                state_valid_load_input;

  //cv_buffers_interfance
  //cycle 0 in/ input rows rd info
  wire                                                             [                   15:0] row1_buf_adr = 0;
  wire row1_buf_word_select = 0;
  wire                                                             [                    1:0] row1_buf_idx = 0;
  wire                                                             [                   15:0] row2_buf_adr = 0;
  wire row2_buf_word_select = 0;
  wire                                                             [                    1:0] row2_buf_idx = 0;
  wire                                                             [                   15:0] row3_buf_adr = 0;
  wire row3_buf_word_select = 0;
  wire                                                             [                    1:0] row3_buf_idx = 0;

  //cycle 1 in/ rows rd from buf
  wire                                                             [pixels_in_row * 8 - 1:0]                         buf1_pixels_32;
  wire                                                             [pixels_in_row * 8 - 1:0]                         buf2_pixels_32;
  wire                                                             [pixels_in_row * 8 - 1:0]                         buf3_pixels_32;
  wire                                                             [                    1:0] last_row1_buf_idx = 0;
  wire                                                             [                    1:0] last_row2_buf_idx = 0;
  wire                                                             [                    1:0] last_row3_buf_idx = 0;

  //cycle 0 in/ slab rows rd info
  wire                                                             [                   15:0] row1_slab_adr = 0;
  wire                                                             [                    1:0] row1_slab_idx = 0;
  wire                                                             [                   15:0] row2_slab_adr = 0;
  wire                                                             [                    1:0] row2_slab_idx = 0;
  wire                                                             [                   15:0] row3_slab_adr = 0;
  wire                                                             [                    1:0] row3_slab_idx = 0;
  //cycle 1 in/ slab data rd from slab
  wire                                                             [                   15:0] slab1_pixels_2 = 0;
  wire                                                             [                   15:0] slab2_pixels_2 = 0;
  wire                                                             [                   15:0] slab3_pixels_2 = 0;
  wire                                                             [                    1:0] last_row1_slab_idx = 0;
  wire                                                             [                    1:0] last_row2_slab_idx = 0;
  wire                                                             [                    1:0] last_row3_slab_idx = 0;

  //cycle 0 in/ valid row adr
  wire valid_row1_adr = 0, valid_row2_adr = 0, valid_row3_adr = 0;

  //cycle 0 out/ buffer rd ctrl
  wire                                                             [                   15:0]                         buf1_adr_rd;
  wire                                                             [                   15:0]                         buf2_adr_rd;
  wire                                                             [                   15:0]                         buf3_adr_rd;
  wire                                                                                                               buf1_word_select_rd;
  wire                                                                                                               buf2_word_select_rd;
  wire                                                                                                               buf3_word_select_rd;
  wire                                                                                                               buf1_en_rd;
  wire                                                                                                               buf2_en_rd;
  wire                                                                                                               buf3_en_rd;
  //cycle 1 out/ last row data rd from buffer
  wire                                                             [pixels_in_row * 8 - 1:0]                         last_row1_pixels_32;
  wire                                                             [pixels_in_row * 8 - 1:0]                         last_row2_pixels_32;
  wire                                                             [pixels_in_row * 8 - 1:0]                         last_row3_pixels_32;

  //cycle 0 out/ slab rd ctrl
  wire                                                             [                   15:0]                         slab1_adr_rd;
  wire                                                             [                   15:0]                         slab2_adr_rd;
  wire                                                             [                   15:0]                         slab3_adr_rd;
  wire                                                                                                               slab1_en_rd;
  wire                                                                                                               slab2_en_rd;
  wire                                                                                                               slab3_en_rd;
  //cycle 1 out/ last row slab rd from slab
  wire                                                             [                   15:0]                         last_row1_slab_2;
  wire                                                             [                   15:0]                         last_row2_slab_2;
  wire                                                             [                   15:0]                         last_row3_slab_2;

  //cycle 0 out/ slab wt ctrl
  wire                                                             [                   15:0]                         slab1_adr_wr;
  wire                                                             [                   15:0]                         slab2_adr_wr;
  wire                                                             [                   15:0]                         slab3_adr_wr;
  wire                                                             [                   15:0]                         slab1_pixels_2_wr;
  wire                                                             [                   15:0]                         slab2_pixels_2_wr;
  wire                                                             [                   15:0]                         slab3_pixels_2_wr;
  wire slab1_en_wr, slab2_en_wr, slab3_en_wr;

  //-------------------------------------------
  //cycle 0 in/ rows wt info
  wire [511:0] input_word_buf_wr;
  wire         input_word_buf_en_wr;
  wire [  1:0] input_word_buf_idx_wr;
  wire [ 15:0] input_word_buf_adr_wr;

  //cycle 0 out/ buf wt ctrl
  wire [511:0] buf1_wr;
  wire [511:0] buf2_wr;
  wire [511:0] buf3_wr;
  wire [ 15:0] buf1_adr_wr;
  wire [ 15:0] buf2_adr_wr;
  wire [ 15:0] buf3_adr_wr;
  wire         buf1_en_wr;
  wire         buf2_en_wr;
  wire         buf3_en_wr;

  // load input info fifo
  wire         input_word_load_info_fifo_en_rd;
  wire [ 31:0] input_word_load_info_fifo_rd;
  wire         load_input_info_fifo_full;
  wire         load_input_info_fifo_empty;
  wire [  8:0] load_input_info_fifo_data_count;

  conv_load_input_controller cv_load_input_ctrl (
      .clk                       (clk),
      .conv_load_input           (conv_load_input),
      .reset                     (reset),
      .ddr_en                    (ddr_en),
      .load_input_info_fifo_empty(load_input_info_fifo_empty),

      .mode_init                              (mode_init),
      .of_init                                (of_init),
      .ox_init                                (ox_init),
      .oy_init                                (oy_init),
      .ix_init                                (ix_init),
      .iy_init                                (iy_init),
      .nif_init                               (nif_init),
      .k_init                                 (k_init),
      .s_init                                 (s_init),
      .p_init                                 (p_init),
      .nif_in_2pow_init                       (nif_in_2pow_init),
      .ix_in_2pow_init                        (ix_in_2pow_init),
      .input_ddr_layer_base_adr_init          (input_ddr_layer_base_adr_init),
      .of_div_row_num_ceil_init               (of_div_row_num_ceil_init),
      .tiley_first_tilex_first_split_size_init(tiley_first_tilex_first_split_size_init),
      .tiley_first_tilex_last_split_size_init (tiley_first_tilex_last_split_size_init),
      .tiley_first_tilex_mid_split_size_init  (tiley_first_tilex_mid_split_size_init),
      .tiley_last_tilex_first_split_size_init (tiley_last_tilex_first_split_size_init),
      .tiley_last_tilex_last_split_size_init  (tiley_last_tilex_last_split_size_init),
      .tiley_last_tilex_mid_split_size_init   (tiley_last_tilex_mid_split_size_init),
      .tiley_mid_tilex_first_split_size_init  (tiley_mid_tilex_first_split_size_init),
      .tiley_mid_tilex_last_split_size_init   (tiley_mid_tilex_last_split_size_init),
      .tiley_mid_tilex_mid_split_size_init    (tiley_mid_tilex_mid_split_size_init),
      .tilex_first_ix_word_num_init           (tilex_first_ix_word_num_init),
      .tilex_last_ix_word_num_init            (tilex_last_ix_word_num_init),
      .tilex_mid_ix_word_num_init             (tilex_mid_ix_word_num_init),
      .tiley_first_iy_row_num_init            (tiley_first_iy_row_num_init),
      .tiley_last_iy_row_num_init             (tiley_last_iy_row_num_init),
      .tiley_mid_iy_row_num_init              (tiley_mid_iy_row_num_init),
      .ix_index_num_init                      (ix_index_num_init),
      .iy_index_num_init                      (iy_index_num_init),

      .load_input_row_idx      (load_input_row_idx),
      .load_input_row_start_idx(load_input_row_start_idx),
      .load_input_if_idx       (load_input_if_idx),
      .load_input_row_buf_adr  (load_input_row_buf_adr),
      .load_input_row_buf_idx  (load_input_row_buf_idx),

      .input_word_ddr_en_rd           (input_word_ddr_en_rd),
      .input_word_ddr_adr_rd          (input_word_ddr_adr_rd),
      .input_word_load_info_fifo_en_wt(input_word_load_info_fifo_en_wt),
      .input_word_load_info_fifo_wt   (input_word_load_info_fifo_wt),
      .conv_load_input_fin            (conv_load_input_fin)
  );

  always begin
    #5;
    clk <= ~clk;
  end

  wire         DDR_en;
  wire         DDR_en_wr;
  wire [511:0] DDR_in;
  wire [ 12:0] DDR_adr;
  wire [511:0] DDR_out;  //o

  //DDR
  DDR DDR (
      .clka (clk),      // input wire clka
      .ena  (DDR_en),   // input wire ena
      .wea  (0),        // input wire [0 : 0] wea
      .addra(DDR_adr),  // input wire [12 : 0] addra
      .dina (0),        // input wire [511 : 0] dina
      .douta(DDR_out)   // output wire [511 : 0] douta
  );

  assign DDR_en          = input_word_ddr_en_rd;
  assign DDR_en_wr       = 0;
  assign DDR_adr         = input_word_ddr_adr_rd[12 : 0];
  assign DDR_in          = 0;
  assign load_input_word = (valid_load_input == 1'b1) ? DDR_out : 0;

  always @(posedge clk) begin
    if (reset) begin
      valid_load_input <= 0;
    end else begin
      valid_load_input <= input_word_ddr_en_rd;  //DDR sim
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      last_load_input_word   <= 0;
      state_valid_load_input <= 0;
    end else if (valid_load_input == 1'b1) begin
      last_load_input_word   <= load_input_word;
      state_valid_load_input <= valid_load_input;
    end else if (valid_load_input == 1'b0) begin
      //cur load_input is invalid
      last_load_input_word   <= 0;
      state_valid_load_input <= 0;
    end else begin
      last_load_input_word   <= last_load_input_word;
      state_valid_load_input <= state_valid_load_input;
    end
  end

  assign input_word_buf_wr    = last_load_input_word;
  assign input_word_buf_en_wr = state_valid_load_input;

  //load input info fifo
  load_input_info_fifo load_input_info_fifo (
      .clk       (clk),                              // input wire clk
      .srst      (reset),                            // input wire srst
      .din       (input_word_load_info_fifo_wt),     // input wire [31 : 0] din
      .wr_en     (input_word_load_info_fifo_en_wt),  // input wire wr_en
      .rd_en     (input_word_load_info_fifo_en_rd),  // input wire rd_en
      .dout      (input_word_load_info_fifo_rd),     // output wire [31 : 0] dout
      .full      (load_input_info_fifo_full),        // output wire full
      .empty     (load_input_info_fifo_empty),       // output wire empty
      .data_count(load_input_info_fifo_data_count)   // output wire [8 : 0] data_count
  );

  assign input_word_load_info_fifo_en_rd = valid_load_input;
  assign input_word_buf_idx_wr           = (state_valid_load_input == 1) ? input_word_load_info_fifo_rd[16+:16] : 0;
  assign input_word_buf_adr_wr           = (state_valid_load_input == 1) ? input_word_load_info_fifo_rd[0+:16] : 0;

  conv_buffers_interface cv_buffers_interface (
      .reset                (reset),
      .clk                  (clk),
      //cycle 0 in/ input rows rd info
      .row1_buf_adr         (row1_buf_adr),
      .row1_buf_word_select (row1_buf_word_select),
      .row1_buf_idx         (row1_buf_idx),
      .row2_buf_adr         (row2_buf_adr),
      .row2_buf_word_select (row2_buf_word_select),
      .row2_buf_idx         (row2_buf_idx),
      .row3_buf_adr         (row3_buf_adr),
      .row3_buf_word_select (row3_buf_word_select),
      .row3_buf_idx         (row3_buf_idx),
      //cycle 1 in/ rows rd from buf
      .buf1_pixels_32       (buf1_pixels_32),
      .buf2_pixels_32       (buf2_pixels_32),
      .buf3_pixels_32       (buf3_pixels_32),
      .last_row1_buf_idx    (last_row1_buf_idx),
      .last_row2_buf_idx    (last_row2_buf_idx),
      .last_row3_buf_idx    (last_row3_buf_idx),
      //cycle 0 in/ slab rows rd info
      .row1_slab_adr        (row1_slab_adr),
      .row1_slab_idx        (row1_slab_idx),
      .row2_slab_adr        (row2_slab_adr),
      .row2_slab_idx        (row2_slab_idx),
      .row3_slab_adr        (row3_slab_adr),
      .row3_slab_idx        (row3_slab_idx),
      //cycle 1 in/ slab data rd from slab
      .slab1_pixels_2       (slab1_pixels_2),
      .slab2_pixels_2       (slab2_pixels_2),
      .slab3_pixels_2       (slab3_pixels_2),
      .last_row1_slab_idx   (last_row1_slab_idx),
      .last_row2_slab_idx   (last_row2_slab_idx),
      .last_row3_slab_idx   (last_row3_slab_idx),
      //cycle 0 in/ valid row adr
      .valid_row1_adr       (valid_row1_adr),
      .valid_row2_adr       (valid_row2_adr),
      .valid_row3_adr       (valid_row3_adr),
      //cycle 0 out/ buffer rd ctrl
      .buf1_adr_rd          (buf1_adr_rd),
      .buf2_adr_rd          (buf2_adr_rd),
      .buf3_adr_rd          (buf3_adr_rd),
      .buf1_word_select_rd  (buf1_word_select_rd),
      .buf2_word_select_rd  (buf2_word_select_rd),
      .buf3_word_select_rd  (buf3_word_select_rd),
      .buf1_en_rd           (buf1_en_rd),             //valid_buf_adr
      .buf2_en_rd           (buf2_en_rd),
      .buf3_en_rd           (buf3_en_rd),
      //cycle 1 out/ last row data rd from buffer
      .last_row1_pixels_32  (last_row1_pixels_32),
      .last_row2_pixels_32  (last_row2_pixels_32),
      .last_row3_pixels_32  (last_row3_pixels_32),
      //cycle 0 out/ slab rd ctrl
      .slab1_adr_rd         (slab1_adr_rd),           //slab_adr
      .slab2_adr_rd         (slab2_adr_rd),
      .slab3_adr_rd         (slab3_adr_rd),
      .slab1_en_rd          (slab1_en_rd),            //valid_slab1_adr
      .slab2_en_rd          (slab2_en_rd),
      .slab3_en_rd          (slab3_en_rd),
      //cycle 1 out/ last row slab rd from slab
      .last_row1_slab_2     (last_row1_slab_2),
      .last_row2_slab_2     (last_row2_slab_2),
      .last_row3_slab_2     (last_row3_slab_2),
      //cycle 0 out/ slab wt ctrl
      .slab1_adr_wr         (slab1_adr_wr),
      .slab2_adr_wr         (slab2_adr_wr),
      .slab3_adr_wr         (slab3_adr_wr),
      .slab1_pixels_2_wr    (slab1_pixels_2_wr),
      .slab2_pixels_2_wr    (slab2_pixels_2_wr),
      .slab3_pixels_2_wr    (slab3_pixels_2_wr),
      .slab1_en_wr          (slab1_en_wr),            //valid_slab1_adr_wr
      .slab2_en_wr          (slab2_en_wr),
      .slab3_en_wr          (slab3_en_wr),
      //-------------------------------------------
      //cycle 0 in/ rows wt info
      .input_word_buf_wr    (input_word_buf_wr),
      .input_word_buf_en_wr (input_word_buf_en_wr),
      .input_word_buf_idx_wr(input_word_buf_idx_wr),
      .input_word_buf_adr_wr(input_word_buf_adr_wr),
      //cycle 0 out/ buf wt ctrl
      .buf1_wr              (buf1_wr),
      .buf2_wr              (buf2_wr),
      .buf3_wr              (buf3_wr),
      .buf1_adr_wr          (buf1_adr_wr),
      .buf2_adr_wr          (buf2_adr_wr),
      .buf3_adr_wr          (buf3_adr_wr),
      .buf1_en_wr           (buf1_en_wr),
      .buf2_en_wr           (buf2_en_wr),
      .buf3_en_wr           (buf3_en_wr)
  );

  //input buffer 1-3
  wire                                         in_buf1_en_wr;
  wire                               [ 11 : 0] in_buf1_adr_wr;
  wire                               [511 : 0] in_buf1_wr;
  wire                                         in_buf1_en_rd;
  wire                               [ 11 : 0] in_buf1_adr_rd;
  wire                               [511 : 0] in_buf1_rd;
  wire last_buf1_word_select_rd = 0;

  in_buf1 in_buf1 (
      .clka (clk),             // input wire clka
      .ena  (in_buf1_en_wr),   // input wire ena
      .wea  (in_buf1_en_wr),   // input wire [0 : 0] wea
      .addra(in_buf1_adr_wr),  // input wire [11 : 0] addra
      .dina (in_buf1_wr),      // input wire [511 : 0] dina
      .clkb (clk),             // input wire clkb
      .enb  (in_buf1_en_rd),   // input wire enb , read en
      .addrb(in_buf1_adr_rd),  // input wire [11 : 0] addrb
      .doutb(in_buf1_rd)       // output wire [511 : 0] doutb
  );

  assign in_buf1_en_wr  = buf1_en_wr;
  assign in_buf1_adr_wr = buf1_adr_wr[11:0];
  assign in_buf1_wr     = buf1_wr;
  assign in_buf1_en_rd  = buf1_en_rd;
  assign in_buf1_adr_rd = buf1_adr_rd[11:0];
  assign buf1_pixels_32 = (last_buf1_word_select_rd == 1'b0) ? in_buf1_rd[pixels_in_row*8-1 : 0] : in_buf1_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8];

  wire                                         in_buf2_en_wr;
  wire                               [ 11 : 0] in_buf2_adr_wr;
  wire                               [511 : 0] in_buf2_wr;
  wire                                         in_buf2_en_rd;
  wire                               [ 11 : 0] in_buf2_adr_rd;
  wire                               [511 : 0] in_buf2_rd;
  wire last_buf2_word_select_rd = 0;

  in_buf2 in_buf2 (
      .clka (clk),             // input wire clka
      .ena  (in_buf2_en_wr),   // input wire ena
      .wea  (in_buf2_en_wr),   // input wire [0 : 0] wea
      .addra(in_buf2_adr_wr),  // input wire [11 : 0] addra
      .dina (in_buf2_wr),      // input wire [511 : 0] dina
      .clkb (clk),             // input wire clkb
      .enb  (in_buf2_en_rd),   // input wire enb , read en
      .addrb(in_buf2_adr_rd),  // input wire [11 : 0] addrb
      .doutb(in_buf2_rd)       // output wire [511 : 0] doutb
  );

  assign in_buf2_en_wr  = buf2_en_wr;
  assign in_buf2_adr_wr = buf2_adr_wr[11:0];
  assign in_buf2_wr     = buf2_wr;
  assign in_buf2_en_rd  = buf2_en_rd;
  assign in_buf2_adr_rd = buf2_adr_rd[11:0];
  assign buf2_pixels_32 = (last_buf2_word_select_rd == 1'b0) ? in_buf2_rd[pixels_in_row*8-1 : 0] : in_buf2_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8];

  wire                                         in_buf3_en_wr;
  wire                               [ 11 : 0] in_buf3_adr_wr;
  wire                               [511 : 0] in_buf3_wr;
  wire                                         in_buf3_en_rd;
  wire                               [ 11 : 0] in_buf3_adr_rd;
  wire                               [511 : 0] in_buf3_rd;
  wire last_buf3_word_select_rd = 0;

  in_buf3 in_buf3 (
      .clka (clk),             // input wire clka
      .ena  (in_buf3_en_wr),   // input wire ena
      .wea  (in_buf3_en_wr),   // input wire [0 : 0] wea
      .addra(in_buf3_adr_wr),  // input wire [11 : 0] addra
      .dina (in_buf3_wr),      // input wire [511 : 0] dina
      .clkb (clk),             // input wire clkb
      .enb  (in_buf3_en_rd),   // input wire enb , read en
      .addrb(in_buf3_adr_rd),  // input wire [11 : 0] addrb
      .doutb(in_buf3_rd)       // output wire [511 : 0] doutb
  );

  assign in_buf3_en_wr  = buf3_en_wr;
  assign in_buf3_adr_wr = buf3_adr_wr[11:0];
  assign in_buf3_wr     = buf3_wr;
  assign in_buf3_en_rd  = buf3_en_rd;
  assign in_buf3_adr_rd = buf3_adr_rd[11:0];
  assign buf3_pixels_32 = (last_buf3_word_select_rd == 1'b0) ? in_buf3_rd[pixels_in_row*8-1 : 0] : in_buf3_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8];

  integer mode_integer;
  real    k_real;
  real    s_real;
  real    p_real;
  integer of_integer;
  integer ox_integer;
  integer oy_integer;
  integer ix_integer;
  integer iy_integer;
  integer nif_integer;
  integer nif_in_2pow_integer;
  integer ix_in_2pow_integer;
  integer input_ddr_layer_base_adr_integer;

  real    row_num_real;  //128
  real    pixels_in_row_real;
  real    buffers_num_real;
  real    tilex_first_ix_word_num_real;
  real    tilex_last_ix_word_num_real;
  real    tilex_mid_ix_word_num_real;
  real    tiley_first_iy_row_num_real;
  real    tiley_last_iy_row_num_real;
  real    tiley_mid_iy_row_num_real;
  real    ix_index_num_real;
  real    iy_index_num_real;
  real    of_div_row_num_ceil_real;
  real    tiley_first_tilex_first_split_size_real;
  real    tiley_first_tilex_last_split_size_real;
  real    tiley_first_tilex_mid_split_size_real;
  real    tiley_last_tilex_first_split_size_real;
  real    tiley_last_tilex_last_split_size_real;
  real    tiley_last_tilex_mid_split_size_real;
  real    tiley_mid_tilex_first_split_size_real;
  real    tiley_mid_tilex_last_split_size_real;
  real    tiley_mid_tilex_mid_split_size_real;
  initial begin
    clk                                     = 0;
    conv_load_input                         = 0;  //begin weights loading
    ddr_en                                  = 1;  //mig fifo can accept request
    //init val
    mode_integer                            = 0;
    k_real                                  = 3;
    s_real                                  = 1;
    p_real                                  = 1;
    of_integer                              = 128;
    ox_integer                              = 64;
    oy_integer                              = 64;
    ix_integer                              = 64;
    iy_integer                              = 64;
    nif_integer                             = 4;
    nif_in_2pow_integer                     = 2;
    ix_in_2pow_integer                      = 6;
    input_ddr_layer_base_adr_integer        = 0;
    row_num_real                            = 64;  //128
    pixels_in_row_real                      = 32;
    buffers_num_real                        = 3;
    tilex_first_ix_word_num_real            = $ceil(((pixels_in_row - 1) * s_real + k_real - p_real) / pixels_in_row);
    tilex_last_ix_word_num_real             = ((ox_integer % pixels_in_row) == 0) ? 0 : $ceil((((ox_integer % pixels_in_row) - 1) * s_real + k_real - p_real) / pixels_in_row);
    tilex_mid_ix_word_num_real              = s_real;
    tiley_first_iy_row_num_real             = (buffers_num - 1) * s_real + k_real - p_real;
    tiley_last_iy_row_num_real              = (oy_integer % buffers_num) * s_real;
    tiley_mid_iy_row_num_real               = buffers_num * s_real;
    ix_index_num_real                       = $ceil(ix_integer / pixels_in_row_real);
    iy_index_num_real                       = $ceil(iy_integer / buffers_num_real);
    of_div_row_num_ceil_real                = $ceil(of_integer / row_num_real);
    tiley_first_tilex_first_split_size_real = $ceil(tiley_first_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_first_tilex_last_split_size_real  = $ceil(tiley_first_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_first_tilex_mid_split_size_real   = $ceil(tiley_first_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_last_tilex_first_split_size_real  = $ceil(tiley_last_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_last_tilex_last_split_size_real   = $ceil(tiley_last_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_last_tilex_mid_split_size_real    = $ceil(tiley_last_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_mid_tilex_first_split_size_real   = $ceil(tiley_mid_iy_row_num_real * tilex_first_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_mid_tilex_last_split_size_real    = $ceil(tiley_mid_iy_row_num_real * tilex_last_ix_word_num_real / of_div_row_num_ceil_real);
    tiley_mid_tilex_mid_split_size_real     = $ceil(tiley_mid_iy_row_num_real * tilex_mid_ix_word_num_real / of_div_row_num_ceil_real);
    //initialize
    mode_init                               = mode_integer;
    k_init                                  = k_real;
    s_init                                  = s_real;
    p_init                                  = p_real;
    of_init                                 = of_integer;
    ox_init                                 = ox_integer;
    oy_init                                 = oy_integer;
    ix_init                                 = ix_integer;
    iy_init                                 = iy_integer;
    nif_init                                = nif_integer;
    nif_in_2pow_init                        = nif_in_2pow_integer;
    ix_in_2pow_init                         = ix_in_2pow_integer;
    input_ddr_layer_base_adr_init           = input_ddr_layer_base_adr_integer;
    tilex_first_ix_word_num_init            = tilex_first_ix_word_num_real;
    tilex_last_ix_word_num_init             = tilex_last_ix_word_num_real;
    tilex_mid_ix_word_num_init              = tilex_mid_ix_word_num_real;
    tiley_first_iy_row_num_init             = tiley_first_iy_row_num_real;
    tiley_last_iy_row_num_init              = tiley_last_iy_row_num_real;
    tiley_mid_iy_row_num_init               = tiley_mid_iy_row_num_real;
    ix_index_num_init                       = ix_index_num_real;
    iy_index_num_init                       = iy_index_num_real;
    of_div_row_num_ceil_init                = of_div_row_num_ceil_real;
    tiley_first_tilex_first_split_size_init = tiley_first_tilex_first_split_size_real;
    tiley_first_tilex_last_split_size_init  = tiley_first_tilex_last_split_size_real;
    tiley_first_tilex_mid_split_size_init   = tiley_first_tilex_mid_split_size_real;
    tiley_last_tilex_first_split_size_init  = tiley_last_tilex_first_split_size_real;
    tiley_last_tilex_last_split_size_init   = tiley_last_tilex_last_split_size_real;
    tiley_last_tilex_mid_split_size_init    = tiley_last_tilex_mid_split_size_real;
    tiley_mid_tilex_first_split_size_init   = tiley_mid_tilex_first_split_size_real;
    tiley_mid_tilex_last_split_size_init    = tiley_mid_tilex_last_split_size_real;
    tiley_mid_tilex_mid_split_size_init     = tiley_mid_tilex_mid_split_size_real;
    reset                                   = 1;
    #10;
    reset           = 0;

    //chunk 1 cal
    //of 1
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 2
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 3
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 4
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 5
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo

    //chunk 2 cal
    //of 1
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 2
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 3
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 4
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 5
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo

    //chunk 3 cal
    //of 1
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 2
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 3
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 4
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 5
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo

    //chunk 4 cal
    //of 1
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 2
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 3
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 4
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
    //of 5
    conv_load_input = 1;
    #10;
    conv_load_input = 0;
    #50;  //input rearrange
    #360;  //cal
    #120;  //out to fifo
  end

endmodule
