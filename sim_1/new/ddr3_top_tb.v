`timescale 1ps/100fs
`define SIMULATION

module ddr3_top_tb;
  `default_nettype none

  // Parameters
  parameter DDR_WIDTH = 64;
  parameter UI_WIDTH = DDR_WIDTH*8;
  parameter RST_CNT = 300;

  localparam CLK_PERIOD_40  = 25000;  // 40MHz for F1_GCLK_40M
  localparam CLK_PERIOD_200 = 5000;  // 200MHz
  localparam CLK_PERIOD_100 = 10000;  // 100MHz

  reg                       F1_GCLK_40M;
  reg                       clk_100;
  reg                       clk_200;

  // Clock generation
  initial begin
    clk_200 = 0;
    forever #(CLK_PERIOD_200/2) clk_200 = ~clk_200;
  end

  initial begin
    clk_100 = 0;
    forever #(CLK_PERIOD_100/2) clk_100 = ~clk_100;
  end

  initial
    begin
      F1_GCLK_40M = 0;
      forever
        #(CLK_PERIOD_40/2) F1_GCLK_40M = ~F1_GCLK_40M;
    end

  // DDR3 interface signals
  wire [14:0] ddr3_addr;
  wire [2:0]  ddr3_ba;
  wire        ddr3_cas_n;
  wire [0:0]  ddr3_ck_n;
  wire [0:0]  ddr3_ck_p;
  wire [0:0]  ddr3_cke;
  wire        ddr3_ras_n;
  wire        ddr3_reset_n;
  wire        ddr3_we_n;
  wire [DDR_WIDTH-1:0] ddr3_dq;
  wire [DDR_WIDTH/8-1:0] ddr3_dqs_n;
  wire [DDR_WIDTH/8-1:0] ddr3_dqs_p;
  wire [0:0]  ddr3_cs_n;
  wire [DDR_WIDTH/8-1:0] ddr3_dm;
  wire [0:0]  ddr3_odt;

  // Instantiate DDR3 top module
  ddr3_top #(
             .DDR_WIDTH(DDR_WIDTH),
             .UI_WIDTH(UI_WIDTH),
             .RST_CNT(RST_CNT)
           ) ddr3_top_inst (
             .F1_GCLK_40M(F1_GCLK_40M),

             .ddr3_addr(ddr3_addr),
             .ddr3_ba(ddr3_ba),
             .ddr3_cas_n(ddr3_cas_n),
             .ddr3_ck_n(ddr3_ck_n),
             .ddr3_ck_p(ddr3_ck_p),
             .ddr3_cke(ddr3_cke),
             .ddr3_ras_n(ddr3_ras_n),
             .ddr3_reset_n(ddr3_reset_n),
             .ddr3_we_n(ddr3_we_n),
             .ddr3_dq(ddr3_dq),
             .ddr3_dqs_n(ddr3_dqs_n),
             .ddr3_dqs_p(ddr3_dqs_p),
             .ddr3_cs_n(ddr3_cs_n),
             .ddr3_dm(ddr3_dm),
             .ddr3_odt(ddr3_odt)
           );

  // DDR3 Model
  localparam CS_WIDTH = 1; // # of unique CS outputs to memory.
  localparam DQ_WIDTH = DDR_WIDTH;
  localparam MEMORY_WIDTH = 16;
  localparam NUM_COMP = DQ_WIDTH/MEMORY_WIDTH;
  genvar r, di;
  generate
    for (r = 0; r < CS_WIDTH; r = r + 1) begin: mem_rnk
      for (di = 0; di < NUM_COMP; di = di + 1) begin: gen_mem
        ddr3_model u_comp_ddr3
          (
            .rst_n   (ddr3_reset_n),
            .ck      (ddr3_ck_p),
            .ck_n    (ddr3_ck_n),
            .cke     (ddr3_cke),
            .cs_n    (ddr3_cs_n),
            .ras_n   (ddr3_ras_n),
            .cas_n   (ddr3_cas_n),
            .we_n    (ddr3_we_n),
            .dm_tdqs (ddr3_dm[(2*(di+1)-1):(2*di)]),
            .ba      (ddr3_ba),
            .addr    (ddr3_addr),
            .dq      (ddr3_dq[16*(di+1)-1:16*di]),
            .dqs     (ddr3_dqs_p[(2*(di+1)-1):(2*di)]),
            .dqs_n   (ddr3_dqs_n[(2*(di+1)-1):(2*di)]),
            .tdqs_n  (),
            .odt     (ddr3_odt)
          );
      end
    end
  endgenerate

  `default_nettype wire
endmodule
