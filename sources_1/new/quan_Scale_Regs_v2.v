`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/20 14:07:17
// Design Name: 
// Module Name: quan_Scale_Regs_v2
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


module quan_Scale_Regs_v2 (
    clk,
    scale_set,
    mode,

    scale_word,
    scale_reg_start,
    scale_reg_size,
    next_out_sa_row_idx,
    scale_4_channel_sets
);

  parameter sa_row_num = 4;  //how many rows in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_weight_18 = 2;
  parameter scale_width = 8;  //8 bit E_scale rank
  parameter scale_set_width = scale_width * pe_parallel_weight_18;  //16 bit
  parameter scale_set_4_channel_width = scale_set_width * sa_row_num;  //4 * 16 bit
  parameter scale_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  parameter scale_tile_length = scale_set_width * scale_sets_num_in_row;  //64 * 16bit regs to str
  parameter scale_word_width = 512;
  parameter scale_regs_tile_mode0 = scale_word_width / scale_width;  //64
  parameter scale_regs_tile_mode1 = scale_word_width / scale_set_width;  //32

  input clk;
  input scale_set;
  input [3:0] mode;
  input [scale_word_width -1 : 0] scale_word;
  input [7:0] scale_reg_start;
  input [7:0] scale_reg_size;
  // tile e-scale, will be set at first of the tiling compute, maybe set in several cycles
  input [5:0] next_out_sa_row_idx;  //output sa row idx [1,16]
  output reg [scale_set_4_channel_width-1 : 0] scale_4_channel_sets;
  reg  [      scale_set_width -1 : 0]                                                       scale_tile     [sa_row_num * row_num_in_sa -1 : 0];
  wire [                         7:0] scale_reg_end = scale_reg_start + scale_reg_size - 1;
  wire [scale_sets_num_in_row -1 : 0]                                                       scale_regs_ops;
  assign scale_regs_ops = ({64'hffffffffffffffff} << (scale_reg_start - 1)) & ({64'hffffffffffffffff} >> (64 - scale_reg_end));

  genvar k;
  //64*8 / 512 = 1
  //mode 0: 512 = scale(8 bit) * 64 -> scale_set({0, rank}) * 64 -> regs[1,64]
  //128*8 / 512 = 2
  //mode 1: 512 = scale_set(16bit) * 32 -> regs[start,start+31]
  wire [sa_row_num*row_num_in_sa*scale_set_width - 1 : 0] scale_word_val, scale_word_val_mode0, scale_word_val_mode1;
  assign scale_word_val = (mode == 0) ? scale_word_val_mode0 : (mode == 1) ? scale_word_val_mode1 : 0;
  for (
      k = 0; k < sa_row_num * row_num_in_sa; k = k + 1
  )  //64
      begin
    assign scale_word_val_mode0[k*scale_set_width+:scale_set_width] = {{(scale_set_width - scale_width) {1'b0}}, scale_word[k*scale_width+:scale_width]};
  end
  assign scale_word_val_mode1 = (scale_reg_start == 1) ? {{(scale_word_width) {1'b0}}, scale_word} : (scale_reg_start == 33) ? {scale_word, {(scale_word_width) {1'b0}}} : 0;

  genvar i, j;
  generate
    for (
        i = 1; i <= sa_row_num * row_num_in_sa; i = i + 1
    )  //64
        begin
      always @(posedge clk) begin
        if ((scale_set == 1'b1) && (scale_regs_ops[i-1] == 1'b1)) begin
          scale_tile[i-1] <= scale_word_val[(i-1)*scale_set_width+:scale_set_width];
        end else begin
          scale_tile[i-1] <= scale_tile[i-1];
        end
      end
    end
  endgenerate

  // assign scale_4_channel_sets =
  //     // no valid sum
  //     (out_sa_row_idx == 6'd0) ? 0 :
  //     //row 4 scale
  //     {scale_tile[(4-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 3 scale
  //     scale_tile[(3-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 2 scale
  //     scale_tile[(2-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 1 scale
  //     scale_tile[(1-1)*row_num_in_sa+out_sa_row_idx-1]};

  always @(posedge clk) begin
    if ((next_out_sa_row_idx > 6'd0)) begin
      scale_4_channel_sets <=
      //row 4 scale
      {
        scale_tile[(4-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 3 scale
        scale_tile[(3-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 2 scale
        scale_tile[(2-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 1 scale
        scale_tile[(1-1)*row_num_in_sa+next_out_sa_row_idx-1]
      };
    end
  end

endmodule
