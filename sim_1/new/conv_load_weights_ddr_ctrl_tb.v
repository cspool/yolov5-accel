`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/10 16:55:27
// Design Name: 
// Module Name: conv_load_weights_ddr_ctrl_tb
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


module conv_load_weights_ddr_ctrl_tb ();

  //load weights controller
  reg clk, reset;
  reg         conv_load_weights;  //begin weights loading
  reg         conv_load_weights_pre;  //begin weights loading

  reg         ddr_cmd_ready;  //mig fifo can accept request
  reg         ddr_rd_data_valid;  //ddr words is loaded from ddr
  reg  [ 3:0] mode_init;
  reg  [31:0] nif_mult_k_mult_k_init;
  reg  [15:0] of_init;
  reg  [31:0] weights_layer_base_ddr_adr_rd_init;

  wire        weights_word_ddr_en_rd;  //o: read ddr
  wire [31:0] weights_word_ddr_adr_rd;  //o
  //ddr cmd
  wire [31:0] load_weights_ddr_base_adr;
  wire [15:0] load_weights_ddr_length;
  wire        valid_load_weights_ddr_cmd;
  wire        valid_load_weights;
  wire        weights_word_buf_en_wt;  //o: write buf
  wire [15:0] weights_word_buf_adr_wt;  //o
  wire        conv_load_weights_fin;
  wire        state_conv_load_weights;


  always begin
    #5;
    clk <= ~clk;
  end


  reg [7:0] cmd_counter;
  reg       cmd_counter_signal;

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_cmd_ready <= 1;
    end else if (valid_load_weights_ddr_cmd == 1) begin
      ddr_cmd_ready <= 0;
    end else if (cmd_counter == 10) begin
      ddr_cmd_ready <= 1;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_rd_data_valid <= 1;
    end else begin
      ddr_rd_data_valid <= ~ddr_rd_data_valid;
    end
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      conv_load_weights_pre <= 1;
    end else if (conv_load_weights_pre == 1) begin
      conv_load_weights_pre <= 0;
    end
  end

  always @(posedge clk) begin
    conv_load_weights <= conv_load_weights_pre;
  end

  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter_signal <= 0;
    end else if (valid_load_weights_ddr_cmd == 1) begin
      cmd_counter_signal <= 1;
    end else if (cmd_counter == 10) begin
      cmd_counter_signal <= 0;
    end
  end
  always @(posedge clk) begin
    if (reset == 1) begin
      cmd_counter <= 0;
    end else if (cmd_counter_signal == 1) begin
      if (cmd_counter == 10) begin
        cmd_counter <= 0;
      end else begin
        cmd_counter <= cmd_counter + 1;
      end
    end
  end

  reg [511:0] ddr_rd_data;
  always @(posedge clk) begin
    if (reset == 1) begin
      ddr_rd_data <= 512'b0;
    end else if (valid_load_weights == 1) begin
      ddr_rd_data <= ddr_rd_data + 512'b1;
    end
  end

  conv_load_weights_ddr_controller_v2 cv_load_weights_ddr_controller (
      .clk                  (clk),
      .reset                (reset),
      .conv_load_weights_sig(conv_load_weights),  //load weight start
      .ddr_cmd_ready        (ddr_cmd_ready),      //mig fifo can accept new load instr
      .ddr_rd_data_valid    (ddr_rd_data_valid),  //ddr weights is loaded from ddr

      .weights_layer_base_ddr_adr_rd_init(weights_layer_base_ddr_adr_rd_init),
      .mode_init                         (mode_init),
      .nif_mult_k_mult_k_init            (nif_mult_k_mult_k_init),
      .of_init                           (of_init),

      .weights_word_ddr_en_rd    (weights_word_ddr_en_rd),      //read ddr info
      .weights_word_ddr_adr_rd   (weights_word_ddr_adr_rd),
      .load_weights_ddr_base_adr (load_weights_ddr_base_adr),   //ddr cmd
      .load_weights_ddr_length   (load_weights_ddr_length),
      .valid_load_weights_ddr_cmd(valid_load_weights_ddr_cmd),
      .valid_load_weights        (valid_load_weights),
      .weights_word_buf_en_wt    (weights_word_buf_en_wt),      //write buf instr
      .weights_word_buf_adr_wt   (weights_word_buf_adr_wt),
      .conv_load_weights_fin     (conv_load_weights_fin),
      .state_conv_load_weights   (state_conv_load_weights)
  );

  assign weights_word_buf_wt = (valid_load_weights) ? ddr_rd_data : 512'b0;

  initial begin
    clk                                = 0;
    mode_init                          = 0;
    nif_mult_k_mult_k_init             = 18;
    of_init                            = 128;
    weights_layer_base_ddr_adr_rd_init = 0;
    reset                              = 1;

    #10;
    reset = 0;
    // conv_load_weights = 1;

    // #10;
    // conv_load_weights = 0;

    // #500;

    // #10;
    // conv_load_weights = 1;

    // #10;
    // conv_load_weights = 0;

  end

endmodule
