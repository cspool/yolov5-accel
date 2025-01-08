`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/08/2025 11:31:46 AM
// Design Name:
// Module Name: conv_decoder
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


module conv_decoder(
    clk, reset, conv_decode,
    conv_start,
    mode,
    k, s, p,
    of, ox, oy, ix, iy, nif,
    nif_in_2pow, ix_in_2pow,
    nif_mult_k_mult_k,
    N_chunks,
    bias_layer_base_buf_adr_rd,
    tail_layer_base_buf_adr_rd,
    rank_layer_base_buf_adr_rd,
    weights_layer_base_ddr_adr_rd
  );
  input clk, reset, conv_decode;
  output reg conv_start;
  //all below come from instr
  output reg mode;
  output reg [3:0] k, s, p;
  output reg [15:0] of, ox, oy, ix, iy, nif;
  output reg [3:0] nif_in_2pow, ix_in_2pow;
  output reg [15:0] nif_mult_k_mult_k;
  output reg [15:0] N_chunks;
  output reg [15:0] bias_layer_base_buf_adr_rd;
  output reg [15:0] tail_layer_base_buf_adr_rd;
  output reg [15:0] rank_layer_base_buf_adr_rd;
  output reg [15:0] weights_layer_base_ddr_adr_rd;

  always@(posedge clk)
  begin //xxxxx
    if(reset == 1'b1)
    begin
      conv_start <= 1'b0;
    end
    else if(conv_decode == 1'b1)
    begin
      conv_start <= 1'b1;
    end
    else if(conv_start == 1'b1)
    begin
      conv_start <= 1'b0;
    end
    else
    begin
      conv_start <= conv_start;
    end
  end

  always@(posedge clk)
  begin
    if(reset == 1'b1)
    begin
      k <= 0;
      s <= 0;
      p <= 0;
      of <= 0;
      ox <= 0;
      oy <= 0;
      ix <= 0;
      iy <= 0; // a tile computation
      ix_in_2pow <= 0;
      nif <= 0;
      nif_in_2pow <= 0;
      nif_mult_k_mult_k <= 0;
      mode <= 0;
      N_chunks <= 0;
      bias_layer_base_buf_adr_rd <= 0;
      tail_layer_base_buf_adr_rd <= 0;
      rank_layer_base_buf_adr_rd <= 0;
      weights_layer_base_ddr_adr_rd <= 0;
    end
    else if(conv_decode == 1'b1)
    begin
      k <= 3;
      s <= 1;
      p <= 1;
      of <= 128;
      ox <= 128;
      oy <= 3;
      ix <= 128;
      iy <= 3; // a tile computation
      ix_in_2pow <= 7;
      nif <= 2;
      nif_in_2pow <= 1;
      nif_mult_k_mult_k <= 18; //nif*k*k
      //mode 0
      mode <= 0;
      N_chunks <= 8; //ceil(ox/pox) * ceil(oy/poy) * ceil(of/pof)
      bias_layer_base_buf_adr_rd <= 0;
      tail_layer_base_buf_adr_rd <= 0;
      rank_layer_base_buf_adr_rd <= 0;
      weights_layer_base_ddr_adr_rd <= 0;
    end
    else
    begin
      k <= k;
      s <= s;
      p <= p;
      of <= of;
      ox <= ox;
      oy <= oy;
      ix <= ix;
      iy <= iy; // a tile computation
      ix_in_2pow <= ix_in_2pow;
      nif <= nif;
      nif_in_2pow <= nif_in_2pow;
      nif_mult_k_mult_k <= nif_mult_k_mult_k;
      mode <= mode;
      N_chunks <= N_chunks;
      bias_layer_base_buf_adr_rd <= bias_layer_base_buf_adr_rd;
      tail_layer_base_buf_adr_rd <= tail_layer_base_buf_adr_rd;
      rank_layer_base_buf_adr_rd <= rank_layer_base_buf_adr_rd;
      weights_layer_base_ddr_adr_rd <= weights_layer_base_ddr_adr_rd;
    end
  end
endmodule

