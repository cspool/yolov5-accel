`timescale 1ps / 1ps

`include "ddr3_defines.vh"



module ddr3_init #(

    parameter DDR_WIDTH  = 64,

    parameter UI_WIDTH   = DDR_WIDTH * 8,

    parameter ADDR_WIDTH = 29,

    parameter BASE_ADDR  = 29'h00000000,

    parameter INIT_SIZE  = 512,

    parameter INIT_FILE  = "D:\\project\\Vivado\\yolov5_accel\\yolov5_accel.srcs\\DDR_init.txt"

) (

    // input

    input ui_clk,

    input ui_rst,



    input ddr_start,

    input ddr_rdy,

    input ddr_wdf_data_rdy,

    input ddr_wr_finish,



    // output

    output reg [           2:0] ddr_cmd,

    output reg                  ddr_cmd_valid = 1'b0,

    output     [  UI_WIDTH-1:0] ddr_wdf_data,

    output reg                  ddr_wdf_data_valid,

    output reg [ADDR_WIDTH-1:0] ddr_base_addr,

    output reg [           9:0] ddr_size,



    (* MAX_FANOUT = 500 *) output reg init_done = 1'b0

);



  // `default_nettype none



  // ״̬������

  localparam STATE_RESET = 4'd0, STATE_IDLE = 4'd1, STATE_START = 4'd2, STATE_WRITE = 4'd3, STATE_DONE = 4'd4;



  // ��������

  localparam CMD_WRITE = 3'd0, CMD_READ = 3'd1, CMD_IDLE = 3'd2;



  reg  [         3:0] state;

  reg  [         3:0] next_state;



  reg  [         7:0] init_addr;

  wire [UI_WIDTH-1:0] init_data;

  ddr_init_data ddr_init_data_inst (

      .clka (ui_clk),     // input wire clka

      .addra(init_addr),  // input wire [7 : 0] addra

      .douta(init_data)   // output wire [511 : 0] douta

  );

  assign ddr_wdf_data = init_data;



  // signal delay 1 clk for detecting posedge of test start triger

  reg ddr_start_1d;

  always @(posedge ui_clk) begin

    ddr_start_1d <= ddr_start;

  end



  // ״̬��

  always @(posedge ui_clk or posedge ui_rst) begin

    if (ui_rst) begin

      state <= STATE_RESET;

    end

    else begin

      state <= next_state;

    end

  end



  always @(*) begin

    case (state)

      STATE_RESET: begin

        next_state = STATE_IDLE;

      end



      STATE_IDLE: begin

        if (ddr_start_1d) begin  //��������

          next_state = STATE_START;

        end

        else begin

          next_state = STATE_IDLE;

        end

      end



      STATE_START: begin

        if (ddr_rdy == 1'b1) begin

          next_state = STATE_WRITE;

        end

      end



      STATE_WRITE: begin

        if (ddr_wr_finish) begin

          next_state = STATE_DONE;

        end

        else begin

          next_state = STATE_WRITE;

        end

      end



      STATE_DONE: begin

        next_state = STATE_DONE;

      end



      default: begin

        next_state = STATE_IDLE;

      end

    endcase

  end



  // �����źź���������

  always @(posedge ui_clk) begin

    case (state)

      STATE_RESET: begin

        ddr_cmd            <= CMD_IDLE;

        ddr_cmd_valid      <= 1'b0;

        ddr_wdf_data_valid <= 1'b0;

        ddr_base_addr      <= {ADDR_WIDTH{1'b0}};

        ddr_size           <= 10'd0;

        init_done          <= 1'b0;

        init_addr          <= 0;

      end



      STATE_IDLE: begin

        ddr_cmd       <= CMD_IDLE;

        ddr_cmd_valid <= 1'b0;

        ddr_base_addr <= BASE_ADDR;

        ddr_size      <= INIT_SIZE;

      end



      STATE_START: begin

        if (ddr_rdy == 1'b1) begin

          ddr_cmd       <= CMD_WRITE;

          ddr_cmd_valid <= 1'b1;

          ddr_base_addr <= BASE_ADDR;

          ddr_size      <= INIT_SIZE;

          init_addr     <= 0;

        end

      end



      STATE_WRITE: begin

        ddr_cmd_valid      <= 1'b0;

        if (ddr_wdf_data_rdy) begin

          ddr_wdf_data_valid <= 1'b1;

          if (init_addr < INIT_SIZE - 1) begin

            init_addr <= init_addr + 1;

          end

        end

    `ifdef SIMULATION

        else begin

          ddr_wdf_data_valid <= 1'b0; 

          if (ddr_wdf_data_valid && init_addr < INIT_SIZE - 1) begin

            init_addr <= init_addr - 1;

          end

        end

    `endif

      end



      STATE_DONE: begin

        ddr_cmd            <= CMD_IDLE;

        ddr_wdf_data_valid <= 1'b0;

        ddr_cmd_valid      <= 1'b0;

        init_done          <= 1'b1;

      end

    endcase

  end



  // `default_nettype wire

endmodule

