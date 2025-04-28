`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/28 12:39:06
// Design Name: 
// Module Name: Row_Regs_v3
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


module Row_Regs_v3 (
    reset,
    clk,

    last_row_west_pad,
    last_row_slab_num,
    last_row_east_pad,
    last_row_reg_start_idx,
    last_row_reg_end_idx,
    last_row1_pixels_32,
    last_row2_pixels_32,
    last_row3_pixels_32,
    last_row1_slab_2,
    last_row2_slab_2,
    last_row3_slab_2,
    last_state_valid_row1_adr,
    last_state_valid_row2_adr,
    last_state_valid_row3_adr,

    last_state_conv_pixels_add_end,
    row_regs_1,
    row_regs_2,
    row_regs_3,
    shift_start
);
  parameter shift_regs_num = 70;
  parameter pixels_in_row = 32;

  input reset, clk;
  // input [3:0] k, s;
  input [pixels_in_row * 8 - 1:0] last_row1_pixels_32, last_row2_pixels_32, last_row3_pixels_32;
  input [2 * 8 - 1:0] last_row1_slab_2, last_row2_slab_2, last_row3_slab_2;
  input last_state_conv_pixels_add_end;
  input [3:0] last_row_west_pad, last_row_slab_num, last_row_east_pad;
  input [15:0] last_row_reg_start_idx, last_row_reg_end_idx;
  input last_state_valid_row1_adr, last_state_valid_row2_adr, last_state_valid_row3_adr;
  output reg [shift_regs_num * 8 -1 : 0] row_regs_1;
  output reg [shift_regs_num * 8 -1 : 0] row_regs_2;
  output reg [shift_regs_num * 8 -1 : 0] row_regs_3;
  output reg shift_start;

  wire [shift_regs_num * 8 - 1 : 0] row1_buf;
  wire [shift_regs_num * 8 - 1 : 0] row1_slab_buf;
  wire [shift_regs_num * 8 - 1 : 0] row1_fill;
  wire [shift_regs_num * 8 - 1 : 0] row2_buf;
  wire [shift_regs_num * 8 - 1 : 0] row2_slab_buf;
  wire [shift_regs_num * 8 - 1 : 0] row2_fill;
  wire [shift_regs_num * 8 - 1 : 0] row3_buf;
  wire [shift_regs_num * 8 - 1 : 0] row3_slab_buf;
  wire [shift_regs_num * 8 - 1 : 0] row3_fill;
  wire [shift_regs_num * 2 -1 : 0] ops_1, ops_2, ops_3;

  //001111111...11 && ...
  wire [shift_regs_num * 8 - 1 : 0] row1_buf_mask, row2_buf_mask, row3_buf_mask;
  wire [shift_regs_num * 8 - 1 : 0] row1_buf_pix, row2_buf_pix, row3_buf_pix;
  wire [                      15:0] ops_right_shift;
  wire [                      15:0] ops_left_shift;
  wire [ shift_regs_num * 2 -1 : 0] ops_0_buf_0;

  //row 1 ctrl
  //stage 1
  reg  [shift_regs_num * 8 - 1 : 0] row1_buf_mask_stage_1;
  reg  [shift_regs_num * 8 - 1 : 0] row1_buf_pix_stage_1;
  // assign row1_buf_mask = {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  always @(posedge clk) begin
    row1_buf_mask_stage_1 <= {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  end
  // assign row1_buf_pix = last_row1_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  always @(posedge clk) begin
    row1_buf_pix_stage_1 <= last_row1_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  end

  reg [        3:0] last_slab_num_stage_1;
  reg [2 * 8 - 1:0] last_row1_slab_2_stage_1;
  always @(posedge clk) begin
    last_slab_num_stage_1 <= last_row_slab_num;
  end
  always @(posedge clk) begin
    last_row1_slab_2_stage_1 <= last_row1_slab_2;
  end

  //stage 2
  reg [shift_regs_num * 8 - 1 : 0] row1_buf_stage_2;
  reg [shift_regs_num * 8 - 1 : 0] row1_slab_buf_stage_2;
  // assign row1_buf      = (row1_buf_mask) & (row1_buf_pix);
  always @(posedge clk) begin
    row1_buf_stage_2 <= (row1_buf_mask_stage_1) & (row1_buf_pix_stage_1);
  end
  //slab_num > 0
  //   assign row1_slab_buf = (last_row_slab_num == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row1_slab_2} :  //
  //  (last_row_slab_num == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row1_slab_2[15:8]} : 0;
  always @(posedge clk) begin
    row1_slab_buf_stage_2 <= (last_slab_num_stage_1 == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row1_slab_2_stage_1} :  //
    (last_slab_num_stage_1 == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row1_slab_2_stage_1[15:8]} : 0;
  end

  //stage 3
  // assign row1_fill     = row1_buf | row1_slab_buf;
  //001111111...11 && ...
  assign row1_fill = row1_buf_stage_2 | row1_slab_buf_stage_2;

  //row 2 ctrl
  //stage 1
  reg [shift_regs_num * 8 - 1 : 0] row2_buf_mask_stage_1;
  reg [shift_regs_num * 8 - 1 : 0] row2_buf_pix_stage_1;
  // assign row2_buf_mask = {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  always @(posedge clk) begin
    row2_buf_mask_stage_1 <= {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  end
  assign row2_buf_pix = last_row2_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  always @(posedge clk) begin
    row2_buf_pix_stage_1 <= last_row2_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  end

  reg [2 * 8 - 1:0] last_row2_slab_2_stage_1;
  always @(posedge clk) begin
    last_row2_slab_2_stage_1 <= last_row2_slab_2;
  end

  //stage 2
  reg [shift_regs_num * 8 - 1 : 0] row2_buf_stage_2;
  reg [shift_regs_num * 8 - 1 : 0] row2_slab_buf_stage_2;
  // assign row2_buf      = row2_buf_mask & row2_buf_pix;
  always @(posedge clk) begin
    row2_buf_stage_2 <= row2_buf_mask_stage_1 & row2_buf_pix_stage_1;
  end
  //slab_num > 0
  //   assign row2_slab_buf = (last_row_slab_num == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row2_slab_2} :  //
  //  (last_row_slab_num == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row2_slab_2[15:8]} : 0;
  always @(posedge clk) begin
    row2_slab_buf_stage_2 <= (last_slab_num_stage_1 == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row2_slab_2_stage_1} :  //
    (last_slab_num_stage_1 == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row2_slab_2_stage_1[15:8]} : 0;
  end

  //stage 3
  // assign row2_fill     = row2_buf | row2_slab_buf;
  //001111111...11 && ...
  assign row2_fill = row2_buf_stage_2 | row2_slab_buf_stage_2;

  //row3 ctrl
  //stage 1
  reg [shift_regs_num * 8 - 1 : 0] row3_buf_mask_stage_1;
  reg [shift_regs_num * 8 - 1 : 0] row3_buf_pix_stage_1;
  // assign row3_buf_mask = {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  always @(posedge clk) begin
    row3_buf_mask_stage_1 <= {(shift_regs_num) {8'hff}} >> ((shift_regs_num - last_row_reg_end_idx) << 3);
  end
  // assign row3_buf_pix = last_row3_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  always @(posedge clk) begin
    row3_buf_pix_stage_1 <= last_row3_pixels_32 << ((last_row_reg_start_idx - 1) << 3);
  end

  reg [2 * 8 - 1:0] last_row3_slab_2_stage_1;
  always @(posedge clk) begin
    last_row3_slab_2_stage_1 <= last_row3_slab_2;
  end

  //stage 2
  reg [shift_regs_num * 8 - 1 : 0] row3_buf_stage_2;
  reg [shift_regs_num * 8 - 1 : 0] row3_slab_buf_stage_2;
  // assign row3_buf      = row3_buf_mask & row3_buf_pix;
  always @(posedge clk) begin
    row3_buf_stage_2 <= row3_buf_mask_stage_1 & row3_buf_pix_stage_1;
  end
  //slab_num > 0
  //   assign row3_slab_buf = (last_row_slab_num == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row3_slab_2} :  //
  //  (last_row_slab_num == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row3_slab_2[15:8]} : 0;
  always @(posedge clk) begin
    row3_slab_buf_stage_2 <= (last_slab_num_stage_1 == 4'd2) ? {{(shift_regs_num - 2) {8'h0}}, last_row3_slab_2_stage_1} :  //
    (last_slab_num_stage_1 == 4'd1) ? {{(shift_regs_num - 1) {8'h0}}, last_row3_slab_2_stage_1[15:8]} : 0;
  end

  // stage 3
  // assign row3_fill = row3_buf | row3_slab_buf;
  assign row3_fill = row3_buf_stage_2 | row3_slab_buf_stage_2;

  //ctrl
  //stage 1
  reg [15:0] ops_right_shift_stage_1;
  reg [15:0] ops_left_shift_stage_1;
  // assign ops_right_shift = (shift_regs_num - last_row_reg_end_idx - {12'b0, last_row_east_pad});
  always @(posedge clk) begin
    ops_right_shift_stage_1 <= (shift_regs_num - last_row_reg_end_idx - {12'b0, last_row_east_pad});
  end
  // assign ops_left_shift = (last_row_reg_start_idx - {12'b0, last_row_slab_num} - {12'b0, last_row_west_pad} - 1);
  always @(posedge clk) begin
    ops_left_shift_stage_1 <= (last_row_reg_start_idx - {12'b0, last_row_slab_num} - {12'b0, last_row_west_pad} - 1);
  end

  reg state_conv_pixels_add_end_stage_1;
  always @(posedge clk) begin
    state_conv_pixels_add_end_stage_1 <= last_state_conv_pixels_add_end;
  end

  reg state_valid_row1_adr_stage_1;
  reg state_valid_row2_adr_stage_1;
  reg state_valid_row3_adr_stage_1;
  always @(posedge clk) begin
    state_valid_row1_adr_stage_1 <= last_state_valid_row1_adr;
    state_valid_row2_adr_stage_1 <= last_state_valid_row2_adr;
    state_valid_row3_adr_stage_1 <= last_state_valid_row3_adr;
  end

  //stage 2
  reg [shift_regs_num * 2 -1 : 0] ops_0_buf_0_stage_2;
  // assign ops_0_buf_0 = ({(shift_regs_num) {2'd1}} >> (ops_right_shift << 1)) & ({(shift_regs_num) {2'd1}} << (ops_left_shift << 1));
  always @(posedge clk) begin
    ops_0_buf_0_stage_2 <= ({(shift_regs_num) {2'd1}} >> (ops_right_shift_stage_1 << 1))  //
    & ({(shift_regs_num) {2'd1}} << (ops_left_shift_stage_1 << 1));
  end

  reg state_conv_pixels_add_end_stage_2;
  always @(posedge clk) begin
    state_conv_pixels_add_end_stage_2 <= state_conv_pixels_add_end_stage_1;
  end

  reg state_valid_row1_adr_stage_2;
  reg state_valid_row2_adr_stage_2;
  reg state_valid_row3_adr_stage_2;
  always @(posedge clk) begin
    state_valid_row1_adr_stage_2 <= state_valid_row1_adr_stage_1;
    state_valid_row2_adr_stage_2 <= state_valid_row2_adr_stage_1;
    state_valid_row3_adr_stage_2 <= state_valid_row3_adr_stage_1;
  end

  //stage 3
  // always @(posedge clk) begin
  //   if (reset == 1'b1) begin
  //     shift_start <= 0;  //shift regs en signal(start signal)
  //   end else if (last_state_conv_pixels_add_end == 1'b1) begin
  //     shift_start <= 1;
  //   end else if ((last_state_conv_pixels_add_end == 1'b0) && (shift_start == 1'b1)) begin
  //     shift_start <= 0;
  //   end else begin
  //     shift_start <= shift_start;
  //   end
  // end
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      shift_start <= 0;  //shift regs en signal(start signal)
    end else if (state_conv_pixels_add_end_stage_2 == 1'b1) begin
      shift_start <= 1;
    end else if ((state_conv_pixels_add_end_stage_2 == 1'b0) && (shift_start == 1'b1)) begin
      shift_start <= 0;
    end else begin
      shift_start <= shift_start;
    end
  end
  // assign ops_1 = (last_state_valid_row1_adr == 1'b1) ? ops_0_buf_0 : {(shift_regs_num) {2'd3}};
  // assign ops_2 = (last_state_valid_row2_adr == 1'b1) ? ops_0_buf_0 : {(shift_regs_num) {2'd3}};
  // assign ops_3 = (last_state_valid_row3_adr == 1'b1) ? ops_0_buf_0 : {(shift_regs_num) {2'd3}};
  assign ops_1 = (state_valid_row1_adr_stage_2 == 1'b1) ? ops_0_buf_0_stage_2 : {(shift_regs_num) {2'd3}};
  assign ops_2 = (state_valid_row2_adr_stage_2 == 1'b1) ? ops_0_buf_0_stage_2 : {(shift_regs_num) {2'd3}};
  assign ops_3 = (state_valid_row3_adr_stage_2 == 1'b1) ? ops_0_buf_0_stage_2 : {(shift_regs_num) {2'd3}};

  genvar i;
  //row regs 1
  generate
    for (i = 0; i < shift_regs_num; i = i + 1) begin
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_regs_1[i*8+:8] <= 0;
        end else if (ops_1[i*2+:2] == 2'd0) begin  // stay or first clr
          row_regs_1[i*8+:8] <= (shift_start == 1'b1) ? 0 : row_regs_1[i*8+:8];
        end else if (ops_1[i*2+:2] == 2'd1) begin  // from buffer, pad
          row_regs_1[i*8+:8] <= row1_fill[i*8+:8];
        end else if (ops_1[i*2+:2] == 2'd3) begin  // stay
          row_regs_1[i*8+:8] <= row_regs_1[i*8+:8];
        end else begin
          row_regs_1[i*8+:8] <= row_regs_1[i*8+:8];
        end
      end
    end
  endgenerate

  //row regs 2
  generate
    for (i = 0; i < shift_regs_num; i = i + 1) begin
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_regs_2[i*8+:8] <= 0;
        end else if (ops_2[i*2+:2] == 2'd0) begin  // stay
          row_regs_2[i*8+:8] <= (shift_start == 1'b1) ? 0 : row_regs_2[i*8+:8];
        end else if (ops_2[i*2+:2] == 2'd1) begin  // from buffer, pad
          row_regs_2[i*8+:8] <= row2_fill[i*8+:8];
        end else if (ops_2[i*2+:2] == 2'd3) begin  // stay
          row_regs_2[i*8+:8] <= row_regs_2[i*8+:8];
        end else begin
          row_regs_2[i*8+:8] <= row_regs_2[i*8+:8];
        end
      end
    end
  endgenerate

  //row regs 3
  generate
    for (i = 0; i < shift_regs_num; i = i + 1) begin
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_regs_3[i*8+:8] <= 0;
        end else if (ops_3[i*2+:2] == 2'd0) begin  // stay
          row_regs_3[i*8+:8] <= (shift_start == 1'b1) ? 0 : row_regs_3[i*8+:8];
        end else if (ops_3[i*2+:2] == 2'd1) begin  // from buffer, pad
          row_regs_3[i*8+:8] <= row3_fill[i*8+:8];
        end else if (ops_3[i*2+:2] == 2'd3) begin  // stay
          row_regs_3[i*8+:8] <= row_regs_3[i*8+:8];
        end else begin
          row_regs_3[i*8+:8] <= row_regs_3[i*8+:8];
        end
      end
    end
  endgenerate


endmodule
