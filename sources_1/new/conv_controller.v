`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/16/2024 04:51:13 PM
// Design Name:
// Module Name: conv_controller
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


module conv_controller (
    clk,
    reset,
    N_chunks,
    conv_start,
    of_div_row_num_ceil,
    conv_load_weights_fin,
    conv_load_input_fin,
    conv_compute_fin,
    conv_store_fin,
    conv_load_weights,
    conv_load_input,
    conv_compute,
    conv_store,
    last_conv_store,
    last_conv_compute
);
  input clk, reset;
  input [15:0] N_chunks;
  input conv_start;
  input [7:0] of_div_row_num_ceil;
  input conv_load_weights_fin;
  input conv_load_input_fin;
  input conv_compute_fin;
  input conv_store_fin;
  output reg conv_load_weights;
  output reg conv_load_input;
  output reg conv_compute;
  output reg conv_store;
  output last_conv_store;
  output last_conv_compute;

  wire conv_load_weights_en;
  wire conv_load_input_en;
  wire conv_compute_en;
  wire conv_store_en;
  //preload FSM
  parameter PRE_IDLE = 4'd0;
  parameter PRE_LW = 4'd1;
  parameter PRE_LI = 4'd2;
  parameter PRE_FIN = 4'd3;
  //com FSM
  parameter COM_IDLE = 4'd0;
  parameter COM = 4'd1;
  parameter COM_STALL = 4'd2;
  parameter COM_FIN = 4'd3;
  //ld FSM
  parameter LD_IDLE = 4'd0;
  parameter LW = 4'd1;
  parameter LI = 4'd2;
  parameter LD_STALL = 4'd3;
  parameter LD_FIN = 4'd4;
  //STR FSM
  parameter STR_IDLE = 4'd0;
  parameter STR = 4'd1;
  parameter STR_STALL = 4'd3;
  parameter STR_FIN = 4'd4;

  //pre fsm
  reg [ 3:0] pre_state;
  reg [ 3:0] next_pre_state;
  reg [15:0] pc;
  reg [15:0] next_pc;
  //com fsm
  reg [ 3:0] com_state;
  reg [ 3:0] next_com_state;
  reg [15:0] nc;
  reg [15:0] next_nc;
  //ld fsm
  reg [ 3:0] ld_state;
  reg [ 3:0] next_ld_state;
  reg [15:0] nl;
  reg [15:0] next_nl;
  //str fsm
  reg [ 3:0] str_state;
  reg [ 3:0] next_str_state;
  reg [15:0] ns;
  reg [15:0] next_ns;

  //pre FSM
  always @(posedge clk) begin
    if (reset) begin
      pre_state <= PRE_IDLE;
      pc        <= 0;
    end else begin
      pre_state <= next_pre_state;
      pc        <= next_pc;
    end
  end
  always @(*) begin
    case (pre_state)
      PRE_IDLE: begin
        if (conv_start) begin
          next_pre_state = PRE_LW;
          next_pc        = 0;
        end else begin
          next_pre_state = PRE_IDLE;
          next_pc        = 0;
        end
      end
      PRE_LW: begin
        if (conv_load_weights_fin) begin
          next_pre_state = PRE_LI;
          next_pc        = 1;
        end else begin
          next_pre_state = PRE_LW;
          next_pc        = 0;
        end
      end
      PRE_LI: begin
        if ((pc >= of_div_row_num_ceil) && (conv_load_input_fin == 1)) begin
          next_pre_state = PRE_FIN;
          next_pc        = pc;
        end else if ((pc < of_div_row_num_ceil) && (conv_load_input_fin == 1)) begin
          next_pre_state = PRE_LI;
          next_pc        = pc + 1;
        end else begin
          next_pre_state = PRE_LI;
          next_pc        = pc;
        end
      end
      PRE_FIN: begin
        next_pre_state = PRE_FIN;
        next_pc        = pc;
      end
      default: begin
        next_pre_state = PRE_IDLE;
        next_pc        = 0;
      end
    endcase
  end
  //computation FSM
  always @(posedge clk) begin
    if (reset) begin
      com_state <= COM_IDLE;
      nc        <= 0;
    end else begin
      com_state <= next_com_state;
      nc        <= next_nc;
    end
  end
  always @(*) begin
    case (com_state)
      COM_IDLE: begin
        if (pre_state == PRE_FIN) begin
          next_com_state = COM;
          next_nc        = 1;
        end else begin
          next_com_state = COM_IDLE;
          next_nc        = 0;
        end
      end
      COM: begin
        if ((nc >= N_chunks) && (conv_compute_fin == 1)) begin
          next_com_state = COM_FIN;
          next_nc        = nc;
        end else if ((nc < N_chunks) && (conv_compute_fin == 1)) begin
          next_com_state = COM_STALL;
          next_nc        = nc;
        end else begin
          next_com_state = COM;
          next_nc        = nc;
        end
      end
      COM_STALL: begin
        if (((nc == 1) && (nl == nc) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))  //cond 1
            || ((nc > 1) && (ns == (nc - 1)) && ((str_state == STR_STALL) || (str_state == STR_FIN)))  //cond 2
            ) begin
          next_com_state = COM;
          next_nc        = nc + 1;
        end else begin
          next_com_state = COM_STALL;
          next_nc        = nc;
        end
      end
      COM_FIN: begin
        next_com_state = COM_FIN;
        next_nc        = nc;
      end
      default: begin
        next_com_state = COM_IDLE;
        next_nc        = 0;
      end
    endcase
  end
  //load FSM
  always @(posedge clk) begin
    if (reset) begin
      ld_state <= LD_IDLE;
      nl       <= 0;
    end else begin
      ld_state <= next_ld_state;
      nl       <= next_nl;
    end
  end
  always @(*) begin
    case (ld_state)
      LD_IDLE: begin
        if ((pre_state == PRE_FIN) && (N_chunks > 1)) begin
          next_ld_state = LW;
          next_nl       = 1;
        end else begin
          next_ld_state = LD_IDLE;
          next_nl       = 0;
        end
      end
      LW: begin
        if (conv_load_weights_fin == 1) begin
          next_ld_state = LI;
          next_nl       = nl;
        end else begin
          next_ld_state = LW;
          next_nl       = nl;
        end
      end
      LI: begin
        if ((nl >= (N_chunks - 1)) && (conv_load_input_fin == 1)) begin
          next_ld_state = LD_FIN;
          next_nl       = nl;
        end else if ((nl < (N_chunks - 1)) && (conv_load_input_fin == 1)) begin
          next_ld_state = LD_STALL;
          next_nl       = nl;
        end else begin
          next_ld_state = LI;
          next_nl       = nl;
        end
      end
      LD_STALL: begin
        if (((nl == 1) && (nc == 1) && ((com_state == COM_STALL) || (com_state == COM_FIN)))  //cond 1
            || ((nl > 1) && (ns == (nl - 1)) && ((str_state == STR_STALL) || (str_state == STR_FIN))  //cond 2 
            && (nc == nl) && ((com_state == COM_STALL) || (com_state == COM_FIN)))  //cond 2
            ) begin
          next_ld_state = LW;
          next_nl       = nl + 1;
        end else begin
          next_ld_state = LD_STALL;
          next_nl       = nl;
        end
      end
      LD_FIN: begin
        next_ld_state = LD_FIN;
        next_nl       = nl;
      end
      default: begin
        next_ld_state = LD_IDLE;
        next_nl       = 0;
      end
    endcase
  end
  //str FSM
  always @(posedge clk) begin
    if (reset) begin
      str_state <= STR_IDLE;
      ns        <= 0;
    end else begin
      str_state <= next_str_state;
      ns        <= next_ns;
    end
  end
  always @(*) begin
    case (str_state)
      STR_IDLE: begin
        if (
          ((N_chunks == 1)
           && ((com_state == COM_STALL) || (com_state == COM_FIN)))
          ||
          ((N_chunks == 2)
           && (nc == 1) && ((com_state == COM_STALL) || (com_state == COM_FIN))
           && (nl == 1) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))
          ||
          ((N_chunks > 2)
           && (nl == 2) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))
        )
        begin
          next_str_state = STR;
          next_ns        = 1;
        end else begin
          next_str_state = STR_IDLE;
          next_ns        = 0;
        end
      end
      STR: begin
        if ((ns >= N_chunks) && (conv_store_fin == 1)) begin
          next_str_state = STR_FIN;
          next_ns        = ns;
        end else if ((ns < N_chunks) && (conv_store_fin == 1)) begin
          next_str_state = STR_STALL;
          next_ns        = ns;
        end else begin
          next_str_state = STR;
          next_ns        = ns;
        end
      end
      STR_STALL: begin
        if ((((ns + 3) <= N_chunks) && (nl == (ns + 2)) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))  //cond 1
            || (((ns + 3) > N_chunks) && (nc == (ns + 1)) && ((com_state == COM_STALL) || (com_state == COM_FIN)))  //cond 2
            ) begin
          next_str_state = STR;
          next_ns        = ns + 1;
        end else begin
          next_str_state = STR_STALL;
          next_ns        = ns;
        end
      end
      STR_FIN: begin
        next_str_state = STR_FIN;
        next_ns        = ns;
      end
      default: begin
        next_str_state = STR_IDLE;
        next_ns        = 0;
      end
    endcase
  end

  //op start signal
  always @(posedge clk) begin
    if (reset) begin
      conv_load_weights <= 0;
    end else if ((conv_load_weights == 1) && (conv_load_weights_en == 0)) begin
      conv_load_weights <= 0;
    end else if (conv_load_weights_en == 1) begin
      conv_load_weights <= 1;
    end else begin
      conv_load_weights <= conv_load_weights;
    end
  end
  assign conv_load_weights_en =
         ((pre_state == PRE_IDLE) && (conv_start == 1'b1))
         ||
         ((ld_state == LD_IDLE) && (pre_state == PRE_FIN) && (N_chunks > 1))
         ||
         ((ld_state == LD_STALL) && (
            ((nl == 1)
             && (nc == 1) && ((com_state == COM_STALL) || (com_state == COM_FIN)))
            ||
            ((nl > 1)
             && (ns == (nl-1)) && ((str_state == STR_STALL) || (str_state == STR_FIN))
             && (nc == nl) && ((com_state == COM_STALL) || (com_state == COM_FIN)))
          ));

  always @(posedge clk) begin
    if (reset) begin
      conv_load_input <= 0;
    end else if ((conv_load_input == 1) && (conv_load_input_en == 0)) begin
      conv_load_input <= 0;
    end else if (conv_load_input_en == 1) begin
      conv_load_input <= 1;
    end else begin
      conv_load_input <= conv_load_input;
    end
  end
  assign conv_load_input_en = ((pre_state == PRE_LW) && (conv_load_weights_fin == 1))  //cond 1
      || ((pre_state == PRE_LI) && (pc < of_div_row_num_ceil) && (conv_load_input_fin == 1))  //cond 2
      || ((ld_state == LW) && (conv_load_weights_fin == 1));  //cond 3

  always @(posedge clk) begin
    if (reset) begin
      conv_compute <= 0;
    end else if ((conv_compute == 1) && (conv_compute_en == 0)) begin
      conv_compute <= 0;
    end else if (conv_compute_en == 1) begin
      conv_compute <= 1;
    end else begin
      conv_compute <= conv_compute;
    end
  end
  assign conv_compute_en = ((com_state == COM_IDLE) && (pre_state == PRE_FIN))  //cond 1
      || ((com_state == COM_STALL) && (  //cond 2-3
      ((nc == 1) && (nl == nc) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))  //cond 2
      || ((nc > 1) && (ns == (nc - 1)) && ((str_state == STR_STALL) || (str_state == STR_FIN)))  //cond 3
      ));

  always @(posedge clk) begin
    if (reset) begin
      conv_store <= 0;
    end else if ((conv_store == 1) && (conv_store_en == 0)) begin
      conv_store <= 0;
    end else if (conv_store_en == 1) begin
      conv_store <= 1;
    end else begin
      conv_store <= conv_store;
    end
  end
  assign conv_store_en =
         ((str_state == STR_IDLE) && (
            ((N_chunks == 1)
             && ((com_state == COM_STALL) || (com_state == COM_FIN)))
            ||
            ((N_chunks == 2)
             && (nc == 1) && ((com_state == COM_STALL) || (com_state == COM_FIN))
             && (nl == 1) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))
            ||
            ((N_chunks > 2)
             && (nl == 2) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))
          ))
         ||
         ((str_state == STR_STALL) && (
            (((ns + 3) <= N_chunks)
             && (nl == (ns + 2)) && ((ld_state == LD_STALL) || (ld_state == LD_FIN)))
            ||
            (((ns + 3) > N_chunks)
             && (nc == (ns+1)) && ((com_state == COM_STALL) || (com_state == COM_FIN)))
          ));
  assign last_conv_store = (ns == N_chunks) && (conv_store == 1'b1);
  assign last_conv_compute = (nc == N_chunks) && (conv_compute == 1'b1);
endmodule
