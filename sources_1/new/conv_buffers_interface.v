`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/02/2025 11:15:54 AM
// Design Name:
// Module Name: conv_buffers_interface
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


module conv_buffers_interface(
    reset,
    clk,
    //cycle 0 in/ input rows rd info
    row1_buf_adr,
    row1_buf_word_select,
    row1_buf_idx,
    row2_buf_adr,
    row2_buf_word_select,
    row2_buf_idx,
    row3_buf_adr,
    row3_buf_word_select,
    row3_buf_idx,
    //cycle 1 in/ rows rd from buf
    buf1_pixels_32,
    buf2_pixels_32,
    buf3_pixels_32,
    last_row1_buf_idx,
    last_row2_buf_idx,
    last_row3_buf_idx,
    //cycle 0 in/ slab rows rd info
    row1_slab_adr,
    row1_slab_idx,
    row2_slab_adr,
    row2_slab_idx,
    row3_slab_adr,
    row3_slab_idx,
    //cycle 1 in/ slab data rd from slab
    slab1_pixels_2,
    slab2_pixels_2,
    slab3_pixels_2,
    last_row1_slab_idx,
    last_row2_slab_idx,
    last_row3_slab_idx,
    //cycle 0 in/ valid row adr
    valid_row1_adr,
    valid_row2_adr,
    valid_row3_adr,
    //cycle 0 out/ buffer rd ctrl
    buf1_adr_rd,
    buf2_adr_rd,
    buf3_adr_rd,
    buf1_word_select_rd,
    buf2_word_select_rd,
    buf3_word_select_rd,
    buf1_en_rd,
    buf2_en_rd,
    buf3_en_rd,
    //cycle 1 out/ last row data rd from buffer
    last_row1_pixels_32,
    last_row2_pixels_32,
    last_row3_pixels_32,
    //cycle 0 out/ slab rd ctrl
    slab1_adr_rd,
    slab2_adr_rd,
    slab3_adr_rd,
    slab1_en_rd,
    slab2_en_rd,
    slab3_en_rd,
    //cycle 1 out/ last row slab rd from slab
    last_row1_slab_2,
    last_row2_slab_2,
    last_row3_slab_2,
    //cycle 0 out/ slab wt ctrl
    slab1_adr_wr,
    slab2_adr_wr,
    slab3_adr_wr,
    slab1_pixels_2_wr,
    slab2_pixels_2_wr,
    slab3_pixels_2_wr,
    slab1_en_wr,
    slab2_en_wr,
    slab3_en_wr,
    //-------------------------------------------
    //cycle 0 in/ rows wt info
    input_word_buf_wr,
    input_word_buf_en_wr,
    input_word_buf_idx_wr,
    input_word_buf_adr_wr,
    //cycle 0 out/ buf wt ctrl
    buf1_wr,
    buf2_wr,
    buf3_wr,
    buf1_adr_wr,
    buf2_adr_wr,
    buf3_adr_wr,
    buf1_en_wr,
    buf2_en_wr,
    buf3_en_wr
  );
  parameter pixels_in_row = 32;

  input reset,clk;
  //cycle 0 in/ input rows rd info
  input [15:0] row1_buf_adr;
  input row1_buf_word_select;
  input [1:0] row1_buf_idx;
  input [15:0] row2_buf_adr;
  input row2_buf_word_select;
  input [1:0] row2_buf_idx;
  input [15:0] row3_buf_adr;
  input row3_buf_word_select;
  input [1:0] row3_buf_idx;
  //cycle 1 in/ rows rd from buf
  input [pixels_in_row * 8 - 1: 0] buf1_pixels_32;
  input [pixels_in_row * 8 - 1: 0] buf2_pixels_32;
  input [pixels_in_row * 8 - 1: 0] buf3_pixels_32;
  wire [pixels_in_row * 8 - 1: 0] buf1_data;
  wire [pixels_in_row * 8 - 1: 0] buf2_data;
  wire [pixels_in_row * 8 - 1: 0] buf3_data;
  input [1:0] last_row1_buf_idx;
  input [1:0] last_row2_buf_idx;
  input [1:0] last_row3_buf_idx;
  //cycle 0 in/ slab rows rd info
  input [15:0] row1_slab_adr;
  input [1:0] row1_slab_idx;
  input [15:0] row2_slab_adr;
  input [1:0] row2_slab_idx;
  input [15:0] row3_slab_adr;
  input [1:0] row3_slab_idx;
  //cycle 1 in/ slab data rd from slab
  input [15:0] slab1_pixels_2;
  input [15:0] slab2_pixels_2;
  input [15:0] slab3_pixels_2;
  wire [15:0] slab1_data;
  wire [15:0] slab2_data;
  wire [15:0] slab3_data;
  input [1:0] last_row1_slab_idx;
  input [1:0] last_row2_slab_idx;
  input [1:0] last_row3_slab_idx;
  //cycle 0 in/ valid row adr
  input valid_row1_adr,valid_row2_adr,valid_row3_adr;
  //cycle 0 out/ buffer rd ctrl
  output [15:0] buf1_adr_rd;
  output [15:0] buf2_adr_rd;
  output [15:0] buf3_adr_rd;
  output buf1_word_select_rd;
  output buf2_word_select_rd;
  output buf3_word_select_rd;
  output buf1_en_rd;
  output buf2_en_rd;
  output buf3_en_rd;
  reg valid_buf1_data, valid_buf2_data, valid_buf3_data;
  //cycle 1 out/ last row data rd from buffer
  output [pixels_in_row * 8 - 1: 0] last_row1_pixels_32;
  output [pixels_in_row * 8 - 1: 0] last_row2_pixels_32;
  output [pixels_in_row * 8 - 1: 0] last_row3_pixels_32;
  //cycle 0 out/ slab rd ctrl
  output [15:0] slab1_adr_rd;
  output [15:0] slab2_adr_rd;
  output [15:0] slab3_adr_rd;
  output slab1_en_rd;
  output slab2_en_rd;
  output slab3_en_rd;
  reg valid_slab1_data, valid_slab2_data, valid_slab3_data;
  //cycle 1 out/ last row slab rd from slab
  output [15:0] last_row1_slab_2;
  output [15:0] last_row2_slab_2;
  output [15:0] last_row3_slab_2;
  //cycle 0 out/ slab wt ctrl
  output reg [15:0] slab1_adr_wr;
  output reg [15:0] slab2_adr_wr;
  output reg [15:0] slab3_adr_wr;
  output [15:0] slab1_pixels_2_wr;
  output [15:0] slab2_pixels_2_wr;
  output [15:0] slab3_pixels_2_wr;
  output slab1_en_wr, slab2_en_wr, slab3_en_wr;
  //-------------------------------------------
  //cycle 0 in/ rows wt info
  input [511:0] input_word_buf_wr;
  input input_word_buf_en_wr;
  input [1:0] input_word_buf_idx_wr;
  input [15:0] input_word_buf_adr_wr;
  //cycle 0 out/ buf wt ctrl
  output [511:0] buf1_wr;
  output [511:0] buf2_wr;
  output [511:0] buf3_wr;
  output [15:0] buf1_adr_wr;
  output [15:0] buf2_adr_wr;
  output [15:0] buf3_adr_wr;
  output buf1_en_wr;
  output buf2_en_wr;
  output buf3_en_wr;

  //in buffer
  //cycle 0
  assign buf1_adr_rd = (row1_buf_idx == 2'd1)? row1_buf_adr:
         (row2_buf_idx == 2'd1)? row2_buf_adr:
         (row3_buf_idx == 2'd1)? row3_buf_adr:
         0;

  assign buf2_adr_rd = (row1_buf_idx == 2'd2)? row1_buf_adr:
         (row2_buf_idx == 2'd2)? row2_buf_adr:
         (row3_buf_idx == 2'd2)? row3_buf_adr:
         0;

  assign buf3_adr_rd = (row1_buf_idx == 2'd3)? row1_buf_adr:
         (row2_buf_idx == 2'd3)? row2_buf_adr:
         (row3_buf_idx == 2'd3)? row3_buf_adr:
         0;

  assign buf1_word_select_rd = (row1_buf_idx == 2'd1)? row1_buf_word_select:
         (row2_buf_idx == 2'd1)? row2_buf_word_select:
         (row3_buf_idx == 2'd1)? row3_buf_word_select:
         0;

  assign buf2_word_select_rd = (row1_buf_idx == 2'd2)? row1_buf_word_select:
         (row2_buf_idx == 2'd2)? row2_buf_word_select:
         (row3_buf_idx == 2'd2)? row3_buf_word_select:
         0;

  assign buf3_word_select_rd = (row1_buf_idx == 2'd3)? row1_buf_word_select:
         (row2_buf_idx == 2'd3)? row2_buf_word_select:
         (row3_buf_idx == 2'd3)? row3_buf_word_select:
         0;

  //cycle 1
  assign buf1_data = (valid_buf1_data == 1'b1)? buf1_pixels_32 : 0;
  assign buf2_data = (valid_buf2_data == 1'b1)? buf2_pixels_32 : 0;
  assign buf3_data = (valid_buf3_data == 1'b1)? buf3_pixels_32 : 0;

  assign last_row1_pixels_32 = (last_row1_buf_idx == 2'd1)? buf1_data:
         (last_row1_buf_idx == 2'd2)? buf2_data:
         (last_row1_buf_idx == 2'd3)? buf3_data:
         0;

  assign last_row2_pixels_32 = (last_row2_buf_idx == 2'd1)? buf1_data:
         (last_row2_buf_idx == 2'd2)? buf2_data:
         (last_row2_buf_idx == 2'd3)? buf3_data:
         0;

  assign last_row3_pixels_32 = (last_row3_buf_idx == 2'd1)? buf1_data:
         (last_row3_buf_idx == 2'd2)? buf2_data:
         (last_row3_buf_idx == 2'd3)? buf3_data:
         0;

  //slab read
  //cycle 0
  assign slab1_adr_rd = (row1_slab_idx == 2'd1)? row1_slab_adr:
         (row2_slab_idx == 2'd1)? row2_slab_adr:
         (row3_slab_idx == 2'd1)? row3_slab_adr:
         0;

  assign slab2_adr_rd = (row1_slab_idx == 2'd2)? row1_slab_adr:
         (row2_slab_idx == 2'd2)? row2_slab_adr:
         (row3_slab_idx == 2'd2)? row3_slab_adr:
         0;

  assign slab3_adr_rd = (row1_slab_idx == 2'd3)? row1_slab_adr:
         (row2_slab_idx == 2'd3)? row2_slab_adr:
         (row3_slab_idx == 2'd3)? row3_slab_adr:
         0;

  //cycle 1
  assign slab1_data = (valid_slab1_data == 1'b1)? slab1_pixels_2 : 0;
  assign slab2_data = (valid_slab2_data == 1'b1)? slab2_pixels_2 : 0;
  assign slab3_data = (valid_slab3_data == 1'b1)? slab3_pixels_2 : 0;

  assign last_row1_slab_2 = (last_row1_slab_idx == 2'd1)? slab1_data:
         (last_row1_slab_idx == 2'd2)? slab2_data:
         (last_row1_slab_idx == 2'd3)? slab3_data:
         0;

  assign last_row2_slab_2 = (last_row2_slab_idx == 2'd1)? slab1_data:
         (last_row2_slab_idx == 2'd2)? slab2_data:
         (last_row2_slab_idx == 2'd3)? slab3_data:
         0;

  assign last_row3_slab_2 = (last_row3_slab_idx == 2'd1)? slab1_data:
         (last_row3_slab_idx == 2'd2)? slab2_data:
         (last_row3_slab_idx == 2'd3)? slab3_data:
         0;

  //cycle 0
  //valid
  //row_i_buf_idx == row_i_slab_idx
  assign buf1_en_rd = (row1_buf_idx == 2'd1)? valid_row1_adr:
         (row2_buf_idx == 2'd1)? valid_row2_adr:
         (row3_buf_idx == 2'd1)? valid_row3_adr:
         0;

  assign buf2_en_rd = (row1_buf_idx == 2'd2)? valid_row1_adr:
         (row2_buf_idx == 2'd2)? valid_row2_adr:
         (row3_buf_idx == 2'd2)? valid_row3_adr:
         0;

  assign buf3_en_rd = (row1_buf_idx == 2'd3)? valid_row1_adr:
         (row2_buf_idx == 2'd3)? valid_row2_adr:
         (row3_buf_idx == 2'd3)? valid_row3_adr:
         0;

  assign slab1_en_rd = (row1_slab_idx == 2'd1)? valid_row1_adr:
         (row2_slab_idx == 2'd1)? valid_row2_adr:
         (row3_slab_idx == 2'd1)? valid_row3_adr:
         0;

  assign slab2_en_rd = (row1_slab_idx == 2'd2)? valid_row1_adr:
         (row2_slab_idx == 2'd2)? valid_row2_adr:
         (row3_slab_idx == 2'd2)? valid_row3_adr:
         0;

  assign slab3_en_rd = (row1_slab_idx == 2'd3)? valid_row1_adr:
         (row2_slab_idx == 2'd3)? valid_row2_adr:
         (row3_slab_idx == 2'd3)? valid_row3_adr:
         0;

  //slab write
  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      slab1_adr_wr <= 16'hffff;
      slab2_adr_wr <= 16'hffff;
      slab3_adr_wr <= 16'hffff;
      valid_buf1_data <= 0;
      valid_buf2_data <= 0;
      valid_buf3_data <= 0;
      valid_slab1_data <= 0;
      valid_slab2_data <= 0;
      valid_slab3_data <= 0;
    end
    else
    begin
      slab1_adr_wr <= buf1_adr_rd;
      slab2_adr_wr <= buf2_adr_rd;
      slab3_adr_wr <= buf3_adr_rd;
      valid_buf1_data <= buf1_en_rd;
      valid_buf2_data <= buf2_en_rd;
      valid_buf3_data <= buf3_en_rd;
      valid_slab1_data <= slab1_en_rd;
      valid_slab2_data <= slab2_en_rd;
      valid_slab3_data <= slab3_en_rd;
    end
  end

  //cycle 1
  assign slab1_pixels_2_wr = buf1_data[pixels_in_row * 8 -1 -: 16];
  assign slab2_pixels_2_wr = buf2_data[pixels_in_row * 8 -1 -: 16];
  assign slab3_pixels_2_wr = buf3_data[pixels_in_row * 8 -1 -: 16];

  assign slab1_en_wr = valid_buf1_data;
  assign slab2_en_wr = valid_buf2_data;
  assign slab3_en_wr = valid_buf3_data;

  //load data into buf
  assign buf1_wr = (input_word_buf_idx_wr == 2'd1)? input_word_buf_wr : 0;
  assign buf2_wr = (input_word_buf_idx_wr == 2'd2)? input_word_buf_wr : 0;
  assign buf3_wr = (input_word_buf_idx_wr == 2'd3)? input_word_buf_wr : 0;
  assign buf1_adr_wr = (input_word_buf_idx_wr == 2'd1)? input_word_buf_adr_wr : 0;
  assign buf2_adr_wr = (input_word_buf_idx_wr == 2'd2)? input_word_buf_adr_wr : 0;
  assign buf3_adr_wr = (input_word_buf_idx_wr == 2'd3)? input_word_buf_adr_wr : 0;
  assign buf1_en_wr = (input_word_buf_idx_wr == 2'd1)? input_word_buf_en_wr : 0;
  assign buf2_en_wr = (input_word_buf_idx_wr == 2'd2)? input_word_buf_en_wr : 0;
  assign buf3_en_wr = (input_word_buf_idx_wr == 2'd3)? input_word_buf_en_wr : 0;

endmodule

