//------------------------------------------------------------------------------
// ģ������: ddr3_top
// ģ�鹦������:
// ��Ҫ����:
//    - DDR3�洢���������ģ��?
//    - ����DDR3��д���ƺͲ��Թ���
//    - ����ϵͳʱ�Ӻ͸�λ
//
// �ӿ�˵��:
//    �����ź�:
//    - F1_GCLK_40M: 40MHzϵͳʱ��
//
//    ����ź�?:
//    - done: ������ɱ��?(���ڷ���ģʽ����Ч)
//
//    DDR3�ӿ��ź�:
//    - ddr3_addr: DDR3��ַ����(15λ)
//    - ddr3_ba: DDR3 bank��ַ(3λ)
//    - ddr3_cas_n: �е�ַѡͨ�ź�
//    - ddr3_ck_n/p: DDR3ʱ�Ӳ�ֶ�?
//    - ddr3_cke: ʱ��ʹ��
//    - ddr3_ras_n: �е�ַѡͨ�ź�
//    - ddr3_reset_n: DDR3��λ�ź�
//    - ddr3_we_n: дʹ���ź�
//    - ddr3_dq: ��������(DDR_WIDTHλ)
//    - ddr3_dqs_n/p: ����ѡͨ��ֶ�?
//    - ddr3_cs_n: Ƭѡ�ź�
//    - ddr3_dm: ��������
//    - ddr3_odt: ��̬�ն�
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

    // output
`ifdef SIMULATION
    output done,
`endif

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

  /*
Control flow:
  1. Wait sys reset
  2. test_start for user
  3. test_ready for ddr3 (when state is in STATE_INIT)
  4. test_trig for test (when state is in STATE_Start)
  Waring: Don't have combination loop
*/

  // Internal signals
  reg                     rst_n;
  wire                    clk_40M;
  wire                    clk_150M;
  wire                    clk_200M;
  wire                    clk_40MHz_locked;
  reg  [            15:0] rst_cnt;

  wire                    ui_clk;
  wire                    ui_rst;

  // DDR3 controller signals
  wire [  UI_WIDTH - 1:0] app_rd_data;
  wire                    app_rd_data_valid;
  wire                    app_wr_data_valid;
  wire                    ddr3_rd_finish;
  wire                    ddr3_rd_addr_finish;
  wire                    ddr3_wr_finish;
  wire                    error_flag;

  wire                    init_calib_complete;

  // Test module signals
  wire [             2:0] test_cmd;
  wire [  UI_WIDTH - 1:0] test_wdf_data;
  wire                    test_trig;
  wire [ADDR_WIDTH - 1:0] test_base_addr;
  wire [             9:0] test_size;
  wire                    test_ready;
  wire                    test_done;
  wire                    test_err;

`ifdef SIMULATION

  assign done = test_done;
`endif

  // Clk wiz
  clk_wiz_0 clk_wiz_40M_inst (
      .clk_out3(clk_200M),
      .clk_out2(clk_150M),
      .clk_out1(clk_40M),
      .locked  (clk_40MHz_locked),
      .clk_in1 (F1_GCLK_40M)
  );

  // Top driver
  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_cnt <= 16'd0;
    end else if (rst_cnt < RST_CNT) begin
      rst_cnt <= rst_cnt + 1'b1;
    end
  end

  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_n <= 1'b0;
    end else if (rst_cnt > RST_CNT - 100) begin
      rst_n <= 1'b1;
    end else begin
      rst_n <= 1'b0;
    end
  end


  // test start for simulation
`ifdef SIMULATION
  reg test_start;
  always @(posedge clk_40M or negedge rst_n) begin
    if (!rst_n || ui_rst) begin
      test_start <= 1'b0;
    end else if (init_calib_complete) begin
      test_start <= 1'b1;
    end else begin
      test_start <= 1'b0;
    end
  end

`else
  wire test_start;
`endif

  // DDR3 controller instance
  ddr3_rw #(
      .DDR_WIDTH(DDR_WIDTH),
      .UI_WIDTH (UI_WIDTH)
  ) ddr3_rw_inst (
      // input
      .clk_150M      (clk_150M),
      .clk_200M      (clk_200M),
      .rst_n         (rst_n),
      .ena           (test_start),
      .app_cmd       (test_cmd),
      .ddr3_base_addr(test_base_addr),
      .ddr3_rw_size  (test_size),
      .app_wdf_data  (test_wdf_data),
      .test_trig     (test_trig),

      // output
      .ui_clk             (ui_clk),
      .ui_rst             (ui_rst),
      .app_rd_data        (app_rd_data),
      .app_rd_data_valid  (app_rd_data_valid),
      .app_wr_data_valid  (app_wr_data_valid),
      .ddr3_rd_finish     (ddr3_rd_finish),
      .ddr3_rd_addr_finish(ddr3_rd_addr_finish),
      .ddr3_wr_finish     (ddr3_wr_finish),
      .init_calib_complete(init_calib_complete),
      .error_flag         (error_flag),
      .test_ready         (test_ready),

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

  wire                    reset;
  wire                    ddr_en;
  wire                    DDR_en;
  wire                    DDR_en_wr;
  wire [ DDR_WIDTH - 1:0] DDR_in;
  wire [ DDR_WIDTH - 1:0] DDR_out;
  wire [ADDR_WIDTH - 1:0] DDR_adr;
  conv_activate_quantize_synth conv_activate_quantize_synth_inst (
      .clk      (clk_150M),
      .reset    (reset),
      .ddr_en   (ddr_en),     //xxxxxxxxxxxx
      .DDR_valid(DDR_valid),
      .DDR_out  (DDR_out),

      .DDR_en   (DDR_en),
      .DDR_en_wr(DDR_en_wr),
      .DDR_in   (DDR_in),
      .DDR_adr  (DDR_adr)
  );

  assign reset          = ~rst_n;
  assign ddr_en         = test_ready;
  assign DDR_valid      = app_rd_data_valid;
  assign DDR_out        = app_rd_data;
  assign DDR_en         = test_start;

  assign test_cmd       = (DDR_en_wr == 1) ? 3'b000 : (DDR_en_wr == 0) ? 3'b001 : 0;
  assign test_wdf_data  = DDR_in;
  assign test_base_addr = DDR_adr;
  assign test_size      = 1;

endmodule
