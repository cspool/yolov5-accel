`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 16:51:42
// Design Name: 
// Module Name: conv_load_weights_ddr_controller
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


module conv_load_weights_ddr_controller (
    clk,
    reset,
    conv_load_weights,  //str_fin
    ddr_cmd_ready,
    ddr_rd_data_valid,

    weights_layer_base_ddr_adr_rd_init,
    mode_init,
    nif_mult_k_mult_k_init,
    of_init,

    //ddr rd info
    weights_word_ddr_en_rd,
    weights_word_ddr_adr_rd,
    //ddr cmd
    load_weights_ddr_base_adr,
    load_weights_ddr_length,
    valid_load_weights_ddr_cmd,
    //buf wt
    valid_load_weights,
    weights_word_buf_en_wt,
    weights_word_buf_adr_wt,
    conv_load_weights_fin,
    state_conv_load_weights
);
  // load weights from ddr while computaion
  parameter row_num_in_mode0 = 64;
  parameter row_num_in_mode1 = 128;
  parameter ddr_cmd_word_num = 32;

  input clk, reset;
  input conv_load_weights;  //begin weights loading
  input ddr_cmd_ready;  //mig fifo can accept request
  input ddr_rd_data_valid;  //ddr words is loaded from ddr

  input [3:0] mode_init;
  input [31:0] nif_mult_k_mult_k_init;
  input [15:0] of_init;
  input [31:0] weights_layer_base_ddr_adr_rd_init;
  reg [ 3:0] mode;
  reg [31:0] nif_mult_k_mult_k;
  reg [15:0] of;
  reg [31:0] weights_layer_base_ddr_adr_rd;

  //ddr rd info
  output weights_word_ddr_en_rd;
  output [31:0] weights_word_ddr_adr_rd;
  //ddr cmd
  output [31:0] load_weights_ddr_base_adr;
  output [15:0] load_weights_ddr_length;
  output valid_load_weights_ddr_cmd;
  //buf wt 
  output valid_load_weights;
  output weights_word_buf_en_wt;
  output [15:0] weights_word_buf_adr_wt;
  output conv_load_weights_fin;
  output reg state_conv_load_weights;  //loading data
  reg  [15:0] conv_load_weights_counter;
  wire        loop_conv_load_weights_counter_add_begin;
  wire        loop_conv_load_weights_counter_add_end;
  reg         instr_load_weights_fin;

  // load weight adr
  reg         weights_ddr_signal_add;
  reg  [31:0] weights_ddr_word_counter;
  wire loop_weights_ddr_word_counter_add_begin, loop_weights_ddr_word_counter_add_end;

  reg [31:0] weights_ddr_tof_start;
  reg [31:0] weights_ddr_tof_base_adr;
  wire loop_weights_ddr_tof_add_begin, loop_weights_ddr_tof_add_end;

  wire [31:0] row_num = (mode == 0) ? row_num_in_mode0 : (mode == 1) ? row_num_in_mode1 : 0;

  // weights word into buf
  reg  [31:0]                                                                                weights_buf_word_counter;
  wire loop_weights_buf_word_counter_add_begin, loop_weights_buf_word_counter_add_end;

  always @(posedge clk) begin
    if (reset == 1'b1) begin  //set
      mode                          <= mode_init;
      of                            <= of_init;
      nif_mult_k_mult_k             <= nif_mult_k_mult_k_init;
      weights_layer_base_ddr_adr_rd <= weights_layer_base_ddr_adr_rd_init;
    end else begin
      mode                          <= mode;
      of                            <= of;
      nif_mult_k_mult_k             <= nif_mult_k_mult_k;
      weights_layer_base_ddr_adr_rd <= weights_layer_base_ddr_adr_rd;
    end
  end

  //load weights
  //send request to mig
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      weights_ddr_signal_add <= 0;
    end else if (conv_load_weights == 1'b1) begin
      weights_ddr_signal_add <= 1;
    end else if (loop_weights_ddr_word_counter_add_end == 1'b1) begin
      weights_ddr_signal_add <= 0;
    end else begin
      weights_ddr_signal_add <= weights_ddr_signal_add;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      state_conv_load_weights <= 0;
    end else if (valid_load_weights_ddr_cmd == 1'b1) begin
      state_conv_load_weights <= 1;
    end else if (loop_conv_load_weights_counter_add_end == 1'b1) begin
      state_conv_load_weights <= 0;
    end else begin
      state_conv_load_weights <= state_conv_load_weights;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      conv_load_weights_counter <= 1;
    end else if (loop_conv_load_weights_counter_add_begin == 1'b1) begin
      if (loop_conv_load_weights_counter_add_end) begin
        conv_load_weights_counter <= 1;
      end else begin
        conv_load_weights_counter <= conv_load_weights_counter + 1;
      end
    end else begin
      conv_load_weights_counter <= conv_load_weights_counter;
    end
  end

  assign loop_conv_load_weights_counter_add_begin = valid_load_weights;
  assign loop_conv_load_weights_counter_add_end   = loop_conv_load_weights_counter_add_begin && (conv_load_weights_counter == load_weights_ddr_length);


  always @(posedge clk) begin
    if (reset == 1'b1) begin
      weights_ddr_word_counter <= 1;
    end else if (loop_weights_ddr_word_counter_add_begin == 1'b1) begin
      if (loop_weights_ddr_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        weights_ddr_word_counter <= 1;
      end else begin
        weights_ddr_word_counter <= weights_ddr_word_counter + load_weights_ddr_length;
      end
    end else begin
      weights_ddr_word_counter <= weights_ddr_word_counter;
    end
  end

  assign loop_weights_ddr_word_counter_add_begin = (state_conv_load_weights == 0)  //no valid load process at now
 && weights_ddr_signal_add && (ddr_cmd_ready == 1'b1);
  assign loop_weights_ddr_word_counter_add_end   = loop_weights_ddr_word_counter_add_begin && (weights_ddr_word_counter + load_weights_ddr_length > nif_mult_k_mult_k);

  //load instr of the chunk has finished
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      instr_load_weights_fin <= 0;
    end else if (
        //instr generate finished
        loop_weights_ddr_word_counter_add_end) begin
      instr_load_weights_fin <= 1;
    end else if (conv_load_weights_fin == 1'b1) begin
      instr_load_weights_fin <= 0;
    end else begin
      instr_load_weights_fin <= instr_load_weights_fin;
    end
  end
  assign conv_load_weights_fin = (instr_load_weights_fin == 1'b1) && (loop_weights_buf_word_counter_add_end == 1'b1);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      weights_ddr_tof_start    <= 1;
      weights_ddr_tof_base_adr <= 1;
    end else if (loop_weights_ddr_tof_add_begin == 1'b1) begin
      if (loop_weights_ddr_tof_add_end == 1'b1) // current SP of all out channels finished
      begin
        weights_ddr_tof_start    <= 1;
        weights_ddr_tof_base_adr <= 1;
      end else begin
        weights_ddr_tof_start    <= weights_ddr_tof_start + row_num;  //next of tile start
        weights_ddr_tof_base_adr <= weights_ddr_tof_base_adr + nif_mult_k_mult_k;
      end
    end else begin
      weights_ddr_tof_start    <= weights_ddr_tof_start;
      weights_ddr_tof_base_adr <= weights_ddr_tof_base_adr;
    end
  end

  assign loop_weights_ddr_tof_add_begin = loop_weights_ddr_word_counter_add_end;
  assign loop_weights_ddr_tof_add_end   = (loop_weights_ddr_tof_add_begin == 1'b1) && (weights_ddr_tof_start + row_num > of);

  assign weights_word_ddr_adr_rd        = weights_layer_base_ddr_adr_rd + weights_ddr_tof_base_adr - 1 + weights_ddr_word_counter - 1;
  assign weights_word_ddr_en_rd         = loop_weights_ddr_word_counter_add_begin;

  assign load_weights_ddr_base_adr      = weights_layer_base_ddr_adr_rd + weights_ddr_tof_base_adr - 1;
  assign load_weights_ddr_length        = (weights_ddr_word_counter + ddr_cmd_word_num > nif_mult_k_mult_k) ?  //last
 (nif_mult_k_mult_k - weights_ddr_word_counter + 1) : ddr_cmd_word_num;
  assign valid_load_weights_ddr_cmd     = loop_weights_ddr_word_counter_add_begin;

  //write the loaded weights word into weight buffer
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      weights_buf_word_counter <= 1;
    end else if (loop_weights_buf_word_counter_add_begin == 1'b1) begin
      if (loop_weights_buf_word_counter_add_end == 1'b1) // current SP of cur out channels tile finished
      begin
        weights_buf_word_counter <= 1;
      end else begin
        weights_buf_word_counter <= weights_buf_word_counter + 1;
      end
    end else begin
      weights_buf_word_counter <= weights_buf_word_counter;
    end
  end

  assign valid_load_weights                      = ((state_conv_load_weights == 1) && (ddr_rd_data_valid == 1));

  assign loop_weights_buf_word_counter_add_begin = ((state_conv_load_weights == 1) && (ddr_rd_data_valid == 1));
  assign loop_weights_buf_word_counter_add_end   = loop_weights_buf_word_counter_add_begin && (weights_buf_word_counter == nif_mult_k_mult_k);

  assign weights_word_buf_adr_wt                 = weights_buf_word_counter - 1;
  assign weights_word_buf_en_wt                  = loop_weights_buf_word_counter_add_begin;

endmodule

