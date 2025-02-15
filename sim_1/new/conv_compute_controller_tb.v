`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/03/2025 08:43:58 AM
// Design Name:
// Module Name: conv_compute_controller_tb
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


module conv_compute_controller_tb ();
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa, row_num
  parameter column_num_in_sa = 16;  // how many columns in a sa
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = sa_column_num;
  parameter pixels_in_row_minus_1 = pixels_in_row - 1;
  parameter buffers_num_minus_1 = buffers_num - 1;
  parameter shift_regs_num = 70;
  parameter weights_in_row = row_num_in_sa * sa_row_num;  // 8bit, length of 1 bit is shorter than that in 8 bit
  parameter weight_row_length = weights_in_row * 8;
  parameter weight_word_length = weight_row_length;
  parameter headroom = 8;
  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;
  parameter weights_row_in_width = 8 * row_num_in_sa;
  parameter sa_row_in_width = weights_row_in_width;
  parameter pixels_column_in_width = 16 * column_num_in_sa;
  parameter sa_column_in_width = 24 * column_num_in_sa;
  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;  // width of 18 is bigger than 88
  parameter row_counter_width = ($clog2(row_num_in_sa + 1));
  parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter bias_width = 8;  //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18;  //32; vconv pixel out_width
  parameter bias_set_4_channel_width = bias_set_width * sa_row_num;  //4 * 16 bit
  parameter bias_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  //   parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit
  parameter bias_word_length = 512;
  parameter add_bias_row_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter add_bias_row_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter add_bias_row_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num_in_sa;
  parameter mult_A_width = 24;
  parameter mult_B_width = 16;
  parameter mult_P_width = 40;
  parameter mult_array_length = 576;
  parameter mult_dsp_array_length = 528;
  parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
  parameter vector_A_width = mult_array_length * mult_A_width;
  parameter vector_B_width = mult_array_length * mult_B_width;
  parameter vector_P_width = mult_array_length * mult_P_width;
  parameter mult_array_length_per_sa = mult_array_length / sa_row_num / sa_column_num;  //48
  parameter E_scale_tail_width = 16;  //16 bit E_scale tail
  parameter E_scale_tail_set_width = E_scale_tail_width * pe_parallel_weight_18;  //32 bit
  parameter E_scale_tail_set_4_channel_width = E_scale_tail_set_width * sa_row_num;  //4 * 32 bit
  parameter E_scale_tail_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  parameter E_scale_tail_tile_length = E_scale_tail_set_width * E_scale_tail_sets_num_in_row;  //64 * 32bit regs to str
  parameter E_scale_tail_word_width = 512;
  parameter E_scale_rank_width = 8;  //8 bit E_scale rank
  parameter E_scale_rank_set_width = E_scale_rank_width * pe_parallel_weight_18;  //16 bit
  parameter E_scale_rank_set_4_channel_width = E_scale_rank_set_width * sa_row_num;  //4 * 16 bit
  parameter E_scale_rank_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  parameter E_scale_rank_tile_length = E_scale_rank_set_width * E_scale_rank_sets_num_in_row;  //64 * 16bit regs to str
  parameter E_scale_rank_word_width = 512;
  parameter pixel_E_scale_tail_width_88 = pixel_width_88 + E_scale_tail_width;  //40 bit
  parameter pixel_E_scale_tail_width_18 = pixel_width_18 + E_scale_tail_width;  //32 bit
  parameter row_E_scale_tail_width_88 = pixel_E_scale_tail_width_88 * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num_in_sa;
  //40 bit * 32 pixels * 1 channel
  parameter row_E_scale_tail_width_18_2 = pixel_E_scale_tail_width_18 * 1 * pe_parallel_pixel_18 * column_num_in_sa;
  //32 bit * 32 pixels * 1 channel
  parameter add_bias_row_in_mult_A_width_width = mult_A_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //24 bit * 32 pixels * 2 channel
  parameter E_scale_tail_row_in_mult_B_width_width = mult_B_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //16 bit * 32 pixels * 2 channel
  parameter row_E_scale_tail_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel
  parameter quantified_pixel_width = 8;
  parameter quantified_row_width = (quantified_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //8 bit * 32 pixels * 2 channel
  parameter scaled_rank_row_width = (quantified_pixel_width + 1) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //9 bit * 32 pixels * 2 channel
  parameter out_data_width = quantified_pixel_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter ddr_load_ratio = 2;

  reg clk, reset;
  reg ddr_en;
  //conv decoder
  reg  conv_decode;
  wire conv_start;
  //conv initial val
  wire mode;
  wire [3:0] k, s, p;
  wire [15:0] of, ox, oy, ix, iy, nif;
  wire [3:0] nif_in_2pow, ix_in_2pow;
  wire [15:0] nif_mult_k_mult_k;
  wire [15:0] N_chunks;
  wire [15:0] bias_layer_base_buf_adr_rd;
  wire [15:0] tail_layer_base_buf_adr_rd;
  wire [15:0] rank_layer_base_buf_adr_rd;
  wire [15:0] weights_layer_base_ddr_adr_rd;
  //conv compute ctrl
  wire        conv_compute;
  wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;
  reg [15:0] shadow_ox_start, shadow_oy_start, shadow_of_start, shadow_pox, shadow_poy, shadow_pof;
  reg [15:0] store_ox_start, store_oy_start, store_of_start, store_pox, store_poy, store_pof;
  wire [3:0] west_pad, slab_num, east_pad;
  wire [15:0] row1_idx, row2_idx, row3_idx;
  wire [15:0] row_start_idx, row_end_idx;
  wire [15:0] reg_start_idx, reg_end_idx;
  wire [15:0] row1_buf_adr;
  wire [ 1:0] row1_buf_idx;
  wire        row1_buf_word_select;
  wire [15:0] row2_buf_adr;
  wire [ 1:0] row2_buf_idx;
  wire        row2_buf_word_select;
  wire [15:0] row3_buf_adr;
  wire [ 1:0] row3_buf_idx;
  wire        row3_buf_word_select;
  wire [15:0] row_slab_start_idx;
  wire [15:0] row1_slab_adr;
  wire [ 1:0] row1_slab_idx;
  wire [15:0] row2_slab_adr;
  wire [ 1:0] row2_slab_idx;
  wire [15:0] row3_slab_adr;
  wire [ 1:0] row3_slab_idx;
  wire valid_row1_adr, valid_row2_adr, valid_row3_adr;
  wire                                                                                conv_end;
  wire                                                                                conv_pixels_add_end;
  wire                                                                                conv_nif_add_end;
  //conv buffer interface
  //cycle 0 in/ input rows rd info
  //cycle 1 in/ rows rd from buf
  wire                           [pixels_in_row * 8 - 1:0]                            buf1_pixels_32;
  wire                           [pixels_in_row * 8 - 1:0]                            buf2_pixels_32;
  wire                           [pixels_in_row * 8 - 1:0]                            buf3_pixels_32;
  //cycle 0 in/ slab rows rd info
  //cycle 1 in/ slab data rd from slab
  wire                           [                   15:0]                            slab1_pixels_2;
  wire                           [                   15:0]                            slab2_pixels_2;
  wire                           [                   15:0]                            slab3_pixels_2;
  //cycle 0 in/ valid row adr
  //cycle 0 out/ buffer rd ctrl
  wire                           [                   15:0]                            buf1_adr_rd;
  wire                           [                   15:0]                            buf2_adr_rd;
  wire                           [                   15:0]                            buf3_adr_rd;
  wire                                                                                buf1_word_select_rd;
  wire                                                                                buf2_word_select_rd;
  wire                                                                                buf3_word_select_rd;
  wire                                                                                buf1_en_rd;
  wire                                                                                buf2_en_rd;
  wire                                                                                buf3_en_rd;
  //cycle 1 out/ last row data rd from buffer
  wire                           [pixels_in_row * 8 - 1:0]                            last_row1_pixels_32;
  wire                           [pixels_in_row * 8 - 1:0]                            last_row2_pixels_32;
  wire                           [pixels_in_row * 8 - 1:0]                            last_row3_pixels_32;
  //cycle 0 out/ slab rd ctrl
  wire                           [                   15:0]                            slab1_adr_rd;
  wire                           [                   15:0]                            slab2_adr_rd;
  wire                           [                   15:0]                            slab3_adr_rd;
  wire                                                                                slab1_en_rd;
  wire                                                                                slab2_en_rd;
  wire                                                                                slab3_en_rd;
  //cycle 1 out/ last row slab rd from slab
  wire                           [                   15:0]                            last_row1_slab_2;
  wire                           [                   15:0]                            last_row2_slab_2;
  wire                           [                   15:0]                            last_row3_slab_2;
  //cycle 0 out/ slab wt ctrl
  wire                           [                   15:0]                            slab1_adr_wr;
  wire                           [                   15:0]                            slab2_adr_wr;
  wire                           [                   15:0]                            slab3_adr_wr;
  wire                           [                   15:0]                            slab1_pixels_2_wr;
  wire                           [                   15:0]                            slab2_pixels_2_wr;
  wire                           [                   15:0]                            slab3_pixels_2_wr;
  wire                                                                                slab1_en_wr;
  wire                                                                                slab2_en_wr;
  wire                                                                                slab3_en_wr;
  //-------------------------------------------
  //cycle 0 in/ rows wt info
  wire                           [                  511:0] input_word_buf_wr = 0;
  wire input_word_buf_en_wr = 0;
  wire                           [                    1:0] input_word_buf_idx_wr = 0;
  wire                           [                   15:0] input_word_buf_adr_wr = 0;
  //cycle 0 out/ buf wt ctrl
  wire                           [                  511:0]                            buf1_wr;
  wire                           [                  511:0]                            buf2_wr;
  wire                           [                  511:0]                            buf3_wr;
  wire                           [                   15:0]                            buf1_adr_wr;
  wire                           [                   15:0]                            buf2_adr_wr;
  wire                           [                   15:0]                            buf3_adr_wr;
  wire                                                                                buf1_en_wr;
  wire                                                                                buf2_en_wr;
  wire                                                                                buf3_en_wr;
  //last regs
  reg [3:0] last_west_pad, last_slab_num, last_east_pad;
  reg [15:0] last_row1_idx, last_row2_idx, last_row3_idx;
  reg [15:0] last_row_start_idx, last_row_end_idx;
  reg [15:0] last_reg_start_idx, last_reg_end_idx;
  reg state_valid_row1_adr, state_valid_row2_adr, state_valid_row3_adr;
  reg                              state_conv_pixels_add_end;
  reg  [                      1:0] last_row1_buf_idx;
  reg  [                      1:0] last_row2_buf_idx;
  reg  [                      1:0] last_row3_buf_idx;
  reg                              last_buf1_word_select_rd;
  reg                              last_buf2_word_select_rd;
  reg                              last_buf3_word_select_rd;
  reg  [                      1:0] last_row1_slab_idx;
  reg  [                      1:0] last_row2_slab_idx;
  reg  [                      1:0] last_row3_slab_idx;
  //last regs, state regs, to cache the info to wait for valid buffer data read
  reg                              bias_reg_set;
  reg  [                      7:0] last_bias_reg_start;
  reg  [                      7:0] last_bias_reg_size;
  reg                              tail_reg_set;
  reg  [                      7:0] last_e_scale_tail_reg_start;
  reg  [                      7:0] last_e_scale_tail_reg_size;
  reg                              rank_reg_set;
  reg  [                      7:0] last_e_scale_rank_reg_start;
  reg  [                      7:0] last_e_scale_rank_reg_size;
  wire [                    511:0] last_bias_word;
  wire [                    511:0] last_e_scale_tail_word;
  wire [                    511:0] last_e_scale_rank_word;
  //row regs
  wire [shift_regs_num * 8 -1 : 0] row_regs_1;
  wire [shift_regs_num * 8 -1 : 0] row_regs_2;
  wire [shift_regs_num * 8 -1 : 0] row_regs_3;
  wire                             shift_start;
  //shift regs
  wire re_fm_en, re_fm_end;
  wire                                                         [                 pixels_in_row*8-1:0]                                                                      re_rowi_pixels                                        [sa_column_num-1 : 0];
  //input buffer 1-3
  wire                                                                                                                                                                     in_buf1_en_wr;
  wire                                                         [                              11 : 0]                                                                      in_buf1_adr_wr;
  wire                                                         [                             511 : 0]                                                                      in_buf1_wr;
  wire                                                                                                                                                                     in_buf1_en_rd;
  wire                                                         [                              11 : 0]                                                                      in_buf1_adr_rd;
  wire                                                         [                             511 : 0]                                                                      in_buf1_rd;
  wire                                                                                                                                                                     in_buf2_en_wr;
  wire                                                         [                              11 : 0]                                                                      in_buf2_adr_wr;
  wire                                                         [                             511 : 0]                                                                      in_buf2_wr;
  wire                                                                                                                                                                     in_buf2_en_rd;
  wire                                                         [                              11 : 0]                                                                      in_buf2_adr_rd;
  wire                                                         [                             511 : 0]                                                                      in_buf2_rd;
  wire                                                                                                                                                                     in_buf3_en_wr;
  wire                                                         [                              11 : 0]                                                                      in_buf3_adr_wr;
  wire                                                         [                             511 : 0]                                                                      in_buf3_wr;
  wire                                                                                                                                                                     in_buf3_en_rd;
  wire                                                         [                              11 : 0]                                                                      in_buf3_adr_rd;
  wire                                                         [                             511 : 0]                                                                      in_buf3_rd;
  //load weights controller
  wire conv_load_weights = 0;  //begin weights loading
  // wire ddr_en = 1;  //mig fifo can accept request
  wire valid_load_weights = 0;  //ddr words is loaded from ddr
  wire weights_word_ddr_en_rd = 0;  //o: read ddr
  wire                                                         [                                15:0] weights_word_ddr_adr_rd = 0;  //o
  wire weights_word_buf_en_wt = 0;  //o: write buf
  wire                                                         [                                15:0] weights_word_buf_adr_wt = 0;  //o
  //cv weights handler
  wire                                                                                                                                                                     weights_word_buf_en_rd;  //o: read buf
  wire                                                         [                                15:0]                                                                      weights_word_buf_adr_rd;  //o
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_vector;  //o: weights vector to flush into PEs
  //ping pong control, buf write and read
  wire                                                         [            weight_word_length-1 : 0] weights_word_buf_wt = 0;  //i: weights read from DDR, write into buf
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_word_buf_rd;  //o: ping pong buf out
  wire                                                                                                                                                                     weights_word_buf_ping_en;  //o
  wire                                                                                                                                                                     weights_word_buf_ping_en_wr;  //o
  wire                                                         [                                15:0]                                                                      weights_word_buf_ping_adr;  //o
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_word_buf_ping_in;  //o
  wire                                                                                                                                                                     weights_word_buf_pong_en;  //o
  wire                                                                                                                                                                     weights_word_buf_pong_en_wr;  //o
  wire                                                         [                                15:0]                                                                      weights_word_buf_pong_adr;  //o
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_word_buf_pong_in;  //o
  //weights buf
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_word_buf_ping_out;  //o
  wire                                                         [            weight_word_length-1 : 0]                                                                      weights_word_buf_pong_out;  //o
  //args buf rd adr
  wire                                                         [                                15:0]                                                                      bias_buf_adr_rd;
  wire                                                         [                                15:0]                                                                      e_scale_tail_buf_adr_rd;
  wire                                                         [                                15:0]                                                                      e_scale_rank_buf_adr_rd;
  wire                                                         [                                 7:0]                                                                      bias_reg_start;  // 0-63
  wire                                                         [                                 7:0]                                                                      bias_reg_size;  // 0-63
  wire                                                         [                                 7:0]                                                                      tail_reg_start;  // 0-63
  wire                                                         [                                 7:0]                                                                      tail_reg_size;  // 0-63
  wire                                                         [                                 7:0]                                                                      rank_reg_start;  // 0-63
  wire                                                         [                                 7:0]                                                                      rank_reg_size;  // 0-63
  wire                                                                                                                                                                     bias_buf_en_rd;
  wire                                                                                                                                                                     e_scale_tail_buf_en_rd;
  wire                                                                                                                                                                     e_scale_rank_buf_en_rd;
  //wt ctrl space
  wire                                                         [                                15:0] bias_buf_adr_wr = 0;
  wire                                                         [                                15:0] e_scale_tail_buf_adr_wr = 0;
  wire                                                         [                                15:0] e_scale_rank_buf_adr_wr = 0;
  // bias buf
  wire                                                                                                                                                                     bias_buf_en;
  wire bias_buf_en_wr = 0;
  wire                                                         [                                 8:0]                                                                      bias_buf_adr;
  wire                                                         [                               511:0] bias_buf_wr = 0;
  wire                                                         [                               511:0]                                                                      bias_buf_rd;
  // tail buf
  wire                                                                                                                                                                     e_scale_tail_buf_en;
  wire e_scale_tail_buf_en_wr = 0;
  wire                                                         [                                 8:0]                                                                      e_scale_tail_buf_adr;
  wire                                                         [                               511:0] e_scale_tail_buf_wr = 0;
  wire                                                         [                               511:0]                                                                      e_scale_tail_buf_rd;
  // rank buf
  wire                                                                                                                                                                     e_scale_rank_buf_en;
  wire e_scale_rank_buf_en_wr = 0;
  wire                                                         [                                 8:0]                                                                      e_scale_rank_buf_adr;
  wire                                                         [                               511:0] e_scale_rank_buf_wr = 0;
  wire                                                         [                               511:0]                                                                      e_scale_rank_buf_rd;
  //delay regs pixels
  //    wire [column_num_in_sa*16-1:0] delay_row1_pixels, delay_row2_pixels, delay_row3_pixels;
  wire                                                         [          pixels_column_in_width-1:0]                                                                      delay_rowi_pixels                                     [sa_column_num-1 : 0];
  //delay regs weights
  //    wire [row_num_in_sa*8-1:0] delay_weights_1, delay_weights_2, delay_weights_3, delay_weights_4;
  wire                                                         [           weights_row_in_width -1:0]                                                                      delay_weights_sets                                    [   sa_row_num-1 : 0];
  //sa
  wire                                                         [             sa_column_in_width -1:0]                                                                      sa_columni_ins                                        [sa_column_num-1 : 0] [sa_row_num-1 : 0];
  wire                                                         [                sa_row_in_width -1:0]                                                                      sa_rowi_ins                                           [sa_column_num-1 : 0] [sa_row_num-1 : 0];
  wire                                                         [column_num_in_sa * mult_P_width -1:0]                                                                      sa_row0_outs                                          [sa_column_num-1 : 0] [sa_row_num-1 : 0];
  // sa control
  wire sa_en, sa_reset;
  wire channel_out_reset, channel_out_en;  //need logic
  wire add_bias_en, add_bias_reset;
  wire [                           5:0] out_sa_row_idx;  //output sa row idx [1,16]
  wire                                  mult_array_mode;
  wire                                  quantify_add_end;
  wire [               out_width - 1:0] out_rowi_channel_seti                                    [sa_column_num-1 : 0][sa_row_num-1 : 0];  // pox res per channel
  wire                                  conv_compute_fin;
  //bias regs
  wire [bias_set_4_channel_width-1 : 0] bias_4_channel_sets;  //4 sets of 16bit(1 bias or 2 bias)
  wire [      add_bias_row_width - 1:0] add_bias_rowi_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
  //quantify ctrl
  wire e_tail_en, e_tail_reset;
  wire quantify_en, quantify_reset;
  //mult_array
  wire [vector_A_width-1 : 0] vector_A, e_scale_vector_A;
  wire [vector_B_width-1 : 0] vector_B, e_scale_vector_B;
  wire [vector_P_width-1 : 0] vector_P, e_scale_vector_P;
  ///mult_sa
  wire [        column_num_in_sa * mult_A_width -1:0] extra_sa_vector_As                            [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [                           mult_B_width -1:0] extra_sa_vector_B                             [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [        column_num_in_sa * mult_P_width -1:0] extra_sa_vector_Ps                            [sa_column_num-1 : 0][sa_row_num-1 : 0];
  //e_scale regs
  // tile e-scale, will be set at first of the tiling compute, maybe set in several cycles
  wire [      E_scale_tail_set_4_channel_width-1 : 0] E_scale_tail_4_channel_sets;
  wire [      E_scale_rank_set_4_channel_width-1 : 0] E_scale_rank_4_channel_sets;
  //e_scale
  //cycle 0
  wire [    add_bias_row_in_mult_A_width_width-1 : 0] //24 bit * 32 pixels * 2 channel
  add_bias_rowi_in_mult_A_width_channel_seti    [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [E_scale_tail_row_in_mult_B_width_width-1 : 0] //16 bit * 32 pixels * 2 channel
  E_scale_tail_rowi_in_mult_B_width_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
  //cycle 1
  wire [row_E_scale_tail_in_mult_P_width_width-1 : 0] //40 bit * 32 pixels * 2 channel
  rowi_E_scale_tail_in_mult_P_width_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [quantified_row_width-1 : 0] //8 bit * 32 pixels * 2 channel
  quantified_rowi_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0]; 
  
  //conv fifo
  wire                                                fifo_rowi_channel_seti_rd_en                  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [                  quantified_row_width-1 : 0] fifo_rowi_channel_seti_dout                   [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire                                                fifo_rowi_channel_seti_full                   [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire                                                fifo_rowi_channel_seti_empty                  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [                                       8 : 0] data_counts                                   [sa_column_num-1 : 0][sa_row_num-1 : 0];

  //conv fifo out ctrl
  //cycle 0 in
  wire                                                conv_store;
  //cycle 1 in
  wire [                  quantified_row_width-1 : 0] fifo_data;
  //cycle 0 out
  wire [              sa_row_num * sa_column_num-1:0] fifo_rds;
  //cycle 1 out
  //    output reg [15:0] rowi_out_buf_adr;
  wire [3:0] fifo_column_no, fifo_row_no;
  wire valid_rowi_out_buf_adr;
  wire [15:0] out_y_idx, out_x_idx, out_f_idx;
  wire                        conv_fifo_out_tile_add_end;
  wire [out_data_width-1 : 0] conv_out_data;
  wire                        conv_store_fin;

  conv_decoder_com cv_decoder_com (
      .clk                          (clk),
      .reset                        (reset),
      .conv_decode                  (conv_decode),
      .conv_start                   (conv_start),
      .mode                         (mode),
      .k                            (k),
      .s                            (s),
      .p                            (p),
      .of                           (of),
      .ox                           (ox),
      .oy                           (oy),
      .ix                           (ix),
      .iy                           (iy),
      .nif                          (nif),
      .nif_in_2pow                  (nif_in_2pow),
      .ix_in_2pow                   (ix_in_2pow),
      .nif_mult_k_mult_k            (nif_mult_k_mult_k),
      .N_chunks                     (N_chunks),
      .bias_layer_base_buf_adr_rd   (bias_layer_base_buf_adr_rd),
      .tail_layer_base_buf_adr_rd   (tail_layer_base_buf_adr_rd),
      .rank_layer_base_buf_adr_rd   (rank_layer_base_buf_adr_rd),
      .weights_layer_base_ddr_adr_rd(weights_layer_base_ddr_adr_rd)
  );

  conv_controller_demo cv_controller_demo (
      .clk             (clk),
      .reset           (reset),
      .N_chunks        (N_chunks),
      .conv_start      (conv_start),
      .conv_compute_fin(conv_compute_fin),
      .conv_store_fin  (conv_store_fin),
      .conv_compute    (conv_compute),
      .conv_store      (conv_store),
      .conv_fin        (conv_fin)
  );
  conv_compute_controller cv_compute_controller (  //conv_router_v2 // conv_router_flat
      .clk                 (clk),
      .reset               (reset | conv_start),
      .conv_compute        (conv_compute),
      .mode_init           (mode),
      .of_init             (of),
      .ox_init             (ox),
      .oy_init             (oy),
      .ix_init             (ix),
      .iy_init             (iy),
      .nif_init            (nif),
      .k_init              (k),
      .s_init              (s),
      .p_init              (p),
      .nif_in_2pow_init    (nif_in_2pow),
      .ix_in_2pow_init     (ix_in_2pow),
      .ox_start            (ox_start),
      .oy_start            (oy_start),
      .of_start            (of_start),
      .pox                 (pox),
      .poy                 (poy),
      .pof                 (pof),
      .if_idx              (if_idx),
      .west_pad            (west_pad),
      .slab_num            (slab_num),
      .east_pad            (east_pad),
      .row1_idx            (row1_idx),
      .row2_idx            (row2_idx),
      .row3_idx            (row3_idx),
      .row_start_idx       (row_start_idx),
      .row_end_idx         (row_end_idx),
      .reg_start_idx       (reg_start_idx),
      .reg_end_idx         (reg_end_idx),
      .row1_buf_adr        (row1_buf_adr),
      .row1_buf_idx        (row1_buf_idx),
      .row1_buf_word_select(row1_buf_word_select),
      .row2_buf_adr        (row2_buf_adr),
      .row2_buf_idx        (row2_buf_idx),
      .row2_buf_word_select(row2_buf_word_select),
      .row3_buf_adr        (row3_buf_adr),
      .row3_buf_idx        (row3_buf_idx),
      .row3_buf_word_select(row3_buf_word_select),
      .row_slab_start_idx  (row_slab_start_idx),
      .row1_slab_adr       (row1_slab_adr),
      .row1_slab_idx       (row1_slab_idx),
      .row2_slab_adr       (row2_slab_adr),
      .row2_slab_idx       (row2_slab_idx),
      .row3_slab_adr       (row3_slab_adr),
      .row3_slab_idx       (row3_slab_idx),
      .valid_row1_adr      (valid_row1_adr),
      .valid_row2_adr      (valid_row2_adr),
      .valid_row3_adr      (valid_row3_adr),
      .conv_end            (conv_end),
      .conv_pixels_add_end (conv_pixels_add_end),
      .conv_nif_add_end    (conv_nif_add_end)
  );
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      shadow_ox_start <= 0;
      shadow_oy_start <= 0;
      shadow_of_start <= 0;
      shadow_pox      <= 0;
      shadow_poy      <= 0;
      shadow_pof      <= 0;
    end else if (conv_nif_add_end == 1'b1) begin
      shadow_ox_start <= ox_start;
      shadow_oy_start <= oy_start;
      shadow_of_start <= of_start;
      shadow_pox      <= pox;
      shadow_poy      <= poy;
      shadow_pof      <= pof;
    end else begin
      shadow_ox_start <= shadow_ox_start;
      shadow_oy_start <= shadow_oy_start;
      shadow_of_start <= shadow_of_start;
      shadow_pox      <= shadow_pox;
      shadow_poy      <= shadow_poy;
      shadow_pof      <= shadow_pof;
    end
  end
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      store_ox_start <= 0;
      store_oy_start <= 0;
      store_of_start <= 0;
      store_pox      <= 0;
      store_poy      <= 0;
      store_pof      <= 0;
    end else if (conv_compute == 1'b1) begin
      store_ox_start <= shadow_ox_start;
      store_oy_start <= shadow_oy_start;
      store_of_start <= shadow_of_start;
      store_pox      <= shadow_pox;
      store_poy      <= shadow_poy;
      store_pof      <= shadow_pof;
    end else begin
      store_ox_start <= store_ox_start;
      store_oy_start <= store_oy_start;
      store_of_start <= store_of_start;
      store_pox      <= store_pox;
      store_poy      <= store_poy;
      store_pof      <= store_pof;
    end
  end

  conv_buffers_interface cv_buffers_interface (
      .reset                (reset | conv_start),
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
      .buf1_en_rd           (buf1_en_rd),
      .buf2_en_rd           (buf2_en_rd),
      .buf3_en_rd           (buf3_en_rd),
      //cycle 1 out/ last row data rd from buffer
      .last_row1_pixels_32  (last_row1_pixels_32),
      .last_row2_pixels_32  (last_row2_pixels_32),
      .last_row3_pixels_32  (last_row3_pixels_32),
      //cycle 0 out/ slab rd ctrl
      .slab1_adr_rd         (slab1_adr_rd),
      .slab2_adr_rd         (slab2_adr_rd),
      .slab3_adr_rd         (slab3_adr_rd),
      .slab1_en_rd          (slab1_en_rd),
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
      .slab1_en_wr          (slab1_en_wr),
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

  wire [3:0] state = 4'b0001;

  //last regs, state regs, to cache the info to wait for valid buffer data read
  always @(posedge clk) begin
    if (reset | conv_start) begin
      state_conv_pixels_add_end   <= 0;
      state_valid_row1_adr        <= 0;
      state_valid_row2_adr        <= 0;
      state_valid_row3_adr        <= 0;
      last_west_pad               <= 0;
      last_slab_num               <= 0;
      last_east_pad               <= 0;
      last_row1_idx               <= 16'hffff;
      last_row2_idx               <= 16'hffff;
      last_row3_idx               <= 16'hffff;
      last_row_start_idx          <= 16'hffff;
      last_row_end_idx            <= 16'hffff;
      last_reg_start_idx          <= 16'hffff;
      last_reg_end_idx            <= 16'hffff;
      last_row1_buf_idx           <= 0;
      last_row2_buf_idx           <= 0;
      last_row3_buf_idx           <= 0;
      last_buf1_word_select_rd    <= 0;
      last_buf2_word_select_rd    <= 0;
      last_buf3_word_select_rd    <= 0;
      last_row1_slab_idx          <= 0;
      last_row2_slab_idx          <= 0;
      last_row3_slab_idx          <= 0;
      //last regs, state regs, to cache the info to wait for valid buffer data read
      bias_reg_set                <= 0;
      last_bias_reg_start         <= 0;
      last_bias_reg_size          <= 0;
      tail_reg_set                <= 0;
      last_e_scale_tail_reg_start <= 0;
      last_e_scale_tail_reg_size  <= 0;
      rank_reg_set                <= 0;
      last_e_scale_rank_reg_start <= 0;
      last_e_scale_rank_reg_size  <= 0;
    end else if (state == 4'b0001) begin  //conv op
      state_conv_pixels_add_end   <= conv_pixels_add_end;
      state_valid_row1_adr        <= valid_row1_adr;
      state_valid_row2_adr        <= valid_row2_adr;
      state_valid_row3_adr        <= valid_row3_adr;
      last_west_pad               <= west_pad;
      last_slab_num               <= slab_num;
      last_east_pad               <= east_pad;
      last_row1_idx               <= row1_idx;
      last_row2_idx               <= row2_idx;
      last_row3_idx               <= row3_idx;
      last_row_start_idx          <= row_start_idx;
      last_row_end_idx            <= row_end_idx;
      last_reg_start_idx          <= reg_start_idx;
      last_reg_end_idx            <= reg_end_idx;
      last_row1_buf_idx           <= row1_buf_idx;
      last_row2_buf_idx           <= row2_buf_idx;
      last_row3_buf_idx           <= row3_buf_idx;
      last_buf1_word_select_rd    <= buf1_word_select_rd;
      last_buf2_word_select_rd    <= buf2_word_select_rd;
      last_buf3_word_select_rd    <= buf3_word_select_rd;
      last_row1_slab_idx          <= row1_slab_idx;
      last_row2_slab_idx          <= row2_slab_idx;
      last_row3_slab_idx          <= row3_slab_idx;
      //last regs, state regs, to cache the info to wait for valid buffer data read
      bias_reg_set                <= bias_buf_en_rd;
      last_bias_reg_start         <= bias_reg_start;
      last_bias_reg_size          <= bias_reg_size;
      tail_reg_set                <= e_scale_tail_buf_en_rd;
      last_e_scale_tail_reg_start <= tail_reg_start;
      last_e_scale_tail_reg_size  <= tail_reg_size;
      rank_reg_set                <= e_scale_rank_buf_en_rd;
      last_e_scale_rank_reg_start <= rank_reg_start;
      last_e_scale_rank_reg_size  <= rank_reg_size;
    end
  end

  //img2col
  Row_Regs row_regs (
      .reset                    (reset | conv_start),
      .clk                      (clk),
      .k                        (k),
      .s                        (s),
      .state_valid_row1_adr     (state_valid_row1_adr),
      .state_valid_row2_adr     (state_valid_row2_adr),
      .state_valid_row3_adr     (state_valid_row3_adr),
      .state_conv_pixels_add_end(state_conv_pixels_add_end),
      .last_west_pad            (last_west_pad),
      .last_slab_num            (last_slab_num),
      .last_east_pad            (last_east_pad),
      .last_row1_idx            (last_row1_idx),
      .last_row2_idx            (last_row2_idx),
      .last_row3_idx            (last_row3_idx),
      .last_row_start_idx       (last_row_start_idx),
      .last_row_end_idx         (last_row_end_idx),
      .last_reg_start_idx       (last_reg_start_idx),
      .last_reg_end_idx         (last_reg_end_idx),
      .last_row1_pixels_32      (last_row1_pixels_32),
      .last_row2_pixels_32      (last_row2_pixels_32),
      .last_row3_pixels_32      (last_row3_pixels_32),
      .last_row1_slab_2         (last_row1_slab_2),
      .last_row2_slab_2         (last_row2_slab_2),
      .last_row3_slab_2         (last_row3_slab_2),

      .shift_start(shift_start),
      .row_regs_1 (row_regs_1),
      .row_regs_2 (row_regs_2),
      .row_regs_3 (row_regs_3)
  );

  Shift_Regs shift_regs (
      .reset      (reset | conv_start),
      .clk        (clk),
      .k          (k),
      .s          (s),
      .shift_start(shift_start),
      .row_regs_1 (row_regs_1),
      .row_regs_2 (row_regs_2),
      .row_regs_3 (row_regs_3),

      .re_fm_en      (re_fm_en),
      .re_fm_end     (re_fm_end),
      .re_row1_pixels(re_rowi_pixels[1-1]),
      .re_row2_pixels(re_rowi_pixels[2-1]),
      .re_row3_pixels(re_rowi_pixels[3-1])
  );

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
  assign buf1_pixels_32 = (last_buf1_word_select_rd == 1'b0) ? in_buf1_rd[pixels_in_row*8-1 : 0] : in_buf1_rd[pixels_in_row*8*ddr_load_ratio-1 : pixels_in_row*8];

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
  assign buf2_pixels_32 = (last_buf2_word_select_rd == 1'b0) ? in_buf2_rd[pixels_in_row*8-1 : 0] : in_buf2_rd[pixels_in_row*8*ddr_load_ratio-1 : pixels_in_row*8];

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
  assign buf3_pixels_32 = (last_buf3_word_select_rd == 1'b0) ? in_buf3_rd[pixels_in_row*8-1 : 0] : in_buf3_rd[pixels_in_row*8*ddr_load_ratio-1 : pixels_in_row*8];

  slab_1 slab_1 (
      .clka (clk),                   // input wire clka
      .ena  (slab1_en_wr),           // input wire ena
      .wea  (slab1_en_wr),           // input wire [0 : 0] wea
      .addra(slab1_adr_wr[12 : 0]),  // input wire [12 : 0] addra
      .dina (slab1_pixels_2_wr),     // input wire [15 : 0] dina
      .clkb (clk),                   // input wire clkb
      .enb  (slab1_en_rd),           // input wire enb
      .addrb(slab1_adr_rd[12 : 0]),  // input wire [12 : 0] addrb
      .doutb(slab1_pixels_2)         // output wire [15 : 0] doutb
  );

  slab_2 slab_2 (
      .clka (clk),                   // input wire clka
      .ena  (slab2_en_wr),           // input wire ena
      .wea  (slab2_en_wr),           // input wire [0 : 0] wea
      .addra(slab2_adr_wr[12 : 0]),  // input wire [12 : 0] addra
      .dina (slab2_pixels_2_wr),     // input wire [15 : 0] dina
      .clkb (clk),                   // input wire clkb
      .enb  (slab2_en_rd),           // input wire enb
      .addrb(slab2_adr_rd[12 : 0]),  // input wire [12 : 0] addrb
      .doutb(slab2_pixels_2)         // output wire [15 : 0] doutb
  );

  slab_3 slab_3 (
      .clka (clk),                   // input wire clka
      .ena  (slab3_en_wr),           // input wire ena
      .wea  (slab3_en_wr),           // input wire [0 : 0] wea
      .addra(slab3_adr_wr[12 : 0]),  // input wire [14 : 0] addra
      .dina (slab3_pixels_2_wr),     // input wire [15 : 0] dina
      .clkb (clk),                   // input wire clkb
      .enb  (slab3_en_rd),           // input wire enb
      .addrb(slab3_adr_rd[12 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab3_pixels_2)         // output wire [15 : 0] doutb
  );

  //weight buf
  cv_weights_handler cv_weights_handler (
      .clk                    (clk),
      .reset                  (reset | conv_start),
      .mode                   (mode),
      //cycle 0 in
      .re_fm_en               (re_fm_en),                 //the first input is needed in next cycle
      .re_fm_end              (re_fm_end),                //the last input is needed in cur cycle
      //cylce 1 in
      .weights_dout           (weights_word_buf_rd),      //weights read from buf
      //cycle 0 out
      .weights_word_buf_en_rd (weights_word_buf_en_rd),   //read weight buf
      .weights_word_buf_adr_rd(weights_word_buf_adr_rd),
      //cycle 1 out
      .weights_vector         (weights_vector)            //weights vector flush into PEs
  );

  conv_weights_ping_pong_controller cv_weights_ping_pong_controller (
      .reset            (reset | conv_start),
      .clk              (clk),
      .conv_load_weights(conv_load_weights),   //change the ping-pong state

      //weights need reading from buf
      .weights_word_buf_en_rd     (weights_word_buf_en_rd),       //i:weight_en_rd
      .weights_word_buf_adr_rd    (weights_word_buf_adr_rd),      //i:weight_adr_rd
      .weights_word_buf_rd        (weights_word_buf_rd),          //o:weights read from weights buf
      //weights loaded and need writing to buf
      .weights_word_buf_en_wt     (weights_word_buf_en_wt),       //i
      .weights_word_buf_adr_wt    (weights_word_buf_adr_wt),      //i
      .weights_word_buf_wt        (weights_word_buf_wt),          //i:weights write to weights buf
      //ping buffer port
      .weights_word_buf_ping_en   (weights_word_buf_ping_en),     //o
      .weights_word_buf_ping_en_wr(weights_word_buf_ping_en_wr),  //o
      .weights_word_buf_ping_adr  (weights_word_buf_ping_adr),    // o
      .weights_word_buf_ping_in   (weights_word_buf_ping_in),     //o:port in of weights ping buf
      .weights_word_buf_ping_out  (weights_word_buf_ping_out),    //i:port out of weights ping buf
      //pong buffer port
      .weights_word_buf_pong_en   (weights_word_buf_pong_en),     //o
      .weights_word_buf_pong_en_wr(weights_word_buf_pong_en_wr),  //o
      .weights_word_buf_pong_adr  (weights_word_buf_pong_adr),    //o
      .weights_word_buf_pong_in   (weights_word_buf_pong_in),     //o:port in of weights pong buf
      .weights_word_buf_pong_out  (weights_word_buf_pong_out)     //i:port out of weights pong buf
  );

  weights_buffer_ping weights_buffer_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_ping_en),     // input wire ena
      .wea  (weights_word_buf_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_ping_adr),    // input wire [11 : 0] addra
      .dina (weights_word_buf_ping_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_ping_out)     // output wire [511 : 0] douta
  );

  weights_buffer_pong weights_buffer_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_pong_en),     // input wire ena
      .wea  (weights_word_buf_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_pong_adr),    // input wire [11 : 0] addra
      .dina (weights_word_buf_pong_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_pong_out)     // output wire [511 : 0] douta
  );

  conv_args_handler cv_args_handler (
      .clk                            (clk),
      .reset                          (reset | conv_start),
      .args_refresh                   (conv_compute),
      .mode_init                      (mode),
      .of_init                        (of),
      .bias_layer_base_buf_adr_rd_init(bias_layer_base_buf_adr_rd),
      .tail_layer_base_buf_adr_rd_init(tail_layer_base_buf_adr_rd),
      .rank_layer_base_buf_adr_rd_init(rank_layer_base_buf_adr_rd),

      //args buf rd adr
      .bias_buf_adr_rd        (bias_buf_adr_rd),
      .e_scale_tail_buf_adr_rd(e_scale_tail_buf_adr_rd),
      .e_scale_rank_buf_adr_rd(e_scale_rank_buf_adr_rd),
      .bias_reg_start         (bias_reg_start),           // 0-63
      .bias_reg_size          (bias_reg_size),            // 0-63
      .tail_reg_start         (tail_reg_start),           // 0-63
      .tail_reg_size          (tail_reg_size),            // 0-63
      .rank_reg_start         (rank_reg_start),           // 0-63
      .rank_reg_size          (rank_reg_size),            // 0-63

      .bias_buf_en_rd        (bias_buf_en_rd),
      .e_scale_tail_buf_en_rd(e_scale_tail_buf_en_rd),
      .e_scale_rank_buf_en_rd(e_scale_rank_buf_en_rd)
  );

  bias_buffer bias_buffer (
      .clka (clk),             // input wire clka
      .ena  (bias_buf_en),     // input wire ena
      .wea  (bias_buf_en_wr),  // input wire [0 : 0] wea
      .addra(bias_buf_adr),    // input wire [8 : 0] addra
      .dina (bias_buf_wr),     // input wire [511 : 0] dina
      .douta(bias_buf_rd)      // output wire [511 : 0] douta
  );
  assign bias_buf_adr = ((bias_buf_en_rd == 1'b0) && (bias_buf_en_wr == 1'b1)) ? bias_buf_adr_wr : ((bias_buf_en_rd == 1'b1) && (bias_buf_en_wr == 1'b0)) ? bias_buf_adr_rd : 0;
  assign bias_buf_en  = ((bias_buf_en_rd == 1'b1) || (bias_buf_en_wr == 1'b1)) ? 1 : 0;

  tail_buffer tail_buffer (
      .clka (clk),                     // input wire clka
      .ena  (e_scale_tail_buf_en),     // input wire ena
      .wea  (e_scale_tail_buf_en_wr),  // input wire [0 : 0] wea
      .addra(e_scale_tail_buf_adr),    // input wire [8 : 0] addra
      .dina (e_scale_tail_buf_wr),     // input wire [511 : 0] dina
      .douta(e_scale_tail_buf_rd)      // output wire [511 : 0] douta
  );
  assign e_scale_tail_buf_adr = ((e_scale_tail_buf_en_rd == 1'b0) && (e_scale_tail_buf_en_wr == 1'b1)) ? e_scale_tail_buf_adr_wr : ((e_scale_tail_buf_en_rd == 1'b1) && (e_scale_tail_buf_en_wr == 1'b0)) ? e_scale_tail_buf_adr_rd : 0;
  assign e_scale_tail_buf_en  = ((e_scale_tail_buf_en_rd == 1'b1) || (e_scale_tail_buf_en_wr == 1'b1)) ? 1 : 0;

  rank_buffer rank_buffer (
      .clka (clk),                     // input wire clka
      .ena  (e_scale_rank_buf_en),     // input wire ena
      .wea  (e_scale_rank_buf_en_wr),  // input wire [0 : 0] wea
      .addra(e_scale_rank_buf_adr),    // input wire [8 : 0] addra
      .dina (e_scale_rank_buf_wr),     // input wire [511 : 0] dina
      .douta(e_scale_rank_buf_rd)      // output wire [511 : 0] douta
  );
  assign e_scale_rank_buf_adr = ((e_scale_rank_buf_en_rd == 1'b0) && (e_scale_rank_buf_en_wr == 1'b1)) ? e_scale_rank_buf_adr_wr : ((e_scale_rank_buf_en_rd == 1'b1) && (e_scale_rank_buf_en_wr == 1'b0)) ? e_scale_rank_buf_adr_rd : 0;
  assign e_scale_rank_buf_en  = ((e_scale_rank_buf_en_rd == 1'b1) || (e_scale_rank_buf_en_wr == 1'b1)) ? 1 : 0;

  //bias regs
  Bias_Regs bias_regs (
      .clk           (clk),
      .reset         (reset | conv_start),
      .bias_set      (bias_reg_set),         // next tile need clr
      .mode          (mode),
      .bias_word     (last_bias_word),
      .bias_reg_start(last_bias_reg_start),
      .bias_reg_size (last_bias_reg_size),

      .out_sa_row_idx     (out_sa_row_idx),
      .bias_4_channel_sets(bias_4_channel_sets)
  );

  //e_scale regs
  E_Scale_Regs E_scale_regs (
      .clk                   (clk),
      .reset                 (reset | conv_start),
      .tail_set              (tail_reg_set),                 // next tile need clr
      .rank_set              (rank_reg_set),
      .mode                  (mode),
      .E_scale_tail_word     (last_e_scale_tail_word),
      .E_scale_tail_reg_start(last_e_scale_tail_reg_start),
      .E_scale_tail_reg_size (last_e_scale_tail_reg_size),
      .E_scale_rank_word     (last_e_scale_rank_word),
      .E_scale_rank_reg_start(last_e_scale_rank_reg_start),
      .E_scale_rank_reg_size (last_e_scale_rank_reg_size),

      .out_sa_row_idx             (out_sa_row_idx),
      .E_scale_tail_4_channel_sets(E_scale_tail_4_channel_sets),
      .E_scale_rank_4_channel_sets(E_scale_rank_4_channel_sets)
  );

  //last regs, state regs, to cache the info to wait for valid buffer data read
  assign last_bias_word         = bias_buf_rd;
  assign last_e_scale_tail_word = e_scale_tail_buf_rd;
  assign last_e_scale_rank_word = e_scale_rank_buf_rd;

  //computation core
  genvar i, j;
  generate
    for (i = 1; i <= sa_column_num; i = i + 1) begin : delay_regs_column  //poy, rows
      Delay_Regs_Pixels delay_regs_pixels (
          .clk             (clk),
          .reset           (sa_reset | reset | conv_start),
          .en              (sa_en),
          .re_row_pixels   (re_rowi_pixels[i-1]),
          .delay_row_pixels(delay_rowi_pixels[i-1])
      );
      //            assign sa_columni_ins[i-1] = (mult_array_mode == 1'b0) ?
      //            {{(sa_column_in_width-pixels_column_in_width){1'b0}}, delay_rowi_pixels[i-1]} :
      //            extra_sa_vector_As[i-1][j-1];
      for (j = 1; j <= sa_row_num; j = j + 1) begin  //output channel
        assign sa_columni_ins[i-1][j-1] = (e_tail_en == 1'b0) ? {{(sa_column_in_width - pixels_column_in_width) {1'b0}}, delay_rowi_pixels[i-1]} : extra_sa_vector_As[i-1][j-1];
      end
    end
    for (j = 1; j <= sa_row_num; j = j + 1) begin : delay_regs_row  //output channel
      Delay_Regs_Weights delay_regs_weights (
          .clk          (clk),
          .reset        (sa_reset | reset | conv_start),
          .en           (sa_en),
          .weights      (weights_vector[(j-1)*row_num_in_sa*8+:(row_num_in_sa*8)]),
          .delay_weights(delay_weights_sets[j-1])
      );
      for (i = 1; i <= sa_column_num; i = i + 1) begin  //poy, rows
        assign sa_rowi_ins[i-1][j-1] = (e_tail_en == 1'b0) ? delay_weights_sets[j-1] : {{(sa_row_in_width - mult_B_width) {1'b0}}, extra_sa_vector_B[i-1][j-1]};
      end
    end
    for (i = 1; i <= sa_column_num; i = i + 1) begin : sa_column  //poy, rows
      for (j = 1; j <= sa_row_num; j = j + 1) begin : sa_row  //output channel
        SA_fin sa (
            .clk              (clk),
            .reset            (sa_reset | reset | conv_start),
            .en               (sa_en),
            .mode             (mode),
            .channel_out_reset(channel_out_reset | reset | conv_start),
            .channel_out_en   (channel_out_en),
            .out_sa_row_idx   (out_sa_row_idx),
            .row_in           (sa_rowi_ins[i-1][j-1]),                   //weights or 16bit e_scale
            .column_in        (sa_columni_ins[i-1][j-1]),                //pixels or 24bit add_biases
            .mult_array_mode  (mult_array_mode),
            .row0_out         (sa_row0_outs[i-1][j-1]),
            .out              (out_rowi_channel_seti[i-1][j-1])
        );
        assign extra_sa_vector_Ps[i-1][j-1] = (quantify_en == 1'b1) ? sa_row0_outs[i-1][j-1] : 0;
        Add_Bias bias_adder (
            .clk              (clk),
            .reset            (add_bias_reset | reset | conv_start),
            .en               (add_bias_en),
            .mode             (mode),
            .rowi_channel_seti(out_rowi_channel_seti[i-1][j-1]),                            // pox res per channel
            .bias_set         (bias_4_channel_sets[(j-1)*bias_set_width+:bias_set_width]),
            .add_bias_row     (add_bias_rowi_channel_seti[i-1][j-1])                        // pox res per channel
        );
        E_Scale E_scale (
            //cycle 0 in
            .clk                             (clk),
            .e_tail_reset                    (reset | conv_start | e_tail_reset),
            .mode                            (mode),
            .E_scale_tail_set                (E_scale_tail_4_channel_sets[(j-1)*E_scale_tail_set_width+:E_scale_tail_set_width]),
            .E_scale_rank_set                (E_scale_rank_4_channel_sets[(j-1)*E_scale_rank_set_width+:E_scale_rank_set_width]),
            .add_bias_row                    (add_bias_rowi_channel_seti[i-1][j-1]),
            //cycle 0 out
            .add_bias_row_in_mult_A_width    (add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1]),
            .E_scale_tail_row_in_mult_B_width(E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1]),
            //cycle 1 in
            .row_E_scale_tail_in_mult_P_width(rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1]),
            //cycle 1 out
            .quantified_row                  (quantified_rowi_channel_seti[i-1][j-1])
        );
        //1-48 -> mult_array[1,48]; 49-64 -> sa_row0; [1, 64] = add_bias_row_in_mult_A_width_width
        assign e_scale_vector_A[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_A_width)+:(mult_array_length_per_sa*mult_A_width)] = (e_tail_en == 1'b1) ? add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1][0+:(mult_array_length_per_sa*mult_A_width)] : 0;
        assign extra_sa_vector_As[i-1][j-1] = (e_tail_en == 1'b1) ? add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1][(mult_array_length_per_sa*mult_A_width)+:(column_num_in_sa*mult_A_width)] : 0;
        assign e_scale_vector_B[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_B_width)+:(mult_array_length_per_sa*mult_B_width)] = (e_tail_en == 1'b1) ? E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1][0+:(mult_array_length_per_sa*mult_B_width)] : 0;
        assign extra_sa_vector_B[i-1][j-1] = (e_tail_en == 1'b1) ? E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1][(mult_array_length_per_sa*mult_B_width)+:mult_B_width] : 0;
        assign rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1][0+:(mult_array_length_per_sa*mult_P_width)] = e_scale_vector_P[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_P_width)+:(mult_array_length_per_sa*mult_P_width)];
        assign rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1][(mult_array_length_per_sa*mult_P_width)+:(column_num_in_sa*mult_P_width)] = extra_sa_vector_Ps[i-1][j-1];

        fifo_rowi_channel_seti fifo_rowi_channel_seti (
            .clk       (clk),                                     // input wire clk
            .srst      (reset | conv_start),                      // input wire srst
            .din       (quantified_rowi_channel_seti[i-1][j-1]),  // input wire [511 : 0] din
            .wr_en     (quantify_en),                             // input wire wr_en
            .rd_en     (fifo_rowi_channel_seti_rd_en[i-1][j-1]),  // input wire rd_en
            .dout      (fifo_rowi_channel_seti_dout[i-1][j-1]),   // output wire [511 : 0] dout
            .full      (fifo_rowi_channel_seti_full[i-1][j-1]),   // output wire full
            .empty     (fifo_rowi_channel_seti_empty[i-1][j-1]),  // output wire empty
            .data_count(data_counts[i-1][j-1])
        );
        assign fifo_rowi_channel_seti_rd_en[i-1][j-1] = fifo_rds[(((i-1)<<2)+j-1)];
      end
    end
  endgenerate

  // sa control
  SA_Ctrl sa_ctrl (
      .clk              (clk),
      .reset            (reset | conv_start),  //next tile need clr
      .re_fm_en         (re_fm_en),
      .mode             (mode),
      .nif_mult_k_mult_k(nif_mult_k_mult_k),

      .sa_en            (sa_en),
      .sa_reset         (sa_reset),
      .channel_out_reset(channel_out_reset),
      .channel_out_en   (channel_out_en),
      .add_bias_en      (add_bias_en),
      .add_bias_reset   (add_bias_reset),
      .e_tail_en        (e_tail_en),
      .e_tail_reset     (e_tail_reset),
      .quantify_en      (quantify_en),
      .quantify_reset   (quantify_reset),
      .mult_array_mode  (mult_array_mode),
      .out_sa_row_idx   (out_sa_row_idx),
      .quantify_add_end (quantify_add_end)
  );
  assign conv_compute_fin = quantify_add_end;

  Mult_Array mult_array (
      .clk     (clk),
      .en      (e_tail_en),
      .vector_A(vector_A),
      .vector_B(vector_B),
      .vector_P(vector_P)
  );
  assign vector_A         = e_scale_vector_A;
  assign vector_B         = e_scale_vector_B;
  assign e_scale_vector_P = (quantify_en == 1'b1) ? vector_P : 0;

  conv_fifo_out_controller cv_fifo_out_controller (  // conv_out_handler
      //cycle 0 in
      .clk                       (clk),
      .reset                     (reset | conv_start),
      .conv_fifo_out_start       (conv_store),
      .ddr_en(ddr_en),
      .cur_ox_start              (shadow_ox_start),
      .cur_oy_start              (shadow_oy_start),
      .cur_of_start              (shadow_of_start),
      .cur_pox                   (shadow_pox),
      .cur_poy                   (shadow_poy),
      .cur_pof                   (shadow_pof),
      .mode                      (mode),
      //cycle 0 out
      .fifo_rds                  (fifo_rds),
      //cycle 1 in
      .fifo_data                 (fifo_data),
      //cycle 1 out
      //rowi_out_buf_adr,
      .fifo_column_no            (fifo_column_no),
      .fifo_row_no               (fifo_row_no),
      .valid_rowi_out_buf_adr    (valid_rowi_out_buf_adr),
      .out_y_idx                 (out_y_idx),
      .out_x_idx                 (out_x_idx),
      .out_f_idx                 (out_f_idx),
      .conv_out_data             (conv_out_data),
      .conv_fifo_out_tile_add_end(conv_fifo_out_tile_add_end)
  );
  assign fifo_data      = fifo_rowi_channel_seti_dout[fifo_column_no][fifo_row_no];
  assign conv_store_fin = conv_fifo_out_tile_add_end;  //demo store ctrl

  always begin
    #5;
    clk <= ~clk;
  end

  initial begin
    clk   = 0;
    reset = 1;
    ddr_en = 1;

    #10;
    reset       = 0;
    conv_decode = 1;

    #10;
    conv_decode = 0;

  end
endmodule
