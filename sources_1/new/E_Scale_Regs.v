`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/05/2024 07:18:07 PM
// Design Name:
// Module Name: E_Scale_Regs
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


module E_Scale_Regs(
    mode,
    clk,

    tail_set,
    rank_set,

    E_scale_tail_word,
    E_scale_tail_reg_start,
    E_scale_tail_reg_size,
    
    E_scale_rank_word,
    E_scale_rank_reg_start,
    E_scale_rank_reg_size,

    out_sa_row_idx,

    E_scale_tail_4_channel_sets,
    E_scale_rank_4_channel_sets
  );
  parameter sa_row_num = 4; //how many rows in conv core
  parameter sa_column_num = 3; //how many columns in conv core

  parameter row_num = 16; // how many rows in a sa
  parameter column_num = 16; // how many columns in a sa
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;

  parameter headroom = 8;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter E_scale_tail_width = 16; //16 bit E_scale tail
  parameter E_scale_tail_set_width = E_scale_tail_width * pe_parallel_weight_18; //32 bit
  parameter E_scale_tail_set_4_channel_width = E_scale_tail_set_width * sa_row_num; //4 * 32 bit
  parameter E_scale_tail_sets_num_in_row = sa_row_num * row_num; //64

  parameter E_scale_tail_word_width = 512;
  parameter E_scale_tail_regs_tile_mode0 = E_scale_tail_word_width / E_scale_tail_width; //32
  parameter E_scale_tail_regs_tile_mode1 = E_scale_tail_word_width / E_scale_tail_set_width; //16

  parameter E_scale_rank_width = 8; //8 bit E_scale rank
  parameter E_scale_rank_set_width = E_scale_rank_width * pe_parallel_weight_18; //16 bit
  parameter E_scale_rank_set_4_channel_width = E_scale_rank_set_width * sa_row_num; //4 * 16 bit
  parameter E_scale_rank_sets_num_in_row = sa_row_num * row_num; //64
  parameter E_scale_rank_tile_length = E_scale_rank_set_width * E_scale_rank_sets_num_in_row; //64 * 16bit regs to str

  parameter E_scale_rank_word_width = 512;
  parameter E_scale_rank_regs_tile_mode0 = E_scale_rank_word_width / E_scale_rank_width; //64
  parameter E_scale_rank_regs_tile_mode1 = E_scale_rank_word_width / E_scale_rank_set_width; //32

  input mode;

  input clk;
  input tail_set, rank_set;

  input [E_scale_tail_word_width -1 : 0] E_scale_tail_word;
  input [6:0] E_scale_tail_reg_start;
  input [6:0] E_scale_tail_reg_size;

  input [E_scale_rank_word_width -1 : 0] E_scale_rank_word;
  input [6:0] E_scale_rank_reg_start;
  input [6:0] E_scale_rank_reg_size;

  // tile e-scale, will be set at first of the tiling compute, maybe set in several cycles

  input [5:0] out_sa_row_idx; //output sa row idx [1,16]

  output [E_scale_tail_set_4_channel_width-1 :0] E_scale_tail_4_channel_sets;
  output [E_scale_rank_set_4_channel_width-1 :0] E_scale_rank_4_channel_sets;

  reg [E_scale_tail_set_width -1 : 0] E_scale_tail_tile[(sa_row_num-1) * row_num + row_num-1 :0];
  reg [E_scale_rank_set_width -1 : 0] E_scale_rank_tile[(sa_row_num-1) * row_num + row_num-1 :0];

  wire [6:0] E_scale_rank_reg_end = E_scale_rank_reg_start + E_scale_rank_reg_size;
  wire [6:0] E_scale_tail_reg_end = E_scale_tail_reg_start + E_scale_tail_reg_size;

  wire [E_scale_tail_sets_num_in_row -1 : 0] E_scale_tail_regs_ops;
  wire [E_scale_rank_sets_num_in_row -1 : 0] E_scale_rank_regs_ops;

  assign E_scale_tail_regs_ops = ({64'b1} << E_scale_tail_reg_start) & ({64'b1} >> (64 - E_scale_tail_reg_end));

  assign E_scale_rank_regs_ops = ({64'b1} << E_scale_rank_reg_start) & ({64'b1} >> (64 - E_scale_rank_reg_end));

  genvar i, j;

  generate
    for (i = 1; i <= sa_row_num * row_num; i = i + 1) //64
    begin
      always@(posedge clk)
      begin
        if ((tail_set == 1'b1) && (E_scale_tail_regs_ops[i-1] == 1'b1))
        begin
          E_scale_tail_tile[i-1] <=
                   (mode == 1'b0)? E_scale_tail_word[(i-1)*E_scale_tail_width +: E_scale_tail_width]:
                   (mode == 1'b1)? E_scale_tail_word[(i-1)*E_scale_tail_set_width +: E_scale_tail_set_width]:
                   0;
        end
        else
        begin
          E_scale_tail_tile[i-1] <= E_scale_tail_tile[i-1];
        end
      end

      always@(posedge clk)
      begin
        if ((rank_set == 1'b1) && (E_scale_rank_regs_ops[i-1] == 1'b1))
        begin
          E_scale_rank_tile[i-1] <=
                   (mode == 1'b0)? E_scale_rank_word[(i-1)*E_scale_rank_width +: E_scale_rank_width]:
                   (mode == 1'b1)? E_scale_rank_word[(i-1)*E_scale_rank_set_width +: E_scale_rank_set_width]:
                   0;
        end
        else
        begin
          E_scale_rank_tile[i-1] <= E_scale_rank_tile[i-1];
        end
      end
    end
  endgenerate


  assign E_scale_tail_4_channel_sets = (out_sa_row_idx == 6'd0)? 0:
         {E_scale_tail_tile[(4-1) * row_num + out_sa_row_idx-1],
          E_scale_tail_tile[(3-1) * row_num + out_sa_row_idx-1],
          E_scale_tail_tile[(2-1) * row_num + out_sa_row_idx-1],
          E_scale_tail_tile[(1-1) * row_num + out_sa_row_idx-1]};

  assign E_scale_rank_4_channel_sets = (out_sa_row_idx == 6'd0)? 0:
         {E_scale_rank_tile[(4-1) * row_num + out_sa_row_idx-1],
          E_scale_rank_tile[(3-1) * row_num + out_sa_row_idx-1],
          E_scale_rank_tile[(2-1) * row_num + out_sa_row_idx-1],
          E_scale_rank_tile[(1-1) * row_num + out_sa_row_idx-1]};

endmodule
