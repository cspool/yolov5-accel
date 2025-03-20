`timescale 1ns/100ps
`define SIMULATION

module ddr3_top_tb;
  `default_nettype none

  // Parameters
  parameter DDR_WIDTH = 16;
  parameter UI_WIDTH = DDR_WIDTH*8;
  parameter RW_SIZE = 32;
  parameter RST_CNT = 300;

  localparam INIT_SIZE = 32;
  localparam CLK_PERIOD_40 = 25;  // 40MHz for F1_GCLK_40M
  localparam CLK_PERIOD_200 = 5;  // 200MHz
  localparam CLK_PERIOD_100 = 10;  // 100MHz
  localparam CMD_WRITE = 3'd0, CMD_READ = 3'd1, CMD_IDLE = 3'd2;

  reg                       F1_GCLK_40M;
  reg                       clk_100;
  reg                       clk_200;

  // Clock generation
  initial begin
    clk_200 = 0;
    forever #(CLK_PERIOD_200 / 2) clk_200 = ~clk_200;
  end

  initial begin
    clk_100 = 0;
    forever #(CLK_PERIOD_100 / 2) clk_100 = ~clk_100;
  end

  initial
    begin
      F1_GCLK_40M = 0;
      forever
        #(CLK_PERIOD_40/2) F1_GCLK_40M = ~F1_GCLK_40M;
    end

  // DDR3初始化
  reg                       rst_n;
  reg                       ena;
  reg [2:0]                 app_cmd;
  wire                      cmd_rdy;  
  reg                       wr_cmd_valid = 0;
  reg                      cmd_valid;
  reg     [           28:0] ddr3_base_addr;
  reg     [            9:0] ddr3_rw_size;
  reg     [   UI_WIDTH-1:0] app_wdf_data;
  reg                       app_wr_data_valid;

  wire                      ddr3_ui_clk;
  wire    [   UI_WIDTH-1:0] app_rd_data;
  wire                      app_rd_data_valid;
  wire                      app_wr_data_rdy;
  wire                      ddr3_rd_addr_finish;
  wire                      ddr3_rd_finish;
  wire                      ddr3_wr_finish;
  reg                       ddr_init_finish = 0;
  wire                      init_calib_complete;
  integer                   i;
  reg     [   UI_WIDTH-1:0] test_data           [0:INIT_SIZE-1];

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

  task initialize_test;
    begin
      rst_n              = 0;
      ena                = 0;
      app_cmd            = CMD_IDLE;
      ddr3_base_addr     = 29'h0;
      ddr3_rw_size       = 10'd0;
      app_wdf_data       = 0;
      app_wr_data_valid  = 0;
      cmd_valid          = 0;
      i                  = 0;  
      // Initialize test data
      $readmemh("C:/Users/wh/Desktop/w2a2/user/src/import/test_data.txt", test_data, 0, INIT_SIZE - 1);
      // Reset pulse
      #100;
      rst_n = 1;
    end
  endtask

  task wait_calibration;
    begin
      wait (init_calib_complete);
      #100;
    end
  endtask

  // Basic write test
  task test_write;
    input [28:0] base_addr;
    input [9:0] size;
    begin
      ena            = 1;
      @(posedge ddr3_ui_clk);
      wait(cmd_rdy);
      cmd_valid = 1;
      app_cmd        = CMD_WRITE;
      ddr3_base_addr = base_addr;
      ddr3_rw_size   = size;
      i              = 0;
      app_wdf_data   = test_data[i];

      i = i + 1;
      while (i < size) begin
        @(posedge ddr3_ui_clk);
        app_wr_data_valid = 1;
        if (app_wr_data_rdy && app_wr_data_valid) begin
          app_wdf_data = test_data[i];
          i = i + 1;
        end
      end

      wait (ddr3_wr_finish);
      ddr_init_finish = 1;
      app_wr_data_valid = 0;
      ena     = 0;
      app_cmd = CMD_IDLE;
      cmd_valid = 0;
      #10;
    end
  endtask

  // Instantiate DDR read/write module
  ddr3_rw #(
      .DDR_WIDTH(DDR_WIDTH),
      .UI_WIDTH (UI_WIDTH)
  ) ddr3_rw_inst (
      .clk_100M          (clk_100),
      .clk_200M          (clk_200),
      .rst_n             (rst_n),
      .ena               (ena),
      .app_cmd           (app_cmd),
      .cmd_valid         (cmd_valid),
      .ddr3_base_addr    (ddr3_base_addr),
      .ddr3_rw_size      (ddr3_rw_size),
      .app_wdf_data      (app_wdf_data),
      .app_wdf_data_valid(app_wr_data_valid),

      .ui_clk             (ddr3_ui_clk),
      .ui_rst             (),
      .cmd_rdy            (cmd_rdy),
      .app_rd_data        (app_rd_data),
      .app_rd_data_valid  (app_rd_data_valid),
      .app_wr_data_rdy    (app_wr_data_rdy),
      .ddr3_rd_finish     (ddr3_rd_finish),
      .ddr3_rd_addr_finish(ddr3_rd_addr_finish),
      .ddr3_wr_finish     (ddr3_wr_finish),
      .init_calib_complete(init_calib_complete),
      .error_flag         (),
      .test_rdy           (),

      .ddr3_addr   (ddr3_addr),
      .ddr3_ba     (ddr3_ba),
      .ddr3_cas_n  (ddr3_cas_n),
      .ddr3_ck_n   (ddr3_ck_n),
      .ddr3_ck_p   (ddr3_ck_p),
      .ddr3_cke    (ddr3_cke),
      .ddr3_ras_n  (ddr3_ras_n),
      .ddr3_reset_n(ddr3_reset_n),
      .ddr3_we_n   (ddr3_we_n),
      .ddr3_dq     (ddr3_dq),
      .ddr3_dqs_n  (ddr3_dqs_n),
      .ddr3_dqs_p  (ddr3_dqs_p),
      .ddr3_cs_n   (ddr3_cs_n),
      .ddr3_dm     (ddr3_dm),
      .ddr3_odt    (ddr3_odt)
  );

  initial begin
    initialize_test();
    wait_calibration();

    // Write test
    test_write(29'h0, 10'd32);

    // Finish simulation
    // #10;
    // $finish;
  end

  // Instantiate DDR3 top module
  ddr3_top #(
             .DDR_WIDTH(DDR_WIDTH),
             .UI_WIDTH(UI_WIDTH),
             .RW_SIZE(RW_SIZE),
             .RST_CNT(RST_CNT)
           ) ddr3_top_inst (
             .F1_GCLK_40M(F1_GCLK_40M),
             .ena(ddr_init_finish),

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

  // DDR3 memory model
  ddr3_model ddr3_model_inst (
               .rst_n(ddr3_reset_n),
               .ck(ddr3_ck_p),
               .ck_n(ddr3_ck_n),
               .cke(ddr3_cke),
               .cs_n(ddr3_cs_n),
               .ras_n(ddr3_ras_n),
               .cas_n(ddr3_cas_n),
               .we_n(ddr3_we_n),
               .dm_tdqs(ddr3_dm),
               .ba(ddr3_ba),
               .addr(ddr3_addr),
               .dq(ddr3_dq),
               .dqs(ddr3_dqs_p),
               .dqs_n(ddr3_dqs_n),
               .tdqs_n(),
               .odt(ddr3_odt)
             );

  `default_nettype wire
endmodule
