`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 12:49:09
// Design Name: 
// Module Name: conv_weights_ping_pong_controller_v2
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


module conv_weights_ping_pong_controller_v2 (
    reset,
    clk,
    mode,
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
    //bank 1
    weights_bank_1_ping_en,  //o
    weights_bank_1_ping_en_wr,  //o
    weights_bank_1_ping_adr,  // o
    weights_bank_1_ping_in,  //o:port in of weights ping buf
    weights_bank_1_ping_out,  //i:port out of weights ping buf
    //bank 2
    weights_bank_2_ping_en,  //o
    weights_bank_2_ping_en_wr,  //o
    weights_bank_2_ping_adr,  // o
    weights_bank_2_ping_in,  //o:port in of weights ping buf
    weights_bank_2_ping_out,  //i:port out of weights ping buf
    //bank 3
    weights_bank_3_ping_en,  //o
    weights_bank_3_ping_en_wr,  //o
    weights_bank_3_ping_adr,  // o
    weights_bank_3_ping_in,  //o:port in of weights ping buf
    weights_bank_3_ping_out,  //i:port out of weights ping buf
    //bank 4
    weights_bank_4_ping_en,  //o
    weights_bank_4_ping_en_wr,  //o
    weights_bank_4_ping_adr,  // o
    weights_bank_4_ping_in,  //o:port in of weights ping buf
    weights_bank_4_ping_out,  //i:port out of weights ping buf

    //pong  buffer port
    //bank 1
    weights_bank_1_pong_en,  //o
    weights_bank_1_pong_en_wr,  //o
    weights_bank_1_pong_adr,  // o
    weights_bank_1_pong_in,  //o:port in of weights ping buf
    weights_bank_1_pong_out,  //i:port out of weights ping buf
    //bank 2
    weights_bank_2_pong_en,  //o
    weights_bank_2_pong_en_wr,  //o
    weights_bank_2_pong_adr,  // o
    weights_bank_2_pong_in,  //o:port in of weights ping buf
    weights_bank_2_pong_out,  //i:port out of weights ping buf
    //bank 3
    weights_bank_3_pong_en,  //o
    weights_bank_3_pong_en_wr,  //o
    weights_bank_3_pong_adr,  // o
    weights_bank_3_pong_in,  //o:port in of weights ping buf
    weights_bank_3_pong_out,  //i:port out of weights ping buf
    //bank 4
    weights_bank_4_pong_en,  //o
    weights_bank_4_pong_en_wr,  //o
    weights_bank_4_pong_adr,  // o
    weights_bank_4_pong_in,  //o:port in of weights ping buf
    weights_bank_4_pong_out  //i:port out of weights ping buf
);
  // a mid lap between weight buffer and the write/read on the weight buffer
  parameter weights_in_tile_mode0 = 64;  // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128;  // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;

  input reset, clk;
  input mode;
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
  wire [weight_word_length-1 : 0] weights_word_buf_wt_mode1;
  wire [weight_word_length-1 : 0] weights_word_buf_wt_mode;
  genvar i;
  generate
    for (i = 0; i < (weights_in_tile_mode1 >> 1); i = i + 1) begin
      assign weights_word_buf_wt_mode1[i*8+:8] = {6'b0, weights_word_buf_wt[2*i+1], weights_word_buf_wt[2*i]};
    end
  endgenerate
  assign weights_word_buf_wt_mode = (mode == 0) ? weights_word_buf_wt : (mode == 1) ? weights_word_buf_wt_mode1 : 0;

  reg ping_pong_write;  //ping is to write weights buffer 0, pong is to write weights buffer 1
  reg ping_pong_read;  //ping is to read weights buffer 1, pong is to read weights buffer 0

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

  //ping  buffer port
  wire weights_bank_1_ping_en_rd;
  reg weights_bank_2_ping_en_rd, weights_bank_3_ping_en_rd, weights_bank_4_ping_en_rd;
  reg last_weights_bank_1_ping_en_rd, last_weights_bank_2_ping_en_rd, last_weights_bank_3_ping_en_rd, last_weights_bank_4_ping_en_rd;
  wire [15:0] weights_bank_1_ping_adr_rd;
  reg [15:0] weights_bank_2_ping_adr_rd, weights_bank_3_ping_adr_rd, weights_bank_4_ping_adr_rd;
  wire [15:0] weights_bank_1_ping_adr_wt, weights_bank_2_ping_adr_wt, weights_bank_3_ping_adr_wt, weights_bank_4_ping_adr_wt;

  output weights_bank_1_ping_en;  //o
  output weights_bank_1_ping_en_wr;  //o
  output [15:0] weights_bank_1_ping_adr;  // o
  output [128-1 : 0] weights_bank_1_ping_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_1_ping_out;  //i:port out of weights ping buf
  output weights_bank_2_ping_en;  //o
  output weights_bank_2_ping_en_wr;  //o
  output [15:0] weights_bank_2_ping_adr;  // o
  output [128-1 : 0] weights_bank_2_ping_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_2_ping_out;  //i:port out of weights ping buf
  output weights_bank_3_ping_en;  //o
  output weights_bank_3_ping_en_wr;  //o
  output [15:0] weights_bank_3_ping_adr;  // o
  output [128-1 : 0] weights_bank_3_ping_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_3_ping_out;  //i:port out of weights ping buf
  output weights_bank_4_ping_en;  //o
  output weights_bank_4_ping_en_wr;  //o
  output [15:0] weights_bank_4_ping_adr;  // o
  output [128-1 : 0] weights_bank_4_ping_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_4_ping_out;  //i:port out of weights ping buf

  //pong  buffer port
  wire weights_bank_1_pong_en_rd;
  reg weights_bank_2_pong_en_rd, weights_bank_3_pong_en_rd, weights_bank_4_pong_en_rd;
  reg last_weights_bank_1_pong_en_rd, last_weights_bank_2_pong_en_rd, last_weights_bank_3_pong_en_rd, last_weights_bank_4_pong_en_rd;
  wire [15:0] weights_bank_1_pong_adr_rd;
  reg [15:0] weights_bank_2_pong_adr_rd, weights_bank_3_pong_adr_rd, weights_bank_4_pong_adr_rd;
  wire [15:0] weights_bank_1_pong_adr_wt, weights_bank_2_pong_adr_wt, weights_bank_3_pong_adr_wt, weights_bank_4_pong_adr_wt;

  output weights_bank_1_pong_en;  //o
  output weights_bank_1_pong_en_wr;  //o
  output [15:0] weights_bank_1_pong_adr;  // o
  output [128-1 : 0] weights_bank_1_pong_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_1_pong_out;  //i:port out of weights ping buf
  output weights_bank_2_pong_en;  //o
  output weights_bank_2_pong_en_wr;  //o
  output [15:0] weights_bank_2_pong_adr;  // o
  output [128-1 : 0] weights_bank_2_pong_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_2_pong_out;  //i:port out of weights ping buf
  output weights_bank_3_pong_en;  //o
  output weights_bank_3_pong_en_wr;  //o
  output [15:0] weights_bank_3_pong_adr;  // o
  output [128-1 : 0] weights_bank_3_pong_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_3_pong_out;  //i:port out of weights ping buf
  output weights_bank_4_pong_en;  //o
  output weights_bank_4_pong_en_wr;  //o
  output [15:0] weights_bank_4_pong_adr;  // o
  output [128-1 : 0] weights_bank_4_pong_in;  //o:port in of weights ping buf
  input [128-1 : 0] weights_bank_4_pong_out;  //i:port out of weights ping buf

  //ping buf(weight buf 0) port
  assign weights_bank_1_ping_en_rd = (ping_pong_read == 1'b0) ? weights_word_buf_en_rd : 0;
  always @(posedge clk) begin
    weights_bank_2_ping_en_rd <= weights_bank_1_ping_en_rd;
    weights_bank_3_ping_en_rd <= weights_bank_2_ping_en_rd;
    weights_bank_4_ping_en_rd <= weights_bank_3_ping_en_rd;
  end
  assign weights_bank_1_ping_adr_rd = (ping_pong_read == 1'b0) ? weights_word_buf_adr_rd : 0;
  always @(posedge clk) begin
    weights_bank_2_ping_adr_rd <= weights_bank_1_ping_adr_rd;
    weights_bank_3_ping_adr_rd <= weights_bank_2_ping_adr_rd;
    weights_bank_4_ping_adr_rd <= weights_bank_3_ping_adr_rd;
  end
  //bank 1
  assign weights_bank_1_ping_adr_wt = (ping_pong_write == 1'b0) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_1_ping_en_wr  = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_1_ping_en     =  //
 ((weights_bank_1_ping_en_rd == 1) || (weights_bank_1_ping_en_wr == 1)) ? 1 : 0;
  assign weights_bank_1_ping_adr    =  //
 (weights_bank_1_ping_en_rd == 1) ? weights_bank_1_ping_adr_rd :  //
 (weights_bank_1_ping_en_wr == 1) ? weights_bank_1_ping_adr_wt : 0;
  assign weights_bank_1_ping_in     = (ping_pong_write == 1'b0) ? weights_word_buf_wt_mode[0+:128] : 0;
  //bank 2
  assign weights_bank_2_ping_adr_wt = (ping_pong_write == 1'b0) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_2_ping_en_wr  = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_2_ping_en     =  //
 ((weights_bank_2_ping_en_rd == 1) || (weights_bank_2_ping_en_wr == 1)) ? 1 : 0;
  assign weights_bank_2_ping_adr    =  //
 (weights_bank_2_ping_en_rd == 1) ? weights_bank_2_ping_adr_rd :  //
 (weights_bank_2_ping_en_wr == 1) ? weights_bank_2_ping_adr_wt : 0;
  assign weights_bank_2_ping_in     = (ping_pong_write == 1'b0) ? weights_word_buf_wt_mode[128+:128] : 0;
  //bank 3
  assign weights_bank_3_ping_adr_wt = (ping_pong_write == 1'b0) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_3_ping_en_wr  = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_3_ping_en     =  //
 ((weights_bank_3_ping_en_rd == 1) || (weights_bank_3_ping_en_wr == 1)) ? 1 : 0;
  assign weights_bank_3_ping_adr    =  //
 (weights_bank_3_ping_en_rd == 1) ? weights_bank_3_ping_adr_rd :  //
 (weights_bank_3_ping_en_wr == 1) ? weights_bank_3_ping_adr_wt : 0;
  assign weights_bank_3_ping_in     = (ping_pong_write == 1'b0) ? weights_word_buf_wt_mode[256+:128] : 0;
  //bank 4
  assign weights_bank_4_ping_adr_wt = (ping_pong_write == 1'b0) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_4_ping_en_wr  = (ping_pong_write == 1'b0) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_4_ping_en     =  //
 ((weights_bank_4_ping_en_rd == 1) || (weights_bank_4_ping_en_wr == 1)) ? 1 : 0;
  assign weights_bank_4_ping_adr    =  //
 (weights_bank_4_ping_en_rd == 1) ? weights_bank_4_ping_adr_rd :  //
 (weights_bank_4_ping_en_wr == 1) ? weights_bank_4_ping_adr_wt : 0;
  assign weights_bank_4_ping_in     = (ping_pong_write == 1'b0) ? weights_word_buf_wt_mode[384+:128] : 0;

  //write into ping buf
  // assign weights_word_buf_ping_in    = (ping_pong_write == 1'b0) ? weights_word_buf_wt : 0; //weights_word_buf_wt_mode
  // assign weights_word_buf_ping_in = (ping_pong_write == 1'b0) ? weights_word_buf_wt_mode : 0;


  //pong buf(weight buf 1) port
  //write into pong buf
  // assign weights_word_buf_pong_in    = (ping_pong_write == 1'b1) ? weights_word_buf_wt : 0; // weights_word_buf_wt_mode
  // assign weights_word_buf_pong_in = (ping_pong_write == 1'b1) ? weights_word_buf_wt_mode : 0;

  assign weights_bank_1_pong_en_rd  = (ping_pong_read == 1'b1) ? weights_word_buf_en_rd : 0;
  always @(posedge clk) begin
    weights_bank_2_pong_en_rd <= weights_bank_1_pong_en_rd;
    weights_bank_3_pong_en_rd <= weights_bank_2_pong_en_rd;
    weights_bank_4_pong_en_rd <= weights_bank_3_pong_en_rd;
  end
  assign weights_bank_1_pong_adr_rd = (ping_pong_read == 1'b1) ? weights_word_buf_adr_rd : 0;
  always @(posedge clk) begin
    weights_bank_2_pong_adr_rd <= weights_bank_1_pong_adr_rd;
    weights_bank_3_pong_adr_rd <= weights_bank_2_pong_adr_rd;
    weights_bank_4_pong_adr_rd <= weights_bank_3_pong_adr_rd;
  end
  //bank 1
  assign weights_bank_1_pong_adr_wt = (ping_pong_write == 1'b1) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_1_pong_en_wr  = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_1_pong_en     =  //
 ((weights_bank_1_pong_en_rd == 1) || (weights_bank_1_pong_en_wr == 1)) ? 1 : 0;
  assign weights_bank_1_pong_adr    =  //
 (weights_bank_1_pong_en_rd == 1) ? weights_bank_1_pong_adr_rd :  //
 (weights_bank_1_pong_en_wr == 1) ? weights_bank_1_pong_adr_wt : 0;
  assign weights_bank_1_pong_in     = (ping_pong_write == 1'b1) ? weights_word_buf_wt_mode[0+:128] : 0;
  //bank 2
  assign weights_bank_2_pong_adr_wt = (ping_pong_write == 1'b1) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_2_pong_en_wr  = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_2_pong_en     =  //
 ((weights_bank_2_pong_en_rd == 1) || (weights_bank_2_pong_en_wr == 1)) ? 1 : 0;
  assign weights_bank_2_pong_adr    =  //
 (weights_bank_2_pong_en_rd == 1) ? weights_bank_2_pong_adr_rd :  //
 (weights_bank_2_pong_en_wr == 1) ? weights_bank_2_pong_adr_wt : 0;
  assign weights_bank_2_pong_in     = (ping_pong_write == 1'b1) ? weights_word_buf_wt_mode[128+:128] : 0;
  //bank 3
  assign weights_bank_3_pong_adr_wt = (ping_pong_write == 1'b1) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_3_pong_en_wr  = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_3_pong_en     =  //
 ((weights_bank_3_pong_en_rd == 1) || (weights_bank_3_pong_en_wr == 1)) ? 1 : 0;
  assign weights_bank_3_pong_adr    =  //
 (weights_bank_3_pong_en_rd == 1) ? weights_bank_3_pong_adr_rd :  //
 (weights_bank_3_pong_en_wr == 1) ? weights_bank_3_pong_adr_wt : 0;
  assign weights_bank_3_pong_in     = (ping_pong_write == 1'b1) ? weights_word_buf_wt_mode[256+:128] : 0;
  //bank 4
  assign weights_bank_4_pong_adr_wt = (ping_pong_write == 1'b1) ? weights_word_buf_adr_wt : 0;
  assign weights_bank_4_pong_en_wr  = (ping_pong_write == 1'b1) ? weights_word_buf_en_wt : 0;
  //write ddr weights to ping buf, read weights from pong buf
  assign weights_bank_4_pong_en     =  //
 ((weights_bank_4_pong_en_rd == 1) || (weights_bank_4_pong_en_wr == 1)) ? 1 : 0;
  assign weights_bank_4_pong_adr    =  //
 (weights_bank_4_pong_en_rd == 1) ? weights_bank_4_pong_adr_rd :  //
 (weights_bank_4_pong_en_wr == 1) ? weights_bank_4_pong_adr_wt : 0;
  assign weights_bank_4_pong_in     = (ping_pong_write == 1'b1) ? weights_word_buf_wt_mode[384+:128] : 0;

  //rd from ping or pong buf
  always @(posedge clk) begin
    last_weights_bank_1_ping_en_rd <= weights_bank_1_ping_en_rd;
    last_weights_bank_2_ping_en_rd <= weights_bank_2_ping_en_rd;
    last_weights_bank_3_ping_en_rd <= weights_bank_3_ping_en_rd;
    last_weights_bank_4_ping_en_rd <= weights_bank_4_ping_en_rd;

    last_weights_bank_1_pong_en_rd <= weights_bank_1_pong_en_rd;
    last_weights_bank_2_pong_en_rd <= weights_bank_2_pong_en_rd;
    last_weights_bank_3_pong_en_rd <= weights_bank_3_pong_en_rd;
    last_weights_bank_4_pong_en_rd <= weights_bank_4_pong_en_rd;
  end

  wire [128-1:0] weights_bank_1_pong_out_data;
  assign weights_bank_1_pong_out_data = (last_weights_bank_1_pong_en_rd == 1) ? weights_bank_1_pong_out : 128'b0;
  wire [128-1:0] weights_bank_2_pong_out_data;
  assign weights_bank_2_pong_out_data = (last_weights_bank_2_pong_en_rd == 1) ? weights_bank_2_pong_out : 128'b0;
  wire [128-1:0] weights_bank_3_pong_out_data;
  assign weights_bank_3_pong_out_data = (last_weights_bank_3_pong_en_rd == 1) ? weights_bank_3_pong_out : 128'b0;
  wire [128-1:0] weights_bank_4_pong_out_data;
  assign weights_bank_4_pong_out_data = (last_weights_bank_4_pong_en_rd == 1) ? weights_bank_4_pong_out : 128'b0;
  wire [128-1:0] weights_bank_1_ping_out_data;
  assign weights_bank_1_ping_out_data = (last_weights_bank_1_ping_en_rd == 1) ? weights_bank_1_ping_out : 128'b0;
  wire [128-1:0] weights_bank_2_ping_out_data;
  assign weights_bank_2_ping_out_data = (last_weights_bank_2_ping_en_rd == 1) ? weights_bank_2_ping_out : 128'b0;
  wire [128-1:0] weights_bank_3_ping_out_data;
  assign weights_bank_3_ping_out_data = (last_weights_bank_3_ping_en_rd == 1) ? weights_bank_3_ping_out : 128'b0;
  wire [128-1:0] weights_bank_4_ping_out_data;
  assign weights_bank_4_ping_out_data = (last_weights_bank_4_ping_en_rd == 1) ? weights_bank_4_ping_out : 128'b0;
  assign weights_word_buf_rd =  //
      (ping_pong_read == 1'b0) ?  //
      {weights_bank_4_ping_out_data, weights_bank_3_ping_out_data, weights_bank_2_ping_out_data, weights_bank_1_ping_out_data} :  // 
      (ping_pong_read == 1'b1) ?  //
      {weights_bank_4_pong_out_data, weights_bank_3_pong_out_data, weights_bank_2_pong_out_data, weights_bank_1_pong_out_data} : 0;

endmodule
