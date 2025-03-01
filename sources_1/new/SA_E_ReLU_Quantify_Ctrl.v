`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/18 13:43:52
// Design Name: 
// Module Name: SA_E_ReLU_Quantify_Ctrl
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


module SA_E_ReLU_Quantify_Ctrl (
    reset,
    clk,
    re_fm_en,
    mode,
    nif_mult_k_mult_k,

    sa_en,
    sa_reset,
    channel_out_reset,
    channel_out_en,
    sum_mult_E_en,
    product_add_bias_en,
    product_add_bias_reset,
    relu_scale_en,
    mult_array_mode,
    out_sa_row_idx,
    relu_scale_add_end
);
  input reset, clk;
  input re_fm_en;
  input mode;
  input [31:0] nif_mult_k_mult_k;
  // reg mode;
  // reg [31:0] nif_mult_k_mult_k;
  reg         pixels_counter_signal;
  reg  [15:0] pixels_counter;
  wire        loop_pixels_counter_add_begin;
  wire        loop_pixels_counter_add_end;  //the last word of all nif pixels in tile
  output reg sa_en, sa_reset;
  output reg channel_out_reset, channel_out_en;
  output sum_mult_E_en;
  reg sum_mult_E_reset;  //mult E reset is useless
  output reg product_add_bias_en;
  output reg product_add_bias_reset;
  output reg relu_scale_en;
  output [5:0] out_sa_row_idx;  //output channel idx
  output mult_array_mode;
  reg        sa_counter_signal;
  reg  [5:0] sa_counter;
  wire       loop_sa_counter_add_begin;
  wire       loop_sa_counter_add_end;  // the last output channel of sa
  wire       channel_out_add_end;  // the last output channel of sa
  wire       sum_mult_E_add_end;
  reg        product_add_bias_add_end;
  output reg relu_scale_add_end;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      pixels_counter_signal <= 0;
    end else if ((re_fm_en == 1'b1) && (loop_pixels_counter_add_end == 1'b0)) begin
      pixels_counter_signal <= 1;
    end else if (loop_pixels_counter_add_end == 1'b1) begin
      pixels_counter_signal <= 0;
    end else begin
      pixels_counter_signal <= pixels_counter_signal;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      pixels_counter <= 0;
    end else if (loop_pixels_counter_add_begin == 1'b1) begin
      if (loop_pixels_counter_add_end == 1'b1) begin  //last
        pixels_counter <= 0;
      end else begin
        pixels_counter <= pixels_counter + 1;
      end
    end else begin
      pixels_counter <= pixels_counter;
    end
  end
  assign loop_pixels_counter_add_begin = (re_fm_en == 1'b1) || (pixels_counter_signal == 1'b1);
  assign loop_pixels_counter_add_end   = loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sa_counter_signal <= 0;
    end else if (loop_pixels_counter_add_end == 1'b1) begin
      sa_counter_signal <= 1;
    end else if (loop_sa_counter_add_end == 1'b1) begin
      sa_counter_signal <= 0;
    end else begin
      sa_counter_signal <= sa_counter_signal;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sa_counter <= 0;
    end else if (loop_sa_counter_add_begin == 1'b1) begin
      if (loop_sa_counter_add_end == 1'b1) begin  //last
        sa_counter <= 0;
      end else begin
        sa_counter <= sa_counter + 1;
      end
    end else begin
      sa_counter <= sa_counter;
    end
  end
  assign loop_sa_counter_add_begin = (sa_counter_signal == 1'b1) || (loop_pixels_counter_add_end == 1'b1);
  assign loop_sa_counter_add_end   = loop_sa_counter_add_begin && (sa_counter == 6'd32);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      channel_out_en <= 0;
    end else if (sa_counter == 6'd16) begin
      channel_out_en <= 1;
    end else if (loop_sa_counter_add_end == 1'b1) begin  //xxx
      channel_out_en <= 0;
    end else begin
      channel_out_en <= channel_out_en;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      channel_out_reset <= 0;
    end else if (loop_pixels_counter_add_end == 1'b1) begin
      channel_out_reset <= 1;
    end else if (channel_out_reset == 1'b1) begin
      channel_out_reset <= 0;
    end else begin
      channel_out_reset <= channel_out_reset;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sa_en    <= 0;
      sa_reset <= 0;
    end else if (re_fm_en == 1'b1) begin
      sa_en    <= 1;
      sa_reset <= 0;
    end else if (sa_counter == 6'd31) begin  //tile compute end, sa stop
      sa_en    <= 0;
      sa_reset <= 1;
    end else if (sa_reset == 1'b1) begin
      sa_reset <= 0;
    end else begin
      sa_en    <= sa_en;
      sa_reset <= sa_reset;
    end
  end

  assign out_sa_row_idx  = (channel_out_en == 1'b1) ? (sa_counter - 6'd16) : 0;

  assign mult_array_mode = (mode == 1'b1) && (sum_mult_E_en == 1'b1);

  assign sum_mult_E_en   = channel_out_en;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sum_mult_E_reset <= 0;
    end else if (loop_sa_counter_add_end == 1'b1) begin
      sum_mult_E_reset <= 1;
    end else if (sum_mult_E_reset == 1'b1) begin
      sum_mult_E_reset <= 0;
    end else begin
      sum_mult_E_reset <= sum_mult_E_reset;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      product_add_bias_en    <= 0;
      product_add_bias_reset <= 0;
    end else if (product_add_bias_reset == 1'b1) begin
      product_add_bias_reset <= 0;
    end else begin
      product_add_bias_en    <= sum_mult_E_en;
      product_add_bias_reset <= sum_mult_E_reset;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      relu_scale_en <= 0;
    end else begin
      relu_scale_en <= product_add_bias_en;
    end
  end

  assign channel_out_add_end = loop_sa_counter_add_end;
  assign sum_mult_E_add_end  = channel_out_add_end;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      product_add_bias_add_end <= 0;
      relu_scale_add_end       <= 0;
    end else begin
      product_add_bias_add_end <= sum_mult_E_add_end;
      relu_scale_add_end       <= product_add_bias_add_end;
    end
  end

  //conv fifo ctrl
  //mode 1 is ok, mode 0 need optimized

endmodule

