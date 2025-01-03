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
  reg mode_init, clk, reset;
  reg args_refresh;
  reg [15:0] of_init;
  reg [15:0] bias_layer_base_buf_adr_rd_init;
  reg [15:0] tail_layer_base_buf_adr_rd_init;
  reg [15:0] rank_layer_base_buf_adr_rd_init;

  //args buf rd adr
  wire [15:0] bias_buf_adr_rd;
  wire [15:0] e_scale_tail_buf_adr_rd;
  wire [15:0] e_scale_rank_buf_adr_rd;
  wire [7:0] bias_reg_start; // 0-63
  wire [7:0] bias_reg_size; // 0-63
  wire [7:0] tail_reg_start; // 0-63
  wire [7:0] tail_reg_size; // 0-63
  wire [7:0] rank_reg_start; // 0-63
  wire [7:0] rank_reg_size; // 0-63
  wire bias_buf_en_rd;
  wire e_scale_tail_buf_en_rd;
  wire e_scale_rank_buf_en_rd;

  //wt ctrl space
  wire [15:0] bias_buf_adr_wr = 0;
  wire [15:0] e_scale_tail_buf_adr_wr = 0;
  wire [15:0] e_scale_rank_buf_adr_wr = 0;

  // bias buf
  wire bias_buf_en;
  wire bias_buf_en_wr = 0;
  wire [8:0] bias_buf_adr;
  wire [511:0] bias_buf_wr = 0;
  wire [511:0] bias_buf_rd;
  // tail buf
  wire e_scale_tail_buf_en;
  wire e_scale_tail_buf_en_wr = 0;
  wire [8:0] e_scale_tail_buf_adr;
  wire [511:0] e_scale_tail_buf_wr = 0;
  wire [511:0] e_scale_tail_buf_rd;
  // rank buf
  wire e_scale_rank_buf_en;
  wire e_scale_rank_buf_en_wr = 0;
  wire [8:0] e_scale_rank_buf_adr;
  wire [511:0] e_scale_rank_buf_wr = 0;
  wire [511:0] e_scale_rank_buf_rd;

  //last regs, state regs, to cache the info to wait for valid buffer data read           
  reg bias_reg_set;
  reg [7:0] last_bias_reg_start;
  reg [7:0] last_bias_reg_size;
  reg tail_reg_set;
  reg [7:0] last_e_scale_tail_reg_start;
  reg [7:0] last_e_scale_tail_reg_size;
  reg rank_reg_set;
  reg [7:0] last_e_scale_rank_reg_start;
  reg [7:0] last_e_scale_rank_reg_size;

  wire [511:0] last_bias_word;
  wire [511:0] last_e_scale_tail_word;
  wire [511:0] last_e_scale_rank_word;

  conv_args_handler cv_args_handler(
                      .mode_init(mode_init),
                      .clk(clk),
                      .reset(reset),
                      .args_refresh(args_refresh),
                      .of_init(of_init),
                      .bias_layer_base_buf_adr_rd_init(bias_layer_base_buf_adr_rd_init),
                      .tail_layer_base_buf_adr_rd_init(tail_layer_base_buf_adr_rd_init),
                      .rank_layer_base_buf_adr_rd_init(rank_layer_base_buf_adr_rd_init),

                      //args buf rd adr
                      .bias_buf_adr_rd(bias_buf_adr_rd),
                      .e_scale_tail_buf_adr_rd(e_scale_tail_buf_adr_rd),
                      .e_scale_rank_buf_adr_rd(e_scale_rank_buf_adr_rd),
                      .bias_reg_start(bias_reg_start), // 0-63
                      .bias_reg_size(bias_reg_size), // 0-63
                      .tail_reg_start(tail_reg_start), // 0-63
                      .tail_reg_size(tail_reg_size), // 0-63
                      .rank_reg_start(rank_reg_start), // 0-63
                      .rank_reg_size(rank_reg_size), // 0-63

                      .bias_buf_en_rd(bias_buf_en_rd),
                      .e_scale_tail_buf_en_rd(e_scale_tail_buf_en_rd),
                      .e_scale_rank_buf_en_rd(e_scale_rank_buf_en_rd)
                    );

  bias_buffer bias_buffer (
                .clka(clk),    // input wire clka
                .ena(bias_buf_en),      // input wire ena
                .wea(bias_buf_en_wr),      // input wire [0 : 0] wea
                .addra(bias_buf_adr),  // input wire [8 : 0] addra
                .dina(bias_buf_wr),    // input wire [511 : 0] dina
                .douta(bias_buf_rd)  // output wire [511 : 0] douta
              );
  assign bias_buf_adr =
         ((bias_buf_en_rd == 1'b0) && (bias_buf_en_wr == 1'b1))? bias_buf_adr_wr :
         ((bias_buf_en_rd == 1'b1) && (bias_buf_en_wr == 1'b0))? bias_buf_adr_rd : 0;
  assign bias_buf_en =
         ((bias_buf_en_rd == 1'b1) || (bias_buf_en_wr == 1'b1))? 1 : 0;

  tail_buffer tail_buffer (
                .clka(clk),    // input wire clka
                .ena(e_scale_tail_buf_en),      // input wire ena
                .wea(e_scale_tail_buf_en_wr),      // input wire [0 : 0] wea
                .addra(e_scale_tail_buf_adr),  // input wire [8 : 0] addra
                .dina(e_scale_tail_buf_wr),    // input wire [511 : 0] dina
                .douta(e_scale_tail_buf_rd)  // output wire [511 : 0] douta
              );
  assign e_scale_tail_buf_adr =
         ((e_scale_tail_buf_en_rd == 1'b0) && (e_scale_tail_buf_en_wr == 1'b1))? e_scale_tail_buf_adr_wr :
         ((e_scale_tail_buf_en_rd == 1'b1) && (e_scale_tail_buf_en_wr == 1'b0))? e_scale_tail_buf_adr_rd : 0;
  assign e_scale_tail_buf_en =
         ((e_scale_tail_buf_en_rd == 1'b1) || (e_scale_tail_buf_en_wr == 1'b1))? 1 : 0;

  rank_buffer rank_buffer (
                .clka(clk),    // input wire clka
                .ena(e_scale_rank_buf_en),      // input wire ena
                .wea(e_scale_rank_buf_en_wr),      // input wire [0 : 0] wea
                .addra(e_scale_rank_buf_adr),  // input wire [8 : 0] addra
                .dina(e_scale_rank_buf_wr),    // input wire [511 : 0] dina
                .douta(e_scale_rank_buf_rd)  // output wire [511 : 0] douta
              );
  assign e_scale_rank_buf_adr =
         ((e_scale_rank_buf_en_rd == 1'b0) && (e_scale_rank_buf_en_wr == 1'b1))? e_scale_rank_buf_adr_wr :
         ((e_scale_rank_buf_en_rd == 1'b1) && (e_scale_rank_buf_en_wr == 1'b0))? e_scale_rank_buf_adr_rd : 0;
  assign e_scale_rank_buf_en =
         ((e_scale_rank_buf_en_rd == 1'b1) || (e_scale_rank_buf_en_wr == 1'b1))? 1 : 0;

  //bias regs
  Bias_Regs bias_regs(
              .clk(clk),
              .set(bias_reg_set), // next tile need clr
              //   .bias_tile_val(bias_tile_val),
              .bias_word(last_bias_word),
              .bias_reg_start(last_bias_reg_start),
              .bias_reg_size(last_bias_reg_size),

              .out_sa_row_idx(out_sa_row_idx),
              .bias_4_channel_sets(bias_4_channel_sets)
            );

  //e_scale regs
  E_Scale_Regs E_scale_regs (
                 .clk(clk),
                 .tail_set(tail_reg_set), // next tile need clr
                 .rank_set(rank_reg_set),
                 .E_scale_tail_word(last_E_scale_tail_word),
                 .E_scale_tail_reg_start(last_E_scale_tail_reg_start),
                 .E_scale_tail_reg_size(last_E_scale_tail_reg_size),
                 .E_scale_rank_word(last_E_scale_rank_word),
                 .E_scale_rank_reg_start(last_E_scale_rank_reg_start),
                 .E_scale_rank_reg_size(last_E_scale_rank_reg_size),

                 .out_sa_row_idx(out_sa_row_idx),

                 .E_scale_tail_4_channel_sets(E_scale_tail_4_channel_sets),
                 .E_scale_rank_4_channel_sets(E_scale_rank_4_channel_sets)
               );

  //last regs, state regs, to cache the info to wait for valid buffer data read           
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      bias_reg_set <= 0;
      last_bias_reg_start <= 0;
      last_bias_reg_size <= 0;
      tail_reg_set <= 0;
      last_e_scale_tail_reg_start <= 0;
      last_e_scale_tail_reg_size <= 0;
      rank_reg_set <= 0;
      last_e_scale_rank_reg_start <= 0;
      last_e_scale_rank_reg_size <= 0;
    end
    else
    begin
      bias_reg_set <= bias_buf_en_rd;
      last_bias_reg_start <= bias_reg_start;
      last_bias_reg_size <= bias_reg_size;
      tail_reg_set <= e_scale_tail_buf_en_rd;
      last_e_scale_tail_reg_start <= tail_reg_start;
      last_e_scale_tail_reg_size <= tail_reg_size;
      rank_reg_set <= e_scale_rank_buf_en_rd;
      last_e_scale_rank_reg_start <= rank_reg_start;
      last_e_scale_rank_reg_size <= rank_reg_size;
    end
  end
  assign last_bias_word = bias_buf_rd;
  assign last_e_scale_tail_word = e_scale_tail_buf_rd;
  assign last_e_scale_rank_word = e_scale_rank_buf_rd;

  always
  begin
    #5;
    clk <= ~clk;
  end

  initial
  begin
    clk = 0;
    of_init = 129;
    bias_layer_base_buf_adr_rd_init = 0;
    tail_layer_base_buf_adr_rd_init = 0;
    rank_layer_base_buf_adr_rd_init = 0;
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
    bias_layer_base_buf_adr_rd_init = 0;
    tail_layer_base_buf_adr_rd_init = 0;
    rank_layer_base_buf_adr_rd_init = 0;
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
