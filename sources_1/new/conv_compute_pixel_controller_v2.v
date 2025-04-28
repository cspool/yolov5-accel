`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/28 13:35:03
// Design Name: 
// Module Name: conv_compute_pixel_controller_v2
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


module conv_compute_pixel_controller_v2 #(
    parameter pixels_in_row = 32
) (
    input        reset,
    input        clk,
    input [ 3:0] k_init,
    s_init,
    p_init,
    input [15:0] ix_init,
    input [ 3:0] ix_in_2pow_init,
    input [15:0] tile_x_start,
    input [15:0] pox,

    input conv_compute,
    loop_y_add_end,
    ifx_stall,

    output [ 3:0] west_pad,
    slab_num,
    east_pad,
    output [15:0] row_start_idx,
    row_end_idx,
    output [15:0] reg_start_idx,
    reg_end_idx,
    output [15:0] row_slab_start_idx,
    output        valid_adr,
    output        loop_adr1_add_end
);
  reg [15:0] ix;
  reg [ 3:0] ix_in_2pow;
  reg [3:0] k, s, p;
  reg [15:0] ix_mask;
  always @(posedge clk) begin
    if (reset == 1'b1) begin  //set
      ix         <= ix_init;
      ix_in_2pow <= ix_in_2pow_init;
      k          <= k_init;
      s          <= s_init;
      p          <= p_init;
      ix_mask    <= (16'hffff) >> (16 - ix_in_2pow_init);
    end else begin
      ix         <= ix;
      ix_in_2pow <= ix_in_2pow;
      k          <= k;
      s          <= s;
      p          <= p;
      ix_mask    <= ix_mask;
    end
  end

  //conv pixels
  wire [15:0] ix_start;
  wire [15:0] ix_end;
  wire [3:0] left_pad, right_pad, overlap;
  wire [15:0] row_start_fix;

  wire [15:0] row_end;
  wire [15:0] row_end_fix;
  reg  [15:0] reg_from;
  wire [15:0] reg_to;
  reg  [15:0] adr1;
  reg         signal_adr1_add;
  wire        loop_adr1_add_begin;
  reg [3:0] row_length, stall_in_row_counter;

  //conv pixels
  //stage 1
  // ix_start = (ox_start - 1) * s + 1;
  reg [15:0] ix_start_stage_1, ix_start_stage_2;
  // assign ix_start = (s == 4'd1) ? tile_x_start : (s == 4'd2) ? (tile_x_start << 1) - 1 : 0;
  always @(posedge clk) begin
    ix_start_stage_1 <= (s == 4'd1) ? tile_x_start : (s == 4'd2) ? (tile_x_start << 1) - 1 : 0;
    ix_start_stage_2 <= ix_start_stage_1;
  end
  assign ix_start = ix_start_stage_2;

  // ix_end = ix_start + (pox-1) * s + k-1;
  reg [3:0] left_pad_stage_1, left_pad_stage_2;
  // assign left_pad = (tile_x_start == 1) ? {{12'b0}, p} : 0;
  always @(posedge clk) begin
    left_pad_stage_1 <= (tile_x_start == 1) ? {{12'b0}, p} : 0;
    left_pad_stage_2 <= left_pad_stage_1;
  end
  assign left_pad = left_pad_stage_2;

  reg [15:0] ix_end_stage_1, ix_end_stage_2;
  // assign ix_end = (s == 4'd1) ? (tile_x_start + k + pox - 2) : (s == 4'd2) ? ((tile_x_start << 1) + k + (pox << 1) - 4) : 0;
  always @(posedge clk) begin
    ix_end_stage_1 <= (s == 4'd1) ? (tile_x_start + k + pox - 2) : (s == 4'd2) ? ((tile_x_start << 1) + k + (pox << 1) - 4) : 0;
    ix_end_stage_2 <= ix_end_stage_1;
  end
  assign ix_end = ix_end_stage_2;

  reg [3:0] overlap_stage_1, overlap_stage_2;
  // assign overlap = (tile_x_start == 1) ? 0 : {{12'b0}, p};
  always @(posedge clk) begin
    overlap_stage_1 <= (tile_x_start == 1) ? 0 : {{12'b0}, p};
    overlap_stage_2 <= overlap_stage_1;
  end
  assign overlap = overlap_stage_2;

  reg [15:0] row_start_fix_stage_1, row_start_fix_stage_2;
  reg [15:0] row_start_idx_stage_1, row_start_idx_stage_2;
  // assign row_start_fix = (s == 4'd1) ? tile_x_start - 1 : (s == 4'd2) ? (tile_x_start << 1) - 2 : 0;
  // assign row_start_idx = (s == 4'd1) ? adr1 + tile_x_start - 1 : (s == 4'd2) ? adr1 + (tile_x_start << 1) - 2 : 0;
  always @(posedge clk) begin
    row_start_fix_stage_1 <= (s == 4'd1) ? tile_x_start - 1 : (s == 4'd2) ? (tile_x_start << 1) - 2 : 0;
    row_start_fix_stage_2 <= row_start_fix_stage_1;
  end
  assign row_start_fix = row_start_fix_stage_2;
  always @(posedge clk) begin
    row_start_idx_stage_1 <= (s == 4'd1) ? adr1 + tile_x_start - 1 : (s == 4'd2) ? adr1 + (tile_x_start << 1) - 2 : 0;
    row_start_idx_stage_2 <= row_start_idx_stage_1;
  end
  assign row_start_idx = row_start_idx_stage_2;

  //slab
  reg [15:0] row_slab_start_idx_stage_1, row_slab_start_idx_stage_2;
  // assign row_slab_start_idx = ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd1)) ?  //
  //     adr1 + tile_x_start - 1 - 16'd32 :  //
  //     ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd2)) ?  //
  //     adr1 + (tile_x_start << 1) - 2 - 16'd32 : 16'hffff;
  always @(posedge clk) begin
    row_slab_start_idx_stage_1 <= ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd1)) ?  //
 adr1 + tile_x_start - 1 - 16'd32 :  //
 ((adr1 == 0) && (tile_x_start != 1) && (p > 4'd0) && (s == 4'd2)) ?  //
 adr1 + (tile_x_start << 1) - 2 - 16'd32 : 16'hffff;
    row_slab_start_idx_stage_2 <= row_slab_start_idx_stage_1;
  end
  assign row_slab_start_idx = row_slab_start_idx_stage_2;

  //    assign row_end_idx = row_start_idx + pixels_in_row - 1;
  reg [15:0] row_end_idx_stage_1, row_end_idx_stage_2;
  // assign row_end_idx = (s == 4'd1) ? adr1 + tile_x_start + pixels_in_row - 2 : (s == 4'd2) ? adr1 + (tile_x_start << 1) + pixels_in_row - 3 : 0;
  always @(posedge clk) begin
    row_end_idx_stage_1 <= (s == 4'd1) ? adr1 + tile_x_start + pixels_in_row - 2 : (s == 4'd2) ? adr1 + (tile_x_start << 1) + pixels_in_row - 3 : 0;
    row_end_idx_stage_2 <= row_end_idx_stage_1;
  end
  assign row_end_idx = row_end_idx_stage_2;

  //    assign west_pad = (row_start_idx == row_start_fix)? left_pad: 0;
  reg [3:0] west_pad_stage_1, west_pad_stage_2;
  // assign west_pad = ((adr1 == 0) && (tile_x_start == 1)) ? {{12'b0}, p} : 0;
  always @(posedge clk) begin
    west_pad_stage_1 <= ((adr1 == 0) && (tile_x_start == 1)) ? {{12'b0}, p} : 0;
    west_pad_stage_2 <= west_pad_stage_1;
  end
  assign west_pad = west_pad_stage_2;

  //    assign slab_num = (row_start_idx == row_start_fix)? overlap: 0;
  reg [3:0] slab_num_stage_1, slab_num_stage_2;
  // assign slab_num = ((adr1 == 0) && (tile_x_start != 1)) ? {{12'b0}, p} : 0;
  always @(posedge clk) begin
    slab_num_stage_1 <= ((adr1 == 0) && (tile_x_start != 1)) ? {{12'b0}, p} : 0;
    slab_num_stage_2 <= slab_num_stage_1;
  end
  assign slab_num = slab_num_stage_2;

  //stage 2
  wire [3:0] right_pad_stage_1;
  reg  [3:0] right_pad_stage_2;
  // assign right_pad   = (ix_end > ({{12'b0}, p} + ix)) ? (ix_end - ({{12'b0}, p} + ix)) : 0;
  assign right_pad_stage_1 = (ix_end_stage_1 > ({{12'b0}, p} + ix)) ? (ix_end_stage_1 - ({{12'b0}, p} + ix)) : 0;
  always @(posedge clk) begin
    right_pad_stage_2 <= right_pad_stage_1;
  end
  assign right_pad = right_pad_stage_2;

  wire [15:0] row_end_stage_1;
  reg  [15:0] row_end_stage_2;
  // assign row_end     = ix_end - right_pad - ({12'b0, p} + 1);
  assign row_end_stage_1 = ix_end_stage_1 - right_pad_stage_1 - ({12'b0, p} + 1);
  always @(posedge clk) begin
    row_end_stage_2 <= row_end_stage_1;
  end
  assign row_end = row_end_stage_2;

  wire [15:0] row_end_fix_stage_1;
  reg  [15:0] row_end_fix_stage_2;
  //   assign row_end_fix = (((ix_end - right_pad - {12'b0, p}) & 16'h001f) == 16'h0) ?  //
  //  (ix_end - right_pad - {12'b0, p} - 16'h0002) & ix_mask :  //
  //  (((ix_end - right_pad - {12'b0, p}) & 16'hffe0) + 16'h001f) & ix_mask;
  assign row_end_fix_stage_1 = (((ix_end_stage_1 - right_pad_stage_1 - {12'b0, p}) & 16'h001f) == 16'h0) ?  //
      (ix_end_stage_1 - right_pad_stage_1 - {12'b0, p} - 16'h0002) & ix_mask :  //
      (((ix_end_stage_1 - right_pad_stage_1 - {12'b0, p}) & 16'hffe0) + 16'h001f) & ix_mask;
  always @(posedge clk) begin
    row_end_fix_stage_2 <= row_end_fix_stage_1;
  end
  assign row_end_fix = row_end_fix_stage_2;

  wire [15:0] reg_to_stage_1;
  reg  [15:0] reg_to_stage_2;
  // assign reg_to      = (row_start_idx + pixels_in_row - 1 > row_end) ? (reg_from + row_end - row_start_idx) : (reg_from + pixels_in_row - 1);
  assign reg_to_stage_1 = (row_start_idx_stage_1 + pixels_in_row - 1 > row_end_stage_1) ? (reg_from + row_end_stage_1 - row_start_idx_stage_1) : (reg_from + pixels_in_row - 1);
  always @(posedge clk) begin
    reg_to_stage_2 <= reg_to_stage_1;
  end
  assign reg_to = reg_to_stage_2;

  //stage 3
  // for adr1 in range(0, row_end_min_fix - row_start_fix + 1, pixels_in_row)
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      signal_adr1_add <= 0;
    end else if (conv_compute == 1'b1) begin
      signal_adr1_add <= 1;
    end else if (loop_y_add_end == 1'b1) begin  // all end
      signal_adr1_add <= 0;
    end else begin
      signal_adr1_add <= signal_adr1_add;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      adr1     <= 0;
      reg_from <= p_init + 1;
    end else if (loop_adr1_add_begin == 1'b1) begin
      if (loop_adr1_add_end == 1'b1) begin  // the last adr1 or adr2
        adr1     <= 0;
        reg_from <= ({12'b0, p} + 1);
      end else begin
        adr1     <= adr1 + pixels_in_row;
        reg_from <= reg_to + 1;
      end
    end else begin
      adr1     <= adr1;
      reg_from <= reg_from;
    end
  end

  assign loop_adr1_add_begin = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0);
  // assign loop_adr1_add_end = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0) && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix - row_start_fix));
  assign loop_adr1_add_end   = (signal_adr1_add == 1'b1) && (stall_in_row_counter == 1'b0)  //
 && (ifx_stall == 1'b0) && ((adr1 + pixels_in_row) > (row_end_fix_stage_2 - row_start_fix_stage_2));

  assign valid_adr           = loop_adr1_add_begin;
  assign conv_pixels_add_end = loop_adr1_add_end;

  assign reg_start_idx       = reg_from;
  assign east_pad            = (loop_adr1_add_end == 1'b1) ? right_pad : 0;

  assign reg_end_idx         = reg_to + east_pad;
  // assign reg_end_idx = 
  //   (row_start_idx + pixels_in_row - 1 > row_end)? (
  //   (loop_adr1_add_end == 1'b1) ? (
  //   reg_from + row_end - row_start_idx + right_pad
  //   ):
  //   (
  //   reg_from + row_end - row_start_idx
  //   )
  //   ):
  //   (
  //   (loop_adr1_add_end == 1'b1) ? (
  //   reg_from + pixels_in_row - 1 + right_pad
  //   ):
  //   (
  //   reg_from + pixels_in_row - 1
  //   )
  //   );

  //stall in row
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_length <= 0;
    end else if (conv_compute == 1'b1) begin
      row_length <= 1;
    end else if (loop_adr1_add_begin == 1'b1) begin
      if (loop_adr1_add_end == 1'b1) begin  // the last adr1
        row_length <= 1;
      end else begin
        row_length <= row_length + 1;
      end
    end else begin
      row_length <= row_length;
    end
  end

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      stall_in_row_counter <= 0;
    end else if (loop_adr1_add_begin) begin
      if ((loop_adr1_add_end == 1'b1) && (loop_y_add_end == 1'b1)) begin  // the last pixels word all end
        stall_in_row_counter <= 0;
      end else if ((loop_adr1_add_end == 1'b1) && (loop_y_add_end == 1'b0)) begin
        // stall_in_row_counter <= (k - row_length - 2 - 1); //row regs need extra 2 cycle delay, buf interface need extra 1 cycle
        stall_in_row_counter <= ((k - row_length) >= 2 + 2 + 1) ? (k - row_length - 2 - 1) : 2;
      end else begin
        stall_in_row_counter <= 2;  //3-stage pipeline
      end
    end else if (stall_in_row_counter > 0) begin
      stall_in_row_counter <= stall_in_row_counter - 1;
    end else begin
      stall_in_row_counter <= stall_in_row_counter;
    end
  end
endmodule
