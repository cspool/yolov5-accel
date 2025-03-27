//------------------------------------------------------------------------------
// : ddr3_rw
// ģ�鹦������:
// ��Ҫ����:
//    - DDR3�洢����д����ģ��
//    - ����DDR3��д��������ݴ���
//    - ����DDR3�ӿ�ʱ���״̬
//
// �ӿ�˵��:
//    �����ź�:
//    - clk_100M: ddrϵͳʱ��
//    - rst_n: �͵�ƽ��Ч��λ�ź�
//    - ena: ģ��ʹ���ź�
//    - app_cmd: DDR3����(3λ)
//    - cmd_valid: ������Ч��־
//    - ddr3_base_addr: DDR3����ַ(29λ)
//    - ddr3_rw_size: ��д���ݴ�С(10λ)
//    - app_wdf_data: д����(UI_WIDTHλ)
//    - app_wdf_data_valid: д������Ч��־

//    ����ź�:
//    - ui_clk: �û��ӿ�ʱ��
//    - ui_rst: �û��ӿڸ�λ
//    - cmd_rdy: ���������־
//    - app_rd_data: ��ȡ������(UI_WIDTHλ)
//    - app_rd_data_valid: ��������Ч��־
//    - app_wr_data_rdy: д���ݾ�����־
//    - ddr3_rd_finish: ��������ɱ�־
//    - ddr3_rd_addr_finish: ����ַ������ɱ�־
//    - ddr3_wr_finish: д������ɱ�־
//    - init_calib_complete: DDR3��ʼ��У׼��ɱ�־
//    - error_flag: �����־
//    - test_rdy: ���Ծ�����־
//
//    DDR3�ӿ��ź�:
//    - ddr3_addr: DDR3��ַ����(15λ)
//    - ddr3_ba: DDR3 bank��ַ(3λ)
//    - ddr3_cas_n: �е�ַѡͨ�ź�
//    - ddr3_ck_n/p: DDR3ʱ�Ӳ�ֶ�
//    - ddr3_cke: ʱ��ʹ��
//    - ddr3_ras_n: �е�ַѡͨ�ź�
//    - ddr3_reset_n: DDR3��λ�ź�
//    - ddr3_we_n: дʹ���ź�
//    - ddr3_dq: ��������(DDR_WIDTHλ)
//    - ddr3_dqs_n/p: ����ѡͨ��ֶ�
//    - ddr3_cs_n: Ƭѡ�ź�
//    - ddr3_dm: ��������
//    - ddr3_odt: ��̬�ն�
//------------------------------------------------------------------------------
`timescale 1ps / 1ps
`include "ddr3_defines.vh"

module ddr3_rw #(
    parameter DDR_WIDTH     = 64,
    parameter UI_WIDTH      = DDR_WIDTH * 8,
    parameter ADDR_OFFSET   = 8,
    parameter ADDR_WIDTH    = 29,
    parameter TIMEOUT_VALUE = 32'hffffffff    // ��ʱ����ֵ
) (
    input                    clk_100M,
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

  // �ڲ��źŶ���
  wire init_calib_complete_sync;
  wire reset_needed;
  reg init_calib_complete_r1, init_calib_complete_r2;
  reg [15:0] timeout_cnt;
  reg        soft_rst_req;
  reg [ 2:0] retry_cnt;
  localparam MAX_RETRY = 3'd2;

  // ״̬������
  localparam STATE_RESET = 4'd0, STATE_IDLE = 4'd1, STATE_INIT = 4'd2, STATE_READ = 4'd3, STATE_WRITE = 4'd4, STATE_FINISH = 4'd5, STATE_ERROR = 4'd6, STATE_RETRY = 4'd7;

  // DDR3�����
  localparam CMD_WRITE = 3'd0, CMD_READ = 3'd1, CMD_IDLE = 3'd2;

  // ��������״̬�Ĵ���
  reg [9:0] cnt_write_addr;
  reg [9:0] cnt_write_data;
  reg [9:0] cnt_read_addr;
  reg [9:0] cnt_read_data;
  reg write_data_over, write_addr_over;
  reg read_addr_over, read_data_over;
  reg                                                  [3:0] state;
  reg                                                  [3:0] next_state;
  // ��ʱ�ʹ�����
  wire timeout_error = (timeout_cnt >= TIMEOUT_VALUE);

  reg                                                  [9:0] ddr3_rw_size_valid;
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      ddr3_rw_size_valid <= 10'd0;
    end else if (state == STATE_INIT && cmd_rdy && cmd_valid) begin
      ddr3_rw_size_valid <= ddr3_rw_size;
    end
  end

  assign reset_needed = ui_rst || soft_rst_req;

  // ��init_calib_complete�źŽ���ͬ��������ʹ�������������Կ�ʱ�����źŽ���ͬ������ֹ����̬
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

  // ��ʱ������
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      timeout_cnt <= 16'd0;
    end else if (state == STATE_IDLE || state == STATE_FINISH) begin
      timeout_cnt <= 16'd0;
    end else if (state == STATE_READ || state == STATE_WRITE) begin
      timeout_cnt <= timeout_cnt + 16'd1;
    end

  end

  // ���Լ�����
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      retry_cnt <= 3'd0;
    end else if (state == STATE_RETRY) begin
      retry_cnt <= retry_cnt + 3'd1;
    end else if (state == STATE_IDLE) begin
      retry_cnt <= 3'd0;
    end
  end

  // DDR3�ӿڿ����ź�
  wire                    app_en;
  reg  [ADDR_WIDTH - 1:0] app_addr;
  wire                    app_wdf_rdy;
  wire                    app_wdf_wren;
  wire                    app_wdf_end;
  wire                    app_rdy;
  wire                    app_wr_addr_valid;
  wire                    app_rd_addr_valid;

  // �����źŸ�ֵ
  assign app_en              = ((state == STATE_WRITE && ~ddr3_wr_finish) || (state == STATE_READ && ~ddr3_rd_addr_finish));
  assign app_wdf_wren        = (app_wr_data_rdy && app_wdf_data_valid);
  assign app_wdf_end         = app_wdf_wren;
  assign app_wr_data_rdy     = (state == STATE_WRITE && app_wdf_rdy && ~write_data_over);
  assign app_wr_addr_valid   = (state == STATE_WRITE && app_rdy && ~write_addr_over);
  assign app_rd_addr_valid   = (state == STATE_READ && app_rdy && ~read_addr_over);

  // ����źŸ�ֵ
  assign ddr3_rd_addr_finish = read_addr_over;
  assign ddr3_rd_finish      = (read_addr_over && read_data_over);
  assign ddr3_wr_finish      = (write_data_over && write_addr_over);

  // ״̬��ʵ��
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      state <= STATE_RESET;
    end else begin
      state <= next_state;
    end
  end

  // ״̬������߼�
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
        if (timeout_error) begin
          next_state = STATE_ERROR;
        end else if (ddr3_wr_finish) begin
          next_state = STATE_FINISH;
        end else begin
          next_state = STATE_WRITE;
        end
      end

      STATE_READ: begin
        if (timeout_error) begin
          next_state = STATE_ERROR;
        end else if (ddr3_rd_finish) begin
          next_state = STATE_FINISH;
        end else begin
          next_state = STATE_READ;
        end
      end

      STATE_ERROR: begin
        if (retry_cnt < MAX_RETRY) begin
          next_state = STATE_RETRY;
        end else begin
          if (reset_needed) begin
            next_state = STATE_RESET;
          end else begin
            next_state = STATE_ERROR;
          end
        end
      end

      STATE_FINISH, STATE_RETRY: begin
        next_state = STATE_IDLE;
      end

      default: begin
        next_state = STATE_IDLE;
      end
    endcase
  end

  // ��ɱ�־����
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      write_data_over <= 1'd0;
      write_addr_over <= 1'd0;
      read_addr_over  <= 1'd0;
      read_data_over  <= 1'd0;
    end else begin
      if (state == STATE_WRITE) begin
        if (cnt_write_data == ddr3_rw_size_valid - 1 && app_wdf_data_valid && app_wdf_rdy) begin
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

  // ��ַ����
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

  // д���ݼ�����
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
      if (app_wr_data_rdy && app_wdf_data_valid && cnt_write_data < ddr3_rw_size_valid) begin
        cnt_write_data <= cnt_write_data + 10'd1;
      end
    end
  end

  // �����ݼ�����
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

  // ��������λ�����߼�
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst || state == STATE_INIT) begin
      soft_rst_req <= 1'b0;
    end else if (state == STATE_ERROR && retry_cnt >= MAX_RETRY) begin
      soft_rst_req <= 1'b1;
    end
  end

  // cmd ready�ź�
  always @(posedge ui_clk or posedge ui_rst) begin
    if (ui_rst) begin
      cmd_rdy <= 1'b0;
    end else if (state == STATE_INIT) begin
      cmd_rdy <= 1'b1;
    end else begin
      cmd_rdy <= 1'b0;
    end
  end

  // test ready�ź�
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
    end else if (state == STATE_ERROR) begin
      error_flag <= 1'b1;
    end
  end

  // DDR3 IP��ʵ����
  mig_7series_1 mig_7series_0_inst (
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
      .app_cmd          (app_cmd),
      .app_en           (app_en),
      .app_wdf_data     (app_wdf_data),
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

      .sys_clk_i    (clk_200M),
`ifdef ONLINE
      .sys_rst      (rst_n),
      .device_temp_i(12'd0)
`else
      .device_temp  (),
      .sys_rst      (rst_n)
`endif
  );

  // ila
`ifdef DEBUG

  ila_ddr3_rw ila_ddr3_rw_inst (
      .clk    (ui_clk),
      .probe0 (ena),                // 1 bit
      .probe1 (state),              // 4 bit
      .probe2 (test_rdy),           // 1 bit
      .probe4 (app_en),             // 1 bit
      .probe5 (app_cmd),            // 3 bit
      .probe6 (app_rdy),            // 1 bit
      .probe7 (app_addr),           // 29 bit
      // For Write
      .probe8 (app_wdf_wren),       // 1 bit
      .probe9 (app_wdf_rdy),        // 1 bit
      .probe10(app_wr_data_rdy),    // 1 bit
      .probe11(app_wr_addr_valid),  // 1 bit
      .probe12(app_wdf_data),       // 512 biW
      .probe13(cnt_write_addr),     // 10 bit
      .probe14(cnt_write_data),     // 10 bit
      .probe15(write_data_over),    // 1 bit
      .probe16(write_addr_over),    // 1 bit
      // For Read
      .probe17(app_rd_data),        // 512 bit
      .probe18(app_rd_data_valid),  // 1 bit
      .probe19(app_rd_addr_valid),  // 1 bit
      .probe20(cnt_read_addr),      // 10 bit
      .probe21(cnt_read_data),      // 10 bit
      .probe22(read_addr_over),     // 1 bit
      .probe23(read_data_over),     // 1 bit
      // For Error
      .probe24(error_flag)
  );  // 1 bit
`endif

  // `default_nettype wire

endmodule
