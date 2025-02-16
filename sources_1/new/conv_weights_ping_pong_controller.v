`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/23/2024 03:43:33 PM
// Design Name:
// Module Name: conv_weights_ping_pong_controller
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


module conv_weights_ping_pong_controller (
    reset,
    clk,
    conv_load_weights,
    last_conv_compute,

    weights_word_buf_en_rd,  //i:weight_en_rd
    weights_word_buf_adr_rd,  //i:weight_adr_rd
    weights_word_buf_rd,  //o:weights read from weights buf

    //weights loaded and need writing to buf
    weights_word_buf_en_wt,  //i
    weights_word_buf_adr_wt,  //i
    weights_word_buf_wt,  //i:weights write to weights buf

    //ping  buffer port
    weights_word_buf_ping_en,  //o
    weights_word_buf_ping_en_wr,  //o
    weights_word_buf_ping_adr,  // o
    weights_word_buf_ping_in,  //o:port in of weights ping buf
    weights_word_buf_ping_out,  //i:port out of weights ping buf

    //pong  buffer port
    weights_word_buf_pong_en,  //o
    weights_word_buf_pong_en_wr,  //o
    weights_word_buf_pong_adr,  //o
    weights_word_buf_pong_in,  //o:port in of weights pong buf
    weights_word_buf_pong_out  //i:port out of weights pong buf

);
  // a mid lap between weight buffer and the write/read on the weight buffer
  parameter weights_in_tile_mode0 = 64;  // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128;  // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;

  input reset, clk;
  //load in computation is load signal driven
  input conv_load_weights;  //weights ddr --> buffer, wt to weights buffer, impluse
  // and meanwhile weights buf --> computation, rd from weights buffer, impluse
  //weights need reading from buf
  input last_conv_compute;
  input weights_word_buf_en_rd;  //i:weight_en_rd
  input [15:0] weights_word_buf_adr_rd;  //i:weight_adr_rd
  output [weight_word_length-1 : 0] weights_word_buf_rd;  //o:weights read from weights buf
  //weights loaded and need writing to buf
  input weights_word_buf_en_wt;  //i
  input [15:0] weights_word_buf_adr_wt;  //i
  input [weight_word_length-1 : 0] weights_word_buf_wt;  //i:weights write to weights buf
  //ping  buffer port
  output weights_word_buf_ping_en;  //o
  output weights_word_buf_ping_en_wr;  //o
  output [15:0] weights_word_buf_ping_adr;  // o
  output [weight_word_length-1 : 0] weights_word_buf_ping_in;  //o:port in of weights ping buf
  input [weight_word_length-1 : 0] weights_word_buf_ping_out;  //i:port out of weights ping buf
  //pong  buffer port
  output weights_word_buf_pong_en;  //o
  output weights_word_buf_pong_en_wr;  //o
  output [15:0] weights_word_buf_pong_adr;  //o
  output [weight_word_length-1 : 0] weights_word_buf_pong_in;  //o:port in of weights pong buf
  input [weight_word_length-1 : 0] weights_word_buf_pong_out;  //i:port out of weights pong buf

  reg ping_pong_write;  //ping is to write weights buffer 0, pong is to write weights buffer 1
  reg ping_pong_read;  //ping is to read weights buffer 1, pong is to read weights buffer 0

  //ping buf(weight buf 0) port
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_word_buf_ping_en    = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : (ping_pong_read == 1'b0) ? weights_word_buf_en_rd : 0;
  assign weights_word_buf_ping_en_wr = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : 0;
  assign weights_word_buf_ping_adr   = (ping_pong_write == 1'b0) ? weights_word_buf_adr_wt : (ping_pong_read == 1'b0) ? weights_word_buf_adr_rd : 0;
  //write into ping buf
  assign weights_word_buf_ping_in    = (ping_pong_write == 1'b0) ? weights_word_buf_wt : 0;

  //pong buf(weight buf 1) port
  assign weights_word_buf_pong_en    = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : (ping_pong_read == 1'b1) ? weights_word_buf_en_rd : 0;
  assign weights_word_buf_pong_en_wr = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : 0;
  assign weights_word_buf_pong_adr   = (ping_pong_write == 1'b1) ? weights_word_buf_adr_wt : (ping_pong_read == 1'b1) ? weights_word_buf_adr_rd : 0;
  //write into pong buf
  assign weights_word_buf_pong_in    = (ping_pong_write == 1'b1) ? weights_word_buf_wt : 0;
  //rd from ping or pong buf
  assign weights_word_buf_rd         = (ping_pong_read == 1'b0) ? weights_word_buf_ping_out : (ping_pong_read == 1'b1) ? weights_word_buf_pong_out : 0;

  //ping pong weight buffer write, weights ddr --> buffer, wt to weights buffer
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      ping_pong_write <= 1;  //term 0: 1->0, write to ping buf
      ping_pong_read  <= 0;  // term 0: 0->1, read from null
    end else if ((conv_load_weights == 1'b1) || (last_conv_compute == 1'b1)) begin
      ping_pong_write <= ping_pong_read;  //term 1: write to pong buf
      ping_pong_read  <= ping_pong_write;  //term 1: read from ping buf
    end else begin
      ping_pong_write <= ping_pong_write;
      ping_pong_read  <= ping_pong_read;
    end
  end

endmodule
