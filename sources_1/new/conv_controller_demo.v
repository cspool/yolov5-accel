`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/08/2025 10:34:46 AM
// Design Name:
// Module Name: conv_controller_demo
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


module conv_controller_demo(
    clk, reset,
    N_chunks,
    conv_start,
    conv_compute_fin,
    conv_store_fin,
    conv_compute,
    conv_store,
    conv_fin
  );
  //specialized for compute control test
  input clk, reset;
  input [15:0] N_chunks;
  input conv_start;
  input conv_compute_fin;
  input conv_store_fin;
  output conv_compute;
  output conv_store;
  output conv_fin;
  reg [15:0] nc, next_nc;
  reg [3:0] current_state, next_state;

  // 定义状态
  parameter IDLE = 4'd0;
  parameter COM = 4'd1;
  parameter STR = 4'd2;
  parameter FIN = 4'd3;
  // 状态转换逻辑
  always @(posedge clk)
  begin
    if (reset)
    begin
      current_state <= IDLE;
      nc <= 0;
    end
    else
    begin
      current_state <= next_state;
      nc <= next_nc;
    end
  end

  //conv_com shoud be a cycle later than conv_start

  // 下一个状态和输出的逻辑
  always @(*)
  begin
    case (current_state)
      IDLE:
      begin
        if (conv_start)
        begin
          next_state = COM;
          next_nc = 1;
        end
        else
        begin
          next_state = IDLE;
          next_nc = 0;
        end
      end
      COM:
      begin
        if (conv_compute_fin)
        begin
          next_state = STR;
          next_nc = nc;
        end
        else
        begin
          next_state = COM;
          next_nc = nc;
        end
      end
      STR:
      begin
        if (conv_store_fin)
        begin
          if (nc < N_chunks)
          begin
            next_state = COM;
            next_nc = nc + 1;
          end
          else
          begin
            next_state = FIN;
            next_nc = nc;
          end
        end
        else
        begin
          next_state = STR;
          next_nc = nc;
        end
      end
      FIN:
      begin
        next_state = IDLE;
        next_nc = 0;
      end
      default:
      begin
        next_state = IDLE;
        next_nc = 0;
      end
    endcase
  end

  assign conv_compute = ((current_state == IDLE) && (conv_start == 1))
         || ((current_state == STR) && (nc < N_chunks) && (conv_store_fin == 1));
  assign conv_store = ((current_state == COM) && (conv_compute_fin == 1));
  assign conv_fin = ((current_state == STR) && (nc >= N_chunks) && (conv_store_fin == 1));
endmodule
