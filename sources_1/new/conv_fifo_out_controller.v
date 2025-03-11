`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2025 03:43:34 PM
// Design Name: 
// Module Name: conv_fifo_out_controller
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


module conv_fifo_out_controller (
    clk,
    reset,
    //cycle 0 in
    conv_fifo_out_start,
    ddr_en,
    output_ddr_layer_base_adr,
    mode,
    of_in_2pow,
    ox_in_2pow,
    cur_ox_start,
    cur_oy_start,
    cur_of_start,
    cur_pox,
    cur_poy,
    cur_pof,
    //cycle 0 out
    fifo_rds,
    //cycle 1 in
    fifo_data,
    //cycle 1 out
    fifo_column_no,
    fifo_row_no,
    valid_conv_out,
    out_y_idx,
    out_x_idx,
    out_f_idx,
    conv_out_data,
    conv_fifo_out_tile_add_end,
    conv_out_ddr_adr,
    valid_conv_out_ddr_adr,
    conv_out_ddr_data
);

  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa, row_num
  parameter column_num_in_sa = 16;  // how many columns in a sa
  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;
  parameter quantize_pixel_width = 8;
  parameter quantize_row_width = (quantize_pixel_width) * pe_parallel_weight_18 * pe_parallel_pixel_18 * column_num_in_sa;
  parameter conv_out_data_width = quantize_pixel_width * pe_parallel_pixel_88 * pe_parallel_weight_88 * column_num_in_sa;
  parameter ofs_in_row_2pow = 1;

  //cycle 0 in
  input clk, reset;
  input conv_fifo_out_start;
  input ddr_en;
  input [31:0] output_ddr_layer_base_adr;
  input [3:0] mode;
  input [15:0] cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof;
  input [3:0] of_in_2pow, ox_in_2pow;
  //cycle 1 in
  input [quantize_row_width-1 : 0] fifo_data;
  //cycle 0 out
  output [sa_row_num * sa_column_num-1:0] fifo_rds;
  //cycle 1 out
  output reg [3:0] fifo_column_no, fifo_row_no;
  output reg valid_conv_out;
  output reg [15:0] out_y_idx, out_x_idx, out_f_idx;
  output reg conv_fifo_out_tile_add_end;
  output [conv_out_data_width-1 : 0] conv_out_data;
  output [511:0] conv_out_ddr_data;
  output valid_conv_out_ddr_adr;
  reg valid_conv_out_ddr_adr_mode0, valid_conv_out_ddr_adr_mode1;
  output reg [31:0] conv_out_ddr_adr;
  reg  [conv_out_data_width-1 : 0] last_conv_out_data_mode0;

  //out ctrl
  reg                              signal_add;
  reg  [                     15:0] of_counter;
  reg  [                      3:0] oy_counter;
  reg  [                     15:0] channel_counter;  //0-16 in mode 0, 0-31 in mode 1
  reg  [                     15:0] last_channel_counter;  //last channel_counter 
  wire                             row_fifo_rd_en;
  wire [                     15:0] channel_num;
  wire [                      3:0] log_channel_num;
  wire loop_channel_counter_add_begin, loop_channel_counter_add_end;
  wire loop_of_counter_add_begin, loop_of_counter_add_end;
  wire loop_oy_counter_add_begin, loop_oy_counter_add_end;

  //fifo ctrl
  wire [conv_out_data_width-1 : 0] conv_out_data_mode0, conv_out_data_mode1;

  //rd from fifo to get conv words
  always @(posedge clk) begin
    if ((reset == 1'b1) || (conv_fifo_out_tile_add_end == 1'b1)) begin
      valid_conv_out             <= 0;
      conv_out_ddr_adr           <= 0;
      out_y_idx                  <= 0;
      out_x_idx                  <= 0;
      out_f_idx                  <= 0;
      conv_fifo_out_tile_add_end <= 0;
      fifo_column_no             <= 0;
      fifo_row_no                <= 0;
    end else if (loop_channel_counter_add_begin == 1'b1) begin
      valid_conv_out <= loop_channel_counter_add_begin;
      conv_out_ddr_adr <=
      //ddr base adr
      output_ddr_layer_base_adr +
      //row base adr 
      (((cur_oy_start - 1 + oy_counter - 1) << (of_in_2pow - ofs_in_row_2pow + ox_in_2pow - pixels_in_row_in_2pow)) +
      //x word base adr
      (((cur_ox_start - 1) << (of_in_2pow - ofs_in_row_2pow)) >> pixels_in_row_in_2pow)) +
      //channel adr
      ((cur_of_start - 1 + (of_counter - 1) + channel_counter - 1) >> ofs_in_row_2pow);
      out_y_idx <= cur_oy_start - 1 + oy_counter;
      out_x_idx <= cur_ox_start;
      out_f_idx <= cur_of_start - 1 + (of_counter - 1) + channel_counter;
      conv_fifo_out_tile_add_end <= loop_oy_counter_add_end;
      fifo_column_no <= oy_counter - 1;  //0,1,2
      fifo_row_no <= (of_counter - 1) >> log_channel_num;  //0,1,2,3
    end
  end

  //save conv words into ddr words
  always @(posedge clk) begin
    if (reset) begin
      last_conv_out_data_mode0     <= 256'b0;
      valid_conv_out_ddr_adr_mode0 <= 0;
      valid_conv_out_ddr_adr_mode1 <= 0;
    end else begin
      last_conv_out_data_mode0     <= conv_out_data_mode0;
      valid_conv_out_ddr_adr_mode0 <= loop_channel_counter_add_begin && (channel_counter[0] == 1'b0);  //even channel num
      valid_conv_out_ddr_adr_mode1 <= loop_channel_counter_add_begin;
    end
  end

  assign valid_conv_out_ddr_adr = (mode == 0) ? valid_conv_out_ddr_adr_mode0 : (mode == 1) ? valid_conv_out_ddr_adr_mode1 : 0;

  assign conv_out_ddr_data      = (valid_conv_out_ddr_adr == 1) ? ((mode == 0) ? {conv_out_data_mode0, last_conv_out_data_mode0} : (mode == 1) ? fifo_data : 512'b0) : 512'b0;

  //rd fifo ctrl
  assign row_fifo_rd_en         = (loop_channel_counter_add_begin == 1'b0) ? 1'b0 : (mode == 0) ? 1'b1 :  //0,1,...,15
 (mode == 1) ? channel_counter[0] : 0;

  genvar i;

  generate
    for (i = 0; i < sa_row_num * sa_column_num; i = i + 1) begin
      assign fifo_rds[i] = ((((oy_counter - 1) << 2) + ((of_counter - 1) >> log_channel_num)) == i) ? (row_fifo_rd_en) : 1'b0;
    end

  endgenerate
  assign conv_out_data_mode0 = fifo_data[conv_out_data_width-1 : 0];
  assign conv_out_data_mode1 =  //last read channel counter is 1,3,5,7,9,...
 (last_channel_counter[0] == 1'b1) ? fifo_data[conv_out_data_width-1 : 0] :  //last read channel counter is 2,4,6,8,10,...
 (last_channel_counter[0] == 1'b0) ? fifo_data[quantize_row_width-1 : conv_out_data_width] : 0;

  assign conv_out_data       = (valid_conv_out == 1'b0) ? 0 : (valid_conv_out == 1'b1) ? ((mode == 0) ? conv_out_data_mode0 : (mode == 1) ? conv_out_data_mode1 : 0) : 0;

  assign channel_num         = (mode == 0) ? 8'd16 : (mode == 1) ? 8'd32 : 0;

  assign log_channel_num     = (mode == 0) ? 4'd4 : (mode == 1) ? 4'd5 : 0;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      signal_add <= 0;
    end else if (conv_fifo_out_start == 1'b1) begin
      signal_add <= 1;
    end else if (loop_oy_counter_add_end == 1'b1) begin  // conv out end
      signal_add <= 0;
    end else begin
      signal_add <= signal_add;
    end
  end

  //loop row no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      channel_counter <= 1;
    end else if ((loop_channel_counter_add_begin == 1'b1)) begin
      if (loop_channel_counter_add_end == 1'b1) begin
        channel_counter <= 1;
      end else begin
        channel_counter <= channel_counter + 1;
      end
    end else begin
      channel_counter <= channel_counter;
    end
  end

  //fifo rd en in 1/1 cycle in mode 0, 1/2 cycle in mode 1.
  assign loop_channel_counter_add_begin = (signal_add == 1'b1) && (ddr_en == 1'b1);
  assign loop_channel_counter_add_end   = loop_channel_counter_add_begin && ((of_counter - 1 + channel_counter == cur_pof) || (channel_counter == channel_num));

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      last_channel_counter <= 0;
    end else begin
      last_channel_counter <= channel_counter;
    end
  end

  //loop row no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      of_counter <= 1;
    end else if ((loop_of_counter_add_begin == 1'b1)) begin
      if (loop_of_counter_add_end == 1'b1) begin  //the last row_no
        of_counter <= 1;
      end else begin
        of_counter <= of_counter + channel_num;
      end
    end else begin
      of_counter <= of_counter;
    end
  end

  assign loop_of_counter_add_begin = (loop_channel_counter_add_end == 1'b1);
  assign loop_of_counter_add_end   = loop_of_counter_add_begin && (of_counter - 1 + channel_counter >= cur_pof);

  //loop column no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      oy_counter <= 1;
    end else if (loop_oy_counter_add_begin == 1'b1) begin
      if (loop_oy_counter_add_end == 1'b1) begin  // the last tile_f_start
        oy_counter <= 1;
      end else begin
        oy_counter <= oy_counter + 1;
      end
    end else begin
      oy_counter <= oy_counter;
    end
  end

  assign loop_oy_counter_add_begin = (loop_of_counter_add_end == 1'b1);
  assign loop_oy_counter_add_end   = loop_oy_counter_add_begin && (oy_counter == cur_poy);
endmodule
