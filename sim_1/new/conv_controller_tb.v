`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/21 17:17:55
// Design Name: 
// Module Name: conv_controller_tb
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


module conv_controller_tb ();

  reg clk, reset;
  //conv decoder
  reg  conv_decode;
  wire conv_start;
  //all below come from instr
  wire mode;
  wire [3:0] k, s, p;
  wire [15:0] of, ox, oy, ix, iy, nif;
  wire [3:0] nif_in_2pow, ix_in_2pow;
  wire [15:0] nif_mult_k_mult_k;
  wire [15:0] N_chunks;
  wire [15:0] bias_layer_base_buf_adr_rd;
  wire [15:0] tail_layer_base_buf_adr_rd;
  wire [15:0] rank_layer_base_buf_adr_rd;
  wire [15:0] weights_layer_base_ddr_adr_rd;
  wire [15:0] input_ddr_layer_base_adr;
  wire [ 7:0] of_div_row_num_ceil;
  wire [ 7:0] tiley_first_tilex_first_split_size;
  wire [ 7:0] tiley_first_tilex_last_split_size;
  wire [ 7:0] tiley_first_tilex_mid_split_size;
  wire [ 7:0] tiley_last_tilex_first_split_size;
  wire [ 7:0] tiley_last_tilex_last_split_size;
  wire [ 7:0] tiley_last_tilex_mid_split_size;
  wire [ 7:0] tiley_mid_tilex_first_split_size;
  wire [ 7:0] tiley_mid_tilex_last_split_size;
  wire [ 7:0] tiley_mid_tilex_mid_split_size;
  wire [ 7:0] tilex_first_ix_word_num;
  wire [ 7:0] tilex_last_ix_word_num;
  wire [ 7:0] tilex_mid_ix_word_num;
  wire [ 7:0] tiley_first_iy_row_num;
  wire [ 7:0] tiley_last_iy_row_num;
  wire [ 7:0] tiley_mid_iy_row_num;
  wire [15:0] ix_chunks_num, iy_chunks_num;
  //conv controller
  wire       conv_load_weights_fin;
  wire       conv_load_input_fin;
  wire       conv_compute_fin;
  wire       conv_store_fin;
  wire       conv_load_weights;
  wire       conv_load_input;
  wire       conv_compute;
  wire       conv_store;

  //process delay
  reg        load_weights_signal;
  reg  [7:0] load_weights_counter;
  wire loop_load_weights_add_begin, loop_load_weights_add_end;
  parameter load_weights_delay = 30;
  reg       load_input_signal;
  reg [7:0] load_input_counter;
  wire loop_load_input_add_begin, loop_load_input_add_end;
  parameter load_input_delay = 60;
  reg       compute_signal;
  reg [7:0] compute_counter;
  wire loop_compute_add_begin, loop_compute_add_end;
  parameter compute_delay = 120;
  reg       store_signal;
  reg [7:0] store_counter;
  wire loop_store_add_begin, loop_store_add_end;
  parameter store_delay = 50;

  always @(posedge clk) begin
    if (reset) begin
      load_weights_signal <= 0;
    end else if (conv_load_weights == 1) begin
      load_weights_signal <= 1;
    end else if (loop_load_weights_add_end == 1) begin
      load_weights_signal <= 0;
    end else begin
      load_weights_signal <= load_weights_signal;
    end
  end
  always @(posedge clk) begin
    if (reset) begin
      load_weights_counter <= 1;
    end else if (loop_load_weights_add_begin == 1) begin
      if (loop_load_weights_add_end == 1) begin
        load_weights_counter <= 1;
      end else begin
        load_weights_counter <= load_weights_counter + 1;
      end
    end else begin
      load_weights_counter <= load_weights_counter;
    end
  end
  assign loop_load_weights_add_begin = (load_weights_signal == 1);
  assign loop_load_weights_add_end   = loop_load_weights_add_begin && (load_weights_counter == load_weights_delay);
  assign conv_load_weights_fin       = loop_load_weights_add_end;

  always @(posedge clk) begin
    if (reset) begin
      load_input_signal <= 0;
    end else if (conv_load_input == 1) begin
      load_input_signal <= 1;
    end else if (loop_load_input_add_end == 1) begin
      load_input_signal <= 0;
    end else begin
      load_input_signal <= load_input_signal;
    end
  end
  always @(posedge clk) begin
    if (reset) begin
      load_input_counter <= 1;
    end else if (loop_load_input_add_begin == 1) begin
      if (loop_load_input_add_end == 1) begin
        load_input_counter <= 1;
      end else begin
        load_input_counter <= load_input_counter + 1;
      end
    end else begin
      load_input_counter <= load_input_counter;
    end
  end
  assign loop_load_input_add_begin = (load_input_signal == 1);
  assign loop_load_input_add_end   = loop_load_input_add_begin && (load_input_counter == load_input_delay);
  assign conv_load_input_fin       = loop_load_input_add_end;

  always @(posedge clk) begin
    if (reset) begin
      compute_signal <= 0;
    end else if (conv_compute == 1) begin
      compute_signal <= 1;
    end else if (loop_compute_add_end == 1) begin
      compute_signal <= 0;
    end else begin
      compute_signal <= compute_signal;
    end
  end
  always @(posedge clk) begin
    if (reset) begin
      compute_counter <= 1;
    end else if (loop_compute_add_begin == 1) begin
      if (loop_compute_add_end == 1) begin
        compute_counter <= 1;
      end else begin
        compute_counter <= compute_counter + 1;
      end
    end else begin
      compute_counter <= compute_counter;
    end
  end
  assign loop_compute_add_begin = (compute_signal == 1);
  assign loop_compute_add_end   = loop_compute_add_begin && (compute_counter == compute_delay);
  assign conv_compute_fin       = loop_compute_add_end;

  always @(posedge clk) begin
    if (reset) begin
      store_signal <= 0;
    end else if (conv_store == 1) begin
      store_signal <= 1;
    end else if (loop_store_add_end == 1) begin
      store_signal <= 0;
    end else begin
      store_signal <= store_signal;
    end
  end
  always @(posedge clk) begin
    if (reset) begin
      store_counter <= 1;
    end else if (loop_store_add_begin == 1) begin
      if (loop_store_add_end == 1) begin
        store_counter <= 1;
      end else begin
        store_counter <= store_counter + 1;
      end
    end else begin
      store_counter <= store_counter;
    end
  end
  assign loop_store_add_begin = (store_signal == 1);
  assign loop_store_add_end   = loop_store_add_begin && (store_counter == store_delay);
  assign conv_store_fin       = loop_store_add_end;

  conv_decoder cv_decoder (
      .clk                               (clk),
      .reset                             (reset),
      .conv_decode                       (conv_decode),
      .conv_start                        (conv_start),
      .mode                              (mode),
      .k                                 (k),
      .s                                 (s),
      .p                                 (p),
      .of                                (of),
      .ox                                (ox),
      .oy                                (oy),
      .ix                                (ix),
      .iy                                (iy),
      .nif                               (nif),
      .nif_in_2pow                       (nif_in_2pow),
      .ix_in_2pow                        (ix_in_2pow),
      .nif_mult_k_mult_k                 (nif_mult_k_mult_k),
      .N_chunks                          (N_chunks),
      .bias_layer_base_buf_adr_rd        (bias_layer_base_buf_adr_rd),
      .tail_layer_base_buf_adr_rd        (tail_layer_base_buf_adr_rd),
      .rank_layer_base_buf_adr_rd        (rank_layer_base_buf_adr_rd),
      .weights_layer_base_ddr_adr_rd     (weights_layer_base_ddr_adr_rd),
      .input_ddr_layer_base_adr          (input_ddr_layer_base_adr),
      .of_div_row_num_ceil               (of_div_row_num_ceil),
      .tiley_first_tilex_first_split_size(tiley_first_tilex_first_split_size),
      .tiley_first_tilex_last_split_size (tiley_first_tilex_last_split_size),
      .tiley_first_tilex_mid_split_size  (tiley_first_tilex_mid_split_size),
      .tiley_last_tilex_first_split_size (tiley_last_tilex_first_split_size),
      .tiley_last_tilex_last_split_size  (tiley_last_tilex_last_split_size),
      .tiley_last_tilex_mid_split_size   (tiley_last_tilex_mid_split_size),
      .tiley_mid_tilex_first_split_size  (tiley_mid_tilex_first_split_size),
      .tiley_mid_tilex_last_split_size   (tiley_mid_tilex_last_split_size),
      .tiley_mid_tilex_mid_split_size    (tiley_mid_tilex_mid_split_size),
      .tilex_first_ix_word_num           (tilex_first_ix_word_num),
      .tilex_last_ix_word_num            (tilex_last_ix_word_num),
      .tilex_mid_ix_word_num             (tilex_mid_ix_word_num),
      .tiley_first_iy_row_num            (tiley_first_iy_row_num),
      .tiley_last_iy_row_num             (tiley_last_iy_row_num),
      .tiley_mid_iy_row_num              (tiley_mid_iy_row_num),
      .ix_chunks_num                     (ix_chunks_num),
      .iy_chunks_num                     (iy_chunks_num)
  );

  conv_controller cv_controller (
      .clk                  (clk),
      .reset                (reset),
      .N_chunks             (N_chunks),
      .conv_start           (conv_start),
      .of_div_row_num_ceil  (of_div_row_num_ceil),
      .conv_load_weights_fin(conv_load_weights_fin),
      .conv_load_input_fin  (conv_load_input_fin),
      .conv_compute_fin     (conv_compute_fin),
      .conv_store_fin       (conv_store_fin),

      .conv_load_weights(conv_load_weights),
      .conv_load_input  (conv_load_input),
      .conv_compute     (conv_compute),
      .conv_store       (conv_store)
  );

  always begin
    #5;
    clk <= ~clk;
  end

  initial begin
    clk   = 0;
    reset = 1;

    #10;
    reset       = 0;
    conv_decode = 1;

    #10;
    conv_decode = 0;
  end
endmodule
