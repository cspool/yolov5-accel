`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/23/2024 09:18:40 PM
// Design Name:
// Module Name: conv_load_weights_controller_tb
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


module conv_load_weights_controller_tb ();
  parameter weights_in_tile_mode0 = 64;  // 8bit; //amount of weights needed in a computation tile
  parameter weights_in_tile_mode1 = 128;  // 1bit
  parameter weight_word_length = weights_in_tile_mode0 * 8;

  //load weights controller
  reg clk, reset;
  reg         conv_load_weights;  //begin weights loading
  reg         ddr_en;  //mig fifo can accept request
  reg         valid_load_weights;  //ddr words is loaded from ddr
  reg         last_valid_load_weights;
  reg         mode_init;
  reg  [15:0] nif_mult_k_mult_k_init;
  reg  [15:0] of_init;
  reg  [15:0] weights_layer_base_ddr_adr_rd_init;

  wire        weights_word_ddr_en_rd;  //o: read ddr
  wire [15:0] weights_word_ddr_adr_rd;  //o
  wire        weights_word_buf_en_wt;  //o: write buf
  wire [15:0] weights_word_buf_adr_wt;  //o
  wire        conv_load_weights_fin;

  //cv weights handler
  reg re_fm_en, re_fm_end;  //i: 1,2,3,...,nif*k*k
  wire                            weights_word_buf_en_rd;  //o: read buf
  wire [                    15:0] weights_word_buf_adr_rd;  //o
  wire [weight_word_length-1 : 0] weights_vector;  //o: weights vector to flush into PEs

  //ping pong control, buf write and read
  wire [weight_word_length-1 : 0] weights_word_buf_wt;  //i: weights read from DDR, write into buf
  wire [weight_word_length-1 : 0] weights_word_buf_rd;  //o: ping pong buf out
  wire                            weights_word_buf_ping_en;  //o
  wire                            weights_word_buf_ping_en_wr;  //o
  wire [                    15:0] weights_word_buf_ping_adr;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_ping_in;  //o
  wire                            weights_word_buf_pong_en;  //o
  wire                            weights_word_buf_pong_en_wr;  //o
  wire [                    15:0] weights_word_buf_pong_adr;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_pong_in;  //o
  //weights buf
  wire [weight_word_length-1 : 0] weights_word_buf_ping_out;  //o
  wire [weight_word_length-1 : 0] weights_word_buf_pong_out;  //o

  //DDR sim
  wire                            DDR_en;
  wire                            DDR_en_wr;
  wire [                   511:0] DDR_in;
  wire [                    12:0] DDR_adr;
  wire [                   511:0] DDR_out;  //o

  DDR DDR (
      .clka (clk),        // input wire clka
      .ena  (DDR_en),     // input wire ena
      .wea  (DDR_en_wr),  // input wire [0 : 0] wea
      .addra(DDR_adr),    // input wire [12 : 0] addra
      .dina (DDR_in),     // input wire [511 : 0] dina
      .douta(DDR_out)     // output wire [511 : 0] douta
  );

  assign DDR_en              = weights_word_ddr_en_rd;
  assign DDR_en_wr           = 0;
  assign DDR_adr             = weights_word_ddr_adr_rd;
  assign DDR_in              = 0;
  assign weights_word_buf_wt = (valid_load_weights == 1'b1) ? DDR_out : 0;

  conv_load_weights_controller cv_load_weights_controller (
      .clk               (clk),
      .reset             (reset),
      .conv_load_weights (conv_load_weights),  //load weight start
      .ddr_en            (ddr_en),             //mig fifo can accept new load instr
      .valid_load_weights(valid_load_weights), //ddr weights is loaded from ddr

      .weights_layer_base_ddr_adr_rd_init(weights_layer_base_ddr_adr_rd_init),
      .mode_init                         (mode_init),
      .nif_mult_k_mult_k_init            (nif_mult_k_mult_k_init),
      .of_init                           (of_init),

      .weights_word_ddr_en_rd (weights_word_ddr_en_rd),   //read ddr instr
      .weights_word_ddr_adr_rd(weights_word_ddr_adr_rd),
      .weights_word_buf_en_wt (weights_word_buf_en_wt),   //write buf instr
      .weights_word_buf_adr_wt(weights_word_buf_adr_wt),
      .conv_load_weights_fin  (conv_load_weights_fin)
  );

  cv_weights_handler cv_weights_handler (
      .clk                    (clk),
      .reset                  (reset),
      .mode                   (mode_init),
      //cycle 0 in
      .re_fm_en               (re_fm_en),                 //the first input is needed in next cycle
      .re_fm_end              (re_fm_end),                //the last input is needed in cur cycle
      //cylce 1 in
      .weights_dout           (weights_word_buf_rd),      //weights read from buf
      //cycle 0 out
      .weights_word_buf_en_rd (weights_word_buf_en_rd),   //read weight buf
      .weights_word_buf_adr_rd(weights_word_buf_adr_rd),
      //cycle 1 out
      .weights_vector         (weights_vector)            //weights vector flush into PEs
  );

  conv_weights_ping_pong_controller cv_weights_ping_pong_controller (
      .reset            (reset),
      .clk              (clk),
      .conv_load_weights(conv_load_weights), //change the ping-pong state

      //weights need reading from buf
      .weights_word_buf_en_rd     (weights_word_buf_en_rd),       //i:weight_en_rd
      .weights_word_buf_adr_rd    (weights_word_buf_adr_rd),      //i:weight_adr_rd
      .weights_word_buf_rd        (weights_word_buf_rd),          //o:weights read from weights buf
      //weights loaded and need writing to buf
      .weights_word_buf_en_wt     (weights_word_buf_en_wt),       //i
      .weights_word_buf_adr_wt    (weights_word_buf_adr_wt),      //i
      .weights_word_buf_wt        (weights_word_buf_wt),          //i:weights write to weights buf
      //ping buffer port
      .weights_word_buf_ping_en   (weights_word_buf_ping_en),     //o
      .weights_word_buf_ping_en_wr(weights_word_buf_ping_en_wr),  //o
      .weights_word_buf_ping_adr  (weights_word_buf_ping_adr),    // o
      .weights_word_buf_ping_in   (weights_word_buf_ping_in),     //o:port in of weights ping buf
      .weights_word_buf_ping_out  (weights_word_buf_ping_out),    //i:port out of weights ping buf
      //pong buffer port
      .weights_word_buf_pong_en   (weights_word_buf_pong_en),     //o
      .weights_word_buf_pong_en_wr(weights_word_buf_pong_en_wr),  //o
      .weights_word_buf_pong_adr  (weights_word_buf_pong_adr),    //o
      .weights_word_buf_pong_in   (weights_word_buf_pong_in),     //o:port in of weights pong buf
      .weights_word_buf_pong_out  (weights_word_buf_pong_out)     //i:port out of weights pong buf
  );

  weights_buffer_ping weights_buffer_ping (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_ping_en),     // input wire ena
      .wea  (weights_word_buf_ping_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_ping_adr),    // input wire [11 : 0] addra
      .dina (weights_word_buf_ping_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_ping_out)     // output wire [511 : 0] douta
  );

  weights_buffer_pong weights_buffer_pong (
      .clka (clk),                          // input wire clka
      .ena  (weights_word_buf_pong_en),     // input wire ena
      .wea  (weights_word_buf_pong_en_wr),  // input wire [0 : 0] wea
      .addra(weights_word_buf_pong_adr),    // input wire [11 : 0] addra
      .dina (weights_word_buf_pong_in),     // input wire [511 : 0] dina
      .douta(weights_word_buf_pong_out)     // output wire [511 : 0] douta
  );

  always begin
    #5;
    clk <= ~clk;
  end

  always @(posedge clk) begin
    if (reset) begin
      valid_load_weights <= 0;
    end else begin

      valid_load_weights <= last_valid_load_weights;  //DDR sim
    end
  end

  always @(posedge clk) begin
    if (reset) begin
      last_valid_load_weights <= 0;
    end else begin

      last_valid_load_weights <= weights_word_ddr_en_rd;  //DDR sim
    end
  end

  always @(posedge clk) begin
    if (reset) begin
      ddr_en <= 0;
    end else if (ddr_en == 1) begin
      ddr_en <= 0;  //DDR sim
    end else if (ddr_en == 0) begin
      ddr_en <= 1;  //DDR sim
    end else begin
      ddr_en <= ddr_en;
    end
  end

  initial begin
    clk                                = 0;
    conv_load_weights                  = 0;  //begin weights loading
    ddr_en                             = 1;  //mig fifo can accept request

    mode_init                          = 0;
    nif_mult_k_mult_k_init             = 18;
    of_init                            = 128;
    weights_layer_base_ddr_adr_rd_init = 0;
    re_fm_en                           = 0;
    re_fm_end                          = 0;

    reset                              = 1;

    #10;
    reset             = 0;
    conv_load_weights = 1;

    #10;
    conv_load_weights = 0;

    #50;  //wait the input word img2col
    re_fm_en  = 1;
    re_fm_end = 0;

    #180;
    re_fm_en  = 1;
    re_fm_end = 1;

    #10;
    re_fm_en  = 0;
    re_fm_end = 0;

    #500;

    #10;
    conv_load_weights = 1;

    #10;
    conv_load_weights = 0;

    #50;  //wait the input word img2col
    re_fm_en  = 1;
    re_fm_end = 0;

    #180;
    re_fm_en  = 1;
    re_fm_end = 1;

    #10;
    re_fm_en  = 0;
    re_fm_end = 0;
  end

endmodule
