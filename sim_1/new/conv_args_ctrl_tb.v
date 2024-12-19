`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/19/2024 04:46:25 PM
// Design Name:
// Module Name: conv_args_ctrl_tb
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


module conv_args_ctrl_tb(

  );

  parameter args_regs_num = 64;
  parameter row_num_in_mode0 = 64;
  parameter row_num_in_mode1 = 128;

  parameter bias_num_in_word_2pow = 6; //64
  parameter tail_num_in_word_2pow = 5; //32
  parameter rank_num_in_word_2pow = 6; //64

  parameter args_num_in_reg_2pow_mode0 = 0; //1
  parameter args_num_in_reg_2pow_mode1 = 1; //2



  reg mode_init, clk, reset;
  reg args_refresh;
  reg [15:0] of_init;
  reg [15:0] bias_layer_base_adr_init;
  reg [15:0] tail_layer_base_adr_init;
  reg [15:0] rank_layer_base_adr_init;

  //args  buf rd adr
  wire [15:0] e_scale_bias_buf_adr_rd;
  wire [15:0] e_scale_tail_buf_adr_rd;
  wire [15:0] e_scale_rank_buf_adr_rd;

  wire [7:0] bias_reg_start; // 0-63
  wire [7:0] bias_reg_size; // 0-63

  wire [7:0] tail_reg_start; // 0-63
  wire [7:0] tail_reg_size; // 0-63

  wire [7:0] rank_reg_start; // 0-63
  wire [7:0] rank_reg_size; // 0-63

  wire e_scale_bias_buf_rd;
  wire e_scale_tail_buf_rd;
  wire e_scale_rank_buf_rd;

  conv_args_controller cv_args_ctrl(
                         .mode_init(mode_init),
                         .clk(clk),
                         .reset(reset),
                         .args_refresh(args_refresh),
                         .of_init(of_init),
                         .bias_layer_base_adr_init(bias_layer_base_adr_init),
                         .tail_layer_base_adr_init(tail_layer_base_adr_init),
                         .rank_layer_base_adr_init(rank_layer_base_adr_init),

                         //args  buf rd adr
                         .e_scale_bias_buf_adr_rd(e_scale_bias_buf_adr_rd),
                         .e_scale_tail_buf_adr_rd(e_scale_tail_buf_adr_rd),
                         .e_scale_rank_buf_adr_rd(e_scale_rank_buf_adr_rd),

                         .bias_reg_start(bias_reg_start), // 0-63
                         .bias_reg_size(bias_reg_size), // 0-63

                         .tail_reg_start(tail_reg_start), // 0-63
                         .tail_reg_size(tail_reg_size), // 0-63

                         .rank_reg_start(rank_reg_start), // 0-63
                         .rank_reg_size(rank_reg_size), // 0-63

                         .e_scale_bias_buf_rd(e_scale_bias_buf_rd),
                         .e_scale_tail_buf_rd(e_scale_tail_buf_rd),
                         .e_scale_rank_buf_rd(e_scale_rank_buf_rd)

                       );


  always
  begin
    #5;
    clk <= ~clk;
  end

  initial
  begin
    clk = 0;
    of_init = 129;
    bias_layer_base_adr_init = 0;
    tail_layer_base_adr_init = 0;
    rank_layer_base_adr_init = 0;
    mode_init = 0;
    reset = 1;

    #10;
    reset = 0;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;

    of_init = 257;
    bias_layer_base_adr_init = 0;
    tail_layer_base_adr_init = 0;
    rank_layer_base_adr_init = 0;
    mode_init = 1;

    reset = 1;

    #10;
    reset = 0;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;

    #300;
    args_refresh = 1;

    #10;
    args_refresh = 0;



  end



endmodule
