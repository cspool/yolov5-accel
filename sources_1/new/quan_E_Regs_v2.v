`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/20 14:07:17
// Design Name: 
// Module Name: quan_E_Regs_v2
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


module quan_E_Regs_v2 (
    clk,
    E_set,
    mode,

    E_word,
    E_reg_start,
    E_reg_size,
    next_out_sa_row_idx,
    E_4_channel_sets
);
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_weight_18 = 2;
  parameter E_width = 16;  //16 bit E
  parameter E_set_width = E_width * pe_parallel_weight_18;  //32 bit
  parameter E_set_4_channel_width = E_set_width * sa_row_num;  //4 * 32 bit
  parameter E_sets_num_in_row = sa_row_num * row_num_in_sa;  //64
  parameter E_word_width = 512;
  parameter E_regs_tile_mode0 = E_word_width / E_width;  //32
  parameter E_regs_tile_mode1 = E_word_width / E_set_width;  //16

  input clk;
  input E_set;
  input [3:0] mode;
  input [E_word_width -1 : 0] E_word;
  input [7:0] E_reg_start;
  input [7:0] E_reg_size;
  // tile e-scale, will be set at first of the tiling compute, maybe set in several cycles
  input [5:0] next_out_sa_row_idx;  //output sa row idx [1,16]
  output reg [E_set_4_channel_width-1 : 0] E_4_channel_sets;
  reg  [      E_set_width -1 : 0]                                           E_tile     [sa_row_num * row_num_in_sa -1 : 0];
  wire [                     7:0] E_reg_end = E_reg_start + E_reg_size - 1;
  wire [E_sets_num_in_row -1 : 0]                                           E_regs_ops;
  assign E_regs_ops = ({64'hffffffffffffffff} << (E_reg_start - 1)) & ({64'hffffffffffffffff} >> (64 - E_reg_end));

  genvar k;
  //64*16 / 512 = 2
  //mode 0: 512 = E(16bit) * 32 -> E_set({0, E}) * 32 -> regs[start, start + 31]
  //128*16 / 512 = 4
  //mode 1: 512 = E_set(32bit) * 16 -> regs[start, start + 15]
  wire [sa_row_num*row_num_in_sa*E_set_width - 1 : 0] E_word_val, E_word_val_mode0, E_word_val_mode1;
  assign E_word_val = (mode == 0) ? E_word_val_mode0 : (mode == 1) ? E_word_val_mode1 : 0;
  //mode 0
  for (
      k = 0; k < sa_row_num * row_num_in_sa / 2; k = k + 1
  )  //1-32
      begin
    assign E_word_val_mode0[k*E_set_width+:E_set_width] = (E_reg_start == 1) ? {{(E_set_width - E_width) {1'b0}}, E_word[k*E_width+:E_width]} : 0;
  end
  for (
      k = 0; k < sa_row_num * row_num_in_sa / 2; k = k + 1
  )  //33-64
      begin
    assign E_word_val_mode0[(sa_row_num*row_num_in_sa/2+k)*E_set_width+:E_set_width] = (E_reg_start == 33) ? {{(E_set_width - E_width) {1'b0}}, E_word[k*E_width+:E_width]} : 0;
  end
  //mode 1
  assign E_word_val_mode1 =
         (E_reg_start == 1)? {{(3*E_word_width){1'b0}}, E_word}:
         (E_reg_start == 17)? {{(2*E_word_width){1'b0}}, E_word, {(E_word_width){1'b0}}}:
         (E_reg_start == 33)? {{(E_word_width){1'b0}}, E_word, {(2*E_word_width){1'b0}}}:
         (E_reg_start == 49)? {E_word, {(3*E_word_width){1'b0}}}:
         0;

  //refresh the reg val
  genvar i, j;
  generate
    for (
        i = 1; i <= sa_row_num * row_num_in_sa; i = i + 1
    )  //64
        begin
      always @(posedge clk) begin
        if ((E_set == 1'b1) && (E_regs_ops[i-1] == 1'b1)) begin
          E_tile[i-1] <= E_word_val[(i-1)*E_set_width+:E_set_width];
        end else begin
          E_tile[i-1] <= E_tile[i-1];
        end
      end
    end
  endgenerate

  // assign E_4_channel_sets =
  //     // no valid sum
  //     (out_sa_row_idx == 6'd0) ? 0 :
  //     //mult 4 E sets(4 Es or 8 Es) once a time
  //     //row 4 SA
  //     {E_tile[(4-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 3 SA
  //     E_tile[(3-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 2 SA
  //     E_tile[(2-1)*row_num_in_sa+out_sa_row_idx-1],
  //     //row 1 SA
  //     E_tile[(1-1)*row_num_in_sa+out_sa_row_idx-1]};

  always @(posedge clk) begin
    if ((next_out_sa_row_idx > 6'd0)) begin
      E_4_channel_sets <=
      //mult 4 E sets(4 Es or 8 Es) once a time
      //row 4 SA
      {
        E_tile[(4-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 3 SA
        E_tile[(3-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 2 SA
        E_tile[(2-1)*row_num_in_sa+next_out_sa_row_idx-1],
        //row 1 SA
        E_tile[(1-1)*row_num_in_sa+next_out_sa_row_idx-1]
      };
    end
  end

endmodule
