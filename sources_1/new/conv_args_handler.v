`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/23/2024 03:34:25 PM
// Design Name:
// Module Name: conv_args_handler
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


module conv_args_handler(
    clk, reset,
    args_refresh, //begin to refresh the pof regs of args

    mode_init,
    of_init,
    bias_layer_base_buf_adr_rd_init,
    tail_layer_base_buf_adr_rd_init,
    rank_layer_base_buf_adr_rd_init,
    // args_tile_fin,
    bias_buf_adr_rd,
    e_scale_tail_buf_adr_rd,
    e_scale_rank_buf_adr_rd,
    bias_buf_en_rd,
    e_scale_tail_buf_en_rd,
    e_scale_rank_buf_en_rd,
    bias_reg_start,
    bias_reg_size,
    tail_reg_start,
    tail_reg_size,
    rank_reg_start,
    rank_reg_size
  );
  // args buffer read control in the computation term
  parameter args_regs_num = 64;
  parameter row_num_in_mode0 = 64;
  parameter row_num_in_mode1 = 128;
  parameter bias_num_in_word_2pow = 6; //64, static num, cannot be changed
  parameter tail_num_in_word_2pow = 5; //32, static num, cannot be changed
  parameter rank_num_in_word_2pow = 6; //64, static num, cannot be changed
  parameter args_num_in_reg_2pow_mode0 = 0; //1
  parameter args_num_in_reg_2pow_mode1 = 1; //2

  input clk, reset;
  input args_refresh;
  input mode_init;
  input [15:0] of_init;
  input [15:0] bias_layer_base_buf_adr_rd_init;
  input [15:0] tail_layer_base_buf_adr_rd_init;
  input [15:0] rank_layer_base_buf_adr_rd_init;
  // output args_tile_fin;

  //args  buf rd adr
  output [15:0] bias_buf_adr_rd;
  output [15:0] e_scale_tail_buf_adr_rd;
  output [15:0] e_scale_rank_buf_adr_rd;
  output reg [7:0] bias_reg_start; // 0-63
  output [7:0] bias_reg_size; // 0-63
  output reg [7:0] tail_reg_start; // 0-63
  output [7:0] tail_reg_size; // 0-63
  output reg [7:0] rank_reg_start; // 0-63
  output [7:0] rank_reg_size; // 0-63
  output bias_buf_en_rd;
  output e_scale_tail_buf_en_rd;
  output e_scale_rank_buf_en_rd;

  reg mode;
  reg [15:0] of;
  reg [15:0] bias_layer_base_buf_adr_rd, tail_layer_base_buf_adr_rd, rank_layer_base_buf_adr_rd;
  //loop args word --> args regs
  reg bias_signal_add, tail_signal_add, rank_signal_add;
  reg [15:0] bias_word_counter;
  wire loop_bias_word_counter_add_begin, loop_bias_word_counter_add_end;
  reg [15:0] tail_word_counter;
  wire loop_tail_word_counter_add_begin, loop_tail_word_counter_add_end;
  reg [15:0] rank_word_counter;
  wire loop_rank_word_counter_add_begin, loop_rank_word_counter_add_end;
  reg bias_word_fin, tail_word_fin, rank_word_fin;
  //loop args_tof
  reg [15:0] args_tof_start;
  wire loop_args_tof_add_begin, loop_args_tof_add_end;
  wire [15:0] row_num = (mode == 1'b0)? row_num_in_mode0 :
       (mode == 1'b1)? row_num_in_mode1 : 0;
  wire [1:0] args_num_in_reg_2pow = (mode == 1'b0)? args_num_in_reg_2pow_mode0 :
       (mode == 1'b1)? args_num_in_reg_2pow_mode1 : 0;
  wire [15:0] tile_of_size; //arg nums need to load into regs

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin //set
      of <= of_init;
      mode <= mode_init;
      bias_layer_base_buf_adr_rd <= bias_layer_base_buf_adr_rd_init;
      tail_layer_base_buf_adr_rd <= tail_layer_base_buf_adr_rd_init;
      rank_layer_base_buf_adr_rd <= rank_layer_base_buf_adr_rd_init;
    end
    else
    begin
      of <= of;
      mode <= mode;
      bias_layer_base_buf_adr_rd <= bias_layer_base_buf_adr_rd;
      tail_layer_base_buf_adr_rd <= tail_layer_base_buf_adr_rd;
      rank_layer_base_buf_adr_rd <= rank_layer_base_buf_adr_rd;
    end
  end

  //bias refresh  [args_tof_start, args_tof_start + tile_of_size)
  //a bias word(512 bit) contains 64 bias if pof>64 and F>64, otherwise min(pof, F) bias and 0s.
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      bias_signal_add <= 0;
    end
    else if (args_refresh == 1'b1)
    begin
      bias_signal_add <= 1;
    end
    else if (loop_bias_word_counter_add_end == 1'b1)
    begin
      bias_signal_add <= 0;
    end
    else
    begin
      bias_signal_add <= bias_signal_add;
    end
  end

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      bias_word_counter <= 1;
      bias_reg_start <= 1;
    end
    else if (loop_bias_word_counter_add_begin == 1'b1)
    begin
      if (loop_bias_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        bias_word_counter <= 1;
        bias_reg_start <= 1;
      end
      else
      begin
        bias_word_counter <= bias_word_counter + 1;
        bias_reg_start <= bias_reg_start + bias_reg_size;
      end
    end
    else
    begin
      bias_word_counter <= bias_word_counter;
      bias_reg_start <= bias_reg_start;
    end
  end
  assign loop_bias_word_counter_add_begin = bias_signal_add;
  assign loop_bias_word_counter_add_end = loop_bias_word_counter_add_begin
         && ((bias_word_counter << bias_num_in_word_2pow ) >= tile_of_size);

  // bias_buf_word[layer_base_adr+tof_base_adr +: bias_word_counter * bias_num_in_word * 8] --->
  // bias_regs[start +: bias_word_counter * bias_num_in_word / args_num_in_reg]
  assign bias_reg_size = ((bias_word_counter << bias_num_in_word_2pow) > tile_of_size)?
         ((tile_of_size - ((bias_word_counter-1) << bias_num_in_word_2pow))>>args_num_in_reg_2pow):
         (1 << bias_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign bias_buf_adr_rd = bias_layer_base_buf_adr_rd + ((args_tof_start - 1) >> bias_num_in_word_2pow) + bias_word_counter - 1;
  assign bias_buf_en_rd = loop_bias_word_counter_add_begin;

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      bias_word_fin <= 0;
    end
    else if (loop_bias_word_counter_add_end == 1'b1) //
    begin
      bias_word_fin <= 1;
    end
    else if (((bias_word_fin & tail_word_fin & rank_word_fin)) == 1'b1) //
    begin
      bias_word_fin <= 0;
    end
    else
    begin
      bias_word_fin <= bias_word_fin;
    end
  end

  //tail refresh  [args_tof_start, args_tof_start + tile_of_size)
  //a tail word(512 bit) contains 32 tail if pof>32 and F>32, otherwise min(pof, F) tail and 0s.
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      tail_signal_add <= 0;
    end
    else if (args_refresh == 1'b1)
    begin
      tail_signal_add <= 1;
    end
    else if (loop_tail_word_counter_add_end == 1'b1)
    begin
      tail_signal_add <= 0;
    end
    else
    begin
      tail_signal_add <= tail_signal_add;
    end
  end

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      tail_word_counter <= 1;
      tail_reg_start <= 1;
    end
    else if (loop_tail_word_counter_add_begin == 1'b1)
    begin
      if (loop_tail_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        tail_word_counter <= 1;
        tail_reg_start <= 1;
      end
      else
      begin
        tail_word_counter <= tail_word_counter + 1;
        tail_reg_start <= tail_reg_start + tail_reg_size;
      end
    end
    else
    begin
      tail_word_counter <= tail_word_counter;
      tail_reg_start <= tail_reg_start;
    end
  end
  assign loop_tail_word_counter_add_begin = tail_signal_add;
  assign loop_tail_word_counter_add_end = loop_tail_word_counter_add_begin
         && ((tail_word_counter << tail_num_in_word_2pow ) >= tile_of_size);

  // tail_buf_word[layer_base_adr+tof_base_adr +: tail_word_counter * tail_num_in_word * 8] --->
  // tail_regs[start +: tail_word_counter * tail_num_in_word / args_num_in_reg]
  assign tail_reg_size = ((tail_word_counter << tail_num_in_word_2pow) > tile_of_size)?
         ((tile_of_size - ((tail_word_counter-1) << tail_num_in_word_2pow))>>args_num_in_reg_2pow):
         (1 << tail_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign e_scale_tail_buf_adr_rd = tail_layer_base_buf_adr_rd + ((args_tof_start - 1) >> tail_num_in_word_2pow) + tail_word_counter - 1;
  assign e_scale_tail_buf_en_rd = loop_tail_word_counter_add_begin;

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      tail_word_fin <= 0;
    end
    else if (loop_tail_word_counter_add_end == 1'b1) //
    begin
      tail_word_fin <= 1;
    end
    else if (((bias_word_fin & tail_word_fin & rank_word_fin)) == 1'b1) //
    begin
      tail_word_fin <= 0;
    end
    else
    begin
      tail_word_fin <= tail_word_fin;
    end
  end

  // rank refresh [args_tof_start, args_tof_start + tile_of_size)
  //a bias word(512 bit) contains 64 bias if pof>64 and F>64, otherwise min(pof, F) bias and 0s.
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      rank_signal_add <= 0;
    end
    else if (args_refresh == 1'b1)
    begin
      rank_signal_add <= 1;
    end
    else if (loop_rank_word_counter_add_end == 1'b1)
    begin
      rank_signal_add <= 0;
    end
    else
    begin
      rank_signal_add <= rank_signal_add;
    end
  end

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      rank_word_counter <= 1;
      rank_reg_start <= 1;
    end
    else if (loop_rank_word_counter_add_begin == 1'b1)
    begin
      if (loop_rank_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        rank_word_counter <= 1;
        rank_reg_start <= 1;
      end
      else
      begin
        rank_word_counter <= rank_word_counter + 1;
        rank_reg_start <= rank_reg_start + rank_reg_start;
      end
    end
    else
    begin
      rank_word_counter <= rank_word_counter;
      rank_reg_start <= rank_reg_start;
    end
  end

  assign loop_rank_word_counter_add_begin = rank_signal_add;
  assign loop_rank_word_counter_add_end = loop_rank_word_counter_add_begin
         && ((rank_word_counter << rank_num_in_word_2pow ) >= tile_of_size);

  // rank_buf_word[layer_base_adr+tof_base_adr +: rank_word_counter * rank_num_in_word * 8] --->
  // rank_regs[start +: rank_word_counter * rank_num_in_word / args_num_in_reg]
  assign rank_reg_size = ((rank_word_counter << rank_num_in_word_2pow) > tile_of_size)?
         ((tile_of_size - ((rank_word_counter-1) << rank_num_in_word_2pow))>>args_num_in_reg_2pow):
         (1 << rank_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign e_scale_rank_buf_adr_rd = rank_layer_base_buf_adr_rd + ((args_tof_start - 1) >> rank_num_in_word_2pow) + rank_word_counter - 1;
  //(args_tof_start - 1) is the of nums(the arg nums) before
  assign e_scale_rank_buf_en_rd = loop_rank_word_counter_add_begin;

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      rank_word_fin <= 0;
    end
    else if (loop_rank_word_counter_add_end == 1'b1) //
    begin
      rank_word_fin <= 1;
    end
    else if (((bias_word_fin & tail_word_fin & rank_word_fin)) == 1'b1) //
    begin
      rank_word_fin <= 0;
    end
    else
    begin
      rank_word_fin <= rank_word_fin;
    end
  end

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      args_tof_start <= 1;
    end
    else if (loop_args_tof_add_begin == 1'b1)
    begin
      if (loop_args_tof_add_end == 1'b1) // current SP of all out channels finished
      begin
        args_tof_start <= 1;
      end
      else
      begin
        args_tof_start <= args_tof_start + row_num; //next of tile start
      end
    end
    else
    begin
      args_tof_start <= args_tof_start;
    end
  end

  assign loop_args_tof_add_begin = bias_word_fin & tail_word_fin & rank_word_fin;
  assign loop_args_tof_add_end = (loop_args_tof_add_begin == 1'b1) && (args_tof_start + row_num > of);

  assign tile_of_size = (args_tof_start + row_num - 1 > of)? (of - args_tof_start + 1):
         row_num;

endmodule
