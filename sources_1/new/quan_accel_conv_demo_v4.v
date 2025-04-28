`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/28 13:35:03
// Design Name: 
// Module Name: quan_accel_conv_demo_v4
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


module quan_accel_conv_demo_v4(
  clk,  //i
  reset, //i
  //DDR MIG
  ddr_cmd_ready, //i
  ddr_rd_data_valid, //i
  ddr_wt_data_ready, //i

  cmd_ddr_base_adr, //o
  cmd_ddr_length, //o
  valid_cmd, //o
  ddr_mode, //o

  ddr_rd_data,
  ddr_wt_data,
  valid_ddr_wt_data,

  conv_fin
);
  //SA
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 1;  //how many columns in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa, row_num
  parameter column_num_in_sa = 16;  // how many columns in a sa
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
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
  parameter dsp_num_total = 3600;
  parameter dsp_num_in_cores = row_num_in_sa * column_num_in_sa * sa_column_num * sa_row_num; //2048
  parameter dsp_num_in_bias_vecOps = pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa * sa_column_num * sa_row_num; //64*8 = 512
  parameter mult_dsp_in_sa = 0; //column_num_in_sa
  parameter mult_array_length = (pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa - mult_dsp_in_sa) * sa_column_num * sa_row_num; //len is 576 when use row0 of sa
  parameter mult_dsp_array_length = (mult_array_length //512-16*8
  > dsp_num_total - dsp_num_in_cores - dsp_num_in_bias_vecOps)? //need lut
  (dsp_num_total - dsp_num_in_cores - dsp_num_in_bias_vecOps): //dsp is enough
  (mult_array_length);
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
  parameter add_bias_width = pixel_width_88 + 8; //actual E width is 8
  parameter product_add_bias_vector_width = add_bias_width * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
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
  input ddr_cmd_ready;
  input ddr_rd_data_valid;
  input ddr_wt_data_ready;
  input [511:0] ddr_rd_data;
  output [511:0] ddr_wt_data;
  output valid_ddr_wt_data;
  output conv_fin;
  // wire ddr_en = 1;
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
  // reg [511:0] conv_instr_args_mem [0:0]; //instr mem for sim
  wire conv_start_pre;
  reg conv_start;
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
  // wire conv_fin;
  //DDR
  output [31:0] cmd_ddr_base_adr;
  output [15:0] cmd_ddr_length;
  output valid_cmd;
  output ddr_mode; //rd or wt

  //DDR data
  // reg valid_load_input;
  wire valid_load_input;
  wire [511:0] load_input_word;
  reg [511:0] last_load_input_word;
  reg state_valid_load_input;
  // reg valid_load_weights; //ddr words is loaded from ddr
  wire valid_load_weights;
  //conv compute ctrl
  reg [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx;
  wire [15:0] ox_start_delay, oy_start_delay, of_start_delay, pox_delay, poy_delay, pof_delay, if_idx_delay;  
  reg [15:0] shadow_ox_start, shadow_oy_start, shadow_of_start, shadow_pox, shadow_poy, shadow_pof;
  reg [15:0] store_ox_start, store_oy_start, store_of_start, store_pox, store_poy, store_pof;
  reg [3:0] west_pad, slab_num, east_pad;
  wire [3:0] west_pad_delay, slab_num_delay, east_pad_delay;
  wire [15:0] row1_idx, row2_idx, row3_idx;
  reg [15:0] row_start_idx, row_end_idx;
  wire [15:0] row_start_idx_delay, row_end_idx_delay;
  reg [15:0] reg_start_idx, reg_end_idx;
  wire [15:0] reg_start_idx_delay, reg_end_idx_delay;
  wire [15:0] row1_buf_adr;
  wire [1:0] row1_buf_idx;
  wire row1_buf_word_select;
  wire [15:0] row2_buf_adr;
  wire [1:0] row2_buf_idx;
  wire row2_buf_word_select;
  wire [15:0] row3_buf_adr;
  wire [1:0] row3_buf_idx;
  wire row3_buf_word_select;
  // reg [15:0] row_slab_start_idx;
  wire [15:0] row_slab_start_idx_delay;
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
  reg com_control_end;
  reg conv_pixels_add_end;
  reg conv_nif_add_end;
  wire com_control_end_delay;
  wire conv_pixels_add_end_delay;
  wire conv_nif_add_end_delay;
  //cv kernel
  // reg [15:0] if_start;
  // reg [15:0] row_base_in_3s;
  // reg valid_adr; 
  // reg [15:0] iy_start;
  // reg [15:0] ky;
  wire [15:0] if_start_delay;
  wire [15:0] row_base_in_3s_delay;
  wire valid_adr_delay; 
  wire [15:0] iy_start_delay;
  wire [15:0] ky_delay;
  //stage 1-2 waiting for shell
  reg [15:0] ox_start_stage_1,ox_start_stage_2,
    oy_start_stage_1,oy_start_stage_2,
    of_start_stage_1,of_start_stage_2,
    pox_stage_1,pox_stage_2,
    poy_stage_1,poy_stage_2,
    pof_stage_1,pof_stage_2,
    if_idx_stage_1,if_idx_stage_2;
  reg [ 3:0] west_pad_stage_1,west_pad_stage_2,
    slab_num_stage_1,slab_num_stage_2,
    east_pad_stage_1,east_pad_stage_2;
  reg [15:0] row_start_idx_stage_1,row_start_idx_stage_2,
    row_end_idx_stage_1,row_end_idx_stage_2;
  reg [15:0] reg_start_idx_stage_1,reg_start_idx_stage_2,
    reg_end_idx_stage_1,reg_end_idx_stage_2;

  reg        com_control_end_stage_1,com_control_end_stage_2;
  reg        conv_pixels_add_end_stage_1,conv_pixels_add_end_stage_2;
  reg        conv_nif_add_end_stage_1,conv_nif_add_end_stage_2;
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
  wire [31:0] load_input_ddr_base_adr;
  wire [15:0] load_input_ddr_length;
  wire valid_load_input_ddr_cmd;
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
  reg [3:0] last_row_west_pad, last_row_slab_num, last_row_east_pad; //used for row regs
  reg [15:0] last_row1_idx, last_row2_idx, last_row3_idx;
  reg [15:0] last_row_start_idx, last_row_end_idx;
  reg [15:0] last_reg_start_idx, last_reg_end_idx;
  reg [15:0] last_row_reg_start_idx, last_row_reg_end_idx; //used for row regs
  reg state_valid_row1_adr, state_valid_row2_adr, state_valid_row3_adr;
  reg last_state_valid_row1_adr, last_state_valid_row2_adr, last_state_valid_row3_adr; //used for rowi adr
  reg state_conv_pixels_add_end;
  reg last_state_conv_pixels_add_end; //used for row regs
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
  reg [5:0] last_3_out_sa_row_idx;
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
  wire [pixels_in_row*8-1:0] re_rowi_pixels[buffers_num-1 : 0];
  reg [pixels_in_row*8-1:0] delay_re_row2_pixels, delay_1_re_row3_pixels, delay_2_re_row3_pixels;
  wire [pixels_in_row*8-1:0] delay_re_rowi_pixels[buffers_num-1 : 0];
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
  wire [31:0] load_weights_ddr_base_adr;
  wire [15:0] load_weights_ddr_length;
  wire valid_load_weights_ddr_cmd;
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
  //ping buffer
  wire weights_bank_1_ping_en;  //o
  wire weights_bank_1_ping_en_wr;  //o
  wire [15:0] weights_bank_1_ping_adr;  // o
  wire [128-1 : 0] weights_bank_1_ping_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_1_ping_out;  //i:port out of weights ping buf
  wire weights_bank_2_ping_en;  //o
  wire weights_bank_2_ping_en_wr;  //o
  wire [15:0] weights_bank_2_ping_adr;  // o
  wire [128-1 : 0] weights_bank_2_ping_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_2_ping_out;  //i:port out of weights ping buf
  wire weights_bank_3_ping_en;  //o
  wire weights_bank_3_ping_en_wr;  //o
  wire [15:0] weights_bank_3_ping_adr;  // o
  wire [128-1 : 0] weights_bank_3_ping_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_3_ping_out;  //i:port out of weights ping buf
  wire weights_bank_4_ping_en;  //o
  wire weights_bank_4_ping_en_wr;  //o
  wire [15:0] weights_bank_4_ping_adr;  // o
  wire [128-1 : 0] weights_bank_4_ping_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_4_ping_out;  //i:port out of weights ping buf
  //pong buffer
  wire weights_bank_1_pong_en;  //o
  wire weights_bank_1_pong_en_wr;  //o
  wire [15:0] weights_bank_1_pong_adr;  // o
  wire [128-1 : 0] weights_bank_1_pong_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_1_pong_out;  //i:port out of weights ping buf
  wire weights_bank_2_pong_en;  //o
  wire weights_bank_2_pong_en_wr;  //o
  wire [15:0] weights_bank_2_pong_adr;  // o
  wire [128-1 : 0] weights_bank_2_pong_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_2_pong_out;  //i:port out of weights ping buf
  wire weights_bank_3_pong_en;  //o
  wire weights_bank_3_pong_en_wr;  //o
  wire [15:0] weights_bank_3_pong_adr;  // o
  wire [128-1 : 0] weights_bank_3_pong_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_3_pong_out;  //i:port out of weights ping buf
  wire weights_bank_4_pong_en;  //o
  wire weights_bank_4_pong_en_wr;  //o
  wire [15:0] weights_bank_4_pong_adr;  // o
  wire [128-1 : 0] weights_bank_4_pong_in;  //o:port in of weights ping buf
  wire [128-1 : 0] weights_bank_4_pong_out;  //i:port out of weights ping buf
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
  wire [E_set_width-1 : 0] core_E_sets_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  // bias buf
  wire bias_buf_en;
  wire bias_buf_en_wr = 0;
  wire [8:0] bias_buf_adr;
  wire [511:0] bias_buf_wr = 0;
  wire [511:0] bias_buf_rd;
  //bias regs
  wire [bias_set_4_channel_width-1 : 0] bias_4_channel_sets;  //4 sets of 16bit(1 bias or 2 bias)
  wire [bias_set_width-1 : 0] core_bias_sets_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  // scale buf
  wire scale_buf_en;
  wire scale_buf_en_wr = 0;
  wire [8:0] scale_buf_adr;
  wire [511:0] scale_buf_wr = 0;
  wire [511:0] scale_buf_rd;
  //scale regs
  wire [scale_set_4_channel_width-1 : 0] scale_4_channel_sets;
  wire [scale_set_width-1 : 0] core_scale_sets_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  //delay regs pixels
  wire [pixels_column_in_width-1:0]
  delay_rowi_pixels[buffers_num-1 : 0];
  //delay regs weights
  wire [weights_row_in_width -1:0]
  delay_weights_sets[sa_row_num-1 : 0];
  //sa
  wire [sa_column_in_width -1:0] //sa columns input vector
  sa_columni_ins[buffers_num-1 : 0][sa_row_num-1 : 0];
  wire [sa_row_in_width -1:0] //sa rows weights vector
  sa_rowi_ins[buffers_num-1 : 0][sa_row_num-1 : 0];
  // wire [column_num_in_sa * mult_P_width -1:0] //sa rows sum vector
  // sa_row0_outs[buffers_num-1 : 0][sa_row_num-1 : 0];

  //mult_array
  wire [vector_A_width-1 : 0] vector_A, sum_mult_E_vector_A,sum_mult_E_vector_A_mode0,sum_mult_E_vector_A_mode1;
  wire [vector_B_width-1 : 0] vector_B, sum_mult_E_vector_B,sum_mult_E_vector_B_mode0,sum_mult_E_vector_B_mode1;
  wire [vector_P_width-1 : 0] vector_P, sum_mult_E_vector_P;
  ///mult_sa
  // wire [column_num_in_sa * mult_A_width -1:0] //the first row of SAs is used to mult, multer A
  // extra_sa_vector_As [buffers_num-1 : 0][sa_row_num-1 : 0];
  // wire [row_num_in_sa * mult_B_width -1:0] extra_sa_vector_Bs //the first row of SAs is used to mult, multer B
  // [buffers_num-1 : 0][sa_row_num-1 : 0];
  // wire [column_num_in_sa * mult_P_width -1:0] //product P
  // extra_sa_vector_Ps[buffers_num-1 : 0][sa_row_num-1 : 0];

  // sa control
  reg [ 7:0] shadow_pof_per_core;
  reg [ 1:0] log_pof_per_cell;
  wire core_cell_en_pre;
  wire core_cell_reset_pre;
  wire core_cell_output_en_pre;
  wire core_reset_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  wire core_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  wire core_output_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  wire [sa_row_in_width - 1:0]core_row_in_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  wire [sa_column_in_width - 1:0]core_column_in_array[buffers_num-1 : 0][sa_row_num-1 : 0];

  //sum E recieve
  wire core_sum_E_recieve_en_pre;
  // reg core_sum_E_recieve_en;
  wire core_sum_E_recieve_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  //mult E
  // wire core_sum_mult_E_en_pre;
  // reg core_sum_mult_E_en;
  //add bias
  wire core_product_add_bias_en_pre;
  // reg core_product_add_bias_en;
  wire core_product_add_bias_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  //quantify ctrl
  wire core_relu_scale_en_pre;
  // reg core_relu_scale_en;
  wire core_relu_scale_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  //conv fifo
  // wire conv_fifo_en;
  wire conv_fifo_add_end_pre;
  reg conv_fifo_add_end;
  wire core_conv_fifo_en_pre;
  // reg core_conv_fifo_en;
  reg core_conv_fifo_en_array[buffers_num-1 : 0][sa_row_num-1 : 0];
  //sa out channel
  wire [5:0] out_sa_row_idx_pre;  //output sa row idx [1,16]
  reg [5:0] out_sa_row_idx;  //output sa row idx [1,16]
  // wire [5:0] core_out_sa_row_idx_pre;
  // reg [5:0] core_out_sa_row_idx;
  // wire mult_array_mode;
  wire core_mult_array_mode_pre;
  // reg core_mult_array_mode;
  wire core_mult_array_mode_array[buffers_num-1 : 0][sa_row_num-1 : 0]; 
  //fifo out
  wire [sa_out_width - 1:0] out_rowi_channel_seti //pox sum in a sa row, 1 channel or 2 channel
  [buffers_num-1 : 0][sa_row_num-1 : 0]; 
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
  //conv store ctrl
  //cycle 0 in conv store
  //cycle 1 in
  wire [quantize_vector_width-1 : 0] fifo_data;
  //cycle 0 out
  wire [sa_row_num * sa_column_num-1:0] fifo_rds;
  wire [31:0] store_ddr_base_adr;
  wire [15:0] store_ddr_length;
  wire valid_store_ddr_cmd;
  //cycle 1 out
  wire [31:0] conv_out_ddr_adr;
  wire [511:0] conv_out_ddr_data;
  wire valid_conv_out_ddr_data;
  wire [3:0] fifo_column_no, fifo_row_no;
  wire [15:0] out_y_idx, out_x_idx, out_f_idx;
  wire conv_fifo_out_tile_add_end;
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

  // always @(posedge clk) begin
  //   if (reset) begin
  //     conv_instr_args <= 512'b0;
  //   end
  //   else if (start == 1'b1) begin
  //     conv_instr_args <= conv_instr_args_mem[0];
  //   end
  //   else begin
  //     conv_instr_args <= conv_instr_args;
  //   end
  // end

  always @(posedge clk) begin
    if (reset) begin
      conv_instr_args <= 512'b0;
    end
    else if (start == 1'b1) begin
      conv_instr_args <= 512'h000004040404040404040401000C0004020202020202001000000000002C000000000000000000000000000C0000002420004000C70080000660040700801231;
    end
    else begin
      conv_instr_args <= conv_instr_args;
    end
  end

  //DDR
  assign cmd_ddr_base_adr = (valid_load_input_ddr_cmd == 1)? load_input_ddr_base_adr:
  (valid_load_weights_ddr_cmd == 1)? load_weights_ddr_base_adr:
  (valid_store_ddr_cmd == 1)? store_ddr_base_adr: 0;
  assign cmd_ddr_length = (valid_load_input_ddr_cmd == 1)? load_input_ddr_length:
  (valid_load_weights_ddr_cmd == 1)? load_weights_ddr_length:
  (valid_store_ddr_cmd == 1)? store_ddr_length: 0;
  assign valid_cmd = (valid_load_input_ddr_cmd == 1) || (valid_load_weights_ddr_cmd == 1) || (valid_store_ddr_cmd == 1);
  assign ddr_mode = ((valid_cmd == 1) && (valid_store_ddr_cmd == 1)? 0: 1);

  assign load_input_word = (valid_load_input) ? ddr_rd_data : 512'b0; 
  assign weights_word_buf_wt = (valid_load_weights) ? ddr_rd_data : 512'b0;
  assign ddr_wt_data = (valid_ddr_wt_data == 1)? conv_out_ddr_data : 512'b0;
  assign valid_ddr_wt_data = valid_conv_out_ddr_data;

  //DDR input load
  //DDR sim version
  // always @(posedge clk) begin
  //   if (reset) begin
  //     valid_load_input <= 0;
  //   end else begin
  //     valid_load_input <= input_word_ddr_en_rd;  //DDR sim
  //   end
  // end
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
  // always @(posedge clk) begin
  //   if (reset) begin
  //     valid_load_weights <= 0;
  //   end else begin
  //     valid_load_weights <= weights_word_ddr_en_rd;  //DDR sim
  //   end
  // end
  // true DDR version
  // assign valid_load_weights = ((state_conv_load_weights == 1) && (DDR_valid == 1));

  //conv decoder
  quan_CBR_decoder quan_CBR_decoder (
      .clk                               (clk),
      .reset                             (reset),
      .conv_decode                       (conv_decode),
      .conv_instr_args(conv_instr_args),
      .next_conv_start                        (conv_start_pre),
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
  conv_load_input_ddr_controller_v3 #(
     .sa_column_num(sa_column_num)
) cv_load_input_ddr_ctrl (
      .clk                                    (clk),
      .conv_load_input_sig                        (conv_load_input),
      .reset                                  ((reset == 1) || (conv_start_pre == 1)),
      .ddr_cmd_ready                                 (ddr_cmd_ready),
      .ddr_rd_data_valid(ddr_rd_data_valid),
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
      .load_input_ddr_base_adr(load_input_ddr_base_adr),
      .load_input_ddr_length(load_input_ddr_length),
      .valid_load_input_ddr_cmd(valid_load_input_ddr_cmd),
      .valid_load_input(valid_load_input),
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
  conv_load_weights_ddr_controller_v2 cv_load_weights_ddr_controller (
      .clk               (clk),
      .reset             ((reset == 1) || (conv_start_pre == 1)),
      .conv_load_weights_sig (conv_load_weights),  //load weight start
      .ddr_cmd_ready            (ddr_cmd_ready),             //mig fifo can accept new load instr
      .ddr_rd_data_valid(ddr_rd_data_valid),
      
      .weights_layer_base_ddr_adr_rd_init(weights_layer_base_ddr_adr_rd),
      .mode_init                         (mode),
      .nif_mult_k_mult_k_init            (nif_mult_k_mult_k),
      .of_init                           (of),
      //ddr rd info
      .weights_word_ddr_en_rd (weights_word_ddr_en_rd),   //read ddr instr
      .weights_word_ddr_adr_rd(weights_word_ddr_adr_rd),
      //ddr cmd
      .load_weights_ddr_base_adr(load_weights_ddr_base_adr),
      .load_weights_ddr_length(load_weights_ddr_length),
      .valid_load_weights_ddr_cmd(valid_load_weights_ddr_cmd),
      //buf wt
      .valid_load_weights(valid_load_weights), //ddr weights is loaded from ddr
      .weights_word_buf_en_wt (weights_word_buf_en_wt),   //write buf instr
      .weights_word_buf_adr_wt(weights_word_buf_adr_wt),
      .conv_load_weights_fin  (conv_load_weights_fin),
      .state_conv_load_weights(state_conv_load_weights)
  );

  //conv compute ctrl
    conv_compute_kernel_controller_v5 #(.sa_column_num(sa_column_num)) 
  cv_compute_kernel_controller(
    .clk                 (clk),
    .reset               ((reset == 1) || (conv_start_pre == 1)),
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
    //general ctrl signal 1
    .ox_start_delay            (ox_start_delay),
    .oy_start_delay            (oy_start_delay),
    .of_start_delay            (of_start_delay),
    .pox_delay                 (pox_delay),
    .pof_delay                 (pof_delay),
    .if_idx_delay              (if_idx_delay),
    .west_pad_delay            (west_pad_delay),
    .east_pad_delay            (east_pad_delay),
    .row_end_idx_delay         (row_end_idx_delay),
    .reg_start_idx_delay       (reg_start_idx_delay),
    .reg_end_idx_delay         (reg_end_idx_delay),
    //ctrl signal to shell  
    .poy_delay                 (poy_delay),
    .valid_adr_delay(valid_adr_delay),
    .iy_start_delay(iy_start_delay),
    .ky_delay(ky_delay),
    .row_base_in_3s_delay(row_base_in_3s_delay),
    .row_start_idx_delay       (row_start_idx_delay),
    .if_start_delay(if_start_delay),
    .slab_num_delay            (slab_num_delay),
    .row_slab_start_idx_delay  (row_slab_start_idx_delay),
    //general ctrl signal 2
    .com_control_end_delay            (com_control_end_delay),
    .conv_pixels_add_end_delay (conv_pixels_add_end_delay),
    .conv_nif_add_end_delay    (conv_nif_add_end_delay)
  );

  conv_compute_shell1_controller_v4 #(.sa_column_num(sa_column_num)) 
  cv_compute_shell1_controller(
     .clk                 (clk),
    .reset               ((reset == 1) || (conv_start_pre == 1)),
    .s_init(s),
    .p_init(p),
    .iy_init(iy),
    .nif_in_2pow_init(nif_in_2pow),
    .ix_in_2pow_init(ix_in_2pow),

    .poy(poy_delay),
    .valid_adr(valid_adr_delay),
    .iy_start(iy_start_delay),
    .ky(ky_delay),
    .row_base_in_3s(row_base_in_3s_delay),
    .row_start_idx(row_start_idx_delay),
    .if_start(if_start_delay),
    .slab_num(slab_num_delay),
    .row_slab_start_idx(row_slab_start_idx_delay),

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

  conv_compute_shell2_controller_v4 #(.sa_column_num(sa_column_num)) 
  cv_compute_shell2_controller(
        .clk                 (clk),
    .reset               ((reset == 1) || (conv_start_pre == 1)),
    .s_init(s),
    .p_init(p),
    .iy_init(iy),
    .nif_in_2pow_init(nif_in_2pow),
    .ix_in_2pow_init(ix_in_2pow),

    .poy(poy_delay),
    .valid_adr(valid_adr_delay),
    .iy_start(iy_start_delay),
    .ky(ky_delay),
    .row_base_in_3s(row_base_in_3s_delay),
    .row_start_idx(row_start_idx_delay),
    .if_start(if_start_delay),
    .slab_num(slab_num_delay),
    .row_slab_start_idx(row_slab_start_idx_delay),

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

  conv_compute_shell3_controller_v4 #(.sa_column_num(sa_column_num)) 
  cv_compute_shell3_controller(
        .clk                 (clk),
    .reset               ((reset == 1) || (conv_start_pre == 1)),
    .s_init(s),
    .p_init(p),
    .iy_init(iy),
    .nif_in_2pow_init(nif_in_2pow),
    .ix_in_2pow_init(ix_in_2pow),

    .poy(poy_delay),
    .valid_adr(valid_adr_delay),
    .iy_start(iy_start_delay),
    .ky(ky_delay),
    .row_base_in_3s(row_base_in_3s_delay),
    .row_start_idx(row_start_idx_delay),
    .if_start(if_start_delay),
    .slab_num(slab_num_delay),
    .row_slab_start_idx(row_slab_start_idx_delay),

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
  //stage 1
  always @(posedge clk) begin
    ox_start_stage_1            <=ox_start_delay;
    oy_start_stage_1            <=oy_start_delay;
    of_start_stage_1            <=of_start_delay;
    pox_stage_1                 <=pox_delay;
    pof_stage_1                 <=pof_delay;
    if_idx_stage_1              <=if_idx_delay;
    west_pad_stage_1            <=west_pad_delay;
    east_pad_stage_1            <=east_pad_delay;
    row_end_idx_stage_1         <=row_end_idx_delay;
    reg_start_idx_stage_1       <=reg_start_idx_delay;
    reg_end_idx_stage_1         <=reg_end_idx_delay;
    //general ctrl signal 2
    com_control_end_stage_1            <=com_control_end_delay;
    conv_pixels_add_end_stage_1 <=conv_pixels_add_end_delay;
    conv_nif_add_end_stage_1    <=conv_nif_add_end_delay;
    //ctrl signal to shell  
    poy_stage_1                 <=poy_delay;
    row_start_idx_stage_1       <=row_start_idx_delay;
    slab_num_stage_1            <=slab_num_delay;
  end
  //stage 2
  always @(posedge clk) begin
    ox_start_stage_2            <=ox_start_stage_1;
    oy_start_stage_2            <=oy_start_stage_1;
    of_start_stage_2            <=of_start_stage_1;
    pox_stage_2                 <=pox_stage_1;
    pof_stage_2                 <=pof_stage_1;
    if_idx_stage_2              <=if_idx_stage_1;
    west_pad_stage_2            <=west_pad_stage_1;
    east_pad_stage_2            <=east_pad_stage_1;
    row_end_idx_stage_2         <=row_end_idx_stage_1;
    reg_start_idx_stage_2       <=reg_start_idx_stage_1;
    reg_end_idx_stage_2         <=reg_end_idx_stage_1;
    //general ctrl signal 2
    com_control_end_stage_2            <=com_control_end_stage_1;
    conv_pixels_add_end_stage_2 <=conv_pixels_add_end_stage_1;
    conv_nif_add_end_stage_2    <=conv_nif_add_end_stage_1;
    //ctrl signal to shell  
    poy_stage_2                 <=poy_stage_1;
    row_start_idx_stage_2       <=row_start_idx_stage_1;
    slab_num_stage_2            <=slab_num_stage_1;
  end
  //stage 3
  always @(posedge clk) begin
    ox_start            <=ox_start_stage_2;
    oy_start            <=oy_start_stage_2;
    of_start            <=of_start_stage_2;
    pox                 <=pox_stage_2;
    pof                 <=pof_stage_2;
    if_idx              <=if_idx_stage_2;
    west_pad            <=west_pad_stage_2;
    east_pad            <=east_pad_stage_2;
    row_end_idx         <=row_end_idx_stage_2;
    reg_start_idx       <=reg_start_idx_stage_2;
    reg_end_idx         <=reg_end_idx_stage_2;
    //general ctrl signal 2
    com_control_end            <=com_control_end_stage_2;
    conv_pixels_add_end <=conv_pixels_add_end_stage_2;
    conv_nif_add_end    <=conv_nif_add_end_stage_2;
    //ctrl signal to shell  
    poy                 <=poy_stage_2;
    row_start_idx       <=row_start_idx_stage_2;
    slab_num            <=slab_num_stage_2;
  end

  //store chunk index
  always @(posedge clk) begin
    if ((reset == 1) || (conv_start == 1)) begin
      shadow_ox_start <= 0;
      shadow_oy_start <= 0;
      shadow_of_start <= 0;
      shadow_pox      <= 0;
      shadow_poy      <= 0;
      shadow_pof      <= 0;
      shadow_pof_per_core <= 0;
      log_pof_per_cell <= (mode == 0) ? 0 : (mode == 1) ? 1 : 0;
    end else if (conv_nif_add_end == 1'b1) begin
      shadow_ox_start <= ox_start;
      shadow_oy_start <= oy_start;
      shadow_of_start <= of_start;
      shadow_pox      <= pox;
      shadow_poy      <= poy;
      shadow_pof      <= pof;
      shadow_pof_per_core <= ((pof >> log_pof_per_cell) <= row_num_in_sa)? (pof >> log_pof_per_cell):
  (((pof >> log_pof_per_cell) > row_num_in_sa) && ((pof >> log_pof_per_cell) <= row_num_in_sa + row_num_in_sa))? (pof >> log_pof_per_cell) - row_num_in_sa:
  (((pof >> log_pof_per_cell) > row_num_in_sa + row_num_in_sa) && ((pof >> log_pof_per_cell) <= row_num_in_sa + row_num_in_sa + row_num_in_sa))? (pof >> log_pof_per_cell) - row_num_in_sa - row_num_in_sa:
  (pof >> log_pof_per_cell) - row_num_in_sa - row_num_in_sa - row_num_in_sa;
    end else begin
      shadow_ox_start <= shadow_ox_start;
      shadow_oy_start <= shadow_oy_start;
      shadow_of_start <= shadow_of_start;
      shadow_pox      <= shadow_pox;
      shadow_poy      <= shadow_poy;
      shadow_pof      <= shadow_pof;
      shadow_pof_per_core <= shadow_pof_per_core;
      log_pof_per_cell <= log_pof_per_cell;
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
  conv_buffers_interface_v2 cv_buffers_interface (
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
      last_state_conv_pixels_add_end   <= 0;
      state_valid_row1_adr        <= 0;
      last_state_valid_row1_adr        <= 0;
      state_valid_row2_adr        <= 0;
      last_state_valid_row2_adr        <= 0;
      state_valid_row3_adr        <= 0;
      last_state_valid_row3_adr        <= 0;

      last_west_pad               <= 0;
      last_row_west_pad               <= 0;
      last_slab_num               <= 0;
      last_row_slab_num               <= 0;
      last_east_pad               <= 0;
      last_row_east_pad               <= 0;

      last_row1_idx               <= 16'hffff;
      last_row2_idx               <= 16'hffff;
      last_row3_idx               <= 16'hffff;
      last_row_start_idx          <= 16'hffff;
      last_row_end_idx            <= 16'hffff;
      last_reg_start_idx          <= 16'hffff;
      last_row_reg_start_idx          <= 16'hffff;
      last_reg_end_idx            <= 16'hffff;
      last_row_reg_end_idx            <= 16'hffff;
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
      out_sa_row_idx <= 0;
      last_out_sa_row_idx <= 0;
      last_2_out_sa_row_idx <= 0;
      last_3_out_sa_row_idx <= 0;
      bias_reg_set                <= 0;
      last_bias_reg_start         <= 0;
      last_bias_reg_size          <= 0;
      scale_reg_set                <= 0;
      last_scale_reg_start <= 0;
      last_scale_reg_size  <= 0;
      // sa_en <= 0;
      // sa_reset <= 0;
      conv_fifo_add_end <= 0;
      conv_start <= 0;
    end else if (state == 4'b0001) begin  //conv op
      state_conv_pixels_add_end   <= conv_pixels_add_end;
      last_state_conv_pixels_add_end   <= state_conv_pixels_add_end;
      state_valid_row1_adr        <= valid_row1_adr;
      last_state_valid_row1_adr        <= state_valid_row1_adr;
      state_valid_row2_adr        <= valid_row2_adr;
      last_state_valid_row2_adr        <= state_valid_row2_adr;
      state_valid_row3_adr        <= valid_row3_adr;
      last_state_valid_row3_adr        <= state_valid_row3_adr;
      last_west_pad               <= west_pad;
      last_row_west_pad               <= last_west_pad;
      last_slab_num               <= slab_num;
      last_row_slab_num               <= last_slab_num;
      last_east_pad               <= east_pad;
      last_row_east_pad               <= last_east_pad;
      last_row1_idx               <= row1_idx;
      last_row2_idx               <= row2_idx;
      last_row3_idx               <= row3_idx;
      last_row_start_idx          <= row_start_idx;
      last_row_end_idx            <= row_end_idx;
      last_reg_start_idx          <= reg_start_idx;
      last_row_reg_start_idx          <= last_reg_start_idx;
      last_reg_end_idx            <= reg_end_idx;
      last_row_reg_end_idx            <= last_reg_end_idx;
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
      out_sa_row_idx <= out_sa_row_idx_pre;
      last_out_sa_row_idx <= out_sa_row_idx;
      last_2_out_sa_row_idx <= last_out_sa_row_idx;
      last_3_out_sa_row_idx <= last_2_out_sa_row_idx;
      bias_reg_set                <= bias_buf_en_rd;
      last_bias_reg_start         <= bias_reg_start;
      last_bias_reg_size          <= bias_reg_size;
      scale_reg_set                <= scale_buf_en_rd;
      last_scale_reg_start <= scale_reg_start;
      last_scale_reg_size  <= scale_reg_size;
      // sa_en <= sa_en_pre;
      // sa_reset <= sa_reset_pre;
      conv_fifo_add_end <= conv_fifo_add_end_pre;
      conv_start <= conv_start_pre;
    end
  end
  //img2col
  //row regs
  Row_Regs_v3 row_regs (
      .reset                    ((reset == 1) || (conv_start == 1)),
      .clk                      (clk),
      .last_state_valid_row1_adr     (last_state_valid_row1_adr),
      .last_state_valid_row2_adr     (last_state_valid_row2_adr),
      .last_state_valid_row3_adr     (last_state_valid_row3_adr),
      .last_state_conv_pixels_add_end(last_state_conv_pixels_add_end),
      .last_row_west_pad            (last_row_west_pad),
      .last_row_slab_num            (last_row_slab_num),
      .last_row_east_pad            (last_row_east_pad),
      .last_row_reg_start_idx       (last_row_reg_start_idx),
      .last_row_reg_end_idx         (last_row_reg_end_idx),
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
  assign delay_re_rowi_pixels[0] = re_rowi_pixels[0];
  assign delay_re_rowi_pixels[1] = delay_re_row2_pixels;
  assign delay_re_rowi_pixels[2] = delay_2_re_row3_pixels;
  always @(posedge clk) begin
    delay_re_row2_pixels <= re_rowi_pixels[1];
    delay_1_re_row3_pixels <= re_rowi_pixels[2];
    delay_2_re_row3_pixels <= delay_1_re_row3_pixels;
  end
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
  quan_conv_weights_controller conv_weights_controller (
      .clk                    (clk),
      .reset                  ((reset == 1) || (conv_start == 1)),
      .mode_init(mode),
      .nif_mult_k_mult_k_init(nif_mult_k_mult_k),
      //cycle 0 in
      .re_fm_en               (re_fm_en),                 //the first input is needed in next cycle
      .re_fm_end              (re_fm_end),                //the last input is needed in cur cycle
      // //cylce 1 in
      // .weights_dout           (weights_word_buf_rd),      //weights read from buf
      //cycle 0 out
      .weights_word_buf_en_rd (weights_word_buf_en_rd),   //read weight buf
      .weights_word_buf_adr_rd(weights_word_buf_adr_rd)
      // //cycle 1 out
      // .weights_vector         (weights_vector)            //weights vector flush into PEs
  );
  //ping-pong weights buf interface
  conv_weights_ping_pong_controller_v2 cv_weights_ping_pong_controller (
      .reset            ((reset == 1) || (conv_start == 1)),
      .clk              (clk),
      .mode(mode),
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
      //ping  buffer port
      //bank 1
      .weights_bank_1_ping_en(weights_bank_1_ping_en),  //o
      .weights_bank_1_ping_en_wr(weights_bank_1_ping_en_wr),  //o
      .weights_bank_1_ping_adr(weights_bank_1_ping_adr),  // o
      .weights_bank_1_ping_in(weights_bank_1_ping_in),  //o:port in of weights ping buf
      .weights_bank_1_ping_out(weights_bank_1_ping_out),  //i:port out of weights ping buf
      //bank 2
      .weights_bank_2_ping_en(weights_bank_2_ping_en),  //o
      .weights_bank_2_ping_en_wr(weights_bank_2_ping_en_wr),  //o
      .weights_bank_2_ping_adr(weights_bank_2_ping_adr),  // o
      .weights_bank_2_ping_in(weights_bank_2_ping_in),  //o:port in of weights ping buf
      .weights_bank_2_ping_out(weights_bank_2_ping_out),  //i:port out of weights ping buf
      //bank 3
      .weights_bank_3_ping_en(weights_bank_3_ping_en),  //o
      .weights_bank_3_ping_en_wr(weights_bank_3_ping_en_wr),  //o
      .weights_bank_3_ping_adr(weights_bank_3_ping_adr),  // o
      .weights_bank_3_ping_in(weights_bank_3_ping_in),  //o:port in of weights ping buf
      .weights_bank_3_ping_out(weights_bank_3_ping_out),  //i:port out of weights ping buf
      //bank 4
      .weights_bank_4_ping_en(weights_bank_4_ping_en),  //o
      .weights_bank_4_ping_en_wr(weights_bank_4_ping_en_wr),  //o
      .weights_bank_4_ping_adr(weights_bank_4_ping_adr),  // o
      .weights_bank_4_ping_in(weights_bank_4_ping_in),  //o:port in of weights ping buf
      .weights_bank_4_ping_out(weights_bank_4_ping_out),  //i:port out of weights ping buf

      //pong  buffer port
      //bank 1
      .weights_bank_1_pong_en(weights_bank_1_pong_en),  //o
      .weights_bank_1_pong_en_wr(weights_bank_1_pong_en_wr),  //o
      .weights_bank_1_pong_adr(weights_bank_1_pong_adr),  // o
      .weights_bank_1_pong_in(weights_bank_1_pong_in),  //o:port in of weights ping buf
      .weights_bank_1_pong_out(weights_bank_1_pong_out),  //i:port out of weights ping buf
      //bank 2
      .weights_bank_2_pong_en(weights_bank_2_pong_en),  //o
      .weights_bank_2_pong_en_wr(weights_bank_2_pong_en_wr),  //o
      .weights_bank_2_pong_adr(weights_bank_2_pong_adr),  // o
      .weights_bank_2_pong_in(weights_bank_2_pong_in),  //o:port in of weights ping buf
      .weights_bank_2_pong_out(weights_bank_2_pong_out),  //i:port out of weights ping buf
      //bank 3
      .weights_bank_3_pong_en(weights_bank_3_pong_en),  //o
      .weights_bank_3_pong_en_wr(weights_bank_3_pong_en_wr),  //o
      .weights_bank_3_pong_adr(weights_bank_3_pong_adr),  // o
      .weights_bank_3_pong_in(weights_bank_3_pong_in),  //o:port in of weights ping buf
      .weights_bank_3_pong_out(weights_bank_3_pong_out),  //i:port out of weights ping buf
      //bank 4
      .weights_bank_4_pong_en(weights_bank_4_pong_en),  //o
      .weights_bank_4_pong_en_wr(weights_bank_4_pong_en_wr),  //o
      .weights_bank_4_pong_adr(weights_bank_4_pong_adr),  // o
      .weights_bank_4_pong_in(weights_bank_4_pong_in),  //o:port in of weights ping buf
      .weights_bank_4_pong_out(weights_bank_4_pong_out)  //i:port out of weights ping buf
  );

//ping weights buf
  weights_bank_1_ping weights_bank_1_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_1_ping_en),     // input wire ena
      .wea  (weights_bank_1_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_1_ping_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_1_ping_in),     // input wire [127 : 0] dina
      .douta(weights_bank_1_ping_out)     // output wire [127 : 0] douta
  );
  weights_bank_2_ping weights_bank_2_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_2_ping_en),     // input wire ena
      .wea  (weights_bank_2_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_2_ping_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_2_ping_in),     // input wire [127 : 0] dina
      .douta(weights_bank_2_ping_out)     // output wire [127 : 0] douta
  );
  weights_bank_3_ping weights_bank_3_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_3_ping_en),     // input wire ena
      .wea  (weights_bank_3_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_3_ping_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_3_ping_in),     // input wire [127 : 0] dina
      .douta(weights_bank_3_ping_out)     // output wire [127 : 0] douta
  );
  weights_bank_4_ping weights_bank_4_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_4_ping_en),     // input wire ena
      .wea  (weights_bank_4_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_4_ping_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_4_ping_in),     // input wire [127 : 0] dina
      .douta(weights_bank_4_ping_out)     // output wire [127 : 0] douta
  );
//pong weights buf
  weights_bank_1_pong weights_bank_1_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_1_pong_en),     // input wire ena
      .wea  (weights_bank_1_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_1_pong_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_1_pong_in),     // input wire [127 : 0] dina
      .douta(weights_bank_1_pong_out)     // output wire [127 : 0] douta
  );
  weights_bank_2_pong weights_bank_2_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_2_pong_en),     // input wire ena
      .wea  (weights_bank_2_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_2_pong_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_2_pong_in),     // input wire [127 : 0] dina
      .douta(weights_bank_2_pong_out)     // output wire [127 : 0] douta
  );
  weights_bank_3_pong weights_bank_3_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_3_pong_en),     // input wire ena
      .wea  (weights_bank_3_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_3_pong_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_3_pong_in),     // input wire [127 : 0] dina
      .douta(weights_bank_3_pong_out)     // output wire [127 : 0] douta
  );
  weights_bank_4_pong weights_bank_4_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_bank_4_pong_en),     // input wire ena
      .wea  (weights_bank_4_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_bank_4_pong_adr[11 : 0]),    // input wire [11 : 0] addra
      .dina (weights_bank_4_pong_in),     // input wire [127 : 0] dina
      .douta(weights_bank_4_pong_out)     // output wire [127 : 0] douta
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
  // E_buffer E_buffer (
  //     .clka (clk),                     // input wire clka
  //     .ena  (E_buf_en),     // input wire ena
  //     .wea  (E_buf_en_wr),  // input wire [0 : 0] wea
  //     .addra(E_buf_adr),    // input wire [8 : 0] addra
  //     .dina (E_buf_wr),     // input wire [511 : 0] dina
  //     .douta(E_buf_rd)      // output wire [511 : 0] douta
  // );
  E_buffer_rom E_buffer (
      .clka (clk),                     // input wire clka
      .ena  (E_buf_en),     // input wire ena
      // .wea  (E_buf_en_wr),  // input wire [0 : 0] wea
      .addra(E_buf_adr),    // input wire [8 : 0] addra
      // .dina (E_buf_wr),     // input wire [511 : 0] dina
      .douta(E_buf_rd)      // output wire [511 : 0] douta
  );
  assign E_buf_adr = 
  ((E_buf_en_rd == 1'b0) && (E_buf_en_wr == 1'b1)) ? E_buf_adr_wr[8 : 0] : //wt E buf
  ((E_buf_en_rd == 1'b1) && (E_buf_en_wr == 1'b0)) ? E_buf_adr_rd[8 : 0] : 0; //rd E buf
  assign E_buf_en  = ((E_buf_en_rd == 1'b1) || (E_buf_en_wr == 1'b1)) ? 1 : 0;
  assign E_buf_en_wr = 1'b0;
  assign E_buf_wr = 512'b0;

  //bias buf
  // bias_buffer bias_buffer (
  //     .clka (clk),             // input wire clka
  //     .ena  (bias_buf_en),     // input wire ena
  //     .wea  (bias_buf_en_wr),  // input wire [0 : 0] wea
  //     .addra(bias_buf_adr),    // input wire [8 : 0] addra
  //     .dina (bias_buf_wr),     // input wire [511 : 0] dina
  //     .douta(bias_buf_rd)      // output wire [511 : 0] douta
  // );
  bias_buffer_rom bias_buffer (
      .clka (clk),             // input wire clka
      .ena  (bias_buf_en),     // input wire ena
      // .wea  (bias_buf_en_wr),  // input wire [0 : 0] wea
      .addra(bias_buf_adr),    // input wire [8 : 0] addra
      // .dina (bias_buf_wr),     // input wire [511 : 0] dina
      .douta(bias_buf_rd)      // output wire [511 : 0] douta
  );
  assign bias_buf_adr = 
  ((bias_buf_en_rd == 1'b0) && (bias_buf_en_wr == 1'b1)) ?bias_buf_adr_wr[8 : 0] : //wt bias buf
  ((bias_buf_en_rd == 1'b1) && (bias_buf_en_wr == 1'b0)) ?bias_buf_adr_rd[8 : 0] : 0; //rd bias buf
  assign bias_buf_en  = ((bias_buf_en_rd == 1'b1) || (bias_buf_en_wr == 1'b1)) ? 1 : 0;
  assign bias_buf_en_wr = 0;
  assign bias_buf_wr = 512'b0;

  //scale buf
  // scale_buffer scale_buffer (
  //     .clka (clk),                     // input wire clka
  //     .ena  (scale_buf_en),     // input wire ena
  //     .wea  (scale_buf_en_wr),  // input wire [0 : 0] wea
  //     .addra(scale_buf_adr),    // input wire [8 : 0] addra
  //     .dina (scale_buf_wr),     // input wire [511 : 0] dina
  //     .douta(scale_buf_rd)      // output wire [511 : 0] douta
  // );
  scale_buffer_rom scale_buffer (
      .clka (clk),                     // input wire clka
      .ena  (scale_buf_en),     // input wire ena
      // .wea  (scale_buf_en_wr),  // input wire [0 : 0] wea
      .addra(scale_buf_adr),    // input wire [8 : 0] addra
      // .dina (scale_buf_wr),     // input wire [511 : 0] dina
      .douta(scale_buf_rd)      // output wire [511 : 0] douta
  );
  assign scale_buf_adr = 
  ((scale_buf_en_rd == 1'b0) && (scale_buf_en_wr == 1'b1)) ? scale_buf_adr_wr[8 : 0] : //wt scale buf
  ((scale_buf_en_rd == 1'b1) && (scale_buf_en_wr == 1'b0)) ? scale_buf_adr_rd[8 : 0] : 0; //rd scale buf
  assign scale_buf_en  = ((scale_buf_en_rd == 1'b1) || (scale_buf_en_wr == 1'b1)) ? 1 : 0;
  assign scale_buf_en_wr = 1'b0;
  assign scale_buf_wr = 512'b0;

//E regs
  quan_E_Regs_v3 E_regs (
      .clk                   (clk),
      .reset                 ((reset == 1) || (conv_start == 1)),
      .E_set              (E_reg_set),                 // next tile need clr
      .mode                  (mode),
      .E_word     (last_E_word),
      .E_reg_start(last_E_reg_start),
      .E_reg_size (last_E_reg_size),
      .next_out_sa_row_idx             (out_sa_row_idx_pre),
      .E_4_channel_sets(E_4_channel_sets)
  );
  //bias regs
  quan_Bias_Regs_v3 bias_regs (
      .clk           (clk),
      .reset         ((reset == 1) || (conv_start == 1)),
      .bias_set      (bias_reg_set),         // next tile need clr
      .mode          (mode),
      .bias_word     (last_bias_word),
      .bias_reg_start(last_bias_reg_start),
      .bias_reg_size (last_bias_reg_size),
      .next_out_sa_row_idx     (out_sa_row_idx),
      .bias_4_channel_sets(bias_4_channel_sets)
  );
  //scale regs
  quan_Scale_Regs_v3 scale_regs (
      .clk                   (clk),
      .reset                 ((reset == 1) || (conv_start == 1)),
      .scale_set              (scale_reg_set),
      .mode                  (mode),
      .scale_word     (last_scale_word),
      .scale_reg_start(last_scale_reg_start),
      .scale_reg_size (last_scale_reg_size),
      .next_out_sa_row_idx             (last_out_sa_row_idx),
      .scale_4_channel_sets(scale_4_channel_sets)
  );
  //last regs, state regs, to cache the info to wait for valid buffer data read
  assign last_bias_word         = bias_buf_rd;
  assign last_E_word = E_buf_rd;
  assign last_scale_word = scale_buf_rd;

  //computation core
  genvar i, j, m, b;
  generate
    for (i = 1; i <= sa_column_num; i = i + 1) begin : delay_regs_column  //poy, rows
      quan_Delay_Regs_Pixels_v3 delay_regs_pixels (
          .clk             (clk),
          // .en              (sa_en),
          .re_row_pixels   (delay_re_rowi_pixels[i-1]),
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
      quan_Delay_Regs_Weights_v3 delay_regs_weights (
          .clk          (clk),
          // .en           (sa_en),
          // .weights      (weights_vector[(j-1)*row_num_in_sa*8+:(row_num_in_sa*8)]), //weights_word_buf_rd
          .weights      (weights_word_buf_rd[(j-1)*row_num_in_sa*8+:(row_num_in_sa*8)]), //weights_word_buf_rd
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
        quan_SA_sum_E_v10 sa (
            .clk              (clk),

            .reset(((i == 1) && (j == 1)) ? ((reset == 1) || (conv_start == 1) || (conv_compute_fin == 1)):
      ((i > 1) && (j == 1))? core_reset_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_reset_array[i-1][j-1-1]:
      (core_reset_array[i-1-1][j-1] | core_reset_array[i-1][j-1-1])),

            .core_cell_en_pre(((i == 1) && (j == 1)) ? (core_cell_en_pre):
      ((i > 1) && (j == 1))? core_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_en_array[i-1][j-1-1]:
      (core_en_array[i-1-1][j-1] | core_en_array[i-1][j-1-1])),

            .core_cell_output_en_pre(((i == 1) && (j == 1)) ? (core_cell_output_en_pre):
      ((i > 1) && (j == 1))? core_output_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_output_en_array[i-1][j-1-1]:
      (core_output_en_array[i-1-1][j-1] | core_output_en_array[i-1][j-1-1])),

            .core_reset_out(core_reset_array[i-1][j-1]), 
            .core_en_out(core_en_array[i-1][j-1]), 
            .core_output_en_out(core_output_en_array[i-1][j-1]),
            .mode_init             (mode),
            .row_in           ((i == 1)? delay_weights_sets[j-1]:core_row_in_array[i-1-1][j-1]), //weights
            .column_in     ((j == 1)? delay_rowi_pixels[i-1]: core_column_in_array[i-1][j-1-1]), //pixels   
            .row_in_out(core_row_in_array[i-1][j-1]),
            .column_in_out(core_column_in_array[i-1][j-1]),
      //       .sa_E_in(extra_sa_vector_Bs[i-1][j-1]),
      //       .sa_sum_in(extra_sa_vector_As[i-1][j-1]),
      //       .mult_array_mode_pre(((i == 1) && (j == 1)) ? (core_mult_array_mode_pre):
      // ((i > 1) && (j == 1))? core_mult_array_mode_array[i-1-1][j-1]:
      // ((i == 1) && (j > 1))? core_mult_array_mode_array[i-1][j-1-1]:
      // (core_mult_array_mode_array[i-1-1][j-1] | core_mult_array_mode_array[i-1][j-1-1])),
      //       .mult_array_mode_out  (core_mult_array_mode_array[i-1][j-1]),

      //       .row0_out         (sa_row0_outs[i-1][j-1]),
            .out              (out_rowi_channel_seti[i-1][j-1])
        );

        // assign extra_sa_vector_Ps[i-1][j-1] = (core_product_add_bias_en_array[i-1][j-1] == 1'b1) ? sa_row0_outs[i-1][j-1] : 0;
        
        quan_sum_mult_E_vecOp_v4 quan_sum_mult_E_vecOp(
            .clk(clk),
            .core_sum_E_recieve_en_pre(
              ((i == 1) && (j == 1)) ? (core_sum_E_recieve_en_pre):
      ((i > 1) && (j == 1))? core_sum_E_recieve_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_sum_E_recieve_en_array[i-1][j-1-1]:
      (core_sum_E_recieve_en_array[i-1-1][j-1] | core_sum_E_recieve_en_array[i-1][j-1-1])),
            .core_sum_E_recieve_en_out(core_sum_E_recieve_en_array[i-1][j-1]),
            .mode(mode),
            .next_E_set((i == 1)? E_4_channel_sets[(j-1)*E_set_width+:E_set_width]:
            core_E_sets_array[i-1-1][j-1]),
            .E_set(core_E_sets_array[i-1][j-1]),
            .sum_vector(out_rowi_channel_seti[i-1][j-1]),
            .sum_vector_in_mult_A_width(sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]),
            .E_vector_in_mult_B_width(E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1])
        );
       
        //xxxxxxxxxxxxxxxxxxxx mapping changed because of the s16_u8_lut_dsp
        //1-48 -> mult_array[1,48]; 49-64 -> sa_row0; [1, 64] = add_bias_row_in_mult_A_width_width
        assign sum_mult_E_vector_A_mode0
        [((i-1)*sa_row_num+(j-1))*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)+: //32*24
        ((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)] = 
        sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_A_width)];

        assign sum_mult_E_vector_A_mode1
        //mult array
        [((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_A_width)+:(mult_array_length_per_sa*mult_A_width)] = 
        //sum vector
        sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:(mult_array_length_per_sa*mult_A_width)];

        // assign extra_sa_vector_As[i-1][j-1] = 
        // //sa mult
        // sum_vector_in_mult_A_width_rowi_channel_setj[i-1][j-1]
        // //48*24+:
        // [(mult_array_length_per_sa*mult_A_width)+:(column_num_in_sa*mult_A_width)];
        
        assign sum_mult_E_vector_B_mode0
        [((i-1)*sa_row_num+(j-1))*((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)+: //32*16
        ((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)] = 
        E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        //0+:
        [0+:((pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa)*mult_B_width)];
        
        assign sum_mult_E_vector_B_mode1
        //mult array
        [((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa*mult_B_width)+:(mult_array_length_per_sa*mult_B_width)] = 
        //E vector
        E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        //0+
        [0+:(mult_array_length_per_sa*mult_B_width)];

        // assign extra_sa_vector_Bs[i-1][j-1] = 
        // //sa mult
        // E_vector_in_mult_B_width_rowi_channel_setj[i-1][j-1]
        // //48*16+:
        // [(mult_array_length_per_sa*mult_B_width)+:row_num_in_sa*mult_B_width];
        
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

        // assign sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[i-1][j-1]
        // //48*40+:
        // [(mult_array_length_per_sa*mult_P_width)+:(column_num_in_sa*mult_P_width)] = 
        // //[16*40]
        // extra_sa_vector_Ps[i-1][j-1];

        quan_product_add_bias_vecOp_v5 #(.add_bias_width(add_bias_width)) 
        quan_product_add_bias_vecop(
            .clk              (clk),
            .core_product_add_bias_en_pre(((i == 1) && (j == 1)) ? (core_product_add_bias_en_pre):
      ((i > 1) && (j == 1))? core_product_add_bias_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_product_add_bias_en_array[i-1][j-1-1]:
      (core_product_add_bias_en_array[i-1-1][j-1] | core_product_add_bias_en_array[i-1][j-1-1])),
            .core_product_add_bias_en_out(core_product_add_bias_en_array[i-1][j-1]),
            .mode             (mode),
            .sum_mult_E_vector(sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[i-1][j-1]),  // pox res per channel
            .next_bias_set         (
            (i == 1)? bias_4_channel_sets[(j-1)*bias_set_width+:bias_set_width]:
            core_bias_sets_array[i-1-1][j-1]),
            .bias_set(core_bias_sets_array[i-1][j-1]),
            .product_add_bias_vector(product_add_bias_vector_rowi_channel_setj[i-1][j-1])  // pox res per channel
        );

        quan_relu_scale_vecOp_v5 #(.add_bias_width(add_bias_width)) 
        quan_relu_scale_vecop(
            .clk                             (clk),
            .core_relu_scale_en_pre(((i == 1) && (j == 1)) ? (core_relu_scale_en_pre):
      ((i > 1) && (j == 1))? core_relu_scale_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_relu_scale_en_array[i-1][j-1-1]:
      (core_relu_scale_en_array[i-1-1][j-1] | core_relu_scale_en_array[i-1][j-1-1])),
            .core_relu_scale_en_out(core_relu_scale_en_array[i-1][j-1]),
            .mode                            (mode),
            .next_scale_set(
            (i == 1)? scale_4_channel_sets[(j-1)*scale_set_width+:scale_set_width]:
            core_scale_sets_array[i-1-1][j-1]),
            .scale_set(core_scale_sets_array[i-1][j-1]),
            .product_add_bias_vector(product_add_bias_vector_rowi_channel_setj[i-1][j-1]),
            .quantize_vector(quantize_rowi_channel_setj[i-1][j-1])
        ); 
        //conv out fifo
        always @(posedge clk) begin
           core_conv_fifo_en_array[i-1][j-1] <= ((i == 1) && (j == 1)) ? (core_conv_fifo_en_pre):
      ((i > 1) && (j == 1))? core_conv_fifo_en_array[i-1-1][j-1]:
      ((i == 1) && (j > 1))? core_conv_fifo_en_array[i-1][j-1-1]:
      (core_conv_fifo_en_array[i-1-1][j-1] | core_conv_fifo_en_array[i-1][j-1-1]); 
        end
        fifo_rowi_channel_seti fifo_rowi_channel_seti (
            .clk       (clk),                                     // input wire clk
            .srst      ((reset == 1) || (conv_start == 1)),                      // input wire srst
            .din       (quantize_rowi_channel_setj[i-1][j-1]),  // input wire [511 : 0] din
            .wr_en     (core_conv_fifo_en_array[i-1][j-1]),                             // input wire wr_en
            
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
  quan_CBR_kernel_controller_v6 quan_CBR_kernel_ctrl(
    .clk              (clk),
    .reset            ((reset == 1) || (conv_start_pre == 1)),  //next tile need clr
    .re_fm_en         (re_fm_en),
    .re_fm_end(re_fm_end),
    .mode_init             (mode),
    .nif_mult_k_mult_k_init(nif_mult_k_mult_k),
    // .shadow_pof(shadow_pof),
    .shadow_pof_per_core(shadow_pof_per_core),

    //for shell ctrl
    .out_sa_row_idx_pre(out_sa_row_idx_pre),
    .conv_fifo_add_end_pre(conv_fifo_add_end_pre),

    //for kernel ctrl
    .core_cell_en_pre(core_cell_en_pre),
    // .core_cell_reset_pre(core_cell_reset_pre),
    .core_cell_output_en_pre(core_cell_output_en_pre),
    .core_sum_E_recieve_en_pre(core_sum_E_recieve_en_pre),
    // .core_sum_mult_E_en_pre(core_sum_mult_E_en_pre),
    .core_product_add_bias_en_pre(core_product_add_bias_en_pre),
    .core_relu_scale_en_pre(core_relu_scale_en_pre),
    .core_conv_fifo_en_pre(core_conv_fifo_en_pre),
    .core_mult_array_mode_pre(core_mult_array_mode_pre)
  );

  assign conv_compute_fin = conv_fifo_add_end;
  //multiplier array
  Mult_Array_naive #(
    .sa_row_num(sa_row_num),
    .sa_column_num(sa_column_num),
    .buffers_num(buffers_num),
    .mult_array_length(mult_array_length),
    .mult_dsp_array_length(mult_dsp_array_length)
  ) 
  mult_array (
      .clk     (clk),
      // .en      (sum_mult_E_en),
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
  // assign sum_mult_E_vector_P = (product_add_bias_en == 1'b1) ? vector_P : 0;
  assign sum_mult_E_vector_P = vector_P;
  
  //conv store ctrl
  conv_store_ddr_controller_v2 cv_store_ddr_controller (  // conv_out_handler
      //cycle 0 in
      .clk                       (clk),
      .reset                     ((reset == 1) || (conv_start == 1)),
      .conv_store_start_sig          (conv_store),
      .ddr_cmd_ready             (ddr_cmd_ready),
      .ddr_wt_data_ready         (ddr_wt_data_ready),
      .output_ddr_layer_base_adr_init (output_ddr_layer_base_adr),
      .mode_init                      (mode),
      .of_in_2pow                (of_in_2pow),
      .ox_in_2pow                (ox_in_2pow),
      .cur_ox_start              (store_ox_start),
      .cur_oy_start              (store_oy_start),
      .cur_of_start              (store_of_start),
      .cur_pox                   (store_pox),
      .cur_poy                   (store_poy),
      .cur_pof                   (store_pof),
      //store cmd
      .store_ddr_base_adr        (store_ddr_base_adr),
      .store_ddr_length          (store_ddr_length),
      .valid_store_ddr_cmd       (valid_store_ddr_cmd),
      //cycle 0 out
      .fifo_rds                  (fifo_rds),
      //cycle 1 in
      .fifo_data                 (fifo_data),
      //cycle 1 out
      .fifo_column_no            (fifo_column_no),
      .fifo_row_no               (fifo_row_no),
      .out_y_idx                 (out_y_idx),
      .out_x_idx                 (out_x_idx),
      .out_f_idx                 (out_f_idx),
      .conv_fifo_out_tile_add_end(conv_fifo_out_tile_add_end),
      //store ddr data
      .conv_out_ddr_adr          (conv_out_ddr_adr),
      .valid_conv_out_ddr_data   (valid_conv_out_ddr_data),
      .conv_out_ddr_data         (conv_out_ddr_data),
      .conv_store_fin            (conv_store_fin)
  );
  assign fifo_data = fifo_rowi_channel_seti_dout[fifo_column_no][fifo_row_no];
  assign conv_store_fin = conv_fifo_out_tile_add_end;  //demo store ctrl

`ifdef SIMULATION
  // fin and stop
  always @(posedge clk) begin
    if (conv_fin == 1) begin
      $stop;
    end
  end

`endif

  integer file; 
  integer file01, file02, file03, file04, file05, file06;
  integer file11, file12, file13, file14, file15, file16;
  integer file21, file22, file23, file24, file25, file26;
  integer n;
  initial begin
    // initial data
    // for (n = 0; n < 1000000; n = n + 1) begin //DDR_mem_limit
    //   DDR_mem[n] = 512'b0;
    // end
    // for (n = 0; n < bias_buffer_mem_limit; n = n + 1) begin
    //   bias_buffer_mem[n] = 512'b0;
    // end
    // for (n = 0; n < E_buffer_mem_limit; n = n + 1) begin
    //   E_buffer_mem[n] = 512'b0;
    // end
    // for (n = 0; n < scale_buffer_mem_limit; n = n + 1) begin
    //   scale_buffer_mem[n] = 512'b0;
    // end
    // $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\DDR_init.txt", DDR_mem);
    // // // 打印读取的数据以验证
    // // for (n = 0; n < 1000000; n = n + 1) begin //DDR_mem_limit
    // //   $display("DDR_mem[%d] = %h", n, DDR_mem[n]);
    // // end
    // $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\instr_args_hex_num_init.txt", conv_instr_args_mem);
    // // $display("conv_instr_args_mem[%d] = %h", 0, conv_instr_args_mem[0]);
    // $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\bias_buffer_init.txt", bias_buffer_mem);
    // $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\E_buffer_init.txt", E_buffer_mem);
    // $readmemh("D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\scale_buffer_init.txt", scale_buffer_mem);
    // collect conv res file
    file = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/conv_result.txt", "w");
    $display("Time\tvalid\tout_f_idx\tout_y_idx\tout_x_idx");
    if (!file) begin
            $display("Could not open file");
            $stop;
    end
    // 写入文件
    $fdisplay(file, "Time\tvalid\tout_f_idx\tout_y_idx\tout_x_idx\tresult_word");
    // 监控信号变化并写入
    $fmonitor(file, "%t\t%b\t%d\t%d\t%d\t%h", $time, valid_conv_out_ddr_data, out_f_idx, out_y_idx, out_x_idx, conv_out_ddr_data);

    // collect product add bias file
    file01 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_00.txt", "w");
    $fmonitor(file01, "%d\t%d\t%d\t%d\t%h", core_sum_E_recieve_en_array[0][0], shadow_of_start, shadow_oy_start, shadow_ox_start, out_rowi_channel_seti[0][0]);
    file02 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_in_A_00.txt", "w");
    $fmonitor(file02, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_vector_in_mult_A_width_rowi_channel_setj[0][0]);
    file03 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_mult_E_00.txt", "w");
    $fmonitor(file03, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[0][0]);
    file04 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/product_add_bias_00.txt", "w");
    $fmonitor(file04, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, product_add_bias_vector_rowi_channel_setj[0][0]);
    file05 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/quantize_row_00.txt", "w");
    $fmonitor(file05, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, quantize_rowi_channel_setj[0][0]);
    file06 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/E_in_B_00.txt", "w");
    $fmonitor(file06, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, E_vector_in_mult_B_width_rowi_channel_setj[0][0]);

    file11 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_10.txt", "w");
    $fmonitor(file11, "%d\t%d\t%d\t%d\t%h", core_sum_E_recieve_en_array[1][0], shadow_of_start, shadow_oy_start, shadow_ox_start, out_rowi_channel_seti[1][0]);
    file12 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_in_A_10.txt", "w");
    $fmonitor(file12, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_vector_in_mult_A_width_rowi_channel_setj[1][0]);
    file13 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_mult_E_10.txt", "w");
    $fmonitor(file13, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[1][0]);
    file14 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/product_add_bias_10.txt", "w");
    $fmonitor(file14, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, product_add_bias_vector_rowi_channel_setj[1][0]);
    file15 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/quantize_row_10.txt", "w");
    $fmonitor(file15, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, quantize_rowi_channel_setj[1][0]);
    file16 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/E_in_B_10.txt", "w");
    $fmonitor(file16, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, E_vector_in_mult_B_width_rowi_channel_setj[1][0]);

    file21 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_20.txt", "w");
    $fmonitor(file21, "%d\t%d\t%d\t%d\t%h", core_sum_E_recieve_en_array[2][0], shadow_of_start, shadow_oy_start, shadow_ox_start, out_rowi_channel_seti[2][0]);
    file22 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_in_A_20.txt", "w");
    $fmonitor(file22, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_vector_in_mult_A_width_rowi_channel_setj[2][0]);
    file23 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sum_mult_E_20.txt", "w");
    $fmonitor(file23, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, sum_mult_E_vector_in_mult_P_width_rowi_channel_setj[2][0]);
    file24 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/product_add_bias_20.txt", "w");
    $fmonitor(file24, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, product_add_bias_vector_rowi_channel_setj[2][0]);
    file25 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/quantize_row_20.txt", "w");
    $fmonitor(file25, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, quantize_rowi_channel_setj[2][0]);
    file26 = $fopen("D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/E_in_B_20.txt", "w");
    $fmonitor(file26, "%d\t%d\t%d\t%h", shadow_of_start, shadow_oy_start, shadow_ox_start, E_vector_in_mult_B_width_rowi_channel_setj[2][0]);
  end

endmodule

