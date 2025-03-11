`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 16:51:42
// Design Name: 
// Module Name: conv_store_ddr_controller
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


module conv_store_ddr_controller (
    clk,
    reset,
    //cycle 0 in
    conv_store_start,
    ddr_cmd_ready,
    ddr_wt_data_ready,
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
    //store cmd
    store_ddr_base_adr,
    store_ddr_length,
    valid_ddr_cmd,
    //cycle 0 out
    fifo_rds,
    //cycle 1 in
    fifo_data,
    //cycle 1 out
    //store ddr info
    fifo_column_no,
    fifo_row_no,
    out_y_idx,
    out_x_idx,
    out_f_idx,
    conv_fifo_out_tile_add_end,
    //store ddr data
    conv_out_ddr_adr,
    valid_conv_out_ddr_data,
    conv_out_ddr_data
);

  parameter pixels_in_row = 32;
  parameter pixels_in_row_in_2pow = 5;
  parameter sa_row_num = 4;  //how many rows in conv core
  parameter sa_column_num = 3;  //how many columns in conv core
  parameter row_num_in_sa = 16;  // how many rows in a sa, row_num
  parameter row_num_in_sa_in2pow = 4;
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
  input conv_store_start;
  input ddr_cmd_ready;
  // reg state_ddr_cmd_ready;
  input ddr_wt_data_ready;
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
  // output reg valid_conv_out;
  output reg [15:0] out_y_idx, out_x_idx, out_f_idx;
  output reg conv_fifo_out_tile_add_end;
  // output [conv_out_data_width-1 : 0] conv_out_data;
  output [511:0] conv_out_ddr_data;
  output valid_conv_out_ddr_data;
  reg valid_conv_out_ddr_data_mode0, valid_conv_out_ddr_data_mode1;
  output reg [31:0] conv_out_ddr_adr;
  reg  [conv_out_data_width-1 : 0] last_conv_out_data_mode0;

  //out ctrl
  reg                              signal_add;
  reg  [                     15:0] of_counter;
  reg  [                      3:0] oy_counter;
  reg  [                     15:0] channel_counter;  //0-16 in mode 0, 0-31 in mode 1
  wire [                     15:0] channel_counter_in_row;
  wire                             row_fifo_rd_en;
  wire [                     15:0] channel_num;
  wire [                      3:0] log_channel_num;
  wire loop_channel_counter_add_begin, loop_channel_counter_add_end;
  wire loop_of_counter_add_begin, loop_of_counter_add_end;
  wire loop_oy_counter_add_begin, loop_oy_counter_add_end;

  //fifo data info
  wire [conv_out_data_width-1 : 0] conv_out_data_mode0, conv_out_data_mode1_1, conv_out_data_mode1_2;

  //store cmd generate
  output [31:0] store_ddr_base_adr;
  output [15:0] store_ddr_length;
  output valid_ddr_cmd;
  reg [15:0] store_of_counter;
  reg [ 3:0] store_oy_counter;
  wire loop_store_of_counter_add_begin, loop_store_of_counter_add_end;
  wire loop_store_oy_counter_add_begin, loop_store_oy_counter_add_end;

  // always @(posedge clk) begin
  //   if (reset == 1'b1) begin
  //     state_ddr_cmd_ready <= 0;
  //   end else if (ddr_cmd_ready == 1'b1) begin
  //     state_ddr_cmd_ready <= 1;
  //   end else if (state_ddr_cmd_ready == 1) begin
  //     state_ddr_cmd_ready <= 0;
  //   end else begin
  //     state_ddr_cmd_ready <= state_ddr_cmd_ready;
  //   end
  // end

  //loop channel no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      store_of_counter <= 1;
    end else if ((loop_store_of_counter_add_begin == 1'b1)) begin
      if (loop_store_of_counter_add_end == 1'b1) begin  //the last row_no
        store_of_counter <= 1;
      end else begin
        store_of_counter <= store_of_counter + (store_ddr_length << ofs_in_row_2pow);  //16 or 32
      end
    end else begin
      store_of_counter <= store_of_counter;
    end
  end

  assign store_ddr_length                = (store_of_counter - 1 + channel_num > cur_pof) ? ((cur_pof - store_of_counter + 1) >> ofs_in_row_2pow) : (channel_num >> ofs_in_row_2pow);
  assign loop_store_of_counter_add_begin = (signal_add == 1) && (ddr_cmd_ready == 1);
  assign loop_store_of_counter_add_end   = loop_store_of_counter_add_begin && (store_of_counter - 1 + (store_ddr_length << ofs_in_row_2pow) >= cur_pof);
  assign valid_ddr_cmd                   = loop_store_of_counter_add_begin;

  //loop column no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      store_oy_counter <= 1;
    end else if (loop_store_oy_counter_add_begin == 1'b1) begin
      if (loop_store_oy_counter_add_end == 1'b1) begin  // the last tile_f_start
        store_oy_counter <= 1;
      end else begin
        store_oy_counter <= store_oy_counter + 1;
      end
    end else begin
      store_oy_counter <= store_oy_counter;
    end
  end

  assign loop_store_oy_counter_add_begin = (loop_store_of_counter_add_end == 1'b1);
  assign loop_store_oy_counter_add_end = loop_store_oy_counter_add_begin && (store_oy_counter == cur_poy);

  assign store_ddr_base_adr =
      //ddr base adr
      output_ddr_layer_base_adr +
      //row base adr 
      (((cur_oy_start - 1 + store_oy_counter - 1) << (of_in_2pow - ofs_in_row_2pow + ox_in_2pow - pixels_in_row_in_2pow)) +
      //x word base adr
      (((cur_ox_start - 1) << (of_in_2pow - ofs_in_row_2pow)) >> pixels_in_row_in_2pow)) +
      //channel adr
      ((cur_of_start - 1 + (store_of_counter - 1)) >> ofs_in_row_2pow);

  //store data generate and their ddr adr info
  //rd from fifo to get conv words
  always @(posedge clk) begin
    if ((reset == 1'b1) || (conv_fifo_out_tile_add_end == 1'b1)) begin
      // valid_conv_out             <= 0;
      conv_out_ddr_adr           <= 0;
      out_y_idx                  <= 0;
      out_x_idx                  <= 0;
      out_f_idx                  <= 0;
      conv_fifo_out_tile_add_end <= 0;
      fifo_column_no             <= 0;
      fifo_row_no                <= 0;
    end else if (loop_channel_counter_add_begin == 1'b1) begin
      // valid_conv_out <= loop_channel_counter_add_begin;
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
      last_conv_out_data_mode0      <= 256'b0;
      valid_conv_out_ddr_data_mode0 <= 0;
      valid_conv_out_ddr_data_mode1 <= 0;
    end else begin
      last_conv_out_data_mode0      <= conv_out_data_mode0;
      valid_conv_out_ddr_data_mode0 <= (loop_channel_counter_add_begin == 1) && (channel_counter[0] == 1'b0);  //even channel num
      valid_conv_out_ddr_data_mode1 <= loop_channel_counter_add_begin;
    end
  end

  assign valid_conv_out_ddr_data = (mode == 0) ? valid_conv_out_ddr_data_mode0 : (mode == 1) ? valid_conv_out_ddr_data_mode1 : 0;

  assign conv_out_ddr_data       = (valid_conv_out_ddr_data == 1) ? ((mode == 0) ? {conv_out_data_mode0, last_conv_out_data_mode0} : (mode == 1) ? fifo_data : 512'b0) : 512'b0;

  //rd fifo ctrl
  assign row_fifo_rd_en          = loop_channel_counter_add_begin;

  genvar i;
  generate
    for (i = 0; i < sa_row_num * sa_column_num; i = i + 1) begin
      assign fifo_rds[i] = ((((oy_counter - 1) << 2) + ((of_counter - 1) >> log_channel_num)) == i) ? (row_fifo_rd_en) : 1'b0;
    end
  endgenerate

  assign conv_out_data_mode0   = fifo_data[conv_out_data_width-1 : 0];
  assign conv_out_data_mode1_1 = fifo_data[conv_out_data_width-1 : 0];  //last read channel counter is 2,4,6,8,10,...
  assign conv_out_data_mode1_2 = fifo_data[quantize_row_width-1 : conv_out_data_width];

  assign channel_num           = (mode == 0) ? row_num_in_sa : (mode == 1) ? (row_num_in_sa << 1) : 0;
  assign log_channel_num       = (mode == 0) ? row_num_in_sa_in2pow : (mode == 1) ? (row_num_in_sa_in2pow + 1) : 0;

  //wt cmd
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      signal_add <= 0;
    end else if (conv_store_start == 1'b1) begin
      signal_add <= 1;
    end else if (loop_oy_counter_add_end == 1'b1) begin  // conv out end
      signal_add <= 0;
    end else begin
      signal_add <= signal_add;
    end
  end

  //loop channel no
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      channel_counter <= 1;
    end else if ((loop_channel_counter_add_begin == 1'b1)) begin
      if (loop_channel_counter_add_end == 1'b1) begin
        channel_counter <= 1;
      end else begin
        channel_counter <= channel_counter + channel_counter_in_row;
      end
    end else begin
      channel_counter <= channel_counter;
    end
  end

  assign channel_counter_in_row         = (mode == 0) ? 1 : (mode == 1) ? 2 : 0;
  assign loop_channel_counter_add_begin = (signal_add == 1'b1) && ((ddr_wt_data_ready == 1'b1) || ((channel_counter[0] == 1'b0) && (mode == 0)));
  assign loop_channel_counter_add_end   = loop_channel_counter_add_begin && ((of_counter - 1 + channel_counter >= cur_pof) || (channel_counter == channel_num));

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
