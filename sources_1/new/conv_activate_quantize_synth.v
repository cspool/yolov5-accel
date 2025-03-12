`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/03 13:57:56
// Design Name: 
// Module Name: conv_activate_quantize_synth
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


module conv_activate_quantize_synth(
  clk,  //i
  reset //i
  // //DDR MIG
  // ddr_en, //i

  // DDR_en,  //o
  // DDR_en_wr, //o
  // DDR_in,  //o
  // DDR_adr, //o
  // DDR_valid,
  // DDR_out  //i
);
  //SA
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
  parameter sa_column_in_width = pixels_column_in_width; //24 * column_num_in_sa
  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;  // width of 18 is bigger than 88
  parameter row_counter_width = ($clog2(row_num_in_sa + 1));
  parameter sa_out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  //bias, E, scale regs
  parameter bias_width = 8;  //8 bit bias
  parameter bias_set_width = bias_width * pe_parallel_weight_18;  //32; vconv pixel out_width
  parameter bias_set_4_channel_width = bias_set_width * sa_row_num;  //4 * 16 bit
  parameter bias_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  // parameter bias_tile_length = bias_set_width * bias_sets_num_in_row;  //64 * 16bit 
  parameter bias_word_length = 512;
  parameter E_width = 16;  //16 bit E
  parameter E_set_width = E_width * pe_parallel_weight_18;  //32 bit
  parameter E_set_4_channel_width = E_set_width * sa_row_num;  //4 * 32 bit
  parameter E_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  // parameter E_tile_length = E_set_width * E_sets_num_in_row;  //64 * 32bit regs to str
  parameter E_word_width = 512;
  parameter scale_width = 8;  //8 bit scale
  parameter scale_set_width = scale_width * pe_parallel_weight_18;  //16 bit
  parameter scale_set_4_channel_width = scale_set_width * sa_row_num;  //4 * 16 bit
  parameter scale_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  // parameter scale_tile_length = scale_set_width * scale_sets_num_in_row;  //64 * 16bit regs to str
  parameter scale_word_width = 512;
  
  //mult array
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
  parameter mult_dsp_array_length_per_sa = mult_dsp_array_length / sa_row_num / sa_column_num; //44
  parameter mult_lut_array_length_per_sa = mult_lut_array_length / sa_row_num / sa_column_num; //4

  //mult E, bias, relu, scale
  parameter sum_vector_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter sum_vector_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter sum_vector_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num_in_sa;
  parameter sum_mult_E_width_88 = pixel_width_88 + E_width;  //40 bit
  parameter sum_mult_E_width_18 = pixel_width_18 + E_width;  //32 bit
  parameter sum_mult_E_vector_width_88 = sum_mult_E_width_88 * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num_in_sa;
  //40 bit * 32 pixels * 1 channel
  parameter sum_mult_E_vector_width_18_2 = sum_mult_E_width_18 * 1 * pe_parallel_pixel_18 * column_num_in_sa;
  //32 bit * 32 pixels * 1 channel
  parameter sum_vector_in_mult_A_width_width = mult_A_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //24 bit * 32 pixels * 2 channel
  parameter E_vector_in_mult_B_width_width = mult_B_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //16 bit * 32 pixels * 2 channel
  parameter sum_mult_E_vector_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel
  parameter product_add_bias_vector_width = mult_P_width * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  //40 bit * 32 pixels * 2 channel
  
  parameter quantize_pixel_width = 8;
  parameter quantize_vector_width = (quantize_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  //8 bit * 32 pixels * 2 channel
  parameter out_data_width = quantize_pixel_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  //load input
  parameter row_num_in_mode0 = 64;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;  //4096
  parameter buf_rd_ratio = 2;
  // load weights
  parameter weights_in_tile_mode0 = 64;  // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128;  // 1bit

  input clk, reset;
  //DDR MIG
  // input ddr_en;
  wire ddr_en = 1;
  reg start; //top start
  always@(posedge clk) begin
      if (reset) begin
          start <= 1;
      end
      else if (start == 1) begin
          start <= 0;
      end
      else begin
          start <= start;
      end
  end
 //conv decoder
  reg  conv_decode;
  reg [511:0] conv_instr_args;
  reg [511:0] conv_instr_args_mem [0:0]; //instr mem for sim
  wire conv_start;
  //all below come from instr
  wire [3:0] mode;
  wire [3:0] k, s, p;
  wire [15:0] of, ox, oy, ix, iy, nif;
  wire [3:0] nif_in_2pow, ix_in_2pow, of_in_2pow, ox_in_2pow;
  wire [31:0] nif_mult_k_mult_k;
  wire [31:0] N_chunks;
  wire [15:0] E_layer_base_buf_adr_rd;
  wire [15:0] bias_layer_base_buf_adr_rd;
  wire [15:0] scale_layer_base_buf_adr_rd;
  wire [31:0] weights_layer_base_ddr_adr_rd;
  wire [31:0] input_ddr_layer_base_adr;
  wire [31:0] output_ddr_layer_base_adr;
  wire [ 7:0] of_div_row_num_ceil;
  wire [ 7:0] tiley_first_tilex_first_split_size;
  wire [ 7:0] tiley_first_tilex_last_split_size;
  wire [ 7:0] tiley_first_tilex_mid_split_size;
  wire [ 7:0] tiley_last_tilex_first_split_size;
  wire [ 7:0] tiley_last_tilex_last_split_size;
  wire [ 7:0] tiley_last_tilex_mid_split_size;
  wire [ 7:0] tiley_mid_tilex_first_split_size;
  wire [ 7:0] tiley_mid_tilex_last_split_size;
  wire [ 7:0] tiley_mid_tilex_mid_split_size;
  wire [ 7:0] tilex_first_ix_word_num;
  wire [ 7:0] tilex_last_ix_word_num;
  wire [ 7:0] tilex_mid_ix_word_num;
  wire [ 7:0] tiley_first_iy_row_num;
  wire [ 7:0] tiley_last_iy_row_num;
  wire [ 7:0] tiley_mid_iy_row_num;
  wire [15:0] ix_index_num, iy_index_num;
  //conv controller
  wire conv_load_weights;
  wire conv_load_input;
  wire conv_compute;
  wire conv_store;
  wire last_conv_store;
  wire last_conv_compute;
  wire conv_fin;
  //DDR
  wire DDR_en;
  wire DDR_en_wr;
  wire [511:0] DDR_in;
  wire [ 31:0] DDR_adr;
  wire DDR_valid = 1;
  wire [511:0] DDR_out;  //o

  // output DDR_en;
  // output DDR_en_wr;
  // output [511:0] DDR_in;
  // output [ 31:0] DDR_adr;
  // input DDR_valid;
  // input [511:0] DDR_out;  //o
  //DDR data
  reg valid_load_input;
  // wire valid_load_input;
  wire [511:0] load_input_word;
  reg [511:0] last_load_input_word;
  reg state_valid_load_input;
  reg valid_load_weights; //ddr words is loaded from ddr
  // wire valid_load_weights;
  //conv compute ctrl
  wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;
  reg [15:0] shadow_ox_start, shadow_oy_start, shadow_of_start, shadow_pox, shadow_poy, shadow_pof;
  reg [15:0] store_ox_start, store_oy_start, store_of_start, store_pox, store_poy, store_pof;
  wire [3:0] west_pad, slab_num, east_pad;
  wire [15:0] row1_idx, row2_idx, row3_idx;
  wire [15:0] row_start_idx, row_end_idx;
  wire [15:0] reg_start_idx, reg_end_idx;
  wire [15:0] row1_buf_adr;
  wire [1:0] row1_buf_idx;
  wire row1_buf_word_select;
  wire [15:0] row2_buf_adr;
  wire [1:0] row2_buf_idx;
  wire row2_buf_word_select;
  wire [15:0] row3_buf_adr;
  wire [1:0] row3_buf_idx;
  wire row3_buf_word_select;
  wire [15:0] row_slab_start_idx;
  wire [15:0] row1_slab_adr;
  wire [1:0] row1_slab_idx;
  wire [15:0] row2_slab_adr;
  wire [1:0] row2_slab_idx;
  wire [15:0] row3_slab_adr;
  wire [1:0] row3_slab_idx;
  wire [15:0] row1_slab_adr_to_wr;
  wire [1:0] row1_slab_idx_to_wr;
  wire [15:0] row2_slab_adr_to_wr;
  wire [1:0] row2_slab_idx_to_wr;
  wire [15:0] row3_slab_adr_to_wr;
  wire [1:0] row3_slab_idx_to_wr;
  wire valid_row1_adr, valid_row2_adr, valid_row3_adr;
  wire com_control_end;
  wire conv_pixels_add_end;
  wire conv_nif_add_end;
  //cv kernel
  wire [15:0] if_start;
  wire [15:0] row_base_in_3s;
  wire valid_adr; 
  wire [15:0] iy_start;
  wire [15:0] ky;
  //conv_load_input_controller
  wire [15:0] load_input_row_idx;
  wire [15:0] load_input_row_start_idx;
  wire [15:0] load_input_if_idx;
  wire [15:0] load_input_row_buf_adr;
  wire [1:0] load_input_row_buf_idx;
  wire input_word_ddr_en_rd;
  wire [31:0] input_word_ddr_adr_rd;
  wire input_word_load_info_fifo_en_wt;
  wire [31:0] input_word_load_info_fifo_wt;
  wire conv_load_input_fin;
  wire state_conv_load_input;
  //load input info fifo
  wire input_word_load_info_fifo_en_rd;
  wire [31:0] input_word_load_info_fifo_rd;
  wire load_input_info_fifo_full;
  wire load_input_info_fifo_empty;
  wire [8:0] load_input_info_fifo_data_count;
  //conv buffer interface
  //cycle 0 in/ input rows rd info
  //cycle 1 in/ rows rd from buf
  wire [pixels_in_row * 8 - 1:0] buf1_pixels_32;
  wire [pixels_in_row * 8 - 1:0] buf2_pixels_32;
  wire [pixels_in_row * 8 - 1:0] buf3_pixels_32;
  // wire [pixels_in_row * 8 - 1:0] buf1_data;
  // wire [pixels_in_row * 8 - 1:0] buf2_data;
  // wire [pixels_in_row * 8 - 1:0] buf3_data;
  //cycle 0 in/ slab rows rd info
  //cycle 1 in/ slab data rd from slab
  wire [15:0] slab1_pixels_2;
  wire [15:0] slab2_pixels_2;
  wire [15:0] slab3_pixels_2;
  // wire [15:0] slab1_data;
  // wire [15:0] slab2_data;
  // wire [15:0] slab3_data;
  //cycle 0 in/ valid row adr
  //cycle 0 out/ buffer rd ctrl
  wire [15:0] buf1_adr_rd;
  wire [15:0] buf2_adr_rd;
  wire [15:0] buf3_adr_rd;
  wire buf1_word_select_rd;
  wire buf2_word_select_rd;
  wire buf3_word_select_rd;
  wire buf1_en_rd;
  wire buf2_en_rd;
  wire buf3_en_rd;
  // reg valid_buf1_data, valid_buf2_data, valid_buf3_data;
  //cycle 1 out/ last row data rd from buffer
  wire [pixels_in_row * 8 - 1:0] last_row1_pixels_32;
  wire [pixels_in_row * 8 - 1:0] last_row2_pixels_32;
  wire [pixels_in_row * 8 - 1:0] last_row3_pixels_32;
  //cycle 0 out/ slab rd ctrl, and to wt
  wire [15:0] slab1_adr_rd;
  wire [15:0] slab2_adr_rd;
  wire [15:0] slab3_adr_rd;
  wire slab1_en_rd;
  wire slab2_en_rd;
  wire slab3_en_rd;
  // reg valid_slab1_data, valid_slab2_data, valid_slab3_data;
  // wire slab1_en_to_wr, slab2_en_to_wr, slab3_en_to_wr;
  // wire [15:0] slab1_adr_to_wr;
  // wire [15:0] slab2_adr_to_wr;
  // wire [15:0] slab3_adr_to_wr;
  //cycle 1 out/ last row slab rd from slab
  wire [15:0] last_row1_slab_2;
  wire [15:0] last_row2_slab_2;
  wire [15:0] last_row3_slab_2;
  //cycle 1 out/ slab wt ctrl
  wire [15:0] slab1_adr_wr;
  wire [15:0] slab2_adr_wr;
  wire [15:0] slab3_adr_wr;
  // reg [15:0] slab1_adr_wr;
  // reg [15:0] slab2_adr_wr;
  // reg [15:0] slab3_adr_wr;
  wire [15:0] slab1_pixels_2_wr;
  wire [15:0] slab2_pixels_2_wr;
  wire [15:0] slab3_pixels_2_wr;
  wire slab1_en_wr, slab2_en_wr, slab3_en_wr;
  // reg slab1_en_wr, slab2_en_wr, slab3_en_wr;
  
  //------------------------------------------------------
  //cycle 0 in/ rows wt info
  wire [511:0] input_word_buf_wr;
  wire input_word_buf_en_wr;
  wire [1:0] input_word_buf_idx_wr;
  wire [15:0] input_word_buf_adr_wr;
  //cycle 0 out/ buf wt ctrl
  wire [511:0] buf1_wr;
  wire [511:0] buf2_wr;
  wire [511:0] buf3_wr;
  wire [15:0] buf1_adr_wr;
  wire [15:0] buf2_adr_wr;
  wire [15:0] buf3_adr_wr;
  wire buf1_en_wr;
  wire buf2_en_wr;
  wire buf3_en_wr;
  //last regs
  reg [3:0] last_west_pad, last_slab_num, last_east_pad;
  reg [15:0] last_row1_idx, last_row2_idx, last_row3_idx;
  reg [15:0] last_row_start_idx, last_row_end_idx;
  reg [15:0] last_reg_start_idx, last_reg_end_idx;
  reg state_valid_row1_adr, state_valid_row2_adr, state_valid_row3_adr;
  reg state_conv_pixels_add_end;
  reg [1:0] last_row1_buf_idx;
  reg [1:0] last_row2_buf_idx;
  reg [1:0] last_row3_buf_idx;
  reg last_buf1_word_select_rd;
  reg last_buf2_word_select_rd;
  reg last_buf3_word_select_rd;
  reg [1:0] last_row1_slab_idx;
  reg [1:0] last_row2_slab_idx;
  reg [1:0] last_row3_slab_idx;
  //last regs, state regs, to cache the info to wait for valid buffer data read
  reg E_reg_set;
  reg [7:0] last_E_reg_start;
  reg [7:0] last_E_reg_size;
  reg [5:0] last_out_sa_row_idx;
  reg [5:0] last_2_out_sa_row_idx;
  reg bias_reg_set;
  reg [7:0] last_bias_reg_start;
  reg [7:0] last_bias_reg_size;
  reg scale_reg_set;
  reg [7:0] last_scale_reg_start;
  reg [7:0] last_scale_reg_size;
  wire [511:0] last_E_word;
  wire [511:0] last_bias_word;
  wire [511:0] last_scale_word;
  //row regs
  wire [shift_regs_num * 8 -1 : 0] row_regs_1;
  wire [shift_regs_num * 8 -1 : 0] row_regs_2;
  wire [shift_regs_num * 8 -1 : 0] row_regs_3;
  wire shift_start;
  //shift regs
  wire re_fm_en, re_fm_end;
  wire [pixels_in_row*8-1:0] re_rowi_pixels[sa_column_num-1 : 0];
  //input buffer 1-3
  wire in_buf1_en_wr;
  wire [11 : 0] in_buf1_adr_wr;
  wire [511 : 0] in_buf1_wr;
  wire in_buf1_en_rd;
  wire [11 : 0] in_buf1_adr_rd;
  wire [511 : 0] in_buf1_rd;
  wire in_buf2_en_wr;
  wire [11 : 0] in_buf2_adr_wr;
  wire [511 : 0] in_buf2_wr;
  wire in_buf2_en_rd;
  wire [11 : 0] in_buf2_adr_rd;
  wire [511 : 0] in_buf2_rd;
  wire in_buf3_en_wr;
  wire [11 : 0] in_buf3_adr_wr;
  wire [511 : 0] in_buf3_wr;
  wire in_buf3_en_rd;
  wire [11 : 0] in_buf3_adr_rd;
  wire [511 : 0] in_buf3_rd;
  //load weights controller
  wire weights_word_ddr_en_rd; //o: read ddr
  wire [31:0] weights_word_ddr_adr_rd;//o
  wire weights_word_buf_en_wt; //o: write buf
  wire [15:0] weights_word_buf_adr_wt;//o
  wire conv_load_weights_fin;
  wire state_conv_load_weights;
  //cv weights handler
  wire weights_word_buf_en_rd; //o: read buf
  wire [15:0] weights_word_buf_adr_rd;//o
  wire [weight_word_length-1 : 0] weights_vector; //o: weights vector to flush into PEs
  //ping pong control, buf write and read
  wire [weight_word_length-1 : 0] weights_word_buf_wt;  //i: weights read from DDR, write into buf
  wire [weight_word_length-1 : 0] weights_word_buf_rd;  //o: ping pong buf out
  wire weights_word_buf_ping_en;  //o
  wire weights_word_buf_ping_en_wr;  //o
  wire [15:0] weights_word_buf_ping_adr;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_ping_in;  //o
  wire weights_word_buf_pong_en;  //o
  wire weights_word_buf_pong_en_wr;  //o
  wire [15:0] weights_word_buf_pong_adr;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_pong_in;  //o
  //weights buf
  wire [weight_word_length-1 : 0] weights_word_buf_ping_out;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_pong_out;  //o
  //conv args refresh
  //args buf rd adr
  wire [15:0] E_buf_adr_rd;
  wire [15:0] bias_buf_adr_rd;
  wire [15:0] scale_buf_adr_rd;
  wire [7:0] E_reg_start;  // 0-63
  wire [7:0] E_reg_size;  // 0-63
  wire [7:0] bias_reg_start;  // 0-63
  wire [7:0] bias_reg_size;  // 0-63
  wire [7:0] scale_reg_start;  // 0-63
  wire [7:0] scale_reg_size;  // 0-63
  wire E_buf_en_rd;
  wire bias_buf_en_rd;
  wire scale_buf_en_rd;
  //wt ctrl space
  wire [15:0] E_buf_adr_wr = 0;
  wire [15:0] bias_buf_adr_wr = 0;
  wire [15:0] scale_buf_adr_wr = 0;
  // E buf
  wire E_buf_en;
  wire E_buf_en_wr = 0;
  wire [8:0] E_buf_adr;
  wire [511:0] E_buf_wr = 0;
  wire [511:0] E_buf_rd;
  //E regs
  wire [E_set_4_channel_width-1 : 0] E_4_channel_sets;
  // bias buf
  wire bias_buf_en;
  wire bias_buf_en_wr = 0;
  wire [8:0] bias_buf_adr;
  wire [511:0] bias_buf_wr = 0;
  wire [511:0] bias_buf_rd;
  //bias regs
  wire [bias_set_4_channel_width-1 : 0] bias_4_channel_sets;  //4 sets of 16bit(1 bias or 2 bias)
  // scale buf
  wire scale_buf_en;
  wire scale_buf_en_wr = 0;
  wire [8:0] scale_buf_adr;
  wire [511:0] scale_buf_wr = 0;
  wire [511:0] scale_buf_rd;
  //scale regs
  wire [scale_set_4_channel_width-1 : 0] scale_4_channel_sets;
  //delay regs pixels
  wire [pixels_column_in_width-1:0]
  delay_rowi_pixels[sa_column_num-1 : 0];
  //delay regs weights
  wire [weights_row_in_width -1:0]
  delay_weights_sets[sa_row_num-1 : 0];
  //sa
  wire [sa_column_in_width -1:0] //sa columns input vector
  sa_columni_ins[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [sa_row_in_width -1:0] //sa rows weights vector
  sa_rowi_ins[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [column_num_in_sa * mult_P_width -1:0] //sa rows sum vector
  sa_row0_outs[sa_column_num-1 : 0][sa_row_num-1 : 0];

  //mult_array
  wire [vector_A_width-1 : 0] vector_A, sum_mult_E_vector_A,sum_mult_E_vector_A_mode0,sum_mult_E_vector_A_mode1;
  wire [vector_B_width-1 : 0] vector_B, sum_mult_E_vector_B,sum_mult_E_vector_B_mode0,sum_mult_E_vector_B_mode1;
  wire [vector_P_width-1 : 0] vector_P, sum_mult_E_vector_P;
  ///mult_sa
  wire [column_num_in_sa * mult_A_width -1:0] //the first row of SAs is used to mult, multer A
  extra_sa_vector_As [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [row_num_in_sa * mult_B_width -1:0] extra_sa_vector_Bs //the first row of SAs is used to mult, multer B
  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [column_num_in_sa * mult_P_width -1:0] //product P
  extra_sa_vector_Ps[sa_column_num-1 : 0][sa_row_num-1 : 0];

  // sa control
  wire sa_en, sa_reset;
  wire channel_out_reset, channel_out_en;  //need logic
  //mult E
  wire sum_mult_E_en;
  //add bias
  wire product_add_bias_en, product_add_bias_reset;
  //quantify ctrl
  wire relu_scale_en;
  //sa out channel
  wire [5:0] out_sa_row_idx;  //output sa row idx [1,16]
  wire mult_array_mode;
  wire relu_scale_add_end;
  wire [sa_out_width - 1:0] out_rowi_channel_seti //pox sum in a sa row, 1 channel or 2 channel
  [sa_column_num-1 : 0][sa_row_num-1 : 0]; 
  wire conv_compute_fin;

  //sum_mult_E_vecOp
  wire [sum_vector_in_mult_A_width_width-1 : 0] //24 bit * 32 pixels * 2 channel
  sum_vector_in_mult_A_width_rowi_channel_setj[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [E_vector_in_mult_B_width_width-1 : 0] //16 bit * 32 pixels * 2 channel
  E_vector_in_mult_B_width_rowi_channel_setj[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [sum_mult_E_vector_in_mult_P_width_width-1 :0] //40 bit * 32 pixels * 2 channel
  sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[sa_column_num-1 : 0][sa_row_num-1 : 0];
  //product add bias
  wire [product_add_bias_vector_width-1 :0] //40 bit * 32 pixels * 2 channel
  product_add_bias_vector_rowi_channel_setj[sa_column_num-1 : 0][sa_row_num-1 : 0];
  
  wire [quantize_vector_width-1 : 0] //8 bit * 32 pixels * 2 channel
  quantize_rowi_channel_setj[sa_column_num-1 : 0][sa_row_num-1 : 0];
  //conv fifo
  wire fifo_rowi_channel_seti_rd_en[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [quantize_vector_width-1 : 0] //fifos out
  fifo_rowi_channel_seti_dout[sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire fifo_rowi_channel_seti_full //fifos full
  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire fifo_rowi_channel_seti_empty //fifos empty
  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  wire [8 : 0] data_counts //fifos counts
  [sa_column_num-1 : 0][sa_row_num-1 : 0];
  //conv fifo out ctrl
  //cycle 0 in conv store
  //cycle 1 in
  wire [quantize_vector_width-1 : 0] fifo_data;
  //cycle 0 out
  wire [sa_row_num * sa_column_num-1:0] fifo_rds;
  //cycle 1 out
  wire valid_conv_out_ddr_adr;
  wire [31:0] conv_out_ddr_adr;
  wire [511:0] conv_out_ddr_data;
  wire [3:0] fifo_column_no, fifo_row_no;
  wire valid_conv_out;
  wire [15:0] out_y_idx, out_x_idx, out_f_idx;
  wire conv_fifo_out_tile_add_end;
  wire [out_data_width-1 : 0] conv_out_data;
  wire conv_store_fin;

  //top control sim
  always @(posedge clk) begin
    if (reset) begin
      conv_decode <= 0;
    end
    else if ((start == 1'b1) && (conv_decode == 1'b0)) begin
      conv_decode <= 1;
    end
    else if (conv_decode == 1'b1) begin
      conv_decode <= 0;
    end
    else begin
      conv_decode <= conv_decode;
    end
  end

  always @(posedge clk) begin
    if (reset) begin
      conv_instr_args <= 512'b0;
    end
    else if (start == 1'b1) begin
      conv_instr_args <= conv_instr_args_mem[0];
    end
    else begin
      conv_instr_args <= conv_instr_args;
    end
  end

  //DDR
  DDR DDR (
      .clka (clk),                    // input wire clka
      .ena  (DDR_en),   // input wire ena
      .wea  (DDR_en_wr),                      // input wire [0 : 0] wea
      .addra(DDR_adr),  // input wire [31 : 0] addra
      .dina (DDR_in),                      // input wire [511 : 0] dina
      .douta(DDR_out)                 // output wire [511 : 0] douta
  );
  assign DDR_en          = ((input_word_ddr_en_rd == 1'b1) || (weights_word_ddr_en_rd == 1'b1) || (valid_conv_out_ddr_adr == 1'b1)) ? 1'b1 : 1'b0;
  assign DDR_en_wr       = (valid_conv_out_ddr_adr == 1'b1)? 1 : 0;
  assign DDR_adr         = (input_word_ddr_en_rd == 1)? input_word_ddr_adr_rd :
   (weights_word_ddr_en_rd == 1)? weights_word_ddr_adr_rd : 
   (valid_conv_out_ddr_adr == 1)? conv_out_ddr_adr : 0;
  assign DDR_in          = (valid_conv_out_ddr_adr == 1)? conv_out_ddr_data : 512'b0;
  //DDR sim
  // assign load_input_word = (valid_load_input == 1'b1) ? DDR_mem_out : 512'b0;
  // assign weights_word_buf_wt = (valid_load_weights == 1'b1) ? DDR_mem_out : 512'b0;
  //DDR
  assign load_input_word = (valid_load_input) ? DDR_out : 512'b0; 
  assign weights_word_buf_wt = (valid_load_weights) ? DDR_out : 512'b0;

  //DDR input load
  //DDR sim version
  always @(posedge clk) begin
    if (reset) begin
      valid_load_input <= 0;
    end else begin
      valid_load_input <= input_word_ddr_en_rd;  //DDR sim
    end
  end
  //true DDR version
  // assign valid_load_input = ((state_conv_load_input == 1) && (DDR_valid == 1));
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
  //DDR weights load
  //DDR sim version
  always @(posedge clk) begin
    if (reset) begin
      valid_load_weights <= 0;
    end else begin
      valid_load_weights <= weights_word_ddr_en_rd;  //DDR sim
    end
  end
  // true DDR version
  // assign valid_load_weights = ((state_conv_load_weights == 1) && (DDR_valid == 1));

  //conv decoder
  conv_quantize_relu_decoder cv_quantize_relu_decoder (
      .clk                               (clk),
      .reset                             (reset),
      .conv_decode                       (conv_decode),
      .conv_instr_args(conv_instr_args),
      .conv_start                        (conv_start),
      .mode                              (mode),
      .k                                 (k),
      .s                                 (s),
      .p                                 (p),
      .of                                (of),
      .of_in_2pow(of_in_2pow),
      .ox                                (ox),
      .ox_in_2pow(ox_in_2pow),
      .oy                                (oy),
      .ix                                (ix),
      .ix_in_2pow                        (ix_in_2pow),
      .iy                                (iy),
      .nif                               (nif),
      .nif_in_2pow                       (nif_in_2pow),
      .nif_mult_k_mult_k                 (nif_mult_k_mult_k),
      .N_chunks                          (N_chunks),
      .E_layer_base_buf_adr_rd           (E_layer_base_buf_adr_rd),
      .bias_layer_base_buf_adr_rd        (bias_layer_base_buf_adr_rd),
      .scale_layer_base_buf_adr_rd       (scale_layer_base_buf_adr_rd),
      .weights_layer_base_ddr_adr_rd     (weights_layer_base_ddr_adr_rd),
      .input_ddr_layer_base_adr          (input_ddr_layer_base_adr),
      .output_ddr_layer_base_adr(output_ddr_layer_base_adr),
      .of_div_row_num_ceil               (of_div_row_num_ceil),
      .tiley_first_tilex_first_split_size(tiley_first_tilex_first_split_size),
      .tiley_first_tilex_last_split_size (tiley_first_tilex_last_split_size),
      .tiley_first_tilex_mid_split_size  (tiley_first_tilex_mid_split_size),
      .tiley_last_tilex_first_split_size (tiley_last_tilex_first_split_size),
      .tiley_last_tilex_last_split_size  (tiley_last_tilex_last_split_size),
      .tiley_last_tilex_mid_split_size   (tiley_last_tilex_mid_split_size),
      .tiley_mid_tilex_first_split_size  (tiley_mid_tilex_first_split_size),
      .tiley_mid_tilex_last_split_size   (tiley_mid_tilex_last_split_size),
      .tiley_mid_tilex_mid_split_size    (tiley_mid_tilex_mid_split_size),
      .tilex_first_ix_word_num           (tilex_first_ix_word_num),
      .tilex_last_ix_word_num            (tilex_last_ix_word_num),
      .tilex_mid_ix_word_num             (tilex_mid_ix_word_num),
      .tiley_first_iy_row_num            (tiley_first_iy_row_num),
      .tiley_last_iy_row_num             (tiley_last_iy_row_num),
      .tiley_mid_iy_row_num              (tiley_mid_iy_row_num),
      .ix_index_num                     (ix_index_num),
      .iy_index_num                     (iy_index_num)
  );

  //conv controller
  conv_controller cv_controller (
      .clk                  (clk),
      .reset                (reset),
      .N_chunks             (N_chunks),
      .conv_start           (conv_start),
      .of_div_row_num_ceil  (of_div_row_num_ceil),
      .conv_load_weights_fin(conv_load_weights_fin),
      .conv_load_input_fin  (conv_load_input_fin),
      .conv_compute_fin     (conv_compute_fin),
      .conv_store_fin       (conv_store_fin),

      .conv_load_weights(conv_load_weights),
      .conv_load_input  (conv_load_input),
      .conv_compute     (conv_compute),
      .conv_store       (conv_store),
      .last_conv_store(last_conv_store),
      .last_conv_compute(last_conv_compute),
      .conv_fin(conv_fin)
  );
  //conv load input ctrl
  conv_load_input_controller cv_load_input_ctrl (
      .clk                                    (clk),
      .conv_load_input                        (conv_load_input),
      .reset                                  ((reset == 1) || (conv_start == 1)),
      .ddr_en                                 (ddr_en),
      .load_input_info_fifo_empty(load_input_info_fifo_empty),
      .mode_init                              (mode),
      .of_init                                (of),
      .ox_init                                (ox),
      .oy_init                                (oy),
      .ix_init                                (ix),
      .iy_init                                (iy),
      .nif_init                               (nif),
      .k_init                                 (k),
      .s_init                                 (s),
      .p_init                                 (p),
      .nif_in_2pow_init                       (nif_in_2pow),
      .ix_in_2pow_init                        (ix_in_2pow),
      .input_ddr_layer_base_adr_init          (input_ddr_layer_base_adr),
      .of_div_row_num_ceil_init               (of_div_row_num_ceil),
      .tiley_first_tilex_first_split_size_init(tiley_first_tilex_first_split_size),
      .tiley_first_tilex_last_split_size_init (tiley_first_tilex_last_split_size),
      .tiley_first_tilex_mid_split_size_init  (tiley_first_tilex_mid_split_size),
      .tiley_last_tilex_first_split_size_init (tiley_last_tilex_first_split_size),
      .tiley_last_tilex_last_split_size_init  (tiley_last_tilex_last_split_size),
      .tiley_last_tilex_mid_split_size_init   (tiley_last_tilex_mid_split_size),
      .tiley_mid_tilex_first_split_size_init  (tiley_mid_tilex_first_split_size),
      .tiley_mid_tilex_last_split_size_init   (tiley_mid_tilex_last_split_size),
      .tiley_mid_tilex_mid_split_size_init    (tiley_mid_tilex_mid_split_size),
      .tilex_first_ix_word_num_init           (tilex_first_ix_word_num),
      .tilex_last_ix_word_num_init            (tilex_last_ix_word_num),
      .tilex_mid_ix_word_num_init             (tilex_mid_ix_word_num),
      .tiley_first_iy_row_num_init            (tiley_first_iy_row_num),
      .tiley_last_iy_row_num_init             (tiley_last_iy_row_num),
      .tiley_mid_iy_row_num_init              (tiley_mid_iy_row_num),
      .ix_index_num_init                     (ix_index_num),
      .iy_index_num_init                     (iy_index_num),
      .load_input_row_idx                     (load_input_row_idx),
      .load_input_row_start_idx               (load_input_row_start_idx),
      .load_input_if_idx                      (load_input_if_idx),
      .load_input_row_buf_adr                 (load_input_row_buf_adr),
      .load_input_row_buf_idx                 (load_input_row_buf_idx),
      .input_word_ddr_en_rd                   (input_word_ddr_en_rd),
      .input_word_ddr_adr_rd                  (input_word_ddr_adr_rd),
      .input_word_load_info_fifo_en_wt        (input_word_load_info_fifo_en_wt),
      .input_word_load_info_fifo_wt           (input_word_load_info_fifo_wt),
      .conv_load_input_fin                    (conv_load_input_fin),
      .state_conv_load_input(state_conv_load_input)
  );
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
  //conv load weights ctrl
  conv_load_weights_controller cv_load_weights_controller (
      .clk               (clk),
      .reset             ((reset == 1) || (conv_start == 1)),
      .conv_load_weights (conv_load_weights),  //load weight start
      .ddr_en            (ddr_en),             //mig fifo can accept new load instr
      .valid_load_weights(valid_load_weights), //ddr weights is loaded from ddr
      .weights_layer_base_ddr_adr_rd_init(weights_layer_base_ddr_adr_rd),
      .mode_init                         (mode),
      .nif_mult_k_mult_k_init            (nif_mult_k_mult_k),
      .of_init                           (of),
      .weights_word_ddr_en_rd (weights_word_ddr_en_rd),   //read ddr instr
      .weights_word_ddr_adr_rd(weights_word_ddr_adr_rd),
      .weights_word_buf_en_wt (weights_word_buf_en_wt),   //write buf instr
      .weights_word_buf_adr_wt(weights_word_buf_adr_wt),
      .conv_load_weights_fin  (conv_load_weights_fin),
      .state_conv_load_weights(state_conv_load_weights)
  );
  //conv compute ctrl
  // conv_compute_core_controller cv_compute_core1_controller (  //conv_router_v2 // conv_router_flat
  //   .clk                 (clk),
  //   .reset               ((reset == 1) || (conv_start == 1)),
  //   .conv_compute        (conv_compute),
  //   .mode_init           (mode),
  //   .of_init             (of),
  //   .ox_init             (ox),
  //   .oy_init             (oy),
  //   .ix_init             (ix),
  //   .iy_init             (iy),
  //   .nif_init            (nif),
  //   .k_init              (k),
  //   .s_init              (s),
  //   .p_init              (p),
  //   .nif_in_2pow_init    (nif_in_2pow),
  //   .ix_in_2pow_init     (ix_in_2pow),
  //   .ox_start            (ox_start),
  //   .oy_start            (oy_start),
  //   .of_start            (of_start),
  //   .pox                 (pox),
  //   .poy                 (poy),
  //   .pof                 (pof),
  //   .if_idx              (if_idx),
  //   .west_pad            (west_pad),
  //   .slab_num            (slab_num),
  //   .east_pad            (east_pad),
  //   .row1_idx            (row1_idx),
  //   .row_start_idx       (row_start_idx),
  //   .row_end_idx         (row_end_idx),
  //   .reg_start_idx       (reg_start_idx),
  //   .reg_end_idx         (reg_end_idx),
  //   .row1_buf_adr        (row1_buf_adr),
  //   .row1_buf_idx        (row1_buf_idx),
  //   .row1_buf_word_select(row1_buf_word_select),
  //   .row_slab_start_idx  (row_slab_start_idx),
  //   .row1_slab_adr       (row1_slab_adr),
  //   .row1_slab_idx       (row1_slab_idx),
  //   .row1_slab_adr_to_wr(row1_slab_adr_to_wr),
  //   .row1_slab_idx_to_wr(row1_slab_idx_to_wr),
  //   .valid_row1_adr      (valid_row1_adr),
  //   .com_control_end            (com_control_end),
  //   .conv_pixels_add_end (conv_pixels_add_end),
  //   .conv_nif_add_end    (conv_nif_add_end)
  // );
  // conv_compute_core2_controller cv_compute_core2_controller (  //conv_router_v2 // conv_router_flat
  //   .clk                 (clk),
  //   .reset               ((reset == 1) || (conv_start == 1)),
  //   .conv_compute        (conv_compute),
  //   .mode_init           (mode),
  //   .of_init             (of),
  //   .ox_init             (ox),
  //   .oy_init             (oy),
  //   .ix_init             (ix),
  //   .iy_init             (iy),
  //   .nif_init            (nif),
  //   .k_init              (k),
  //   .s_init              (s),
  //   .p_init              (p),
  //   .nif_in_2pow_init    (nif_in_2pow),
  //   .ix_in_2pow_init     (ix_in_2pow),
  //   .row2_idx            (row2_idx),
  //   .row2_buf_adr        (row2_buf_adr),
  //   .row2_buf_idx        (row2_buf_idx),
  //   .row2_buf_word_select(row2_buf_word_select),
  //   .row2_slab_adr       (row2_slab_adr),
  //   .row2_slab_idx       (row2_slab_idx),
  //   .row2_slab_adr_to_wr(row2_slab_adr_to_wr),
  //   .row2_slab_idx_to_wr(row2_slab_idx_to_wr),
  //   .valid_row2_adr      (valid_row2_adr)
  // );
  // conv_compute_core3_controller cv_compute_core3_controller (  //conv_router_v2 // conv_router_flat
  //   .clk                 (clk),
  //   .reset               ((reset == 1) || (conv_start == 1)),
  //   .conv_compute        (conv_compute),
  //   .mode_init           (mode),
  //   .of_init             (of),
  //   .ox_init             (ox),
  //   .oy_init             (oy),
  //   .ix_init             (ix),
  //   .iy_init             (iy),
  //   .nif_init            (nif),
  //   .k_init              (k),
  //   .s_init              (s),
  //   .p_init              (p),
  //   .nif_in_2pow_init    (nif_in_2pow),
  //   .ix_in_2pow_init     (ix_in_2pow),
  //   .row3_idx            (row3_idx),
  //   .row3_buf_adr        (row3_buf_adr),
  //   .row3_buf_idx        (row3_buf_idx),
  //   .row3_buf_word_select(row3_buf_word_select),
  //   .row3_slab_adr       (row3_slab_adr),
  //   .row3_slab_idx       (row3_slab_idx),
  //   .row3_slab_adr_to_wr(row3_slab_adr_to_wr),
  //   .row3_slab_idx_to_wr(row3_slab_idx_to_wr),
  //   .valid_row3_adr      (valid_row3_adr)
  // );

  conv_compute_kernel_controller cv_compute_kernel_controller(
    .clk                 (clk),
    .reset               ((reset == 1) || (conv_start == 1)),
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
    .row_start_idx       (row_start_idx),
    .row_end_idx         (row_end_idx),
    .reg_start_idx       (reg_start_idx),
    .reg_end_idx         (reg_end_idx),
    .row_slab_start_idx  (row_slab_start_idx),
    .valid_adr(valid_adr),
    .iy_start(iy_start),
    .ky(ky),
    .if_start(if_start),
    .row_base_in_3s(row_base_in_3s),
    .com_control_end            (com_control_end),
    .conv_pixels_add_end (conv_pixels_add_end),
    .conv_nif_add_end    (conv_nif_add_end)
  );

  conv_compute_shell1_controller cv_compute_shell1_controller(
    .s(s),
    .p(p),
    .iy(iy),
    .nif_in_2pow(nif_in_2pow),
    .ix_in_2pow(ix_in_2pow),
    .poy(poy),
    .valid_adr(valid_adr),
    .iy_start(iy_start),
    .ky(ky),
    .row_base_in_3s(row_base_in_3s),
    .row_start_idx(row_start_idx),
    .if_start(if_start),
    .slab_num(slab_num),
    .row_slab_start_idx(row_slab_start_idx),

    .row1_idx            (row1_idx),
    .row1_buf_adr        (row1_buf_adr),
    .row1_buf_idx        (row1_buf_idx),
    .row1_buf_word_select(row1_buf_word_select),
    .row1_slab_adr       (row1_slab_adr),
    .row1_slab_idx       (row1_slab_idx),
    .row1_slab_adr_to_wr(row1_slab_adr_to_wr),
    .row1_slab_idx_to_wr(row1_slab_idx_to_wr),
    .valid_row1_adr      (valid_row1_adr)
  );

  conv_compute_shell2_controller cv_compute_shell2_controller(
    .s(s),
    .p(p),
    .iy(iy),
    .nif_in_2pow(nif_in_2pow),
    .ix_in_2pow(ix_in_2pow),
    .poy(poy),
    .valid_adr(valid_adr),
    .iy_start(iy_start),
    .ky(ky),
    .row_base_in_3s(row_base_in_3s),
    .row_start_idx(row_start_idx),
    .if_start(if_start),
    .slab_num(slab_num),
    .row_slab_start_idx(row_slab_start_idx),

    .row2_idx            (row2_idx),
    .row2_buf_adr        (row2_buf_adr),
    .row2_buf_idx        (row2_buf_idx),
    .row2_buf_word_select(row2_buf_word_select),
    .row2_slab_adr       (row2_slab_adr),
    .row2_slab_idx       (row2_slab_idx),
    .row2_slab_adr_to_wr(row2_slab_adr_to_wr),
    .row2_slab_idx_to_wr(row2_slab_idx_to_wr),
    .valid_row2_adr      (valid_row2_adr)
  );

  conv_compute_shell3_controller cv_compute_shell3_controller(
    .s(s),
    .p(p),
    .iy(iy),
    .nif_in_2pow(nif_in_2pow),
    .ix_in_2pow(ix_in_2pow),
    .poy(poy),
    .valid_adr(valid_adr),
    .iy_start(iy_start),
    .ky(ky),
    .row_base_in_3s(row_base_in_3s),
    .row_start_idx(row_start_idx),
    .if_start(if_start),
    .slab_num(slab_num),
    .row_slab_start_idx(row_slab_start_idx),

    .row3_idx            (row3_idx),
    .row3_buf_adr        (row3_buf_adr),
    .row3_buf_idx        (row3_buf_idx),
    .row3_buf_word_select(row3_buf_word_select),
    .row3_slab_adr       (row3_slab_adr),
    .row3_slab_idx       (row3_slab_idx),
    .row3_slab_adr_to_wr(row3_slab_adr_to_wr),
    .row3_slab_idx_to_wr(row3_slab_idx_to_wr),
    .valid_row3_adr      (valid_row3_adr)
  );

  //store chunk index
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
    end else if ((conv_compute == 1'b1) || (last_conv_store == 1'b1)) begin
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

  //conv buffers mapping interface
  //////////////////////////////////////////////////////////////
  conv_buffers_interface cv_buffers_interface (
      .reset                ((reset == 1) || (conv_start == 1)),
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
      //cycle 0 in/ slab rows rd info, and to wt info
      .row1_slab_adr        (row1_slab_adr),
      .row1_slab_idx        (row1_slab_idx),
      .row2_slab_adr        (row2_slab_adr),
      .row2_slab_idx        (row2_slab_idx),
      .row3_slab_adr        (row3_slab_adr),
      .row3_slab_idx        (row3_slab_idx),
      .row1_slab_adr_to_wr(row1_slab_adr_to_wr),
      .row1_slab_idx_to_wr(row1_slab_idx_to_wr),
      .row2_slab_adr_to_wr(row2_slab_adr_to_wr),
      .row2_slab_idx_to_wr(row2_slab_idx_to_wr),
      .row3_slab_adr_to_wr(row3_slab_adr_to_wr),
      .row3_slab_idx_to_wr(row3_slab_idx_to_wr),
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
      //cycle 1 out/ slab wt ctrl
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
  /////////////////////////////////////////////////////////

  wire [3:0] state = 4'b0001;
  //last regs, state regs, to cache the info to wait for valid buffer data read
  always @(posedge clk) begin
    if ((reset == 1) || (conv_start == 1)) begin
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
      E_reg_set                <= 0;
      last_E_reg_start <= 0;
      last_E_reg_size  <= 0;
      last_out_sa_row_idx <= 0;
      last_2_out_sa_row_idx <= 0;
      bias_reg_set                <= 0;
      last_bias_reg_start         <= 0;
      last_bias_reg_size          <= 0;
      scale_reg_set                <= 0;
      last_scale_reg_start <= 0;
      last_scale_reg_size  <= 0;
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
      E_reg_set                <= E_buf_en_rd;
      last_E_reg_start <= E_reg_start;
      last_E_reg_size  <= E_reg_size;
      last_out_sa_row_idx <= out_sa_row_idx;
      last_2_out_sa_row_idx <= last_out_sa_row_idx;
      bias_reg_set                <= bias_buf_en_rd;
      last_bias_reg_start         <= bias_reg_start;
      last_bias_reg_size          <= bias_reg_size;
      scale_reg_set                <= scale_buf_en_rd;
      last_scale_reg_start <= scale_reg_start;
      last_scale_reg_size  <= scale_reg_size;
    end
  end

  //img2col
  //row regs
  Row_Regs row_regs (
      .reset                    ((reset == 1) || (conv_start == 1)),
      .clk                      (clk),
      // .k                        (k),
      // .s                        (s),
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
//shift regs
  Shift_Regs shift_regs (
      .reset      ((reset == 1) || (conv_start == 1)),
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
//input buf 1
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
  assign buf1_pixels_32 = 
  (last_buf1_word_select_rd == 1'b0) ? 
  in_buf1_rd[pixels_in_row*8-1 : 0] : //half word 1
  in_buf1_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8]; //half word 2
//input buf 2
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
  assign buf2_pixels_32 = 
  (last_buf2_word_select_rd == 1'b0) ? 
  in_buf2_rd[pixels_in_row*8-1 : 0] : //half word 1
  in_buf2_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8]; //half word 2
//input buf 3
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
  assign buf3_pixels_32 = 
  (last_buf3_word_select_rd == 1'b0) ? 
  in_buf3_rd[pixels_in_row*8-1 : 0] : //half word 1
  in_buf3_rd[pixels_in_row*8*buf_rd_ratio-1 : pixels_in_row*8]; //half word 2
//slab buf 1
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
//slab buf 2
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
//slab buf 3
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
  //cv_weights_handler
  cv_weights_handler cv_weights_handler (
      .clk                    (clk),
      .reset                  ((reset == 1) || (conv_start == 1)),
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
//ping-pong weights buf interface
  conv_weights_ping_pong_controller cv_weights_ping_pong_controller (
      .reset            ((reset == 1) || (conv_start == 1)),
      .clk              (clk),
      .conv_load_weights(conv_load_weights),   //change the ping-pong state
      .last_conv_compute(last_conv_compute),
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
//ping weights buf
  weights_buffer_ping weights_buffer_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_ping_en),     // input wire ena
      .wea  (weights_word_buf_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_ping_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_word_buf_ping_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_ping_out)     // output wire [511 : 0] douta
  );
//pong weights buf
  weights_buffer_pong weights_buffer_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_pong_en),     // input wire ena
      .wea  (weights_word_buf_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_pong_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_word_buf_pong_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_pong_out)     // output wire [511 : 0] douta
  );

  //conv args refresh in computing
  conv_args_refresher cv_args_refresher (
      .clk                            (clk),
      .reset                          ((reset == 1) || (conv_start == 1)),
      .args_refresh                   (conv_compute),
      .mode_init                      (mode),
      .of_init                        (of),
      .E_layer_base_buf_adr_rd_init(E_layer_base_buf_adr_rd),
      .bias_layer_base_buf_adr_rd_init(bias_layer_base_buf_adr_rd),
      .scale_layer_base_buf_adr_rd_init(scale_layer_base_buf_adr_rd),
      //args buf rd adr
      .E_buf_adr_rd(E_buf_adr_rd),
      .bias_buf_adr_rd        (bias_buf_adr_rd),
      .scale_buf_adr_rd(scale_buf_adr_rd),
      .E_reg_start         (E_reg_start),           // 0-63
      .E_reg_size          (E_reg_size),            // 0-63
      .bias_reg_start         (bias_reg_start),           // 0-63
      .bias_reg_size          (bias_reg_size),            // 0-63
      .scale_reg_start         (scale_reg_start),           // 0-63
      .scale_reg_size          (scale_reg_size),            // 0-63
      .E_buf_en_rd(E_buf_en_rd),
      .bias_buf_en_rd        (bias_buf_en_rd),
      .scale_buf_en_rd(scale_buf_en_rd)
  );

//E buf
  E_buffer E_buffer (
      .clka (clk),                     // input wire clka
      .ena  (E_buf_en),     // input wire ena
      .wea  (E_buf_en_wr),  // input wire [0 : 0] wea
      .addra(E_buf_adr),    // input wire [8 : 0] addra
      .dina (E_buf_wr),     // input wire [511 : 0] dina
      .douta(E_buf_rd)      // output wire [511 : 0] douta
  );
  assign E_buf_adr = 
  ((E_buf_en_rd == 1'b0) && (E_buf_en_wr == 1'b1)) ? E_buf_adr_wr[8 : 0] : //wt E buf
  ((E_buf_en_rd == 1'b1) && (E_buf_en_wr == 1'b0)) ? E_buf_adr_rd[8 : 0] : 0; //rd E buf
  assign E_buf_en  = ((E_buf_en_rd == 1'b1) || (E_buf_en_wr == 1'b1)) ? 1 : 0;
  assign E_buf_en_wr = 1'b0;
  assign E_buf_wr = 512'b0;

  //bias buf
  bias_buffer bias_buffer (
      .clka (clk),             // input wire clka
      .ena  (bias_buf_en),     // input wire ena
      .wea  (bias_buf_en_wr),  // input wire [0 : 0] wea
      .addra(bias_buf_adr),    // input wire [8 : 0] addra
      .dina (bias_buf_wr),     // input wire [511 : 0] dina
      .douta(bias_buf_rd)      // output wire [511 : 0] douta
  );
  assign bias_buf_adr = 
  ((bias_buf_en_rd == 1'b0) && (bias_buf_en_wr == 1'b1)) ?bias_buf_adr_wr[8 : 0] : //wt bias buf
  ((bias_buf_en_rd == 1'b1) && (bias_buf_en_wr == 1'b0)) ?bias_buf_adr_rd[8 : 0] : 0; //rd bias buf
  assign bias_buf_en  = ((bias_buf_en_rd == 1'b1) || (bias_buf_en_wr == 1'b1)) ? 1 : 0;
  assign bias_buf_en_wr = 0;
  assign bias_buf_wr = 512'b0;

  //scale buf
  scale_buffer scale_buffer (
      .clka (clk),                     // input wire clka
      .ena  (scale_buf_en),     // input wire ena
      .wea  (scale_buf_en_wr),  // input wire [0 : 0] wea
      .addra(scale_buf_adr),    // input wire [8 : 0] addra
      .dina (scale_buf_wr),     // input wire [511 : 0] dina
      .douta(scale_buf_rd)      // output wire [511 : 0] douta
  );
  assign scale_buf_adr = 
  ((scale_buf_en_rd == 1'b0) && (scale_buf_en_wr == 1'b1)) ? scale_buf_adr_wr[8 : 0] : //wt scale buf
  ((scale_buf_en_rd == 1'b1) && (scale_buf_en_wr == 1'b0)) ? scale_buf_adr_rd[8 : 0] : 0; //rd scale buf
  assign scale_buf_en  = ((scale_buf_en_rd == 1'b1) || (scale_buf_en_wr == 1'b1)) ? 1 : 0;
  assign scale_buf_en_wr = 1'b0;
  assign scale_buf_wr = 512'b0;

  //E regs
  E_Regs E_regs (
      .clk                   (clk),
      .reset                 ((reset == 1) || (conv_start == 1)),
      .E_set              (E_reg_set),                 // next tile need clr
      .mode                  (mode),
      .E_word     (last_E_word),
      .E_reg_start(last_E_reg_start),
      .E_reg_size (last_E_reg_size),
      .out_sa_row_idx             (out_sa_row_idx),
      .E_4_channel_sets(E_4_channel_sets)
  );
  //bias regs
  Bias_Regs bias_regs (
      .clk           (clk),
      .reset         ((reset == 1) || (conv_start == 1)),
      .bias_set      (bias_reg_set),         // next tile need clr
      .mode          (mode),
      .bias_word     (last_bias_word),
      .bias_reg_start(last_bias_reg_start),
      .bias_reg_size (last_bias_reg_size),
      .out_sa_row_idx     (last_out_sa_row_idx),
      .bias_4_channel_sets(bias_4_channel_sets)
  );
  //scale regs
  Scale_Regs scale_regs (
      .clk                   (clk),
      .reset                 ((reset == 1) || (conv_start == 1)),
      .scale_set              (scale_reg_set),
      .mode                  (mode),
      .scale_word     (last_scale_word),
      .scale_reg_start(last_scale_reg_start),
      .scale_reg_size (last_scale_reg_size),
      .out_sa_row_idx             (last_2_out_sa_row_idx),
      .scale_4_channel_sets(scale_4_channel_sets)
  );
  //last regs, state regs, to cache the info to wait for valid buffer data read
  assign last_bias_word         = bias_buf_rd;
  assign last_E_word = E_buf_rd;
  assign last_scale_word = scale_buf_rd;

  //computation core
  genvar i, j, m;
  generate
    for (i = 1; i <= sa_column_num; i = i + 1) begin : delay_regs_column  //poy, rows
      Delay_Regs_Pixels delay_regs_pixels (
          .clk             (clk),
          .reset           ((sa_reset == 1) || (reset == 1) || (conv_start == 1)),
          .en              (sa_en),
          .re_row_pixels   (re_rowi_pixels[i-1]),
          .delay_row_pixels(delay_rowi_pixels[i-1])
      );
      //            assign sa_columni_ins[i-1] = (mult_array_mode == 1'b0) ?
      //            {{(sa_column_in_width-pixels_column_in_width){1'b0}}, delay_rowi_pixels[i-1]} :
      //            extra_sa_vector_As[i-1][j-1];
      for (j = 1; j <= sa_row_num; j = j + 1) begin  //output channel
        // assign sa_columni_ins[i-1][j-1] = 
        // (sum_mult_E_en == 1'b0) ? 
        // {{(sa_column_in_width - pixels_column_in_width) {1'b0}}, delay_rowi_pixels[i-1]} 
        // : extra_sa_vector_As[i-1][j-1];
          assign sa_columni_ins[i-1][j-1] = 
          //input
          // {{(sa_column_in_width - pixels_column_in_width) {1'b0}}, delay_rowi_pixels[i-1]};
          delay_rowi_pixels[i-1];
      end
    end
    for (j = 1; j <= sa_row_num; j = j + 1) begin : delay_regs_row  //output channel
      Delay_Regs_Weights delay_regs_weights (
          .clk          (clk),
          .reset        ((sa_reset == 1) || (reset == 1) || (conv_start == 1)),
          .en           (sa_en),
          .weights      (weights_vector[(j-1)*row_num_in_sa*8+:(row_num_in_sa*8)]),
          .delay_weights(delay_weights_sets[j-1])
      );
      for (i = 1; i <= sa_column_num; i = i + 1) begin  //poy, rows
        // assign sa_rowi_ins[i-1][j-1] = 
        // //weights
        // (sum_mult_E_en == 1'b0) ? delay_weights_sets[j-1] : 
        // //Es
        // {{(sa_row_in_width - mult_B_width) {1'b0}}, extra_sa_vector_Bs[i-1][j-1]};
          assign sa_rowi_ins[i-1][j-1] = delay_weights_sets[j-1];
      end
    end
    for (i = 1; i <= sa_column_num; i = i + 1) begin : sa_column  //poy, rows
      for (j = 1; j <= sa_row_num; j = j + 1) begin : sa_row  //output channel
        SA_sum_E sa (
            .clk              (clk),
            .reset            ((sa_reset == 1) || (reset == 1) || (conv_start == 1)),
            .en               (sa_en),
            .mode             (mode),
            .channel_out_reset((channel_out_reset == 1) || (reset == 1) || (conv_start == 1)),
            .channel_out_en   (channel_out_en),
            .out_sa_row_idx   (out_sa_row_idx),
            .row_in           (sa_rowi_ins[i-1][j-1]),                   //weights
            .column_in        (sa_columni_ins[i-1][j-1]),                //pixels
            .sa_E_in(extra_sa_vector_Bs[i-1][j-1]),
            .sa_sum_in(extra_sa_vector_As[i-1][j-1]),
            .mult_array_mode  (mult_array_mode),
            .row0_out         (sa_row0_outs[i-1][j-1]),
            .out              (out_rowi_channel_seti[i-1][j-1])
        );

        assign extra_sa_vector_Ps[i-1][j-1] = (product_add_bias_en == 1'b1) ? sa_row0_outs[i-1][j-1] : 0;
        sum_mult_E_vecOp sum_mult_E_vecOp(
            .mode(mode),
            .E_set(E_4_channel_sets[(j-1)*E_set_width+:E_set_width]),
            .sum_vector(out_rowi_channel_seti[i-1][j-1]),
            .sum_vector_in_mult_A_width(sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]),
            .E_vector_in_mult_B_width(E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1])
        );
        //sum mult E vecOp////////////////////////////////////////
        // //cycle 0
        // //sum_vector * E in mult_array outside
        // // sum_vector_in_24[24 * pe_parallel_pixel_88 * column_num -1 : 0]
        // //24 bit * 32 pixels * 1 channel or 16 bit * 32 pixels * 2 channel
        // for (m = 0; m < pe_parallel_pixel_88 * column_num_in_sa; m = m + 1) begin
        //   assign sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1][m*mult_A_width+:mult_A_width] =
        //       // 0{sign},sum_88
        //       (mode == 0) ? out_rowi_channel_seti[i-1][j-1][m*pixel_width_88+:pixel_width_88] :
        //       // 8{sign},sum_18_1
        //       (mode == 1) ? {{8{out_rowi_channel_seti[i-1][j-1][m*pixel_width_18+pixel_width_18-1]}},
        //       //sum
        //       out_rowi_channel_seti[i-1][j-1][m*pixel_width_18+:pixel_width_18]} : 0;
        // end
        // // sum_vector_in_24[sum_vector_in_24_width-1 : 24 * pe_parallel_pixel_18 * column_num]
        // for (m = 0; m < pe_parallel_pixel_18 * column_num_in_sa; m = m + 1) begin
        //   assign sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1][(pe_parallel_pixel_18*column_num_in_sa+m)*mult_A_width+:mult_A_width] =
        //       // 8{sign},sum_18_2
        //       (mode == 1) ? {{8{out_rowi_channel_seti[i-1][j-1][sum_vector_width_18_2+m*pixel_width_18+pixel_width_18-1]}},
        //       // sum_18_2
        //       out_rowi_channel_seti[i-1][j-1][sum_vector_width_18_2+m*pixel_width_18+:pixel_width_18]} : 0;
        // end

        // // E_vector_in_16[16 * pe_parallel_pixel_18 * column_num -1 : 0]
        // //16 bit * 32 pixels * 2 channel
        // for (m = 0; m < pe_parallel_pixel_88 * column_num_in_sa; m = m + 1) begin
        //   assign E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1][m*mult_B_width+:mult_B_width] =
        //       //{0,E}; E_88 equals E_18_1
        //       {
        //         {(mult_B_width - E_width) {1'b0}},
        //         // E_4_channel_sets[(j-1)*E_set_width+:E_set_width][E_width-1 : 0]
        //         E_4_channel_sets[(j-1)*E_set_width+:E_width]
        //       };
        // end
        // // E_vector_in_16[E_vector_in_16_width-1 : 16 * pe_parallel_pixel_18 * column_num]
        // for (m = 0; m < pe_parallel_pixel_18 * column_num_in_sa; m = m + 1) begin
        //   assign E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1][(pe_parallel_pixel_18*column_num_in_sa+m)*mult_B_width+:mult_B_width] =
        //       //{0,E}
        //       (mode == 1) ? {{(mult_B_width - E_width) {1'b0}}, 
        //       // E_4_channel_sets[(j-1)*E_set_width+:E_set_width][E_set_width-1 : E_width]} : 0;
        //       E_4_channel_sets[((j-1)*E_set_width+E_width)+:E_width]} : 0;
        // end
        //////////////////////////////////////////////////////////
        //xxxxxxxxxxxxxxxxxxxx mapping changed because of the s16_u8_lut_dsp
        //1-48 -> mult_array[1,48]; 49-64 -> sa_row0; [1, 64] = add_bias_row_in_mult_A_width_width
        assign sum_mult_E_vector_A_mode0
        [((i-1)*sa_row_num+(j-1))*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)+: //32*24
        ((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)] = 
        (sum_mult_E_en == 1'b1) ? sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)] : 
        {((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width){1'b0}};

        assign sum_mult_E_vector_A_mode1
        //mult array
        [((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_A_width)+:(mult_array_length_per_sa*mult_A_width)] = 
        //sum vector
        (sum_mult_E_en == 1'b1) ? sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:(mult_array_length_per_sa*mult_A_width)] : 
        {(mult_array_length_per_sa*mult_A_width){1'b0}};

        assign extra_sa_vector_As[i-1][j-1] = 
        //sa mult
        (sum_mult_E_en == 1'b1) ? sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        //48*24+:
        [(mult_array_length_per_sa*mult_A_width)+:(column_num_in_sa*mult_A_width)] : 
        {(column_num_in_sa * mult_A_width){1'b0}};
        
        assign sum_mult_E_vector_B_mode0
        [((i-1)*sa_row_num+(j-1))*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)+: //32*16
        ((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)] = 
        (sum_mult_E_en == 1'b1) ? E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)] : 
        {((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width){1'b0}};
        
        assign sum_mult_E_vector_B_mode1
        //mult array
        [((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_B_width)+:(mult_array_length_per_sa*mult_B_width)] = 
        //E vector
        (sum_mult_E_en == 1'b1) ? E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        //0+
        [0+:(mult_array_length_per_sa*mult_B_width)] : 
        {(mult_array_length_per_sa*mult_B_width){1'b0}};

        assign extra_sa_vector_Bs[i-1][j-1] = 
        //sa mult
        (sum_mult_E_en == 1'b1) ? E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        //48*16+:
        [(mult_array_length_per_sa*mult_B_width)+:row_num_in_sa*mult_B_width] : 
        {(row_num_in_sa * mult_B_width){1'b0}};
        
        assign sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:(mult_array_length_per_sa*mult_P_width)] = 
        //[48*40]
        (mode == 0)? //mode 0
        {{((mult_array_length_per_sa - (pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa))*mult_P_width){1'b0}}, //0 pad
        sum_mult_E_vector_P[((i-1)*sa_row_num+(j-1))*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_P_width)+:
        ((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_P_width)]}:
        (mode == 1)? //mode 1
        sum_mult_E_vector_P[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_P_width)+:(mult_array_length_per_sa*mult_P_width)]:
        {(sum_mult_E_vector_in_mult_P_width_width){1'b0}};

        assign sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[i-1][j-1]
        //48*40+:
        [(mult_array_length_per_sa*mult_P_width)+:(column_num_in_sa*mult_P_width)] = 
        //[16*40]
        extra_sa_vector_Ps[i-1][j-1];

        product_add_bias_vecOp product_add_bias_vecop(
            .clk              (clk),
            .reset            ((product_add_bias_reset == 1) || (reset == 1) || (conv_start == 1)),
            .en               (product_add_bias_en),
            .mode             (mode),
            .sum_mult_E_vector(sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[i-1][j-1]),  // pox res per channel
            .bias_set         (bias_4_channel_sets[(j-1)*bias_set_width+:bias_set_width]),
            .product_add_bias_vector(product_add_bias_vector_rowi_channel_setj[i-1][j-1])  // pox res per channel
        );

        relu_scale_vecOp relu_scale_vecop(
            .clk                             (clk),
            .mode                            (mode),
            .scale_set(scale_4_channel_sets[(j-1)*scale_set_width+:scale_set_width]),
            .product_add_bias_vector(product_add_bias_vector_rowi_channel_setj[i-1][j-1]),
            .quantize_vector(quantize_rowi_channel_setj[i-1][j-1])
        );        
        //conv out fifo
        fifo_rowi_channel_seti fifo_rowi_channel_seti (
            .clk       (clk),                                     // input wire clk
            .srst      ((reset == 1) || (conv_start == 1)),                      // input wire srst
            .din       (quantize_rowi_channel_setj[i-1][j-1]),  // input wire [511 : 0] din
            .wr_en     (relu_scale_en),                             // input wire wr_en
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
  SA_E_ReLU_Quantify_Ctrl sa_E_relu_quantify_ctrl (
      .clk              (clk),
      .reset            ((reset == 1) || (conv_start == 1)),  //next tile need clr
      .re_fm_en         (re_fm_en),
      .mode             (mode),
      .nif_mult_k_mult_k(nif_mult_k_mult_k),
      .sa_en            (sa_en),
      .sa_reset         (sa_reset),
      .channel_out_reset(channel_out_reset),
      .channel_out_en   (channel_out_en),
      .sum_mult_E_en        (sum_mult_E_en),
      .product_add_bias_en      (product_add_bias_en),
      .product_add_bias_reset   (product_add_bias_reset),
      .relu_scale_en      (relu_scale_en),
      .mult_array_mode  (mult_array_mode),
      .out_sa_row_idx   (out_sa_row_idx),
      .relu_scale_add_end (relu_scale_add_end)
  );
  assign conv_compute_fin = relu_scale_add_end;
  //multiplier array
  Mult_Array_hete mult_array_hete (
      .clk     (clk),
      .en      (sum_mult_E_en),
      .vector_A(vector_A),
      .vector_B(vector_B),
      .vector_P(vector_P)
  );
  
  //other dsp is useless, set A input to 0
  assign sum_mult_E_vector_A_mode0
  [vector_A_width-1:
  ((sa_column_num-1)*sa_row_num+(sa_row_num-1)+1)*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)]
  = {(vector_A_width - ((sa_column_num-1)*sa_row_num+(sa_row_num-1)+1)*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)){1'b0}};
  
  assign sum_mult_E_vector_B_mode0
  [vector_B_width-1:
  ((sa_column_num-1)*sa_row_num+(sa_row_num-1)+1)*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)]
  = {(vector_B_width - ((sa_column_num-1)*sa_row_num+(sa_row_num-1)+1)*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)){1'b0}};
  
  assign sum_mult_E_vector_A = //mode 0 or 1
  (mode == 0)? sum_mult_E_vector_A_mode0:
  (mode == 1)? sum_mult_E_vector_A_mode1: {(vector_A_width){1'b0}};

  assign sum_mult_E_vector_B = //mode 0 or 1
  (mode == 0)? sum_mult_E_vector_B_mode0:
  (mode == 1)? sum_mult_E_vector_B_mode1: {(vector_B_width){1'b0}};
  assign vector_A         = sum_mult_E_vector_A;
  assign vector_B         = sum_mult_E_vector_B;
  assign sum_mult_E_vector_P = (product_add_bias_en == 1'b1) ? vector_P : 0;
  //conv store ctrl
  conv_fifo_out_controller cv_fifo_out_controller (  // conv_out_handler
      //cycle 0 in
      .clk                       (clk),
      .reset                     ((reset == 1) || (conv_start == 1)),
      .conv_fifo_out_start       (conv_store),
      .ddr_en(ddr_en),
      .output_ddr_layer_base_adr(output_ddr_layer_base_adr),
      .mode                      (mode),
      .of_in_2pow(of_in_2pow), 
      .ox_in_2pow(ox_in_2pow),
      .cur_ox_start              (store_ox_start),
      .cur_oy_start              (store_oy_start),
      .cur_of_start              (store_of_start),
      .cur_pox                   (store_pox),
      .cur_poy                   (store_poy),
      .cur_pof                   (store_pof),
      
      //cycle 0 out
      .fifo_rds                  (fifo_rds),
      //cycle 1 in
      .fifo_data                 (fifo_data),
      //cycle 1 out
      
      .fifo_column_no            (fifo_column_no),
      .fifo_row_no               (fifo_row_no),
      .valid_conv_out    (valid_conv_out),
      .out_y_idx                 (out_y_idx),
      .out_x_idx                 (out_x_idx),
      .out_f_idx                 (out_f_idx),
      .conv_out_data             (conv_out_data),
      .conv_fifo_out_tile_add_end(conv_fifo_out_tile_add_end),
      .valid_conv_out_ddr_adr(valid_conv_out_ddr_adr),
      .conv_out_ddr_adr(conv_out_ddr_adr),
      .conv_out_ddr_data(conv_out_ddr_data)
  );
  assign fifo_data      = fifo_rowi_channel_seti_dout[fifo_column_no][fifo_row_no];
  assign conv_store_fin = conv_fifo_out_tile_add_end;  //demo store ctrl


endmodule
