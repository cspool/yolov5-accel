`timescale 1ps / 1ps
`include "ddr3_defines.vh"

module ddr3_top #(
    parameter DDR_WIDTH  = 64,
    parameter UI_WIDTH   = DDR_WIDTH * 8,
    parameter ADDR_WIDTH = 29,
    parameter RST_CNT    = 2000
) (
    // input
    input F1_GCLK_40M,

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
  // `default_nettype none

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
  wire                    clk_40MHz_locked;
  wire                    clk_150M;
  wire                    clk_200M;
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
  wire                    init_done;

  // Clk wiz
  clk_wiz_40M clk_wiz_40M_inst (
      .clk_out3(clk_200M),
      .clk_out2(clk_150M),
      .clk_out1(clk_40M),
      .locked  (clk_40MHz_locked),
      .clk_in1 (F1_GCLK_40M)
  );

  wire conv_fin;
  // debug log 
`ifdef SIMULATION
  integer wr_log_file;
  integer cmd_log_file;
  integer init_log_file;
  localparam WR_LOG_FILENAME = "D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\log\\ddr3_wr.log";
  localparam CMD_LOG_FILENAME = "D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\log\\ddr3_cmd.log";
  localparam INIT_LOG_FILENAME = "D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\log\\ddr3_init.log";
  initial begin
    wr_log_file   = $fopen(WR_LOG_FILENAME, "w");
    cmd_log_file  = $fopen(CMD_LOG_FILENAME, "w");
    init_log_file = $fopen(INIT_LOG_FILENAME, "w");

    if (!wr_log_file) begin
      $display("Error: Could not open wr log file");
      $finish;
    end

    if (!cmd_log_file) begin
      $display("Error: Could not open cmd log file");
      $finish;
    end

    if (!init_log_file) begin
      $display("Error: Could not open init log file");
      $finish;
    end

    forever begin
      @(posedge ui_clk);
      if (app_wr_data_rdy && app_wr_data_valid) begin
        $fwrite(wr_log_file, "[%0t] Write data: %h\n", $time, app_wdf_data);
        if (init_done == 1'b0) begin
          $fwrite(init_log_file, "%h\n", app_wdf_data);
        end
      end

      if (app_rd_data_valid) begin
        $fwrite(wr_log_file, "[%0t] Read data: %h\n", $time, app_rd_data);
      end

      if (ddr_cmd_valid && cmd_rdy) begin
        $fwrite(cmd_log_file, "[%0t] Command\t: %0d\n", $time, ddr_cmd);
        $fwrite(cmd_log_file, "[%0t] Address\t: %0d\n", $time, ddr_base_addr);
        $fwrite(cmd_log_file, "[%0t] App addr\t: %0d\n", $time, ddr_base_addr << 3);
        $fwrite(cmd_log_file, "[%0t] Size\t: %0d\n", $time, ddr_rw_size);
        $fwrite(cmd_log_file, "\n");
      end
    end
  end

  always @(posedge ui_clk) begin
    if (conv_fin == 1) begin
      #10000;
      $fclose(wr_log_file);
      $fclose(cmd_log_file);
      $fclose(init_log_file);
      $stop;
    end
  end

  initial begin
    // 150 us
    #150_000_000;
    $fclose(wr_log_file);
    $fclose(cmd_log_file);
    #10000;
    $stop;
  end
`endif

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
  reg ddr_start;
  always @(posedge clk_40M or negedge rst_n) begin
    if (!rst_n || ui_rst) begin
      ddr_start <= 1'b0;
    end else if (init_calib_complete) begin
      ddr_start <= 1'b1;
    end else begin
      ddr_start <= 1'b0;
    end
  end
`else
  wire ddr_start;
`endif

  // DDR init instance
  wire                  init_ddr_rdy;
  wire                  init_ddr_wdf_data_rdy;
  reg                   init_ddr_wr_finish;

  wire [           2:0] init_ddr_cmd;
  wire                  init_ddr_cmd_valid;
  wire [  UI_WIDTH-1:0] init_ddr_wdf_data;
  wire                  init_ddr_wdf_data_valid;
  wire [ADDR_WIDTH-1:0] init_ddr_base_addr;
  wire [           9:0] init_ddr_size;
  ddr3_init #(
      .DDR_WIDTH(DDR_WIDTH)
  ) ddr3_init_inst (
      // input
      .ui_clk          (ui_clk),
      .ui_rst          (ui_rst),
      .ddr_start       (ddr_start),
      .ddr_rdy         (init_ddr_rdy),
      .ddr_wdf_data_rdy(init_ddr_wdf_data_rdy),
      .ddr_wr_finish   (init_ddr_wr_finish),

      // output
      .ddr_cmd           (init_ddr_cmd),
      .ddr_cmd_valid     (init_ddr_cmd_valid),
      .ddr_wdf_data      (init_ddr_wdf_data),
      .ddr_wdf_data_valid(init_ddr_wdf_data_valid),
      .ddr_base_addr     (init_ddr_base_addr),
      .ddr_size          (init_ddr_size),
      .init_done         (init_done)
  );

  // quan_accel_conv_demo instance
  wire           conv_ddr_cmd_rdy;
  wire           conv_ddr_wt_data_rdy;

  wire [   31:0] conv_ddr_base_addr;
  wire [   15:0] conv_ddr_rw_size;
  wire           conv_ddr_cmd_valid;
  wire           conv_ddr_cmd;
  wire [512-1:0] conv_ddr_wt_data;
  wire           conv_ddr_wt_data_valid;
  quan_accel_conv_demo_v5 quan_accel_conv_demo_inst (
      // quan_accel_conv_demo_exp quan_accel_conv_demo_inst (
      // input
      .clk              (ui_clk),
      .reset            (~init_done),
      .ddr_cmd_ready    (conv_ddr_cmd_rdy),
      .ddr_wt_data_ready(conv_ddr_wt_data_rdy),
      .ddr_rd_data_valid(app_rd_data_valid),
      .ddr_rd_data      (app_rd_data),

      // output
      .cmd_ddr_base_adr (conv_ddr_base_addr),
      .cmd_ddr_length   (conv_ddr_rw_size),
      .valid_cmd        (conv_ddr_cmd_valid),
      .ddr_mode         (conv_ddr_cmd),
      .ddr_wt_data      (conv_ddr_wt_data),
      .valid_ddr_wt_data(conv_ddr_wt_data_valid),
      .conv_fin         (conv_fin)
  );

  // Switch between init and conv
  reg [1:0] main_state;
  localparam INIT = 2'd0, CONV = 2'd1;
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      main_state         <= INIT;
      init_ddr_wr_finish <= 1'b0;
    end else begin
      case (main_state)
        INIT: begin
          if (!init_done) begin
            main_state         <= INIT;
            init_ddr_wr_finish <= ddr3_wr_finish;
          end else begin
            main_state         <= CONV;
            init_ddr_wr_finish <= 1'b0;
          end
        end
        CONV: begin
          main_state <= CONV;
        end
        default: begin
          main_state <= INIT;
        end
      endcase
    end
  end

  assign ddr_cmd               = (init_done) ? {2'b00, conv_ddr_cmd} : init_ddr_cmd;
  assign ddr_cmd_valid         = (init_done) ? conv_ddr_cmd_valid : init_ddr_cmd_valid;
  assign ddr_base_addr         = (init_done) ? conv_ddr_base_addr[ADDR_WIDTH-1:0] : init_ddr_base_addr;
  assign ddr_rw_size           = (init_done) ? conv_ddr_rw_size[9:0] : init_ddr_size;
  assign app_wdf_data          = (init_done) ? conv_ddr_wt_data[UI_WIDTH-1:0] : init_ddr_wdf_data;
  assign app_wr_data_valid     = (init_done) ? conv_ddr_wt_data_valid : init_ddr_wdf_data_valid;

  assign init_ddr_rdy          = (init_done) ? 0 : cmd_rdy;
  assign init_ddr_wdf_data_rdy = (init_done) ? 0 : app_wr_data_rdy;

  assign conv_ddr_cmd_rdy      = (init_done) ? cmd_rdy : 0;
  assign conv_ddr_wt_data_rdy  = (init_done) ? app_wr_data_rdy : 0;


  // DDR3 controller instance
  ddr3_rw #(
      .DDR_WIDTH(DDR_WIDTH),
      .UI_WIDTH (UI_WIDTH)
  ) ddr3_rw_inst (
      // input
      .clk_ref_M         (clk_200M),
      .clk_200M          (clk_200M),
      .rst_n             (rst_n),
      .ena               (ddr_start),
      .app_cmd           (ddr_cmd),
      .cmd_valid         (ddr_cmd_valid),
      .ddr3_base_addr    (ddr_base_addr),
      .ddr3_rw_size      (ddr_rw_size),
      .app_wdf_data      (app_wdf_data),
      .app_wdf_data_valid(app_wr_data_valid),

      // output
      .ui_clk             (ui_clk),
      .ui_rst             (ui_rst),
      .cmd_rdy            (cmd_rdy),
      .app_rd_data        (app_rd_data),
      .app_rd_data_valid  (app_rd_data_valid),
      .app_wr_data_rdy    (app_wr_data_rdy),
      .ddr3_rd_finish     (ddr3_rd_finish),
      .ddr3_rd_addr_finish(ddr3_rd_addr_finish),
      .ddr3_wr_finish     (ddr3_wr_finish),
      .init_calib_complete(init_calib_complete),
      .error_flag         (error_flag),
      .test_rdy           (),

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
      .probe2(init_calib_complete)
  );

  ila_ddr3_init ila_ddr3_init_inst (
      .clk   (ui_clk),
      .probe0(init_ddr_rdy),             // 1 bit
      .probe1(init_ddr_wdf_data_rdy),    // 1 bit  
      .probe2(init_ddr_wr_finish),       // 1 bit
      .probe3(init_ddr_cmd),             // 3 bit
      .probe4(init_ddr_cmd_valid),       // 1 bit
      .probe5(init_ddr_wdf_data),        // UI_WIDTH bit
      .probe6(init_ddr_wdf_data_valid),  // 1 bit
      .probe7(init_ddr_base_addr),       // ADDR_WIDTH bit
      .probe8(init_ddr_size),            // 10 bit
      .probe9(init_done)                 // 1 bit
  );
`endif

`ifndef SIMULATION
  // vio
  vio_top vio_top_inst (
      .clk       (ui_clk),
      .probe_out0(ddr_start)
  );

`endif

  // `default_nettype wire

endmodule
