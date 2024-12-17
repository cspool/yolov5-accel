`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2024/08/19 22:33:06
// Design Name:
// Module Name: Shift_Regs
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


module Shift_Regs(
    reset,
    clk,
    //en,

    k,
    s,

    row_regs_1,
    row_regs_2,
    row_regs_3,

    shift_start,

    re_row1_pixels,
    re_row2_pixels,
    re_row3_pixels,

    re_fm_en,
    re_fm_end
  );

  parameter shift_regs_num = 70;
  parameter pixels_in_row = 32;

  input reset,clk;

  input [3:0] k, s;

  // reg [3:0] k, s;

  input [shift_regs_num * 8 -1 : 0] row_regs_1;
  input [shift_regs_num * 8 -1 : 0] row_regs_2;
  input [shift_regs_num * 8 -1 : 0] row_regs_3;
  input shift_start;

  output [pixels_in_row*8-1:0] re_row1_pixels, re_row2_pixels, re_row3_pixels;

  output re_fm_en, re_fm_end;

  reg [shift_regs_num * 8 -1 : 0] shift_regs_1;
  reg [shift_regs_num * 8 -1 : 0] shift_regs_2;
  reg [shift_regs_num * 8 -1 : 0] shift_regs_3;

  wire [shift_regs_num * 2 -1 : 0] ops;

  wire [shift_regs_num * 2 -1 : 0] ops_shift;

  wire [shift_regs_num * 2 -1 : 0] ops_0_buf_0;

  reg [15:0] shift_counter;//0...k-1, from the cycle of loop_shift_add_begin being 1
  wire loop_shift_add_begin, loop_shift_add_end;

  reg state_shift_start;

  // always@(posedge clk)
  // begin
  //   if (reset == 1'b1)
  //   begin //set
  //     k <= k_init;
  //     s <= s_init;
  //   end
  //   else
  //   begin
  //     k <= k;
  //     s <= s;
  //   end
  // end


  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      state_shift_start <= 0;
    end
    else if (shift_start == 1'b1)
    begin
      state_shift_start <= 1; // first valid shift val
    end
    else if ((loop_shift_add_end == 1'b1) && (shift_start == 1'b0))
    begin
      state_shift_start <= 0; // shift end, next should be load
    end
    else
    begin
      state_shift_start <= state_shift_start;
    end
  end

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      shift_counter <= 0;
    end
    else if (loop_shift_add_begin == 1'b1)
    begin
      if (loop_shift_add_end == 1'b1)
      begin
        if (shift_start == 1'b1)
        begin
          shift_counter <= 1; // load is the 1st output
        end
        else
        begin  // all end
          shift_counter <= 0;
        end
      end
      else
      begin
        shift_counter <= shift_counter + 1;
      end
    end
    else
    begin
      shift_counter <= shift_counter;
    end
  end

  assign loop_shift_add_begin = (shift_start == 1'b1) || (state_shift_start == 1'b1);

  assign loop_shift_add_end = loop_shift_add_begin && ((shift_counter) == k);

  assign ops_0_buf_0 = {(shift_regs_num){2'd1}};

  assign ops_shift = {(shift_regs_num){2'd2}};

  assign ops = (shift_start == 1'b1) ?
         ops_0_buf_0:
         ((state_shift_start == 1'b1) && (loop_shift_add_end == 1'b0)) ?
         ops_shift:
         {(shift_regs_num){2'd3}};

  assign re_fm_en = loop_shift_add_begin;

  assign re_fm_end = ((loop_shift_add_end == 1'b1) && (shift_start == 1'b0)) ? 1 : 0;

  genvar i;

  //shift regs 1
  generate
    for (i = 0; i < shift_regs_num - 1; i = i + 1)
    begin
      always@(posedge clk)
      begin
        if (reset == 1'b1)
        begin
          shift_regs_1[i*8 +: 8] <= 0;
        end
        else if (ops[i*2 +: 2] == 2'd1)
        begin // from row regs
          shift_regs_1[i*8 +: 8] <= row_regs_1[i*8 +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd2)
        begin // from reg nearby(shift)
          shift_regs_1[i*8 +: 8] <= shift_regs_1[(i*8+8) +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd3)
        begin // 0
          shift_regs_1[i*8 +: 8] <= 0;
        end
        else
        begin
          shift_regs_1[i*8 +: 8] <= shift_regs_1[i*8 +: 8];
        end
      end
    end
  endgenerate

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      shift_regs_1[69*8 +: 8] <= 0;
    end
    else if (ops[69*2 +: 2] == 2'd1)
    begin
      shift_regs_1[69*8 +: 8] <= row_regs_1[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd2)
    begin // from reg nearby(shift)
      shift_regs_1[69*8 +: 8] <= shift_regs_1[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd3)
    begin // 0
      shift_regs_1[69*8 +: 8] <= 0;
    end
    else
    begin
      shift_regs_1[69*8 +: 8] <= shift_regs_1[69*8 +: 8];
    end
  end

  //shift regs 2
  generate
    for (i = 0; i < shift_regs_num - 1; i = i + 1)
    begin
      always@(posedge clk)
      begin
        if (reset == 1'b1)
        begin
          shift_regs_2[i*8 +: 8] <= 0;
        end
        else if (ops[i*2 +: 2] == 2'd1)
        begin
          shift_regs_2[i*8 +: 8] <= row_regs_2[i*8 +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd2)
        begin // from reg nearby(shift)
          shift_regs_2[i*8 +: 8] <= shift_regs_2[(i*8+8) +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd3)
        begin // 0
          shift_regs_2[i*8 +: 8] <= 0;
        end
        else
        begin
          shift_regs_2[i*8 +: 8] <= shift_regs_2[i*8 +: 8];
        end
      end
    end
  endgenerate

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      shift_regs_2[69*8 +: 8] <= 0;
    end
    else if (ops[69*2 +: 2] == 2'd1)
    begin
      shift_regs_2[69*8 +: 8] <= row_regs_2[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd2)
    begin // from reg nearby(shift)
      shift_regs_2[69*8 +: 8] <= shift_regs_2[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd3)
    begin // 0
      shift_regs_2[69*8 +: 8] <= 0;
    end
    else
    begin
      shift_regs_2[69*8 +: 8] <= shift_regs_2[69*8 +: 8];
    end
  end

  //shift regs 3
  generate
    for (i = 0; i < shift_regs_num - 1; i = i + 1)
    begin
      always@(posedge clk)
      begin
        if (reset == 1'b1)
        begin
          shift_regs_3[i*8 +: 8] <= 0;
        end
        else if (ops[i*2 +: 2] == 2'd1)
        begin
          shift_regs_3[i*8 +: 8] <= row_regs_3[i*8 +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd2)
        begin // from reg nearby(shift)
          shift_regs_3[i*8 +: 8] <= shift_regs_3[(i*8+8) +: 8];
        end
        else if (ops[i*2 +: 2] == 2'd3)
        begin // 0
          shift_regs_3[i*8 +: 8] <= 0;
        end
        else
        begin
          shift_regs_3[i*8 +: 8] <= shift_regs_3[i*8 +: 8];
        end
      end
    end
  endgenerate

  always@(posedge clk)
  begin
    if (reset == 1'b1)
    begin
      shift_regs_3[69*8 +: 8] <= 0;
    end
    else if (ops[69*2 +: 2] == 2'd1)
    begin
      shift_regs_3[69*8 +: 8] <= row_regs_3[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd2)
    begin // from reg nearby(shift)
      shift_regs_3[69*8 +: 8] <= shift_regs_3[69*8 +: 8];
    end
    else if (ops[69*2 +: 2] == 2'd3)
    begin // 0
      shift_regs_3[69*8 +: 8] <= 0;
    end
    else
    begin
      shift_regs_3[69*8 +: 8] <= shift_regs_3[69*8 +: 8];
    end
  end

  genvar j;

  //output
  generate
    for (j = 0; j < pixels_in_row; j = j + 1)
    begin
      assign re_row1_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_1[j*8 +: 8]:
             (s == 4'd2)? shift_regs_1[j*16 +: 8]:
             0;

      assign re_row2_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_2[j*8 +: 8]:
             (s == 4'd2)? shift_regs_2[j*16 +: 8]:
             0;

      assign re_row3_pixels[j*8 +: 8] = (s == 4'd1)? shift_regs_3[j*8 +: 8]:
             (s == 4'd2)? shift_regs_3[j*16 +: 8]:
             0;
    end
  endgenerate


endmodule
