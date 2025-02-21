`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/18 14:02:50
// Design Name: 
// Module Name: conv_args_refresher
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


module conv_args_refresher (
    clk,
    reset,
    args_refresh,  //begin to refresh the pof regs of args

    mode_init,
    of_init,
    E_layer_base_buf_adr_rd_init,
    bias_layer_base_buf_adr_rd_init,
    scale_layer_base_buf_adr_rd_init,
    // args_tile_fin,
    E_buf_adr_rd,
    bias_buf_adr_rd,
    scale_buf_adr_rd,
    E_buf_en_rd,
    bias_buf_en_rd,
    scale_buf_en_rd,
    E_reg_start,
    E_reg_size,
    bias_reg_start,
    bias_reg_size,
    scale_reg_start,
    scale_reg_size
);
  // args buffer read control in the computation term
  parameter args_regs_num = 64;
  parameter row_num_in_mode0 = 64;
  parameter row_num_in_mode1 = 128;
  parameter E_num_in_word_2pow = 5;  //32, static num, cannot be changed
  parameter bias_num_in_word_2pow = 6;  //64, static num, cannot be changed
  parameter scale_num_in_word_2pow = 6;  //64, static num, cannot be changed
  parameter args_num_in_reg_2pow_mode0 = 0;  //1
  parameter args_num_in_reg_2pow_mode1 = 1;  //2

  input clk, reset;
  input args_refresh;
  input mode_init;
  input [15:0] of_init;
  input [15:0] E_layer_base_buf_adr_rd_init;
  input [15:0] bias_layer_base_buf_adr_rd_init;
  input [15:0] scale_layer_base_buf_adr_rd_init;
  // output args_tile_fin;

  //args  buf rd adr
  output [15:0] E_buf_adr_rd;
  output [15:0] bias_buf_adr_rd;
  output [15:0] scale_buf_adr_rd;
  output reg [7:0] E_reg_start;  // 0-63
  output [7:0] E_reg_size;  // 0-63
  output reg [7:0] bias_reg_start;  // 0-63
  output [7:0] bias_reg_size;  // 0-63
  output reg [7:0] scale_reg_start;  // 0-63
  output [7:0] scale_reg_size;  // 0-63
  output E_buf_en_rd;
  output bias_buf_en_rd;
  output scale_buf_en_rd;

  reg        mode;
  reg [15:0] of;
  reg [15:0] E_layer_base_buf_adr_rd, bias_layer_base_buf_adr_rd, scale_layer_base_buf_adr_rd;
  //loop args word --> args regs
  reg E_signal_add, bias_signal_add, scale_signal_add;
  reg [15:0] E_word_counter;
  wire loop_E_word_counter_add_begin, loop_E_word_counter_add_end;
  reg [15:0] bias_word_counter;
  wire loop_bias_word_counter_add_begin, loop_bias_word_counter_add_end;
  reg [15:0] scale_word_counter;
  wire loop_scale_word_counter_add_begin, loop_scale_word_counter_add_end;
  reg E_word_fin, bias_word_fin, scale_word_fin;
  //loop args_tof
  reg [15:0] args_tof_start;
  wire loop_args_tof_add_begin, loop_args_tof_add_end;
  wire [15:0] row_num = (mode == 1'b0) ? row_num_in_mode0 : (mode == 1'b1) ? row_num_in_mode1 : 0;
  wire [ 1:0] args_num_in_reg_2pow = (mode == 1'b0) ? args_num_in_reg_2pow_mode0 : (mode == 1'b1) ? args_num_in_reg_2pow_mode1 : 0;
  wire [15:0]                                                                                                                       tile_of_size;  //arg nums need to load into regs

  always @(posedge clk) begin
    if (reset == 1'b1) begin  //set
      of                          <= of_init;
      mode                        <= mode_init;
      E_layer_base_buf_adr_rd     <= E_layer_base_buf_adr_rd_init;
      bias_layer_base_buf_adr_rd  <= bias_layer_base_buf_adr_rd_init;
      scale_layer_base_buf_adr_rd <= scale_layer_base_buf_adr_rd_init;
    end else begin
      of                          <= of;
      mode                        <= mode;
      E_layer_base_buf_adr_rd     <= E_layer_base_buf_adr_rd;
      bias_layer_base_buf_adr_rd  <= bias_layer_base_buf_adr_rd;
      scale_layer_base_buf_adr_rd <= scale_layer_base_buf_adr_rd;
    end
  end

  //E refresh  [args_tof_start, args_tof_start + tile_of_size)
  //a E word(512 bit) contains 32 E if pof>32 and F>32, otherwise min(pof, F) E and 0s.
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      E_signal_add <= 0;
    end else if (args_refresh == 1'b1) begin
      E_signal_add <= 1;
    end else if (loop_E_word_counter_add_end == 1'b1) begin
      E_signal_add <= 0;
    end else begin
      E_signal_add <= E_signal_add;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      E_word_counter <= 1;
      E_reg_start    <= 1;
    end else if (loop_E_word_counter_add_begin == 1'b1) begin
      if (loop_E_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        E_word_counter <= 1;
        E_reg_start    <= 1;
      end else begin
        E_word_counter <= E_word_counter + 1;
        E_reg_start    <= E_reg_start + E_reg_size;
      end
    end else begin
      E_word_counter <= E_word_counter;
      E_reg_start    <= E_reg_start;
    end
  end
  assign loop_E_word_counter_add_begin = E_signal_add;
  assign loop_E_word_counter_add_end   = loop_E_word_counter_add_begin && ((E_word_counter << E_num_in_word_2pow) >= tile_of_size);

  // E_buf_word[layer_base_adr+tof_base_adr +: E_word_counter * E_num_in_word * 8] --->
  // E_regs[start +: E_word_counter * E_num_in_word / args_num_in_reg]
  assign E_reg_size                    = ((E_word_counter << E_num_in_word_2pow) > tile_of_size) ? ((tile_of_size - ((E_word_counter - 1) << E_num_in_word_2pow)) >> args_num_in_reg_2pow) : (1 << E_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign E_buf_adr_rd                  = E_layer_base_buf_adr_rd + ((args_tof_start - 1) >> E_num_in_word_2pow) + E_word_counter - 1;
  assign E_buf_en_rd                   = loop_E_word_counter_add_begin;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      E_word_fin <= 0;
    end
    else if (loop_E_word_counter_add_end == 1'b1) //
    begin
      E_word_fin <= 1;
    end
    else if (((E_word_fin & bias_word_fin & scale_word_fin)) == 1'b1) //
    begin
      E_word_fin <= 0;
    end else begin
      E_word_fin <= E_word_fin;
    end
  end

  //bias refresh  [args_tof_start, args_tof_start + tile_of_size)
  //a bias word(512 bit) contains 64 bias if pof>64 and F>64, otherwise min(pof, F) bias and 0s.
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      bias_signal_add <= 0;
    end else if (args_refresh == 1'b1) begin
      bias_signal_add <= 1;
    end else if (loop_bias_word_counter_add_end == 1'b1) begin
      bias_signal_add <= 0;
    end else begin
      bias_signal_add <= bias_signal_add;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      bias_word_counter <= 1;
      bias_reg_start    <= 1;
    end else if (loop_bias_word_counter_add_begin == 1'b1) begin
      if (loop_bias_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        bias_word_counter <= 1;
        bias_reg_start    <= 1;
      end else begin
        bias_word_counter <= bias_word_counter + 1;
        bias_reg_start    <= bias_reg_start + bias_reg_size;
      end
    end else begin
      bias_word_counter <= bias_word_counter;
      bias_reg_start    <= bias_reg_start;
    end
  end
  assign loop_bias_word_counter_add_begin = bias_signal_add;
  assign loop_bias_word_counter_add_end   = loop_bias_word_counter_add_begin && ((bias_word_counter << bias_num_in_word_2pow) >= tile_of_size);

  // bias_buf_word[layer_base_adr+tof_base_adr +: bias_word_counter * bias_num_in_word * 8] --->
  // bias_regs[start +: bias_word_counter * bias_num_in_word / args_num_in_reg]
  assign bias_reg_size                    = ((bias_word_counter << bias_num_in_word_2pow) > tile_of_size) ? ((tile_of_size - ((bias_word_counter - 1) << bias_num_in_word_2pow)) >> args_num_in_reg_2pow) : (1 << bias_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign bias_buf_adr_rd                  = bias_layer_base_buf_adr_rd + ((args_tof_start - 1) >> bias_num_in_word_2pow) + bias_word_counter - 1;
  assign bias_buf_en_rd                   = loop_bias_word_counter_add_begin;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      bias_word_fin <= 0;
    end
    else if (loop_bias_word_counter_add_end == 1'b1) //
    begin
      bias_word_fin <= 1;
    end
    else if (((E_word_fin & bias_word_fin & scale_word_fin)) == 1'b1) //
    begin
      bias_word_fin <= 0;
    end else begin
      bias_word_fin <= bias_word_fin;
    end
  end

  // scale refresh [args_tof_start, args_tof_start + tile_of_size)
  //a scale word(512 bit) contains 64 scale if pof>64 and F>64, otherwise min(pof, F) scale and 0s.
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      scale_signal_add <= 0;
    end else if (args_refresh == 1'b1) begin
      scale_signal_add <= 1;
    end else if (loop_scale_word_counter_add_end == 1'b1) begin
      scale_signal_add <= 0;
    end else begin
      scale_signal_add <= scale_signal_add;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      scale_word_counter <= 1;
      scale_reg_start    <= 1;
    end else if (loop_scale_word_counter_add_begin == 1'b1) begin
      if (loop_scale_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        scale_word_counter <= 1;
        scale_reg_start    <= 1;
      end else begin
        scale_word_counter <= scale_word_counter + 1;
        scale_reg_start    <= scale_reg_start + scale_reg_size;
      end
    end else begin
      scale_word_counter <= scale_word_counter;
      scale_reg_start    <= scale_reg_start;
    end
  end

  assign loop_scale_word_counter_add_begin = scale_signal_add;
  assign loop_scale_word_counter_add_end   = loop_scale_word_counter_add_begin && ((scale_word_counter << scale_num_in_word_2pow) >= tile_of_size);

  // scale_buf_word[layer_base_adr+tof_base_adr +: scale_word_counter * scale_num_in_word * 8] --->
  // scale_regs[start +: scale_word_counter * scale_num_in_word / args_num_in_reg]
  assign scale_reg_size                    = ((scale_word_counter << scale_num_in_word_2pow) > tile_of_size) ? ((tile_of_size - ((scale_word_counter - 1) << scale_num_in_word_2pow)) >> args_num_in_reg_2pow) : (1 << scale_num_in_word_2pow) >> args_num_in_reg_2pow;
  assign scale_buf_adr_rd                  = scale_layer_base_buf_adr_rd + ((args_tof_start - 1) >> scale_num_in_word_2pow) + scale_word_counter - 1;
  //(args_tof_start - 1) is the of nums(the arg nums) before
  assign scale_buf_en_rd                   = loop_scale_word_counter_add_begin;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      scale_word_fin <= 0;
    end
    else if (loop_scale_word_counter_add_end == 1'b1) //
    begin
      scale_word_fin <= 1;
    end
    else if (((E_word_fin & bias_word_fin & scale_word_fin)) == 1'b1) //
    begin
      scale_word_fin <= 0;
    end else begin
      scale_word_fin <= scale_word_fin;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      args_tof_start <= 1;
    end else if (loop_args_tof_add_begin == 1'b1) begin
      if (loop_args_tof_add_end == 1'b1) // current SP of all out channels finished
      begin
        args_tof_start <= 1;
      end else begin
        args_tof_start <= args_tof_start + row_num;  //next of tile start
      end
    end else begin
      args_tof_start <= args_tof_start;
    end
  end

  assign loop_args_tof_add_begin = E_word_fin & bias_word_fin & scale_word_fin;
  assign loop_args_tof_add_end   = (loop_args_tof_add_begin == 1'b1) && (args_tof_start + row_num > of);

  assign tile_of_size            = (args_tof_start + row_num - 1 > of) ? (of - args_tof_start + 1) : row_num;

endmodule
