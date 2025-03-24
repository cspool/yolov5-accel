`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/23 22:29:26
// Design Name: 
// Module Name: quan_CBR_kernel_controller_v5
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


module quan_CBR_kernel_controller_v5 (
    reset,
    clk,
    re_fm_en,
    mode_init,
    nif_mult_k_mult_k_init,
    shadow_pof,

    //for shell ctrl
    // sa_en_pre,
    // sa_reset_pre,
    out_sa_row_idx_pre,
    conv_fifo_add_end_pre,

    //for kernel ctrl
    // core_sa_en_pre,
    // core_sa_reset_pre,
    // core_channel_out_reset_pre,
    // core_channel_out_en_pre,
    core_cell_en_pre,
    // core_cell_reset_pre,
    //sa counter start
    core_cell_output_en_pre,
    // core_channel_out_roll_add_end_pre,
    core_sum_E_recieve_en_pre,
    // core_sum_E_recieve_reset_pre,
    core_sum_mult_E_en_pre,
    core_product_add_bias_en_pre,
    // core_product_add_bias_reset_pre,
    core_relu_scale_en_pre,
    // core_relu_scale_reset_pre,
    core_conv_fifo_en_pre,
    core_mult_array_mode_pre
    // core_out_sa_row_idx_pre
);
  parameter row_num_in_sa = 16;  // how many rows in a sa, row_num

  input reset, clk;
  input re_fm_en;
  input [3:0] mode_init;
  input [31:0] nif_mult_k_mult_k_init;
  input [15:0] shadow_pof;
  wire [ 7:0] shadow_pof_per_core;
  wire [ 1:0] log_pof_per_cell;
  reg  [ 3:0] mode;
  reg  [31:0] nif_mult_k_mult_k;
  reg         pixels_counter_signal;
  reg  [15:0] pixels_counter;
  wire        loop_pixels_counter_add_begin;
  wire        loop_pixels_counter_add_end;  //the last word of all nif pixels in tile

  // output reg sa_en, sa_reset;
  // output core_sa_en_pre;
  // reg core_sa_en_pre0;
  // output reg core_sa_reset_pre;
  // output sa_en_pre;
  // reg sa_en_pre0;
  // output reg sa_reset_pre;
  // output reg core_cell_reset_pre;
  output reg core_cell_en_pre;
  // output reg channel_out_reset, channel_out_en;
  // reg core_channel_out_reset_pre;
  // reg core_channel_out_en_pre;
  output reg core_cell_output_en_pre;
  // output reg core_channel_out_roll_add_end_pre;  // the last output channel of sa
  // output sum_E_recieve_en;
  output reg core_sum_E_recieve_en_pre;
  // output reg sum_E_recieve_reset;
  // output reg core_sum_E_recieve_reset_pre;
  // output reg sum_mult_E_en;
  output reg core_sum_mult_E_en_pre;
  // reg sum_mult_E_reset;  //mult E reset is useless
  // reg core_sum_mult_E_reset_pre;  //mult E reset is useless
  // output reg product_add_bias_en;
  // output reg product_add_bias_reset;
  output reg core_product_add_bias_en_pre;
  // output reg core_product_add_bias_reset_pre;
  // output reg relu_scale_en;
  // output reg relu_scale_reset;
  output reg core_relu_scale_en_pre;
  // output reg core_relu_scale_reset_pre;
  // output reg conv_fifo_en;
  output reg core_conv_fifo_en_pre;
  // output [5:0] out_sa_row_idx;  //output channel idx
  output reg [5:0] out_sa_row_idx_pre;  //output channel idx
  // output reg [5:0] core_out_sa_row_idx_pre;  //output channel idx
  // output mult_array_mode;
  output reg core_mult_array_mode_pre;
  reg        sa_counter_signal;
  reg  [7:0] sa_counter;
  wire       loop_sa_counter_add_begin;
  wire       loop_sa_counter_add_end;  // the last output channel of sa
  // wire       channel_out_add_end;  // the last output channel of sa
  reg        channel_out_add_end_pre;  // the last output channel of sa
  // wire       sum_mult_E_add_end;
  reg        sum_mult_E_add_end_pre;
  // reg        product_add_bias_add_end;
  reg        product_add_bias_add_end_pre;
  // reg        relu_scale_add_end;
  reg        relu_scale_add_end_pre;
  // output reg conv_fifo_add_end;
  output reg conv_fifo_add_end_pre;

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      mode              <= mode_init;
      nif_mult_k_mult_k <= nif_mult_k_mult_k_init;
    end else begin
      mode              <= mode;
      nif_mult_k_mult_k <= nif_mult_k_mult_k;
    end
  end

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
  // assign loop_pixels_counter_add_begin = (pixels_counter_signal == 1'b1);  //add a delay between din and delay_out in delay_regs
  assign loop_pixels_counter_add_end   = loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k + 1);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sa_counter_signal <= 0;
    end else if ((loop_pixels_counter_add_end == 1'b1) || ((sa_counter_signal == 0) && (sa_counter > 0))) begin
      sa_counter_signal <= 1;
      // end else if ((loop_sa_counter_add_end == 1'b1) || ((sa_counter_signal == 1) && (sa_counter >= 6'd15 + 1))) begin
    end else if ((loop_sa_counter_add_end == 1'b1) || ((sa_counter_signal == 1) && (sa_counter >= row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //sa_cnt += 0~15
        + row_num_in_sa - 2 + 1))) begin  //
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
  // assign loop_sa_counter_add_begin = (sa_counter_signal == 1'b1) || (loop_pixels_counter_add_end == 1'b1);
  assign loop_sa_counter_add_begin = (sa_counter_signal == 1'b1);  //1 means cell(0,0) has a valid sum out
  // assign loop_sa_counter_add_end   = loop_sa_counter_add_begin && (sa_counter == 6'd32);
  assign loop_sa_counter_add_end   = (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1  //sa_cnt == 31
 + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
 + row_num_in_sa + shadow_pof_per_core - 2 + 1));


  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_cell_en_pre <= 0;
      // end else if (re_fm_en == 1'b1) begin
    end else if (loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k + 1)) begin  //cell (1,1) finished
      core_cell_en_pre <= 0;  //pixels_counter == nif_k_k + 1 when last core_cell_en_pre is 1
      // end else if (loop_pixels_counter_add_begin && (pixels_counter == 1)) begin  //a delay between delay out and sa in
    end else if (re_fm_en) begin  //a delay between delay out and sa in, but the pipline regs need en before res reg
      core_cell_en_pre <= 1;  //pixels_counter == 2 when core_cell_en_pre = 1
      // end else if (sa_counter == 6'd30) begin  //a cycle before sa_rst
    end else begin
      core_cell_en_pre <= core_cell_en_pre;
    end
  end

  assign log_pof_per_cell = (mode == 0) ? 0 : (mode == 1) ? 1 : 0;
  assign shadow_pof_per_core = ((shadow_pof >> log_pof_per_cell) <= row_num_in_sa)? (shadow_pof >> log_pof_per_cell):
  (((shadow_pof >> log_pof_per_cell) > row_num_in_sa) && ((shadow_pof >> log_pof_per_cell) <= row_num_in_sa + row_num_in_sa))? (shadow_pof >> log_pof_per_cell) - row_num_in_sa:
  (((shadow_pof >> log_pof_per_cell) > row_num_in_sa + row_num_in_sa) && ((shadow_pof >> log_pof_per_cell) <= row_num_in_sa + row_num_in_sa + row_num_in_sa))? (shadow_pof >> log_pof_per_cell) - row_num_in_sa - row_num_in_sa:
  (shadow_pof >> log_pof_per_cell) - row_num_in_sa - row_num_in_sa - row_num_in_sa;


  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_cell_output_en_pre <= 0;
      // end else if (loop_pixels_counter_add_begin && (pixels_counter == nif_mult_k_mult_k + 1)) begin
    end else if (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1 - 2)) begin
      core_cell_output_en_pre <= 1;  //sa_cnt == 31 <===> last valid cell_out_en
      // end else if (loop_sa_counter_add_begin && (sa_counter == 6'd15 + 1 + shadow_pof_per_core)) begin
    end else if (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //sa_cnt += 0~15
        + row_num_in_sa + shadow_pof_per_core - 2 + 1)) begin
      core_cell_output_en_pre <= 0;
    end else begin
      core_cell_output_en_pre <= core_cell_output_en_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      out_sa_row_idx_pre <= 0;
    end else if (loop_sa_counter_add_begin && (sa_counter >= row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //sa_cnt += (0~15)*2
        + row_num_in_sa - 2 + 1)  //delay sum out
        && (sa_counter <= row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
        + row_num_in_sa + shadow_pof_per_core - 1 - 2 + 1)) begin  //add delay before sum out
      // out_sa_row_idx_pre <= (sa_counter - 6'd15);
      out_sa_row_idx_pre <= shadow_pof_per_core + 1 - (sa_counter - (row_num_in_sa * 2 - 1  //sa_cnt == 31
      + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //sa_cnt += (0~15)*2
      + row_num_in_sa - 2));
    end else if (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
        + row_num_in_sa + shadow_pof_per_core - 2 + 1)) begin  //add delay before sum out
      out_sa_row_idx_pre <= 0;
    end else begin
      out_sa_row_idx_pre <= out_sa_row_idx_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_sum_E_recieve_en_pre <= 0;
      // end else if (sa_counter == 6'd15) begin  //a cycle before c_out_en
    end else if (loop_sa_counter_add_begin == 0) begin
      core_sum_E_recieve_en_pre <= 0;
      // end else if ((sa_counter >= 6'd15 + 1) && (sa_counter < 6'd15 + 1 + shadow_pof_per_core)) begin  //add delay before sum out
    end else if (loop_sa_counter_add_begin && (sa_counter >= row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //sa_cnt += (0~15)*2
        + row_num_in_sa - 2 + 1)  //delay sum out
        && (sa_counter <= row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
        + row_num_in_sa + shadow_pof_per_core - 1 - 2 + 1)) begin  //add delay before sum out
      core_sum_E_recieve_en_pre <= 1;
    end else if (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
        + row_num_in_sa + shadow_pof_per_core - 2 + 1)) begin  //add delay before sum out
      core_sum_E_recieve_en_pre <= 0;
    end else begin
      core_sum_E_recieve_en_pre <= core_sum_E_recieve_en_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_sum_mult_E_en_pre <= 0;
    end else begin
      core_sum_mult_E_en_pre <= core_sum_E_recieve_en_pre;
    end
  end

  // assign mult_array_mode  = (mode == 1) && (sum_mult_E_en == 1'b1);
  // assign core_mult_array_mode_pre = (mode == 1) && (core_sum_mult_E_en_pre == 1'b1);

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_mult_array_mode_pre <= 0;
    end else begin
      core_mult_array_mode_pre <= (mode == 1) && (core_sum_E_recieve_en_pre == 1'b1);
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_product_add_bias_en_pre <= 0;
    end else begin
      core_product_add_bias_en_pre <= core_sum_mult_E_en_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_relu_scale_en_pre <= 0;
    end else begin
      core_relu_scale_en_pre <= core_product_add_bias_en_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      core_conv_fifo_en_pre <= 0;
    end else begin
      core_conv_fifo_en_pre <= core_relu_scale_en_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      channel_out_add_end_pre <= 0;
      // end else if (loop_sa_counter_add_begin && (sa_counter == 6'd15 + 1 + shadow_pof_per_core)) begin
    end else if (loop_sa_counter_add_begin && (sa_counter == row_num_in_sa * 2 - 1  //sa_cnt == 31
        + row_num_in_sa * 2 - (shadow_pof_per_core << 1)  //
        + row_num_in_sa + shadow_pof_per_core - 2 + 1)) begin  //add delay before sum out
      channel_out_add_end_pre <= 1;
    end else if (channel_out_add_end_pre == 1) begin
      channel_out_add_end_pre <= 0;
    end else begin
      channel_out_add_end_pre <= channel_out_add_end_pre;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      sum_mult_E_add_end_pre       <= 0;
      product_add_bias_add_end_pre <= 0;
      relu_scale_add_end_pre       <= 0;
      conv_fifo_add_end_pre        <= 0;
    end else begin
      sum_mult_E_add_end_pre       <= channel_out_add_end_pre;
      product_add_bias_add_end_pre <= sum_mult_E_add_end_pre;
      relu_scale_add_end_pre       <= product_add_bias_add_end_pre;
      conv_fifo_add_end_pre        <= relu_scale_add_end_pre;
    end
  end

endmodule



