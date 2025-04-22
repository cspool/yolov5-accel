`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 16:55:27
// Design Name: 
// Module Name: conv_store_ctrl_tb
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


module conv_store_ctrl_tb ();

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
  reg clk, reset;
  reg        conv_store_start;
  reg        conv_store_start_pre;
  reg        ddr_cmd_ready;
  reg        ddr_wt_data_ready;
  reg [31:0] output_ddr_layer_base_adr;
  reg [ 3:0] mode;
  reg [15:0] cur_ox_start, cur_oy_start, cur_of_start, cur_pox, cur_poy, cur_pof;
  reg [3:0] of_in_2pow, ox_in_2pow;
  //cycle 1 in
  reg  [      quantize_row_width-1 : 0] fifo_data;
  //cycle 0 out
  wire [sa_row_num * sa_column_num-1:0] fifo_rds;
  //cycle 1 out
  wire [3:0] fifo_column_no, fifo_row_no;
  // output reg valid_conv_out;
  wire [15:0] out_y_idx, out_x_idx, out_f_idx;
  wire         conv_fifo_out_tile_add_end;
  // output [conv_out_data_width-1 : 0] conv_out_data;
  wire [511:0] conv_out_ddr_data;
  wire         valid_conv_out_ddr_data;
  wire [ 31:0] conv_out_ddr_adr;
  //store cmd generate
  wire [ 31:0] store_ddr_base_adr;
  wire [ 15:0] store_ddr_length;
  wire         valid_store_ddr_cmd;
  wire         conv_store_fin;

  conv_store_ddr_controller_v2 cv_store_ddr_controller (
      .clk                       (clk),
      .reset                     (reset),
      //cycle 0 in
      .conv_store_start_sig      (conv_store_start),
      .ddr_cmd_ready             (ddr_cmd_ready),
      .ddr_wt_data_ready         (ddr_wt_data_ready),
      .output_ddr_layer_base_adr_init (output_ddr_layer_base_adr),
      .mode_init                      (mode),
      .of_in_2pow                (of_in_2pow),
      .ox_in_2pow                (ox_in_2pow),
      .cur_ox_start              (cur_ox_start),
      .cur_oy_start              (cur_oy_start),
      .cur_of_start              (cur_of_start),
      .cur_pox                   (cur_pox),
      .cur_poy                   (cur_poy),
      .cur_pof                   (cur_pof),
      //store cmd
      .store_ddr_base_adr        (store_ddr_base_adr),
      .store_ddr_length          (store_ddr_length),
      .valid_store_ddr_cmd       (valid_store_ddr_cmd),
      //cycle 0 out
      .fifo_rds                  (fifo_rds),
      //cycle 1 in
      .fifo_data                 (fifo_data),
      //cycle 1 out
      //store ddr info
      .fifo_column_no            (fifo_column_no),
      .fifo_row_no               (fifo_row_no),
      .out_y_idx                 (out_y_idx),
      .out_x_idx                 (out_x_idx),
      .out_f_idx                 (out_f_idx),
      .conv_fifo_out_tile_add_end(conv_fifo_out_tile_add_end),
      //store ddr data
      .conv_out_ddr_adr          (conv_out_ddr_adr),
      .valid_conv_out_ddr_data   (valid_conv_out_ddr_data),
      .conv_out_ddr_data         (conv_out_ddr_data),
      .conv_store_fin            (conv_store_fin)
  );

  always begin
    #5;
    clk <= ~clk;
  end


  reg [7:0] cmd_counter;
  reg       cmd_counter_signal;

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_cmd_ready <= 1;
    end else if (valid_store_ddr_cmd == 1) begin
      ddr_cmd_ready <= 0;
    end else if (cmd_counter == 40) begin
      ddr_cmd_ready <= 1;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_wt_data_ready <= 1;
    end else begin
      ddr_wt_data_ready <= ~ddr_wt_data_ready;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      conv_store_start_pre <= 1;
    end else if (conv_store_start_pre == 1) begin
      conv_store_start_pre <= 0;
    end
  end

  always @(posedge clk) begin
    conv_store_start <= conv_store_start_pre;
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter_signal <= 0;
    end else if (valid_store_ddr_cmd == 1) begin
      cmd_counter_signal <= 1;
    end else if (cmd_counter == 40) begin
      cmd_counter_signal <= 0;
    end
  end
  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter <= 0;
    end else if (cmd_counter_signal == 1) begin
      if (cmd_counter == 40) begin
        cmd_counter <= 0;
      end else begin
        cmd_counter <= cmd_counter + 1;
      end
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      fifo_data <= (mode == 0) ? {256'b0, 256'b0} : (mode == 1) ? {256'b0, 256'b0} : 512'b0;
    end else if (fifo_rds != 0) begin
      fifo_data <= (mode == 0) ? {256'b0, fifo_data[255:0] + 256'b1} : (mode == 1) ? {fifo_data[511:256] + 256'b1, fifo_data[255:0] + 256'b1} : 512'b0;
    end
  end

  initial begin
    clk                       = 0;
    reset                     = 1;
    output_ddr_layer_base_adr = 0;
    mode                      = 0;
    cur_ox_start              = 1;
    cur_oy_start              = 1;
    cur_of_start              = 1;
    cur_pox                   = 32;
    cur_poy                   = 3;
    cur_pof                   = 64;
    of_in_2pow                = 6;  //64
    ox_in_2pow                = 6;  //64

    #10;
    reset = 0;

  end

endmodule
