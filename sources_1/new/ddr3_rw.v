//------------------------------------------------------------------------------


// : ddr3_rw


// 模块功能描述:


// 主要功能:


//    - DDR3存储器读写控制模块


//    - 处理DDR3读写请求和数据传输


//    - 管理DDR3接口时序和状态


//


// 接口说明:


//    输入信号:


//    - clk_100M: ddr系统时钟


//    - rst_n: 低电平有效复位信号


//    - ena: 模块使能信号


//    - app_cmd: DDR3命令(3位)


//    - cmd_valid: 命令有效标志


//    - ddr3_base_addr: DDR3基地址(29位)


//    - ddr3_rw_size: 读写数据大小(10位)


//    - app_wdf_data: 写数据(UI_WIDTH位)


//    - app_wdf_data_valid: 写数据有效标志



//    输出信号:


//    - ui_clk: 用户接口时钟


//    - ui_rst: 用户接口复位


//    - cmd_rdy: 命令就绪标志


//    - app_rd_data: 读取的数据(UI_WIDTH位)


//    - app_rd_data_valid: 读数据有效标志


//    - app_wr_data_rdy: 写数据就绪标志


//    - ddr3_rd_finish: 读操作完成标志


//    - ddr3_rd_addr_finish: 读地址传输完成标志


//    - ddr3_wr_finish: 写操作完成标志


//    - init_calib_complete: DDR3初始化校准完成标志


//    - error_flag: 错误标志


//    - test_rdy: 测试就绪标志


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


`timescale 1ps / 1ps
`include "ddr3_defines.vh"

module ddr3_rw #(
    parameter DDR_WIDTH   = 64,
    parameter UI_WIDTH    = DDR_WIDTH * 8,
    parameter ADDR_OFFSET = 8,
    parameter ADDR_WIDTH  = 29
) (
    input                    clk_ref_M,
    input                    clk_200M,
    input                    rst_n,
    input                    ena,
    input [             2:0] app_cmd,
    input                    cmd_valid,
    input [ADDR_WIDTH - 1:0] ddr3_base_addr,
    input [             9:0] ddr3_rw_size,
    input [  UI_WIDTH - 1:0] app_wdf_data,
    input                    app_wdf_data_valid,

    output                      ui_clk,
    output                      ui_rst,
    output     [UI_WIDTH - 1:0] app_rd_data,
    output                      app_rd_data_valid,
    output                      app_wr_data_rdy,
    output                      ddr3_rd_finish,
    output                      ddr3_rd_addr_finish,
    output                      ddr3_wr_finish,
    output                      init_calib_complete,
    output reg                  error_flag,
    output reg                  cmd_rdy,
    output reg                  test_rdy,

    // ddr3 interface


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



  // 内部信号定义


  wire init_calib_complete_sync;
  wire user_rst;
  reg init_calib_complete_r1, init_calib_complete_r2;
  reg soft_rst_req = 1'b0;

`ifdef CMD_DATA_SYNC
  reg [UI_WIDTH - 1:0] app_wdf_data_sync;
  reg                  app_wdf_data_valid_sync;
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      app_wdf_data_sync       <= {UI_WIDTH{1'b0}};
      app_wdf_data_valid_sync <= 1'b0;
    end else begin
      app_wdf_data_sync       <= app_wdf_data;
      app_wdf_data_valid_sync <= app_wdf_data_valid;
    end
  end
`else
  wire [UI_WIDTH - 1:0] app_wdf_data_sync;
  wire                  app_wdf_data_valid_sync;
  assign app_wdf_data_sync       = app_wdf_data;
  assign app_wdf_data_valid_sync = app_wdf_data_valid;
`endif

  // 状态机定义


  localparam STATE_RESET = 4'd0, STATE_IDLE = 4'd1, STATE_INIT = 4'd2, STATE_READ = 4'd3, STATE_WRITE = 4'd4, STATE_FINISH = 4'd5;

  // DDR3命令定义


  localparam CMD_WRITE = 3'd0, CMD_READ = 3'd1, CMD_IDLE = 3'd2;

  // 计数器和状态寄存器


  reg [9:0] cnt_write_addr;
  reg [9:0] cnt_write_data;
  reg [9:0] cnt_read_addr;
  reg [9:0] cnt_read_data;
  reg write_data_over, write_addr_over;
  reg read_addr_over, read_data_over;
  reg [3:0] state;
  reg [3:0] next_state;

  reg [9:0] ddr3_rw_size_valid;
  reg [2:0] app_cmd_valid;
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      ddr3_rw_size_valid <= 10'd0;
      app_cmd_valid      <= CMD_IDLE;
    end else if (state == STATE_INIT && cmd_rdy && cmd_valid) begin
      ddr3_rw_size_valid <= ddr3_rw_size;
      app_cmd_valid      <= app_cmd;
    end
  end

  assign user_rst = ui_rst;

  // 对init_calib_complete信号进行同步处理，使用两级触发器对跨时钟域信号进行同步，防止亚稳态


  // init_calib_complete -> init_calib_complete_r1 -> init_calib_complete_r2 -> init_calib_complete_sync


  always @(posedge ui_clk or posedge ui_rst)
    if (ui_rst) begin
      init_calib_complete_r1 <= 1'b0;
      init_calib_complete_r2 <= 1'b0;
    end else begin
      init_calib_complete_r1 <= init_calib_complete;
      init_calib_complete_r2 <= init_calib_complete_r1;
    end

  assign init_calib_complete_sync = init_calib_complete_r2;

  // DDR3接口控制信号


  wire                    app_en;
  reg  [ADDR_WIDTH - 1:0] app_addr;
  wire                    app_wdf_rdy;
  wire                    app_wdf_wren;
  wire                    app_wdf_end;
  wire                    app_rdy;
  wire                    app_wr_addr_valid;
  wire                    app_rd_addr_valid;

  // 控制信号赋值


  assign app_en       = ((state == STATE_WRITE && ~ddr3_wr_finish) || (state == STATE_READ && ~ddr3_rd_addr_finish));
  assign app_wdf_wren = (app_wr_data_rdy && app_wdf_data_valid_sync);
  assign app_wdf_end  = app_wdf_wren;
`ifdef CMD_DATA_SYNC
  assign app_wr_data_rdy = (app_wdf_rdy && ~write_data_over);
`else
  assign app_wr_data_rdy = (state == STATE_WRITE && app_wdf_rdy && ~write_data_over);
`endif
  assign app_wr_addr_valid   = (state == STATE_WRITE && app_rdy && ~write_addr_over);
  assign app_rd_addr_valid   = (state == STATE_READ && app_rdy && ~read_addr_over);

  // 完成信号赋值


  assign ddr3_rd_addr_finish = read_addr_over;
  assign ddr3_rd_finish      = (read_addr_over && read_data_over);
  assign ddr3_wr_finish      = (write_data_over && write_addr_over);

  // 状态机实现


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      state <= STATE_RESET;
    end else begin
      state <= next_state;
    end
  end

  // 状态机组合逻辑


  always @(*) begin
    case (state)
      STATE_RESET: begin
        if (init_calib_complete_sync) begin
          next_state = STATE_IDLE;
        end else begin
          next_state = STATE_RESET;
        end
      end

      STATE_IDLE: begin
        if (!init_calib_complete_sync) begin
          next_state = STATE_RESET;
        end else if (ena && app_rdy) begin
          next_state = STATE_INIT;
        end else begin
          next_state = STATE_IDLE;
        end
      end

      STATE_INIT: begin
        if (cmd_valid) begin
          case (app_cmd)
            CMD_WRITE: next_state = STATE_WRITE;
            CMD_READ:  next_state = STATE_READ;
            default:   next_state = STATE_INIT;
          endcase
        end else begin
          next_state = STATE_INIT;
        end
      end

      STATE_WRITE: begin
        if (ddr3_wr_finish) begin
          next_state = STATE_FINISH;
        end else begin
          next_state = STATE_WRITE;
        end
      end

      STATE_READ: begin
        if (ddr3_rd_finish) begin
          next_state = STATE_FINISH;
        end else begin
          next_state = STATE_READ;
        end
      end

      STATE_FINISH: begin
        next_state = STATE_IDLE;
      end

      default: begin
        next_state = STATE_IDLE;
      end
    endcase
  end

  // 完成标志控制


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      write_data_over <= 1'd0;
      write_addr_over <= 1'd0;
      read_addr_over  <= 1'd0;
      read_data_over  <= 1'd0;
    end else begin
      if (state == STATE_WRITE) begin
        if (cnt_write_data == ddr3_rw_size_valid - 1 && app_wdf_data_valid_sync && app_wdf_rdy) begin
          write_data_over <= 1'b1;
        end
        if (cnt_write_addr == ddr3_rw_size_valid - 1 && app_rdy) begin
          write_addr_over <= 1'b1;
        end
      end else if (state == STATE_READ) begin
        if (cnt_read_addr == ddr3_rw_size_valid - 1 && app_rdy) begin
          read_addr_over <= 1'b1;
        end
        if (cnt_read_data == ddr3_rw_size_valid - 1 && app_rd_data_valid) begin
          read_data_over <= 1'b1;
        end
      end
    end
  end

  // 地址控制


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      app_addr <= {ADDR_WIDTH{1'b0}};
    end else if (state == STATE_INIT && cmd_rdy && cmd_valid) begin
      app_addr <= (ddr3_base_addr << 3);
    end else if (app_wr_addr_valid && ~write_addr_over) begin
      app_addr <= app_addr + ADDR_OFFSET;
    end else if (app_rd_addr_valid && ~read_addr_over) begin
      app_addr <= app_addr + ADDR_OFFSET;
    end
  end

  // 写数据计数器


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      cnt_write_addr <= 10'd0;
    end else if (app_wr_addr_valid && cnt_write_addr < ddr3_rw_size_valid) begin
      cnt_write_addr <= cnt_write_addr + 10'd1;
    end
  end

  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      cnt_write_data <= 10'd0;
    end else begin
`ifdef CMD_DATA_SYNC
      if (state == STATE_WRITE && app_wr_data_rdy && app_wdf_data_valid_sync && cnt_write_data < ddr3_rw_size_valid) begin
        cnt_write_data <= cnt_write_data + 10'd1;
      end
`else
      if (app_wr_data_rdy && app_wdf_data_valid_sync && cnt_write_data < ddr3_rw_size_valid) begin
        cnt_write_data <= cnt_write_data + 10'd1;
      end
`endif
    end
  end

  // 读数据计数器


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      cnt_read_addr <= 10'd0;
    end else if (app_rd_addr_valid && cnt_read_addr < ddr3_rw_size_valid) begin
      cnt_read_addr <= cnt_read_addr + 10'd1;
    end
  end

  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      cnt_read_data <= 10'd0;
    end else if (app_rd_data_valid && cnt_read_data < ddr3_rw_size_valid) begin
      cnt_read_data <= cnt_read_data + 10'd1;
    end
  end

  // cmd ready信号


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      cmd_rdy <= 1'b0;
    end else if (state == STATE_INIT) begin
      cmd_rdy <= 1'b1;
    end else begin
      cmd_rdy <= 1'b0;
    end
  end

  // test ready信号


  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      test_rdy <= 1'b0;
    end else if (state == STATE_INIT) begin
      test_rdy <= 1'b1;
    end else begin
      test_rdy <= 1'b0;
    end
  end

  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      error_flag <= 1'b0;
    end
  end

  // DDR3 IP核实例化


  mig_7series_0 mig_7series_0_inst (
      // DDR interface Signals


      .ddr3_addr          (ddr3_addr),
      .ddr3_ba            (ddr3_ba),
      .ddr3_cas_n         (ddr3_cas_n),
      .ddr3_ck_n          (ddr3_ck_n),
      .ddr3_ck_p          (ddr3_ck_p),
      .ddr3_cke           (ddr3_cke),
      .ddr3_ras_n         (ddr3_ras_n),
      .ddr3_reset_n       (ddr3_reset_n),
      .ddr3_we_n          (ddr3_we_n),
      .ddr3_dq            (ddr3_dq),
      .ddr3_dqs_n         (ddr3_dqs_n),
      .ddr3_dqs_p         (ddr3_dqs_p),
      .init_calib_complete(init_calib_complete),
      .ddr3_cs_n          (ddr3_cs_n),
      .ddr3_dm            (ddr3_dm),
      .ddr3_odt           (ddr3_odt),

      // Application interface Signals


      .app_addr         (app_addr),
      .app_cmd          (app_cmd_valid),
      .app_en           (app_en),
      .app_wdf_data     (app_wdf_data_sync),
      .app_wdf_end      (app_wdf_end),
      .app_wdf_wren     (app_wdf_wren),
      .app_rd_data      (app_rd_data),
      .app_rd_data_end  (),
      .app_rd_data_valid(app_rd_data_valid),
      .app_rdy          (app_rdy),
      .app_wdf_rdy      (app_wdf_rdy),
      .app_sr_req       (1'b0),
      .app_ref_req      (1'b0),
      .app_zq_req       (1'b0),
      .app_sr_active    (),
      .app_ref_ack      (),
      .app_zq_ack       (),

      .ui_clk         (ui_clk),
      .ui_clk_sync_rst(ui_rst),
      .app_wdf_mask   ({DDR_WIDTH{1'b0}}),

      .sys_clk_i(clk_200M),
      // .clk_ref_i    (clk_ref_M),


`ifdef ONLINE
      .device_temp_i(12'd0),
      .sys_rst      (rst_n)
`else
      .device_temp  (),
      .sys_rst      (rst_n)
`endif
  );

  // ila


`ifdef DEBUG

  ila_ddr3_rw ila_ddr3_rw_inst (
      .clk   (ui_clk),
      .probe0(ena),     // 1 bit


      .probe1(state),  // 4 bit


      .probe2(app_en),  // 1 bit


      .probe3(app_cmd),  // 3 bit


      .probe4(app_rdy),  // 1 bit


      .probe5(app_addr),  // 29 bit


      // For Write


      .probe6(app_wdf_wren),  // 1 bit


      .probe7(app_wdf_rdy),  // 1 bit


      .probe8(app_wr_data_rdy),  // 1 bit


      .probe9(app_wr_addr_valid),  // 1 bit


      .probe10(app_wdf_data),  // 512 bit


      .probe11(cnt_write_addr),  // 10 bit


      .probe12(cnt_write_data),  // 10 bit


      .probe13(write_data_over),  // 1 bit


      .probe14(write_addr_over),  // 1 bit


      // For Read


      .probe15(app_rd_data),  // 512 bit


      .probe16(app_rd_data_valid),  // 1 bit


      .probe17(app_rd_addr_valid),  // 1 bit


      .probe18(cnt_read_addr),  // 10 bit


      .probe19(cnt_read_data),  // 10 bit


      .probe20(read_addr_over),  // 1 bit


      .probe21(read_data_over)  // 1 bit


  );
`endif

  // `default_nettype wire



endmodule
