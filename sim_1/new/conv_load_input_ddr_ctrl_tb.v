`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 16:55:27
// Design Name: 
// Module Name: conv_load_input_ddr_ctrl_tb
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


module conv_load_input_ddr_ctrl_tb ();
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
  parameter row_num_in_mode0 = 64;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;  //4096

  //conv_load_input_controller
  reg conv_load_input_pre;
  reg clk, conv_load_input, reset;  //load input means fin of the last execuation term
  reg       ddr_cmd_ready;
  reg       ddr_rd_data_valid;
  reg [3:0] mode_init;
  reg [3:0] k_init, s_init, p_init;
  reg [15:0] of_init, ox_init, oy_init, ix_init, iy_init, nif_init;
  reg [3:0] nif_in_2pow_init, ix_in_2pow_init;
  reg [31:0] input_ddr_layer_base_adr_init;
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
  //ld cmd
  wire [ 31:0] load_input_ddr_base_adr;
  wire [ 15:0] load_input_ddr_length;
  wire         valid_load_input_ddr_cmd;
  //   conv_load_input_controller
  wire [ 15:0] load_input_row_idx;
  wire [ 15:0] load_input_row_start_idx;
  wire [ 15:0] load_input_if_idx;
  wire [ 15:0] load_input_row_buf_adr;
  wire [  1:0] load_input_row_buf_idx;
  wire         input_word_ddr_en_rd;
  wire [ 15:0] input_word_ddr_adr_rd;
  wire         input_word_load_info_fifo_en_wt;
  wire [ 31:0] input_word_load_info_fifo_wt;
  //valid load input ddr word
  wire         valid_load_input;
  wire         conv_load_input_fin;
  wire         state_conv_load_input;

  wire [511:0] load_input_word;
  reg  [511:0] last_load_input_word;
  reg          state_valid_load_input;


  //-------------------------------------------
  //cycle 0 in/ rows wt info
  wire [511:0] input_word_buf_wr;
  wire         input_word_buf_en_wr;
  wire [  1:0] input_word_buf_idx_wr;
  wire [ 15:0] input_word_buf_adr_wr;

  // load input info fifo
  wire         input_word_load_info_fifo_en_rd;
  wire [ 31:0] input_word_load_info_fifo_rd;
  wire         load_input_info_fifo_full;
  wire         load_input_info_fifo_empty;
  wire [  8:0] load_input_info_fifo_data_count;

  conv_load_input_ddr_controller_v3 cv_load_input_ddr_controller (
      .clk                       (clk),
      .conv_load_input_sig       (conv_load_input),
      .reset                     (reset),
      .ddr_cmd_ready             (ddr_cmd_ready),
      .ddr_rd_data_valid         (ddr_rd_data_valid),
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

      .load_input_ddr_base_adr (load_input_ddr_base_adr),
      .load_input_ddr_length   (load_input_ddr_length),
      .valid_load_input_ddr_cmd(valid_load_input_ddr_cmd),
      .valid_load_input        (valid_load_input),
      .conv_load_input_fin     (conv_load_input_fin),
      .state_conv_load_input   (state_conv_load_input)
  );

  always begin
    #5;
    clk <= ~clk;
  end

  reg [7:0] cmd_counter;
  reg       cmd_counter_signal;

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_cmd_ready <= 1;
    end else if (valid_load_input_ddr_cmd == 1) begin
      ddr_cmd_ready <= 0;
    end else if (cmd_counter == 10) begin
      ddr_cmd_ready <= 1;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_rd_data_valid <= 1;
    end else begin
      ddr_rd_data_valid <= ~ddr_rd_data_valid;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      conv_load_input_pre <= 1;
    end else if (conv_load_input_pre == 1) begin
      conv_load_input_pre <= 0;
    end
  end

  always @(posedge clk) begin
    conv_load_input <= conv_load_input_pre;
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter_signal <= 0;
    end else if (valid_load_input_ddr_cmd == 1) begin
      cmd_counter_signal <= 1;
    end else if (cmd_counter == 10) begin
      cmd_counter_signal <= 0;
    end
  end
  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter <= 0;
    end else if (cmd_counter_signal == 1) begin
      if (cmd_counter == 10) begin
        cmd_counter <= 0;
      end else begin
        cmd_counter <= cmd_counter + 1;
      end
    end
  end

  //DDR

  reg [511:0] ddr_rd_data;
  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_rd_data <= 512'b0;
    end else if (valid_load_input == 1) begin
      ddr_rd_data <= ddr_rd_data + 512'b1;
    end
  end

  assign load_input_word = (valid_load_input == 1'b1) ? ddr_rd_data : 0;

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



  reg  [511:0]                                           conv_instr_args_mem[0:0];  //instr mem for sim
  wire [511:0] conv_instr_args = conv_instr_args_mem[0];
  initial begin
    $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\instr_args_hex_num_init.txt", conv_instr_args_mem);
    mode_init                               = conv_instr_args_mem[0][0+:4];  //4
    k_init                                  = conv_instr_args_mem[0][4+:4];  //4
    s_init                                  = conv_instr_args_mem[0][8+:4];  //4
    p_init                                  = conv_instr_args_mem[0][12+:4];  //4
    of_init                                 = conv_instr_args_mem[0][16+:16];  //16
    // of_in_2pow_init                         = conv_instr_args[32+:4];  //4
    ox_init                                 = conv_instr_args_mem[0][36+:16];  //16
    // ox_in_2pow_init                         = conv_instr_args[52+:4];  //4
    oy_init                                 = conv_instr_args_mem[0][56+:16];  //16
    ix_init                                 = conv_instr_args_mem[0][72+:16];  //16
    ix_in_2pow_init                         = conv_instr_args_mem[0][88+:4];  //4
    iy_init                                 = conv_instr_args_mem[0][92+:16];  //16
    nif_init                                = conv_instr_args_mem[0][108+:16];  //16
    nif_in_2pow_init                        = conv_instr_args_mem[0][124+:4];  //4
    // nif_mult_k_mult_k_init                  = conv_instr_args[128+:32];  //32
    // N_chunks_init                           = conv_instr_args[160+:32];  //32
    // E_layer_base_buf_adr_rd_init            = conv_instr_args[192+:16];  //16
    // bias_layer_base_buf_adr_rd_init         = conv_instr_args[208+:16];  //16
    // scale_layer_base_buf_adr_rd_init        = conv_instr_args[224+:16];  //16
    // weights_layer_base_ddr_adr_rd_init      = conv_instr_args[240+:32];  //32
    input_ddr_layer_base_adr_init           = conv_instr_args_mem[0][272+:32];  //32
    // output_ddr_layer_base_adr_init          = conv_instr_args[304+:32];  //32
    tilex_first_ix_word_num_init            = conv_instr_args_mem[0][336+:8];  //8
    tilex_last_ix_word_num_init             = conv_instr_args_mem[0][344+:8];  //8
    tilex_mid_ix_word_num_init              = conv_instr_args_mem[0][352+:8];  //8
    tiley_first_iy_row_num_init             = conv_instr_args_mem[0][360+:8];  //8
    tiley_last_iy_row_num_init              = conv_instr_args_mem[0][368+:8];  //8
    tiley_mid_iy_row_num_init               = conv_instr_args_mem[0][376+:8];  //8
    ix_index_num_init                       = conv_instr_args_mem[0][384+:16];  //16
    iy_index_num_init                       = conv_instr_args_mem[0][400+:16];  //16
    of_div_row_num_ceil_init                = conv_instr_args_mem[0][416+:8];  //8
    tiley_first_tilex_first_split_size_init = conv_instr_args_mem[0][424+:8];  //8
    tiley_first_tilex_last_split_size_init  = conv_instr_args_mem[0][432+:8];  //8
    tiley_first_tilex_mid_split_size_init   = conv_instr_args_mem[0][440+:8];  //8
    tiley_last_tilex_first_split_size_init  = conv_instr_args_mem[0][448+:8];  //8
    tiley_last_tilex_last_split_size_init   = conv_instr_args_mem[0][456+:8];  //8
    tiley_last_tilex_mid_split_size_init    = conv_instr_args_mem[0][464+:8];  //8
    tiley_mid_tilex_first_split_size_init   = conv_instr_args_mem[0][472+:8];  //8
    tiley_mid_tilex_last_split_size_init    = conv_instr_args_mem[0][480+:8];  //8
    tiley_mid_tilex_mid_split_size_init     = conv_instr_args_mem[0][488+:8];  //8

    clk                                     = 0;

    #6;
    reset = 1;
    #10;
    reset = 0;


  end

endmodule
