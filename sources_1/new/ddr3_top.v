//------------------------------------------------------------------------------
// 模块名称: ddr3_top
// 模块功能描述:
// 主要功能:
//    - DDR3存储器顶层控制模块
//    - 集成DDR3读写控制和测试功能
//    - 管理系统时钟和复位
//
// 接口说明:
//    输入信号:
//    - F1_GCLK_40M: 40MHz系统时钟
//
//    输出信号:
//    - done: 仿真完成标志(仅在仿真模式下有效)
//
//    DDR3接口信号:
//    - ddr3_addr: DDR3地址总线(15位)
//    - ddr3_ba: DDR3 bank地址(3位)
//    - ddr3_cas_n: 列地址选通信号
//    - ddr3_ck_n/p: DDR3时钟差分对
//    - ddr3_cke: 时钟使能
//    - ddr3_ras_n: 行地址选通信号
//    - ddr3_reset_n: DDR3复位信号
//    - ddr3_we_n: 写使能信号
//    - ddr3_dq: 数据总线(DDR_WIDTH位)
//    - ddr3_dqs_n/p: 数据选通差分对
//    - ddr3_cs_n: 片选信号
//    - ddr3_dm: 数据掩码
//    - ddr3_odt: 动态终端
//------------------------------------------------------------------------------

`include "ddr3_defines.vh"

module ddr3_top #(
    parameter DDR_WIDTH  = 64,
    parameter UI_WIDTH   = DDR_WIDTH * 8,
    parameter ADDR_WIDTH = 29,
    parameter TEST_SIZE  = 32,
    parameter RST_CNT    = 2000
) (
    // input
    input F1_GCLK_40M,
    input ena,

    // DDR3 interface
    output [               14:0] ddr3_addr,
    output [                2:0] ddr3_ba,
    output                       ddr3_cas_n,
    output [                0:0] ddr3_ck_n,
    output [                0:0] ddr3_ck_p,
    output [                0:0] ddr3_cke,
    output                       ddr3_ras_n,
    output                       ddr3_reset_n,
    output                       ddr3_we_n,
    inout  [    DDR_WIDTH - 1:0] ddr3_dq,
    inout  [DDR_WIDTH / 8 - 1:0] ddr3_dqs_n,
    inout  [DDR_WIDTH / 8 - 1:0] ddr3_dqs_p,
    output [                0:0] ddr3_cs_n,
    output [DDR_WIDTH / 8 - 1:0] ddr3_dm,
    output [                0:0] ddr3_odt
);
  `default_nettype none

  /*
Control flow:
  1. Wait sys reset
  2. ddr_start for user
  3. cmd_rdy for ddr3 (when state is in STATE_INIT)
  Waring: Don't have combination loop
*/

  // Internal signals
  reg                     rst_n;
  wire                    clk_40M;
  wire                    clk_100M;
  wire                    clk_200M;
  wire                    clk_40MHz_locked;
  reg  [            15:0] rst_cnt;

  wire                    ui_clk;
  wire                    ui_rst;

  // DDR3 controller signals
  wire [  UI_WIDTH - 1:0] app_rd_data;
  wire                    app_rd_data_valid;
  wire                    app_wr_data_rdy;
  wire                    app_wr_data_valid;
  wire                    ddr3_rd_finish;
  wire                    ddr3_rd_addr_finish;
  wire                    ddr3_wr_finish;
  wire                    error_flag;
  wire                    cmd_rdy;

  wire                    init_calib_complete;

  // Test module signals
  wire [             2:0] ddr_cmd;
  wire                    ddr_cmd_valid;
  wire [  UI_WIDTH - 1:0] app_wdf_data;
  wire [ADDR_WIDTH - 1:0] ddr_base_addr;
  wire [             9:0] ddr_rw_size;

  // Clk wiz
  clk_wiz_40M clk_wiz_40M_inst (
      .clk_out3(clk_200M), 
      .clk_out2(clk_100M),
      .clk_out1(clk_40M),
      .locked  (clk_40MHz_locked),
      .clk_in1 (F1_GCLK_40M)
  );

  // Top driver
  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_cnt <= 16'd0;
    end
    else if (rst_cnt < RST_CNT) begin
      rst_cnt <= rst_cnt + 1'b1;
    end
  end

  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_n <= 1'b0;
    end
    else if (rst_cnt > RST_CNT - 100) begin
      rst_n <= 1'b1;
    end
    else begin
      rst_n <= 1'b0;
    end
  end


  // test start for simulation
`ifdef SIMULATION
  reg ddr_start;
  always @(posedge clk_40M or negedge rst_n) begin
    if (!rst_n || ui_rst) begin
      ddr_start <= 1'b0;
    end
    else if (init_calib_complete) begin
      ddr_start <= 1'b1;
    end
    else begin
      ddr_start <= 1'b0;
    end
  end

`else
  wire ddr_start;
`endif

  // DDR3 controller instance
  ddr3_rw #(
      .DDR_WIDTH(DDR_WIDTH),
      .UI_WIDTH (UI_WIDTH)
  ) ddr3_rw_inst (
      // input
      .clk_100M      (clk_100M),
      .clk_200M      (clk_200M),
      .rst_n         (rst_n),
      .ena           (ddr_start && ena),
      .app_cmd       (ddr_cmd),
      .cmd_valid     (ddr_cmd_valid),
      .ddr3_base_addr(ddr_base_addr),
      .ddr3_rw_size  (ddr_rw_size),
      .app_wdf_data  (app_wdf_data),
      .app_wdf_data_valid(app_wr_data_valid),

      // output
      .ui_clk             (ui_clk),
      .ui_rst             (ui_rst),
      .cmd_rdy       (cmd_rdy),
      .app_rd_data        (app_rd_data),
      .app_rd_data_valid  (app_rd_data_valid),
      .app_wr_data_rdy  (app_wr_data_rdy),
      .ddr3_rd_finish     (ddr3_rd_finish),
      .ddr3_rd_addr_finish(ddr3_rd_addr_finish),
      .ddr3_wr_finish     (ddr3_wr_finish),
      .init_calib_complete(init_calib_complete),
      .error_flag         (error_flag),
      .test_rdy         (),

      // DDR3 interface
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

  quan_accel_conv_demo quan_accel_conv_demo_inst (
      .clk                (ui_clk),
      .reset              (ui_rst),
      // DDR MIG
      .ddr_cmd_ready      (cmd_rdy),
      .ddr_rd_data_valid  (app_rd_data_valid),
      .ddr_wt_data_ready  (app_wr_data_rdy),

      .cmd_ddr_base_adr   (ddr_base_addr),
      .cmd_ddr_length     (ddr_rw_size),
      .valid_cmd          (ddr_cmd_valid),
      .ddr_mode           (ddr_cmd),

      .ddr_rd_data        (app_rd_data),
      .ddr_wt_data        (app_wdf_data),
      .valid_ddr_wt_data  (app_wr_data_valid)
  );

  // ila
`ifdef DEBUG

  ila_wiz_40M ila_wiz_40M_inst (
      .clk   (clk_40M),
      .probe0(rst_n),
      .probe1(clk_40MHz_locked)
  );

  ila_ddr3_top ila_ddr3_top_inst (
      .clk   (ui_clk),
      .probe0(ui_rst),
      .probe1(ddr_start),
      .probe3(init_calib_complete),
  );
`endif

`ifndef SIMULATION
  // vio
  vio_top vio_top_inst (
      .clk       (ui_clk),
      .probe_out0(ddr_start)
  );

`endif

`default_nettype wire

endmodule
