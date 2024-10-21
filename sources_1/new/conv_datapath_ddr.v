`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 08:20:29 PM
// Design Name: 
// Module Name: conv_datapath_ddr
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


module conv_datapath_ddr(
clk, start, reset

    );
    
parameter sa_row_num = 4; //how many rows in conv core
parameter sa_column_num = 3; //how many columns in conv core
    
parameter row_num = 16; // how many rows in a sa
parameter column_num = 16; // how many columns in a sa
parameter pixels_in_row = 32;
parameter pixels_in_row_in_2pow = 5;
parameter buffers_num = sa_column_num;
parameter pixels_in_row_minus_1 = pixels_in_row-1;
parameter buffers_num_minus_1 = buffers_num-1;
parameter shift_regs_num = 70;
   
parameter weights_in_row = row_num * sa_row_num; // 8bit, length of 1 bit is shorter than that in 8 bit 
parameter weight_row_length = weights_in_row * 8;

parameter headroom = 8;

parameter pixel_width_88 = 16 + headroom;
//parameter pixel_width_18 = 10 + headroom;
parameter pixel_width_18 = 8 + headroom;

parameter pe_parallel_pixel_88 = 2;
parameter pe_parallel_weight_88 = 1;
parameter pe_parallel_pixel_18 = 2; 
parameter pe_parallel_weight_18 = 2; 

parameter weights_row_in_width = 8 * row_num;
parameter sa_row_in_width = weights_row_in_width;

parameter pixels_column_in_width = 16 * column_num;
parameter sa_column_in_width = 24 * column_num;

parameter pe_out_width =  (pixel_width_18) * pe_parallel_pixel_18 *  pe_parallel_weight_18; // width of 18 is bigger than 88

parameter row_counter_width = ($clog2(row_num+1));

parameter out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter out_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter out_width_18 = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;

parameter bias_width = 8; //8 bit bias
parameter bias_set_width = bias_width * pe_parallel_weight_18; //32; vconv pixel out_width
parameter bias_set_4_channel_width = bias_set_width * sa_row_num; //4 * 16 bit

parameter bias_sets_num_in_row = sa_row_num * row_num; //64
parameter bias_tile_length = bias_set_width * bias_sets_num_in_row; //64 * 16bit

parameter add_bias_row_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num;
parameter add_bias_row_width_88 = pixel_width_88 * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;
parameter add_bias_row_width_18_2 = pixel_width_18 * pe_parallel_pixel_18 * 1 * column_num;

parameter mult_A_width = 24;
parameter mult_B_width = 16;
parameter mult_P_width = 40;
parameter mult_array_length = 576;
parameter mult_dsp_array_length = 528;
parameter mult_lut_array_length = mult_array_length - mult_dsp_array_length;
parameter vector_A_width = mult_array_length * mult_A_width;
parameter vector_B_width = mult_array_length * mult_B_width;
parameter vector_P_width = mult_array_length * mult_P_width;
parameter mult_array_length_per_sa = mult_array_length / sa_row_num / sa_column_num; //48

parameter E_scale_tail_width = 16; //16 bit E_scale tail
parameter E_scale_tail_set_width = E_scale_tail_width * pe_parallel_weight_18; //32 bit
parameter E_scale_tail_set_4_channel_width = E_scale_tail_set_width * sa_row_num; //4 * 32 bit
parameter E_scale_tail_sets_num_in_row = sa_row_num * row_num; //64    
parameter E_scale_tail_tile_length = E_scale_tail_set_width * E_scale_tail_sets_num_in_row; //64 * 32bit regs to str
 
parameter E_scale_rank_width = 8; //8 bit E_scale rank
parameter E_scale_rank_set_width = E_scale_rank_width * pe_parallel_weight_18; //16 bit
parameter E_scale_rank_set_4_channel_width = E_scale_rank_set_width * sa_row_num; //4 * 16 bit
parameter E_scale_rank_sets_num_in_row = sa_row_num * row_num; //64   
parameter E_scale_rank_tile_length = E_scale_rank_set_width * E_scale_rank_sets_num_in_row; //64 * 16bit regs to str 
 
parameter pixel_E_scale_tail_width_88 = pixel_width_88 + E_scale_tail_width; //40 bit
parameter pixel_E_scale_tail_width_18 = pixel_width_18 + E_scale_tail_width; //32 bit
parameter row_E_scale_tail_width_88 = pixel_E_scale_tail_width_88 * pe_parallel_weight_88 * pe_parallel_pixel_88 * column_num; 
//40 bit * 32 pixels * 1 channel
parameter row_E_scale_tail_width_18_2 = pixel_E_scale_tail_width_18 * 1 * pe_parallel_pixel_18 * column_num; 
//32 bit * 32 pixels * 1 channel
    
parameter add_bias_row_in_mult_A_width_width = mult_A_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num;
//24 bit * 32 pixels * 2 channel
parameter E_scale_tail_row_in_mult_B_width_width = mult_B_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//16 bit * 32 pixels * 2 channel
parameter row_E_scale_tail_in_mult_P_width_width = mult_P_width * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//40 bit * 32 pixels * 2 channel > 32 bit * 32 pixels * 2 channel > 40 bit * 32 pixels * 1 channel
  
parameter quantified_pixel_width = 8; 
parameter quantified_row_width = (quantified_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//8 bit * 32 pixels * 2 channel
parameter scaled_rank_row_width = (quantified_pixel_width+1) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num; 
//9 bit * 32 pixels * 2 channel
parameter out_data_width = quantified_pixel_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num;

parameter ddr_load_ratio = 2;

    input clk, start, reset;
    
    //instr rom
    wire [9 : 0] instr_adr;
    
    //top_controller
    wire [15:0] instr;
    
    wire conv_fin, pool_fin , concate_fin, shortcut_fin, upsample_fin;
    
    wire instr_rd;
    
    wire [3:0] state;
    
    wire conv_start;
    
    //conv initial
    wire conv_inital_fin;
    
    wire mode;
    
    wire [31:0] nif_mult_k_mult_k;
    
    wire [3:0] k, s, p;
    
    wire [15:0] of, ox, oy, ix, iy, nif;
    
    wire [3:0] nif_in_2pow, ix_in_2pow;
    
    wire [3:0] of_in_2pow, ox_in_2pow; 
    
    wire [15:0] buf_depth_in_row_2pow;
    
    wire [bias_tile_length -1 : 0] bias_tile_val; //will come from args buffer that has not existed
        
    wire [E_scale_tail_tile_length -1 : 0] E_scale_tail_tile_val; 
    wire [E_scale_rank_tile_length -1 : 0] E_scale_rank_tile_val; 
    
    wire conv_load_start;
    
    //conv load ctrl
    wire load_ddr_start;
    
    wire load_ddr_continue; //str_fin
    
    wire [3:0] buf_depth_in_row_2pow_init;
    
    wire [15:0] word_lenth_mult_word_num_mult_spare_num, word_num_mult_spare_num;

    wire valid_load_data;
    
    //ddr info
    wire [15:0] load_row_idx_ddr; 
    wire [15:0] load_row_start_idx_ddr, load_row_end_idx_ddr;
    wire [15:0] load_if_start_idx_ddr, load_if_end_idx_ddr;
    
    wire [15:0] load_ddr_adr;
    wire valid_load_ddr_adr;
    
    //buf info
    wire [1:0] load_buf_idx;
    wire [15:0] load_row_idx_in_3_buf, load_row_idx_buf;
    wire [15:0] load_row_start_idx_buf, load_row_end_idx_buf;
    wire [15:0] load_if_start_idx_buf, load_if_end_idx_buf;
    
    wire [15:0] load_buf_adr;
    
    wire load_tile_fin;
    
    wire load_tile0_fin, load_tileN_fin;
        
    //conv compute ctrl //cv router wire
    wire conv_compute_start;
    wire conv_compute_continue;
    
    wire [15:0] cur_pox, cur_poy, cur_pof, cur_ox_start, cur_oy_start, cur_of_start;
    wire [15:0] ox_start, oy_start, of_start, pox, poy, pof, if_idx; //tile info
    
    wire [3:0] west_pad, slab_num, east_pad;
    wire [15:0] row1_idx, row2_idx, row3_idx;
    
    wire [15:0] row_start_idx, row_end_idx;
    wire [15:0] reg_start_idx, reg_end_idx;
    
    wire conv_end;
    wire conv_pixels_add_end;
    wire conv_nif_add_end;
    
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
    
    wire valid_row1_adr, valid_row2_adr, valid_row3_adr;
    
    //cv_bram_handler wire
    
    wire [15:0] buf1_adr;
    wire [15:0] buf2_adr;
    wire [15:0] buf3_adr;
    
    wire buf1_word_select;
    wire buf2_word_select;
    wire buf3_word_select;
    
    wire [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
    wire [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
    
    wire [15:0] row1_slab_adr;
    wire [1:0] row1_slab_idx;
    wire [15:0] row2_slab_adr;
    wire [1:0] row2_slab_idx;
    wire [15:0] row3_slab_adr;
    wire [1:0] row3_slab_idx;
    
    wire [15:0] slab1_pixels_2;
    wire [15:0] slab2_pixels_2;
    wire [15:0] slab3_pixels_2;
    
    wire [15:0] slab1_adr;
    wire [15:0] slab2_adr;
    wire [15:0] slab3_adr;
    
    wire valid_buf1_adr,
        valid_slab1_adr,
        valid_buf2_adr, 
        valid_slab2_adr,
        valid_buf3_adr,
        valid_slab3_adr;
    
    wire [15:0] last_row1_slab_2;
    wire [15:0] last_row2_slab_2;
    wire [15:0] last_row3_slab_2;
    
    //slab write
    wire [15:0] slab1_adr_wr;
    wire [15:0] slab2_adr_wr;
    wire [15:0] slab3_adr_wr;
    
    wire [15:0] slab1_pixels_2_wr;
    wire [15:0] slab2_pixels_2_wr;
    wire [15:0] slab3_pixels_2_wr;
    
    wire valid_slab1_adr_wr, valid_slab2_adr_wr, valid_slab3_adr_wr;
    
    //ddr simu
    wire valid_ddr_data;
    wire [511:0] ddr_data;
    
    //in_buf1
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf1_rd_data;
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf1_wr_data;
    wire in_buf1_wr;
    wire [15 : 0] in_buf1_addr_wr;
    
    //in_buf2
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf2_rd_data;
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf2_wr_data;
    wire in_buf2_wr;
    wire [15 : 0] in_buf2_addr_wr;
    
    //in_buf3
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf3_rd_data;
    wire [pixels_in_row * 8 * ddr_load_ratio - 1 :0] in_buf3_wr_data;
    wire in_buf3_wr;
    wire [15 : 0] in_buf3_addr_wr;
    
    //row regs
    wire [shift_regs_num * 8 -1 : 0] row_regs_1;
    wire [shift_regs_num * 8 -1 : 0] row_regs_2;
    wire [shift_regs_num * 8 -1 : 0] row_regs_3;
    wire shift_start;
        
    //shift regs
    wire [pixels_in_row * 8 - 1: 0] last_row1_pixels_32, last_row2_pixels_32, last_row3_pixels_32;
    wire re_fm_en, re_fm_end;
    
    wire [pixels_in_row*8-1:0] re_rowi_pixels[sa_column_num-1 :0];
    
    //weight buf
    wire [weight_row_length-1 : 0] weights_vector; //(16 * 4) * 8 or (32 * 4) * 1
    
    //delay regs pixels
//    wire [column_num*16-1:0] delay_row1_pixels, delay_row2_pixels, delay_row3_pixels;
    wire [pixels_column_in_width-1:0] delay_rowi_pixels[sa_column_num-1 :0];
    
    //delay regs weights
//    wire [row_num*8-1:0] delay_weights_1, delay_weights_2, delay_weights_3, delay_weights_4;
    wire [weights_row_in_width -1:0] delay_weights_sets[sa_row_num-1 :0];
    //sa
    
    wire [sa_column_in_width -1:0] sa_columni_ins[sa_column_num-1 :0][sa_row_num-1 :0];
    wire [sa_row_in_width -1:0] sa_rowi_ins[sa_column_num-1 :0][sa_row_num-1 :0];
    wire [column_num * mult_P_width -1:0] sa_row0_outs [sa_column_num-1 : 0][sa_row_num-1 : 0];
     
        // sa control
    wire sa_en, sa_reset;
    wire channel_out_reset, channel_out_en; //need logic
    wire add_bias_en, add_bias_reset;
    
    wire [5:0] out_sa_row_idx; //output sa row idx [1,16]
    
    wire mult_array_mode;
    
    wire channel_out_add_end;
    wire quantify_add_end;
    
    wire [out_width - 1: 0] out_rowi_channel_seti[sa_column_num-1 :0][sa_row_num-1 :0]; // pox res per channel
    
    wire conv_compute_tile_fin;
    
    //bias
    wire [bias_set_4_channel_width-1 :0] bias_4_channel_sets; //4 sets of 16bit(1 bias or 2 bias)
    
    wire [add_bias_row_width - 1: 0] add_bias_rowi_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
    
    //quantify ctrl
    wire e_tail_en, e_tail_reset;
    wire quantify_en, quantify_reset;
    
    //mult_array
    wire [vector_A_width-1 :0] vector_A, e_scale_vector_A;
    wire [vector_B_width-1 :0] vector_B, e_scale_vector_B;
    wire [vector_P_width-1 :0] vector_P, e_scale_vector_P;
    
    ///mult_sa
    wire [column_num * mult_A_width -1:0] extra_sa_vector_As[sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire [mult_B_width -1:0] extra_sa_vector_B [sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire [column_num * mult_P_width -1:0] extra_sa_vector_Ps [sa_column_num-1 : 0][sa_row_num-1 : 0];

    //e_scale regs
    // tile e-scale, will be set at first of the tiling compute, maybe set in several cycles
    wire [E_scale_tail_set_4_channel_width-1 :0] E_scale_tail_4_channel_sets;
    wire [E_scale_rank_set_4_channel_width-1 :0] E_scale_rank_4_channel_sets;
    
    //e_scale
    //cycle 0
    wire [add_bias_row_in_mult_A_width_width-1 : 0] add_bias_rowi_in_mult_A_width_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0]; 
    //24 bit * 32 pixels * 2 channel
    wire [E_scale_tail_row_in_mult_B_width_width-1 : 0] E_scale_tail_rowi_in_mult_B_width_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
    //16 bit * 32 pixels * 2 channel    
    //cycle 1
    wire [row_E_scale_tail_in_mult_P_width_width-1 : 0] rowi_E_scale_tail_in_mult_P_width_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
    //40 bit * 32 pixels * 2 channel
    
    wire [quantified_row_width-1 :0] quantified_rowi_channel_seti[sa_column_num-1 : 0][sa_row_num-1 : 0];
    //8 bit * 32 pixels * 2 channel 
    
    //conv fifo
    wire fifo_rowi_channel_seti_rd_en[sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire [quantified_row_width-1 :0] fifo_rowi_channel_seti_dout[sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire fifo_rowi_channel_seti_full[sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire fifo_rowi_channel_seti_empty[sa_column_num-1 : 0][sa_row_num-1 : 0];
    wire [8 : 0] data_counts[sa_column_num-1 : 0][sa_row_num-1 : 0];

    //conv store ctrl
    //cycle 0 in
    wire conv_store_start; 
    
    //cycle 1 in
    wire [quantified_row_width-1 : 0] fifo_data;
    
    //cycle 0 out
    wire [sa_row_num * sa_column_num-1:0] fifo_rds;
    
    //cycle 1 out
//    output reg [15:0] rowi_out_buf_adr;
    wire [3:0] fifo_column_no, fifo_row_no;
    wire valid_rowi_out_buf_adr;                    
    wire [15:0] out_y_idx, out_x_idx, out_f_idx;                   
    wire conv_out_tile_add_end;
    wire [out_data_width-1 : 0] out_data;
    
    wire conv_store_tile_fin;
    
    //conv args control
    wire conv_args_tile_fin;
    wire conv_args_tile0_fin;
    wire conv_args_tileN_fin;
    
    //conv args buf
    wire [15:0] bias_buf_adr_rd;
    wire [15:0] e_scale_tail_buf_adr_rd;
    wire [15:0] e_scale_rank_buf_adr_rd;
    
    wire bias_buf_rd;
    wire e_scale_tail_buf_rd;
    wire e_scale_rank_buf_rd;
        
    wire e_scale_tail_buf_wr;
    wire [15:0] e_scale_tail_buf_adr_wr;
    wire [31 : 0] e_scale_tail_buf_data_wr;
    wire [31 : 0] e_scale_tail_buf_data_rd;
    
    wire e_scale_rank_buf_wr;
    wire [15:0] e_scale_rank_buf_adr_wr;
    wire [15:0] e_scale_rank_buf_data_wr;
    wire [15:0] e_scale_rank_buf_data_rd;
    
    wire bias_buf_wr;
    wire [15:0] bias_buf_adr_wr;
    wire [15:0] bias_buf_data_wr;
    wire [15:0] bias_buf_data_rd;
    
    Top_Controller top_controller (
        .clk(clk), 
        .reset(reset), 
        .start(start),  
        .instr(instr), 
        .conv_fin(conv_fin), 
        .pool_fin(pool_fin), 
        .concate_fin(concate_fin), 
        .shortcut_fin(shortcut_fin), 
        .upsample_fin(upsample_fin),
            
        .instr_rd(instr_rd),
        .instr_adr(instr_adr),   
        .state(state),
        .conv_start(conv_start)
    );
    
    conv_initial_controller cv_initial_controller(
        .clk(clk), 
        .reset(reset), 
        .start(conv_start), 
        
        .conv_inital_fin(conv_inital_fin),
        .of(of),
        .ox(ox), 
        .oy(oy), 
        .ix(ix), 
        .iy(iy), 
        .nif(nif),
        .k(k), 
        .s(s), 
        .p(p),
        .nif_in_2pow(nif_in_2pow),
        .ix_in_2pow(ix_in_2pow),
        .of_in_2pow(of_in_2pow), 
        .ox_in_2pow(ox_in_2pow),
        .nif_mult_k_mult_k(nif_mult_k_mult_k),
        
        .buf_depth_in_row_2pow(buf_depth_in_row_2pow),
        
        .mode(mode),
        .bias_tile_val(bias_tile_val),
        .E_scale_tail_tile_val(E_scale_tail_tile_val),
        .E_scale_rank_tile_val(E_scale_rank_tile_val),

        .conv_load_start(conv_load_start)
    );
    
    instr_rom instr_rom (
      .clka(clk),    // input wire clka
      .ena(instr_rd),      // input wire ena
      .addra(instr_adr),  // input wire [9 : 0] addra
      .douta(instr)  // output wire [15 : 0] douta
    );
    
    conv_load_controller cv_load_controller(
        .ix_init(ix), 
        .iy_init(iy), 
        .nif_init(nif),
        .k_init(k), 
        .s_init(s), 
        .p_init(p),
        .clk(clk), 
        .load_ddr_start(load_ddr_start), 
        .reset(reset | conv_inital_fin),
        .load_ddr_continue(load_ddr_continue),
        .nif_in_2pow_init(nif_in_2pow),
        .ix_in_2pow_init(ix_in_2pow),
        .buf_depth_in_row_2pow_init(buf_depth_in_row_2pow),
        
        .word_lenth_mult_word_num_mult_spare_num(word_lenth_mult_word_num_mult_spare_num), 
        .word_num_mult_spare_num(word_num_mult_spare_num),
        .valid_load_data(valid_load_data),
        
        //ddr info
        .load_row_idx_ddr(load_row_idx_ddr),
        .load_row_start_idx_ddr(load_row_start_idx_ddr), 
        .load_row_end_idx_ddr(load_row_end_idx_ddr),
        .load_if_start_idx_ddr(load_if_start_idx_ddr), 
        .load_if_end_idx_ddr(load_if_end_idx_ddr),
        .load_ddr_adr(load_ddr_adr),
        .valid_load_ddr_adr(valid_load_ddr_adr),
        
        //buf info
        .load_buf_idx(load_buf_idx),
        .load_row_idx_in_3_buf(load_row_idx_in_3_buf), 
        .load_row_idx_buf(load_row_idx_buf),
        .load_row_start_idx_buf(load_row_start_idx_buf), 
        .load_row_end_idx_buf(load_row_end_idx_buf),
        .load_if_start_idx_buf(load_if_start_idx_buf), 
        .load_if_end_idx_buf(load_if_end_idx_buf),
        .load_buf_adr(load_buf_adr),
            
        .load_tile_fin(load_tile_fin),
            
        .load_tile0_fin(load_tile0_fin),
        .load_tileN_fin(load_tileN_fin)
    );
    
    assign load_ddr_start = conv_load_start;
    assign load_ddr_continue = ((conv_store_tile_fin == 1'b1) && (conv_args_tile_fin == 1'b1))
                               || (conv_args_tile0_fin == 1'b1);
    
    assign valid_load_data = valid_ddr_data;
    
    conv_compute_controller cv_compute_controller( //conv_router_v2 // conv_router_flat
        .mode_init(mode),
        .of_init(of),
        .ox_init(ox), 
        .oy_init(oy), 
        .ix_init(ix), 
        .iy_init(iy),
        .nif_init(nif),
        .k_init(k), 
        .s_init(s), 
        .p_init(p),
        .clk(clk), 
        .conv_compute_start(conv_compute_start), 
        .reset((reset | conv_inital_fin)),
        .nif_in_2pow_init(nif_in_2pow), 
        .ix_in_2pow_init(ix_in_2pow),
        
//        .channel_out_add_end(channel_out_add_end), //the last sa output channel
//        .quantify_add_end(quantify_add_end),
        .conv_compute_continue(conv_compute_continue),
    
        .nif_mult_k_mult_k(nif_mult_k_mult_k), 

        .cur_pox(cur_pox), 
        .cur_pof(cur_pof), 
        .cur_poy(cur_poy),
        .cur_ox_start(cur_ox_start), 
        .cur_of_start(cur_of_start), 
        .cur_oy_start(cur_oy_start),
        .ox_start(ox_start), 
        .oy_start(oy_start), 
        .pox(pox), 
        .poy(poy),
        .of_start(of_start), 
        .pof(pof), 
        .if_idx(if_idx),
        
        .row_slab_start_idx(row_slab_start_idx),
        
        .west_pad(west_pad), 
        .slab_num(slab_num), 
        .east_pad(east_pad),
        
        .row1_idx(row1_idx), 
        .row2_idx(row2_idx), 
        .row3_idx(row3_idx), 
        
        .row_start_idx(row_start_idx), 
        .row_end_idx(row_end_idx),
        
        .reg_start_idx(reg_start_idx), 
        .reg_end_idx(reg_end_idx),
        
        .conv_end(conv_end),
        .conv_pixels_add_end(conv_pixels_add_end),
        .conv_nif_add_end(conv_nif_add_end),
        
        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row1_buf_word_select(row1_buf_word_select),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row2_buf_word_select(row2_buf_word_select),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        .row3_buf_word_select(row3_buf_word_select),
    
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr)
    );
    
    assign conv_compute_start = conv_args_tile0_fin;
    assign conv_compute_continue = (conv_store_tile_fin == 1'b1) && (conv_args_tile_fin == 1'b1);
    
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
    
    reg last_buf1_word_select;
    reg last_buf2_word_select;
    reg last_buf3_word_select;
    
    reg [1:0] last_row1_slab_idx;
    reg [1:0] last_row2_slab_idx;
    reg [1:0] last_row3_slab_idx;
    
    always@(posedge clk) begin
        if ((reset == 1'b1) || (conv_inital_fin == 1'b1)) begin
            state_conv_pixels_add_end <= 0;  
            state_valid_row1_adr <= 0; 
            state_valid_row2_adr <= 0;  
            state_valid_row3_adr <= 0;  
            last_west_pad <= 0; 
            last_slab_num <= 0;
            last_east_pad <= 0; 
            last_row1_idx <= 16'hffff;
            last_row2_idx <= 16'hffff;
            last_row3_idx <= 16'hffff;
            last_row_start_idx <= 16'hffff;
            last_row_end_idx <= 16'hffff;
            last_reg_start_idx <= 16'hffff;
            last_reg_end_idx <= 16'hffff;
            last_row1_buf_idx <= 0;
            last_row2_buf_idx <= 0;
            last_row3_buf_idx <= 0;
            
            last_buf1_word_select <= 0;
            last_buf2_word_select <= 0;
            last_buf3_word_select <= 0;
    
            last_row1_slab_idx <= 0;
            last_row2_slab_idx <= 0;
            last_row3_slab_idx <= 0;
        end
        else if (state == 4'b0001) begin //conv op
            state_conv_pixels_add_end <= conv_pixels_add_end;
            state_valid_row1_adr <= valid_row1_adr;
            state_valid_row2_adr <= valid_row2_adr;
            state_valid_row3_adr <= valid_row3_adr;
            last_west_pad <= west_pad; 
            last_slab_num <= slab_num;
            last_east_pad <= east_pad;
            last_row1_idx <= row1_idx;
            last_row2_idx <= row2_idx;
            last_row3_idx <= row3_idx;
            last_row_start_idx <= row_start_idx;
            last_row_end_idx <= row_end_idx;
            last_reg_start_idx <= reg_start_idx;
            last_reg_end_idx <= reg_end_idx;
            
            last_row1_buf_idx <= row1_buf_idx;
            last_row2_buf_idx <= row2_buf_idx;
            last_row3_buf_idx <= row3_buf_idx;
            
            last_buf1_word_select <= buf1_word_select;
            last_buf2_word_select <= buf2_word_select;
            last_buf3_word_select <= buf3_word_select;
    
            last_row1_slab_idx <= row1_slab_idx;
            last_row2_slab_idx <= row2_slab_idx;
            last_row3_slab_idx <= row3_slab_idx;
        end
    end    
    
    Row_Regs row_regs(
        .reset((reset | conv_inital_fin)),
        .clk(clk),
//        .en(conv_inital_fin),
        
        .k(k),
        .s(s),
        
        .last_west_pad(last_west_pad),
        .last_slab_num(last_slab_num),
        .last_east_pad(last_east_pad),
        .last_row1_idx(last_row1_idx), 
        .last_row2_idx(last_row2_idx), 
        .last_row3_idx(last_row3_idx),
        .last_row_start_idx(last_row_start_idx), 
        .last_row_end_idx(last_row_end_idx),
            
        .last_reg_start_idx(last_reg_start_idx), 
        .last_reg_end_idx(last_reg_end_idx),
            
        .last_row1_pixels_32(last_row1_pixels_32), 
        .last_row2_pixels_32(last_row2_pixels_32), 
        .last_row3_pixels_32(last_row3_pixels_32),
        .last_row1_slab_2(last_row1_slab_2), 
        .last_row2_slab_2(last_row2_slab_2), 
        .last_row3_slab_2(last_row3_slab_2),
        
        .state_valid_row1_adr(state_valid_row1_adr),
        .state_valid_row2_adr(state_valid_row2_adr),
        .state_valid_row3_adr(state_valid_row3_adr),
        
        .state_conv_pixels_add_end(state_conv_pixels_add_end),
        
        .row_regs_1(row_regs_1),
        .row_regs_2(row_regs_2),
        .row_regs_3(row_regs_3),
        
        .shift_start(shift_start)
    );
    
    Shift_Regs shift_regs(
        .reset((reset | conv_inital_fin)),
        .clk(clk),
//        .en(conv_inital_fin),
        
        .k(k),
        .s(s),
        
        .row_regs_1(row_regs_1),
        .row_regs_2(row_regs_2),
        .row_regs_3(row_regs_3),
        
        .shift_start(shift_start),
        
        .re_row1_pixels(re_rowi_pixels[1-1]),
        .re_row2_pixels(re_rowi_pixels[2-1]),
        .re_row3_pixels(re_rowi_pixels[3-1]),
        .re_fm_en(re_fm_en),
        .re_fm_end(re_fm_end)
    );
    
        
    conv_bram_handler cv_bram_handler(
        .reset((reset | conv_inital_fin)),
        .clk(clk),
//        .en(en),
                
        //cycle 0 in
        .valid_row1_adr(valid_row1_adr),
        .valid_row2_adr(valid_row2_adr),
        .valid_row3_adr(valid_row3_adr),

        .row1_buf_adr(row1_buf_adr),
        .row1_buf_idx(row1_buf_idx),
        .row2_buf_adr(row2_buf_adr),
        .row2_buf_idx(row2_buf_idx),
        .row3_buf_adr(row3_buf_adr),
        .row3_buf_idx(row3_buf_idx),
        
        .row1_buf_word_select(row1_buf_word_select),
        .row2_buf_word_select(row2_buf_word_select),
        .row3_buf_word_select(row3_buf_word_select),
        
        .row1_slab_adr(row1_slab_adr),
        .row1_slab_idx(row1_slab_idx),
        .row2_slab_adr(row2_slab_adr),
        .row2_slab_idx(row2_slab_idx),
        .row3_slab_adr(row3_slab_adr),
        .row3_slab_idx(row3_slab_idx),
        
        //cycle 1 in
        .buf1_pixels_32(buf1_pixels_32),
        .buf2_pixels_32(buf2_pixels_32),
        .buf3_pixels_32(buf3_pixels_32),
        
        .last_row1_buf_idx(last_row1_buf_idx),
        .last_row2_buf_idx(last_row2_buf_idx),
        .last_row3_buf_idx(last_row3_buf_idx),
        
        .slab1_pixels_2(slab1_pixels_2),
        .slab2_pixels_2(slab2_pixels_2),
        .slab3_pixels_2(slab3_pixels_2),
        
        .last_row1_slab_idx(last_row1_slab_idx),
        .last_row2_slab_idx(last_row2_slab_idx),
        .last_row3_slab_idx(last_row3_slab_idx),
        
        //cycle 0 out
        .buf1_adr(buf1_adr),
        .buf2_adr(buf2_adr),
        .buf3_adr(buf3_adr),
        
        .buf1_word_select(buf1_word_select),
        .buf2_word_select(buf2_word_select),
        .buf3_word_select(buf3_word_select),
        
        .slab1_adr(slab1_adr),
        .slab2_adr(slab2_adr),
        .slab3_adr(slab3_adr),
        
        .valid_buf1_adr(valid_buf1_adr),
        .valid_slab1_adr(valid_slab1_adr),
        .valid_buf2_adr(valid_buf2_adr), 
        .valid_slab2_adr(valid_slab2_adr),
        .valid_buf3_adr(valid_buf3_adr),
        .valid_slab3_adr(valid_slab3_adr),
        
        //cycle 1 out
        .last_row1_pixels_32(last_row1_pixels_32),
        .last_row2_pixels_32(last_row2_pixels_32),
        .last_row3_pixels_32(last_row3_pixels_32),
        
        .last_row1_slab_2(last_row1_slab_2),
        .last_row2_slab_2(last_row2_slab_2),
        .last_row3_slab_2(last_row3_slab_2),
        
        //cycle 1 out
        .slab1_adr_wr(slab1_adr_wr),
        .slab2_adr_wr(slab2_adr_wr),
        .slab3_adr_wr(slab3_adr_wr),
        .slab1_pixels_2_wr(slab1_pixels_2_wr),
        .slab2_pixels_2_wr(slab2_pixels_2_wr),
        .slab3_pixels_2_wr(slab3_pixels_2_wr),
        .valid_slab1_adr_wr(valid_slab1_adr_wr),
        .valid_slab2_adr_wr(valid_slab2_adr_wr),
        .valid_slab3_adr_wr(valid_slab3_adr_wr)
    );
    
    //DDR
    conv_ddr_simulator cv_ddr_simulator(
        .reset((reset | conv_inital_fin)),
        .clk(clk),
        
        .ddr_rd_adr(load_ddr_adr),
        .ddr_rd(valid_load_ddr_adr),
        
        .ddr_data(ddr_data),
        .valid_ddr_data(valid_ddr_data)
    );
    
//    ROM1_handler rom1_handler( //in buf 1
//        .clk(clk),
//        .ena(valid_buf1_adr),
//        .s(s),
//        .address(buf1_adr),
//        .data(buf1_pixels_32)
//    );
    
    in_buf1 in_buf1 (
      .clka(clk),    // input wire clka
      .ena(in_buf1_wr),      // input wire ena
      .wea(in_buf1_wr),      // input wire [0 : 0] wea
      .addra(in_buf1_addr_wr[12 : 0]),  // input wire [12 : 0] addra
      .dina(in_buf1_wr_data),    // input wire [511 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_buf1_adr),      // input wire enb , read en
      .addrb(buf1_adr[12:0]),  // input wire [12 : 0] addrb
      .doutb(in_buf1_rd_data)  // output wire [511 : 0] doutb
    );
    
    assign in_buf1_wr = (valid_load_data == 1'b1) && (load_buf_idx == 2'd1);
    assign in_buf1_addr_wr = load_buf_adr;
    assign in_buf1_wr_data = ddr_data;
    
    assign buf1_pixels_32 = (last_buf1_word_select == 1'b0) ?
                            in_buf1_rd_data[pixels_in_row * 8 - 1 :0]:
                            in_buf1_rd_data[pixels_in_row * 8 * ddr_load_ratio - 1 :pixels_in_row * 8];
    
//    ROM2_handler rom2_handler(
//        .clk(clk),
//        .ena(valid_buf2_adr),
//        .s(s),
//        .address(buf2_adr),
//        .data(buf2_pixels_32)
//    );
    
    in_buf2 in_buf2 (
      .clka(clk),    // input wire clka
      .ena(in_buf2_wr),      // input wire ena
      .wea(in_buf2_wr),      // input wire [0 : 0] wea
      .addra(in_buf2_addr_wr[12 : 0]),  // input wire [12 : 0] addra
      .dina(in_buf2_wr_data),    // input wire [511 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_buf2_adr),      // input wire enb , read en
      .addrb(buf2_adr[12:0]),  // input wire [12 : 0] addrb
      .doutb(in_buf2_rd_data)  // output wire [511 : 0] doutb
    );
    
    assign in_buf2_wr = (valid_load_data == 1'b1) && (load_buf_idx == 2'd2);
    assign in_buf2_addr_wr = load_buf_adr;
    assign in_buf2_wr_data = ddr_data;
    
    assign buf2_pixels_32 = (last_buf2_word_select == 1'b0) ?
                            in_buf2_rd_data[pixels_in_row * 8 - 1 :0]:
                            in_buf2_rd_data[pixels_in_row * 8 * ddr_load_ratio - 1 :pixels_in_row * 8];
    
    
//    ROM3_handler rom3_handler(
//        .clk(clk),
//        .ena(valid_buf3_adr),
//        .s(s),
//        .address(buf3_adr),
//        .data(buf3_pixels_32)
//    );
    
    in_buf3 in_buf3 (
      .clka(clk),    // input wire clka
      .ena(in_buf3_wr),      // input wire ena
      .wea(in_buf3_wr),      // input wire [0 : 0] wea
      .addra(in_buf3_addr_wr[12 : 0]),  // input wire [12 : 0] addra
      .dina(in_buf3_wr_data),    // input wire [511 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_buf3_adr),      // input wire enb , read en
      .addrb(buf3_adr[12:0]),  // input wire [12 : 0] addrb
      .doutb(in_buf3_rd_data)  // output wire [511 : 0] doutb
    );
    
    assign in_buf3_wr = (valid_load_data == 1'b1) && (load_buf_idx == 2'd3);
    assign in_buf3_addr_wr = load_buf_adr;
    assign in_buf3_wr_data = ddr_data;
    
    assign buf3_pixels_32 = (last_buf3_word_select == 1'b0) ?
                            in_buf3_rd_data[pixels_in_row * 8 - 1 :0]:
                            in_buf3_rd_data[pixels_in_row * 8 * ddr_load_ratio - 1 :pixels_in_row * 8];
    
    
    slab_1 slab_1 (
      .clka(clk),    // input wire clka
      .ena(valid_slab1_adr_wr),      // input wire ena
      .wea(valid_slab1_adr_wr),      // input wire [0 : 0] wea
      .addra(slab1_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab1_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_slab1_adr),      // input wire enb
      .addrb(slab1_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab1_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_2 slab_2 (
      .clka(clk),    // input wire clka
      .ena(valid_slab2_adr_wr),      // input wire ena
      .wea(valid_slab2_adr_wr),      // input wire [0 : 0] wea
      .addra(slab2_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab2_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_slab2_adr),      // input wire enb
      .addrb(slab2_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab2_pixels_2)  // output wire [15 : 0] doutb
    );
    
    slab_3 slab_3 (
      .clka(clk),    // input wire clka
      .ena(valid_slab3_adr_wr),      // input wire ena
      .wea(valid_slab3_adr_wr),      // input wire [0 : 0] wea
      .addra(slab3_adr_wr[14 : 0]),  // input wire [14 : 0] addra
      .dina(slab3_pixels_2_wr),    // input wire [15 : 0] dina
      .clkb(clk),    // input wire clkb
      .enb(valid_slab3_adr),      // input wire enb
      .addrb(slab3_adr[14 : 0]),  // input wire [14 : 0] addrb
      .doutb(slab3_pixels_2)  // output wire [15 : 0] doutb
    );
    
    //weights buf  ctrl
    
    //weights buf
    
    cv_weights_handler cv_weights_handler(
        .mode(mode),
        .clk(clk), 
        .reset((reset | conv_inital_fin)), //need xxxx
        .re_fm_en(re_fm_en),
        .re_fm_end(re_fm_end),
        .weights_vector(weights_vector)
    );
    
    //args buf ctrl
    
    //args buf
    conv_args_controller cv_args_controller(
        .mode(mode),
        .clk(clk), 
        .reset((reset | conv_inital_fin)), //next tile need clr
        
        .args_refresh(conv_compute_tile_fin),
       
        .of_init(of),
        
        .pof(pof), //pof args sets to wr to regs in a cycle
        
        .args_tile_fin(conv_args_tile_fin),
       
        .bias_buf_adr_rd(bias_buf_adr_rd),
        
        .e_scale_tail_buf_adr_rd(e_scale_tail_buf_adr_rd),
        
        .e_scale_rank_buf_adr_rd(e_scale_rank_buf_adr_rd),
        
        .bias_buf_rd(bias_buf_rd),
        .e_scale_tail_buf_rd(e_scale_tail_buf_rd),
        .e_scale_rank_buf_rd(e_scale_rank_buf_rd)
    );
    
    e_scale_tail_buf e_scale_tail_buf(
        .clk(clk),    
        .mode(mode),
        .e_scale_tail_buf_rd(e_scale_tail_buf_rd), //ena
        .e_scale_tail_buf_wr(e_scale_tail_buf_wr),
        .e_scale_tail_buf_adr(e_scale_tail_buf_adr_rd),
        .e_scale_tail_buf_data_wr(e_scale_tail_buf_data_wr), 
        .e_scale_tail_buf_data_rd(e_scale_tail_buf_data_rd)
    );
    assign e_scale_tail_buf_wr = 0;
    

    e_scale_rank_buf e_scale_rank_buf(
        .clk(clk),    
        .mode(mode),
        .e_scale_rank_buf_rd(e_scale_rank_buf_rd), //ena
        .e_scale_rank_buf_wr(e_scale_rank_buf_wr),
        .e_scale_rank_buf_adr(e_scale_rank_buf_adr_rd),
        .e_scale_rank_buf_data_wr(e_scale_rank_buf_data_wr), 
        .e_scale_rank_buf_data_rd(e_scale_rank_buf_data_rd)
    );
    
    assign e_scale_rank_buf_wr = 0;
    
    bias_buf bias_buf(
        .clk(clk),    
        .mode(mode),
        .bias_buf_rd(bias_buf_rd), //ena  write need more logic
        .bias_buf_wr(bias_buf_wr),
        .bias_buf_adr(bias_buf_adr_rd),
        .bias_buf_data_wr(bias_buf_data_wr), 
        .bias_buf_data_rd(bias_buf_data_rd)
    );
    
    assign bias_buf_wr = 0;
    
    genvar i, j;
    
    generate
        for (i = 1; i <= sa_column_num; i = i + 1) begin: delay_regs_column //poy, rows
            Delay_Regs_Pixels delay_regs_pixels(
                .clk(clk), 
                .reset((sa_reset | reset | conv_inital_fin)), 
                .en(sa_en), 
                .re_row_pixels(re_rowi_pixels[i-1]),
                .delay_row_pixels(delay_rowi_pixels[i-1])
            );
//            assign sa_columni_ins[i-1] = (mult_array_mode == 1'b0) ? 
//            {{(sa_column_in_width-pixels_column_in_width){1'b0}}, delay_rowi_pixels[i-1]} :
//            extra_sa_vector_As[i-1][j-1];
            
            for (j = 1; j <= sa_row_num; j = j + 1) begin //output channel
                assign sa_columni_ins[i-1][j-1] = (e_tail_en == 1'b0) ? 
                {{(sa_column_in_width-pixels_column_in_width){1'b0}}, delay_rowi_pixels[i-1]} :
                extra_sa_vector_As[i-1][j-1];
            end
        end
        for (j = 1; j <= sa_row_num; j = j + 1) begin: delay_regs_row //output channel
            Delay_Regs_Weights delay_regs_weights(
                .clk(clk), 
                .reset((sa_reset | reset | conv_inital_fin)), 
                .en(sa_en), 
                .weights(weights_vector[(j-1)* row_num * 8 +: (row_num * 8)]),
                .delay_weights(delay_weights_sets[j-1])
            );    
            for (i = 1; i <= sa_column_num; i = i + 1) begin //poy, rows
                assign sa_rowi_ins[i-1][j-1] = (e_tail_en == 1'b0) ? 
                delay_weights_sets[j-1] : 
                {{(sa_row_in_width-mult_B_width){1'b0}},extra_sa_vector_B[i-1][j-1]}; 
            end
        end

        for (i = 1; i <= sa_column_num; i = i + 1) begin: sa_column //poy, rows
            for (j = 1; j <= sa_row_num; j = j + 1) begin: sa_row //output channel
                SA_fin sa(
                    .clk(clk), 
                    .reset((sa_reset | reset | conv_inital_fin)), 
                    .en(sa_en), 
                    .mode(mode), 
                    .channel_out_reset((channel_out_reset | reset | conv_inital_fin)),
                    .channel_out_en(channel_out_en), 
                    .out_sa_row_idx(out_sa_row_idx),
                    .row_in(sa_rowi_ins[i-1][j-1]), //weights or 16bit e_scale
                    .column_in(sa_columni_ins[i-1][j-1]), //pixels or 24bit add_biases 
                    .mult_array_mode(mult_array_mode),
                    .row0_out(sa_row0_outs[i-1][j-1]),
                    .out(out_rowi_channel_seti[i-1][j-1])
                );
                
                assign extra_sa_vector_Ps[i-1][j-1]
                = (quantify_en == 1'b1)? sa_row0_outs[i-1][j-1] : 0;
                
                Add_Bias bias_adder(
                    .clk(clk), 
                    .reset((add_bias_reset | reset | conv_inital_fin)), 
                    .en(add_bias_en), 
                    .mode(mode), 
                    .rowi_channel_seti(out_rowi_channel_seti[i-1][j-1]), // pox res per channel
                    .bias_set(bias_4_channel_sets[(j-1)*bias_set_width +: bias_set_width]),
                    .add_bias_row(add_bias_rowi_channel_seti[i-1][j-1]) // pox res per channel
                );
                
                E_Scale E_scale(
                    //cycle 0 in
                    .clk(clk), 
                    .e_tail_reset((e_tail_reset | reset | conv_inital_fin)),
                    .quantify_en(quantify_en), 
                    .quantify_reset((quantify_reset | reset | conv_inital_fin)),
                    .mode(mode), 
                    .E_scale_tail_set(E_scale_tail_4_channel_sets[(j-1)*E_scale_tail_set_width +: E_scale_tail_set_width]),
                    .E_scale_rank_set(E_scale_rank_4_channel_sets[(j-1)*E_scale_rank_set_width +: E_scale_rank_set_width]),
                     
                    .add_bias_row(add_bias_rowi_channel_seti[i-1][j-1]),
                    
                    //cycle 0 out
                    .add_bias_row_in_mult_A_width(add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1]),
                    .E_scale_tail_row_in_mult_B_width(E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1]),
                    
                    //cycle 1 in
                    .row_E_scale_tail_in_mult_P_width(rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1]),
                    
                    //cycle 1 out
                    .quantified_row(quantified_rowi_channel_seti[i-1][j-1])
                );
                //1-48 -> mult_array[1,48]; 49-64 -> sa_row0; [1, 64] = add_bias_row_in_mult_A_width_width
                assign e_scale_vector_A[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa * mult_A_width) 
                +: (mult_array_length_per_sa * mult_A_width)]
                = (e_tail_en == 1'b1) ? add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1]
                [0 +: (mult_array_length_per_sa * mult_A_width)] : 0;
                
                assign extra_sa_vector_As[i-1][j-1] 
                = (e_tail_en == 1'b1) ? add_bias_rowi_in_mult_A_width_channel_seti[i-1][j-1]
                [(mult_array_length_per_sa * mult_A_width) 
                +: (column_num * mult_A_width)] : 0;
                
                assign e_scale_vector_B[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa * mult_B_width)
                +: (mult_array_length_per_sa * mult_B_width)]
                = (e_tail_en == 1'b1) ? E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1]
                [0 +: (mult_array_length_per_sa * mult_B_width)] : 0;
                
                assign extra_sa_vector_B[i-1][j-1] 
                = (e_tail_en == 1'b1) ? E_scale_tail_rowi_in_mult_B_width_channel_seti[i-1][j-1]
                [(mult_array_length_per_sa * mult_B_width) +: mult_B_width] : 0;
                
                assign rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1]
                [0 +: (mult_array_length_per_sa * mult_P_width)]
                = e_scale_vector_P[((i-1)*sa_row_num+(j-1))*(mult_array_length_per_sa * mult_P_width)
                +: (mult_array_length_per_sa * mult_P_width)];
                
                assign rowi_E_scale_tail_in_mult_P_width_channel_seti[i-1][j-1]
                [(mult_array_length_per_sa * mult_P_width) +: (column_num * mult_P_width)]
                = extra_sa_vector_Ps[i-1][j-1];
                
                fifo_rowi_channel_seti fifo_rowi_channel_seti (
                  .clk(clk),      // input wire clk
                  .srst((reset | conv_inital_fin)),    // input wire srst
                  .din(quantified_rowi_channel_seti[i-1][j-1]),      // input wire [511 : 0] din
                  .wr_en(quantify_en),  // input wire wr_en
                  .rd_en(fifo_rowi_channel_seti_rd_en[i-1][j-1]),  // input wire rd_en
                  .dout(fifo_rowi_channel_seti_dout[i-1][j-1]),    // output wire [511 : 0] dout
                  .full(fifo_rowi_channel_seti_full[i-1][j-1]),    // output wire full
                  .empty(fifo_rowi_channel_seti_empty[i-1][j-1]),  // output wire empty
                  .data_count(data_counts[i-1][j-1])
                );
                
                assign fifo_rowi_channel_seti_rd_en[i-1][j-1] 
                = fifo_rds[(((i-1) << 2) + j-1)];

            end
        end
    endgenerate
    
    // sa control
    SA_Ctrl sa_ctrl(
        .mode(mode),
        .clk(clk), 
        .reset((reset | conv_inital_fin)), //next tile need clr
//        .en(en), 
        .re_fm_en(re_fm_en),
        .nif_mult_k_mult_k(nif_mult_k_mult_k),
        .sa_en(sa_en), 
        .sa_reset(sa_reset),
        .channel_out_reset(channel_out_reset), 
        .channel_out_en(channel_out_en),
        .add_bias_en(add_bias_en),
        .add_bias_reset(add_bias_reset),
        .e_tail_en(e_tail_en), 
        .e_tail_reset(e_tail_reset),
        .quantify_en(quantify_en), 
        .quantify_reset(quantify_reset),
        .mult_array_mode(mult_array_mode),
        
        .out_sa_row_idx(out_sa_row_idx),
        .channel_out_add_end(channel_out_add_end),
        .quantify_add_end(quantify_add_end)
    );
    
    assign conv_compute_tile_fin = quantify_add_end;
    
    //bias regs
    Bias_Regs bias_regs(
        .clk(clk), 
        .set(conv_inital_fin), // next tile need clr
        .mode(mode),
        .bias_tile_val(bias_tile_val),
        .out_sa_row_idx(out_sa_row_idx),
        .bias_4_channel_sets(bias_4_channel_sets)
    );
    
    Mult_Array mult_array(
        .clk(clk), 
        .en(e_tail_en),
        .vector_A(vector_A),
        .vector_B(vector_B),
        .vector_P(vector_P)
    );

    assign vector_A = e_scale_vector_A;
    assign vector_B = e_scale_vector_B;
    
    assign e_scale_vector_P = (quantify_en == 1'b1) ? vector_P : 0;
    
    E_Scale_Regs E_scale_regs (
        .clk(clk), 
        .set(conv_inital_fin), // next tile need clr
        .mode(mode),
        
        .E_scale_tail_tile_val(E_scale_tail_tile_val),
        .E_scale_rank_tile_val(E_scale_rank_tile_val),
        .out_sa_row_idx(out_sa_row_idx),
        
        .E_scale_tail_4_channel_sets(E_scale_tail_4_channel_sets),
        .E_scale_rank_4_channel_sets(E_scale_rank_4_channel_sets)
    );

    
    conv_store_controller cv_store_controller ( // conv_out_handler
        //cycle 0 in
        .mode(mode),
        .clk(clk), 
        .reset((reset | conv_inital_fin)),
//        .en(en), 
        .cur_ox_start(cur_ox_start), 
        .cur_oy_start(cur_oy_start), 
        .cur_of_start(cur_of_start), 
        .cur_pox(cur_pox), 
        .cur_poy(cur_poy), 
        .cur_pof(cur_pof), 
        .conv_store_start(conv_store_start),
        .of_in_2pow(of_in_2pow), 
        .ox_in_2pow(ox_in_2pow),
        
        //cycle 0 out
        .fifo_rds(fifo_rds),
        //cycle 1 in
        .fifo_data(fifo_data),
        //cycle 1 out
        //rowi_out_buf_adr,
        .fifo_column_no(fifo_column_no), 
        .fifo_row_no(fifo_row_no),
        .valid_rowi_out_buf_adr(valid_rowi_out_buf_adr),
        .out_y_idx(out_y_idx), 
        .out_x_idx(out_x_idx), 
        .out_f_idx(out_f_idx),
        .out_data(out_data),
        .conv_out_tile_add_end(conv_out_tile_add_end)
    );
    
    assign conv_store_tile_fin = conv_out_tile_add_end;
    assign conv_store_start = (conv_compute_tile_fin == 1'b1) && (load_tileN_fin == 1'b1);
    
    assign fifo_data = fifo_rowi_channel_seti_dout[fifo_column_no][fifo_row_no];
    
    assign conv_fin = conv_out_tile_add_end 
                    && (cur_oy_start + cur_poy - 1 == oy)
                    && (cur_ox_start + cur_pox - 1 == ox)
                    && (cur_of_start + cur_pof - 1 == of); //xxx
    assign pool_fin = 1'b0; 
    assign concate_fin = 1'b0;
    assign shortcut_fin = 1'b0; 
    assign upsample_fin = 1'b0;

endmodule
