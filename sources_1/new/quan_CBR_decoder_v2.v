`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/15 19:02:07
// Design Name: 
// Module Name: quan_CBR_decoder_v2
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


module quan_CBR_decoder_v2 (
    clk,
    reset,
    conv_decode,
    conv_instr_args,
    next_conv_start,
    mode,
    noReLU,
    k,
    s,
    p,
    of,
    ox,
    oy,
    ix,
    iy,
    nif,
    nif_in_2pow,
    ix_in_2pow,
    of_in_2pow,
    ox_in_2pow,
    nif_mult_k_mult_k,
    N_chunks,
    E_layer_base_buf_adr_rd,
    bias_layer_base_buf_adr_rd,
    scale_layer_base_buf_adr_rd,
    weights_layer_base_ddr_adr_rd,
    input_ddr_layer_base_adr,
    output_ddr_layer_base_adr,
    of_div_row_num_ceil,
    tiley_first_tilex_first_split_size,
    tiley_first_tilex_last_split_size,
    tiley_first_tilex_mid_split_size,
    tiley_last_tilex_first_split_size,
    tiley_last_tilex_last_split_size,
    tiley_last_tilex_mid_split_size,
    tiley_mid_tilex_first_split_size,
    tiley_mid_tilex_last_split_size,
    tiley_mid_tilex_mid_split_size,
    tilex_first_ix_word_num,
    tilex_last_ix_word_num,
    tilex_mid_ix_word_num,
    tiley_first_iy_row_num,
    tiley_last_iy_row_num,
    tiley_mid_iy_row_num,
    ix_index_num,
    iy_index_num
);
  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter buffers_num = 3;
  parameter row_num_in_mode0 = 64;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_in_mode1 = 128;  // 64 in 8 bit, 128 in 1 bit
  parameter row_num_mode0_2pow = 6;
  parameter row_num_mode1_2pow = 7;
  parameter ifs_in_row_2pow = 1;
  parameter input_buffer_size_2pow = 12;  //4096
  parameter buf_rd_ratio = 2;
  parameter conv_instr_args_num = 40;

  input clk, reset, conv_decode;
  input [511:0] conv_instr_args;
  output reg next_conv_start;
  //all below come from instr
  output reg [3:0] mode;
  output reg noReLU;
  output reg [3:0] k, s, p;
  output reg [15:0] of, ox, oy, ix, iy, nif;
  output reg [3:0] nif_in_2pow, ix_in_2pow, of_in_2pow, ox_in_2pow;
  output reg [31:0] nif_mult_k_mult_k;
  output reg [31:0] N_chunks;
  output reg [15:0] E_layer_base_buf_adr_rd;
  output reg [15:0] bias_layer_base_buf_adr_rd;
  output reg [15:0] scale_layer_base_buf_adr_rd;
  output reg [31:0] weights_layer_base_ddr_adr_rd;
  output reg [31:0] input_ddr_layer_base_adr;
  output reg [31:0] output_ddr_layer_base_adr;
  output reg [7:0] of_div_row_num_ceil;
  //tiley_first_tilex_first_split_size = ceil(tiley_first_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_first_split_size;
  // tiley_first_tilex_last_split_size = ceil(tiley_first_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_last_split_size;
  //tiley_first_tilex_mid_split_size = ceil(tiley_first_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_first_tilex_mid_split_size;
  //tiley_last_tilex_first_split_size = ceil(tiley_last_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_first_split_size;
  //tiley_last_tilex_last_split_size = ceil(tiley_last_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_last_split_size;
  //tiley_last_tilex_mid_split_size = ceil(tiley_last_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_last_tilex_mid_split_size;
  //tiley_mid_tilex_first_split_size = ceil(tiley_mid_iy_row_num * tilex_first_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_first_split_size;
  //tiley_mid_tilex_last_split_size = ceil(tiley_mid_iy_row_num * tilex_last_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_last_split_size;
  //tiley_mid_tilex_mid_split_size = ceil(tiley_mid_iy_row_num * tilex_mid_ix_word_num / of_div_row_num_ceil)
  output reg [7:0] tiley_mid_tilex_mid_split_size;
  //tilex_first_ix_word_num = ceil(((pixels_in_row - 1) * s + k - p)/pixels_in_row)
  output reg [7:0] tilex_first_ix_word_num;
  //tilex_last_ix_word_num = ceil((ox - tile_x_start + 1 - 1) * s /pixels_in_row) = ceil(((ox % pixels_in_row - 1)*s+k-p)/pixels_in_row)
  output reg [7:0] tilex_last_ix_word_num;
  //tilex_mid_ix_word_num = s
  output reg [7:0] tilex_mid_ix_word_num;
  //tiley_first_iy_row_num = (buffers_num - 1) * s + k - p
  output reg [7:0] tiley_first_iy_row_num;
  // tiley_last_iy_row_num = (oy - tile_y_start + 1) * s = (oy % buffers_num) * s
  output reg [7:0] tiley_last_iy_row_num;
  //tiley_mid_iy_row_num = buffers_num * s
  output reg [7:0] tiley_mid_iy_row_num;
  //ix_index_num = ceil(ix/pixels_in_row)
  //iy_index_num = ceil(iy/buffers_num)xxxxx =iy
  output reg [15:0] ix_index_num, iy_index_num;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      next_conv_start <= 1'b0;
    end else if (conv_decode == 1'b1) begin
      next_conv_start <= 1'b1;
    end else if (next_conv_start == 1'b1) begin
      next_conv_start <= 1'b0;
    end else begin
      next_conv_start <= next_conv_start;
    end
  end

  always @(posedge clk) begin
    if (conv_decode == 1'b1) begin
      mode                               <= {1'b0, conv_instr_args[0+:3]};  //4
      noReLU                             <= conv_instr_args[4-1];
      k                                  <= conv_instr_args[4+:4];  //4
      s                                  <= conv_instr_args[8+:4];  //4
      p                                  <= conv_instr_args[12+:4];  //4
      of                                 <= conv_instr_args[16+:16];  //16
      of_in_2pow                         <= conv_instr_args[32+:4];  //4
      ox                                 <= conv_instr_args[36+:16];  //16
      ox_in_2pow                         <= conv_instr_args[52+:4];  //4
      oy                                 <= conv_instr_args[56+:16];  //16
      ix                                 <= conv_instr_args[72+:16];  //16
      ix_in_2pow                         <= conv_instr_args[88+:4];  //4
      iy                                 <= conv_instr_args[92+:16];  //16
      nif                                <= conv_instr_args[108+:16];  //16
      nif_in_2pow                        <= conv_instr_args[124+:4];  //4
      nif_mult_k_mult_k                  <= conv_instr_args[128+:32];  //32
      N_chunks                           <= conv_instr_args[160+:32];  //32
      E_layer_base_buf_adr_rd            <= conv_instr_args[192+:16];  //16
      bias_layer_base_buf_adr_rd         <= conv_instr_args[208+:16];  //16
      scale_layer_base_buf_adr_rd        <= conv_instr_args[224+:16];  //16
      weights_layer_base_ddr_adr_rd      <= conv_instr_args[240+:32];  //32
      input_ddr_layer_base_adr           <= conv_instr_args[272+:32];  //32
      output_ddr_layer_base_adr          <= conv_instr_args[304+:32];  //32
      tilex_first_ix_word_num            <= conv_instr_args[336+:8];  //8
      tilex_last_ix_word_num             <= conv_instr_args[344+:8];  //8
      tilex_mid_ix_word_num              <= conv_instr_args[352+:8];  //8
      tiley_first_iy_row_num             <= conv_instr_args[360+:8];  //8
      tiley_last_iy_row_num              <= conv_instr_args[368+:8];  //8
      tiley_mid_iy_row_num               <= conv_instr_args[376+:8];  //8
      ix_index_num                       <= conv_instr_args[384+:16];  //16
      iy_index_num                       <= conv_instr_args[400+:16];  //16
      of_div_row_num_ceil                <= conv_instr_args[416+:8];  //8
      tiley_first_tilex_first_split_size <= conv_instr_args[424+:8];  //8
      tiley_first_tilex_last_split_size  <= conv_instr_args[432+:8];  //8
      tiley_first_tilex_mid_split_size   <= conv_instr_args[440+:8];  //8
      tiley_last_tilex_first_split_size  <= conv_instr_args[448+:8];  //8
      tiley_last_tilex_last_split_size   <= conv_instr_args[456+:8];  //8
      tiley_last_tilex_mid_split_size    <= conv_instr_args[464+:8];  //8
      tiley_mid_tilex_first_split_size   <= conv_instr_args[472+:8];  //8
      tiley_mid_tilex_last_split_size    <= conv_instr_args[480+:8];  //8
      tiley_mid_tilex_mid_split_size     <= conv_instr_args[488+:8];  //8
    end else begin
      mode                               <= mode;
      noReLU                             <= noReLU;
      k                                  <= k;
      s                                  <= s;
      p                                  <= p;
      of                                 <= of;
      of_in_2pow                         <= of_in_2pow;
      ox                                 <= ox;
      ox_in_2pow                         <= ox_in_2pow;
      oy                                 <= oy;
      ix                                 <= ix;
      ix_in_2pow                         <= ix_in_2pow;
      iy                                 <= iy;
      nif                                <= nif;
      nif_in_2pow                        <= nif_in_2pow;
      nif_mult_k_mult_k                  <= nif_mult_k_mult_k;
      N_chunks                           <= N_chunks;
      E_layer_base_buf_adr_rd            <= E_layer_base_buf_adr_rd;
      bias_layer_base_buf_adr_rd         <= bias_layer_base_buf_adr_rd;
      scale_layer_base_buf_adr_rd        <= scale_layer_base_buf_adr_rd;
      weights_layer_base_ddr_adr_rd      <= weights_layer_base_ddr_adr_rd;
      input_ddr_layer_base_adr           <= input_ddr_layer_base_adr;
      output_ddr_layer_base_adr          <= output_ddr_layer_base_adr;
      tilex_first_ix_word_num            <= tilex_first_ix_word_num;
      tilex_last_ix_word_num             <= tilex_last_ix_word_num;
      tilex_mid_ix_word_num              <= tilex_mid_ix_word_num;
      tiley_first_iy_row_num             <= tiley_first_iy_row_num;
      tiley_last_iy_row_num              <= tiley_last_iy_row_num;
      tiley_mid_iy_row_num               <= tiley_mid_iy_row_num;
      ix_index_num                       <= ix_index_num;
      iy_index_num                       <= iy_index_num;
      of_div_row_num_ceil                <= of_div_row_num_ceil;
      tiley_first_tilex_first_split_size <= tiley_first_tilex_first_split_size;
      tiley_first_tilex_last_split_size  <= tiley_first_tilex_last_split_size;
      tiley_first_tilex_mid_split_size   <= tiley_first_tilex_mid_split_size;
      tiley_last_tilex_first_split_size  <= tiley_last_tilex_first_split_size;
      tiley_last_tilex_last_split_size   <= tiley_last_tilex_last_split_size;
      tiley_last_tilex_mid_split_size    <= tiley_last_tilex_mid_split_size;
      tiley_mid_tilex_first_split_size   <= tiley_mid_tilex_first_split_size;
      tiley_mid_tilex_last_split_size    <= tiley_mid_tilex_last_split_size;
      tiley_mid_tilex_mid_split_size     <= tiley_mid_tilex_mid_split_size;
    end
  end

endmodule
