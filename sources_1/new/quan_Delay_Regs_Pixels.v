`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/17 13:08:40
// Design Name: 
// Module Name: quan_Delay_Regs_Pixels
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


module quan_Delay_Regs_Pixels (

    clk,
    reset,
    en,

    re_row_pixels,

    delay_row_pixels
);
  parameter row_num = 16;
  parameter column_num = 16;
  parameter pixels_in_row = 32;

  input clk, reset, en;

  input [pixels_in_row*8-1:0] re_row_pixels;

  output reg [column_num*16-1:0] delay_row_pixels;

  reg [16 -1 : 0] col_16_regs[ (row_num-1) -1:0];
  reg [16 -1 : 0] col_15_regs[ (row_num-2) -1:0];
  reg [16 -1 : 0] col_14_regs[ (row_num-3) -1:0];
  reg [16 -1 : 0] col_13_regs[ (row_num-4) -1:0];
  reg [16 -1 : 0] col_12_regs[ (row_num-5) -1:0];
  reg [16 -1 : 0] col_11_regs[ (row_num-6) -1:0];
  reg [16 -1 : 0] col_10_regs[ (row_num-7) -1:0];
  reg [16 -1 : 0] col_9_regs [ (row_num-8) -1:0];
  reg [16 -1 : 0] col_8_regs [ (row_num-9) -1:0];
  reg [16 -1 : 0] col_7_regs [(row_num-10) -1:0];
  reg [16 -1 : 0] col_6_regs [(row_num-11) -1:0];
  reg [16 -1 : 0] col_5_regs [(row_num-12) -1:0];
  reg [16 -1 : 0] col_4_regs [(row_num-13) -1:0];
  reg [16 -1 : 0] col_3_regs [(row_num-14) -1:0];
  reg [16 -1 : 0] col_2_regs [(row_num-15) -1:0];

  genvar i;

  //col 16
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_16_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_16_regs[0] <= re_row_pixels[((16-1)*16)+:16];
    end else begin
      col_16_regs[0] <= col_16_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 1; i = i + 1) begin : col_16_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_16_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_16_regs[i] <= col_16_regs[i-1];
        end else begin
          col_16_regs[i] <= col_16_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(16-1)*16+:16] = col_16_regs[14];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(16-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(16-1)*16+:16] <= col_16_regs[14];
    end else begin
      delay_row_pixels[(16-1)*16+:16] <= delay_row_pixels[(16-1)*16+:16];
    end
  end

  //col 15
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_15_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_15_regs[0] <= re_row_pixels[((15-1)*16)+:16];
    end else begin
      col_15_regs[0] <= col_15_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 2; i = i + 1) begin : col_15_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_15_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_15_regs[i] <= col_15_regs[i-1];
        end else begin
          col_15_regs[i] <= col_15_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(15-1)*16+:16] = col_15_regs[13];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(15-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(15-1)*16+:16] <= col_15_regs[13];
    end else begin
      delay_row_pixels[(15-1)*16+:16] <= delay_row_pixels[(15-1)*16+:16];
    end
  end
  //col 14
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_14_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_14_regs[0] <= re_row_pixels[((14-1)*16)+:16];
    end else begin
      col_14_regs[0] <= col_14_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 3; i = i + 1) begin : col_14_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_14_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_14_regs[i] <= col_14_regs[i-1];
        end else begin
          col_14_regs[i] <= col_14_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(14-1)*16+:16] = col_14_regs[12];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(14-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(14-1)*16+:16] <= col_14_regs[12];
    end else begin
      delay_row_pixels[(14-1)*16+:16] <= delay_row_pixels[(14-1)*16+:16];
    end
  end

  //col 13
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_13_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_13_regs[0] <= re_row_pixels[((13-1)*16)+:16];
    end else begin
      col_13_regs[0] <= col_13_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 4; i = i + 1) begin : col_13_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_13_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_13_regs[i] <= col_13_regs[i-1];
        end else begin
          col_13_regs[i] <= col_13_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(13-1)*16+:16] = col_13_regs[11];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(13-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(13-1)*16+:16] <= col_13_regs[11];
    end else begin
      delay_row_pixels[(13-1)*16+:16] <= delay_row_pixels[(13-1)*16+:16];
    end
  end

  //col 12
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_12_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_12_regs[0] <= re_row_pixels[((12-1)*16)+:16];
    end else begin
      col_12_regs[0] <= col_12_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 5; i = i + 1) begin : col_12_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_12_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_12_regs[i] <= col_12_regs[i-1];
        end else begin
          col_12_regs[i] <= col_12_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(12-1)*16+:16] = col_12_regs[10];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(12-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(12-1)*16+:16] <= col_12_regs[10];
    end else begin
      delay_row_pixels[(12-1)*16+:16] <= delay_row_pixels[(12-1)*16+:16];
    end
  end

  //col 11
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_11_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_11_regs[0] <= re_row_pixels[((11-1)*16)+:16];
    end else begin
      col_11_regs[0] <= col_11_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 6; i = i + 1) begin : col_11_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_11_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_11_regs[i] <= col_11_regs[i-1];
        end else begin
          col_11_regs[i] <= col_11_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(11-1)*16+:16] = col_11_regs[9];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(11-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(11-1)*16+:16] <= col_11_regs[9];
    end else begin
      delay_row_pixels[(11-1)*16+:16] <= delay_row_pixels[(11-1)*16+:16];
    end
  end

  //col 10
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_10_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_10_regs[0] <= re_row_pixels[((10-1)*16)+:16];
    end else begin
      col_10_regs[0] <= col_10_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 7; i = i + 1) begin : col_10_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_10_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_10_regs[i] <= col_10_regs[i-1];
        end else begin
          col_10_regs[i] <= col_10_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(10-1)*16+:16] = col_10_regs[8];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(10-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(10-1)*16+:16] <= col_10_regs[8];
    end else begin
      delay_row_pixels[(10-1)*16+:16] <= delay_row_pixels[(10-1)*16+:16];
    end
  end

  //col 9
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_9_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_9_regs[0] <= re_row_pixels[((9-1)*16)+:16];
    end else begin
      col_9_regs[0] <= col_9_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 8; i = i + 1) begin : col_9_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_9_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_9_regs[i] <= col_9_regs[i-1];
        end else begin
          col_9_regs[i] <= col_9_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(9-1)*16+:16] = col_9_regs[7];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(9-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(9-1)*16+:16] <= col_9_regs[7];
    end else begin
      delay_row_pixels[(9-1)*16+:16] <= delay_row_pixels[(9-1)*16+:16];
    end
  end

  //col 8
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_8_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_8_regs[0] <= re_row_pixels[((8-1)*16)+:16];
    end else begin
      col_8_regs[0] <= col_8_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 9; i = i + 1) begin : col_8_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_8_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_8_regs[i] <= col_8_regs[i-1];
        end else begin
          col_8_regs[i] <= col_8_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(8-1)*16+:16] = col_8_regs[6];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(8-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(8-1)*16+:16] <= col_8_regs[6];
    end else begin
      delay_row_pixels[(8-1)*16+:16] <= delay_row_pixels[(8-1)*16+:16];
    end
  end

  //col 7
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_7_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_7_regs[0] <= re_row_pixels[((7-1)*16)+:16];
    end else begin
      col_7_regs[0] <= col_7_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 10; i = i + 1) begin : col_7_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_7_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_7_regs[i] <= col_7_regs[i-1];
        end else begin
          col_7_regs[i] <= col_7_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(7-1)*16+:16] = col_7_regs[5];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(7-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(7-1)*16+:16] <= col_7_regs[5];
    end else begin
      delay_row_pixels[(7-1)*16+:16] <= delay_row_pixels[(7-1)*16+:16];
    end
  end

  //col 6
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_6_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_6_regs[0] <= re_row_pixels[((6-1)*16)+:16];
    end else begin
      col_6_regs[0] <= col_6_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 11; i = i + 1) begin : col_6_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_6_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_6_regs[i] <= col_6_regs[i-1];
        end else begin
          col_6_regs[i] <= col_6_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(6-1)*16+:16] = col_6_regs[4];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(6-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(6-1)*16+:16] <= col_6_regs[4];
    end else begin
      delay_row_pixels[(6-1)*16+:16] <= delay_row_pixels[(6-1)*16+:16];
    end
  end

  //col 5
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_5_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_5_regs[0] <= re_row_pixels[((5-1)*16)+:16];
    end else begin
      col_5_regs[0] <= col_5_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 12; i = i + 1) begin : col_5_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_5_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_5_regs[i] <= col_5_regs[i-1];
        end else begin
          col_5_regs[i] <= col_5_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(5-1)*16+:16] = col_5_regs[3];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(5-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(5-1)*16+:16] <= col_5_regs[3];
    end else begin
      delay_row_pixels[(5-1)*16+:16] <= delay_row_pixels[(5-1)*16+:16];
    end
  end

  //col 4
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_4_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_4_regs[0] <= re_row_pixels[((4-1)*16)+:16];
    end else begin
      col_4_regs[0] <= col_4_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 13; i = i + 1) begin : col_4_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_4_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_4_regs[i] <= col_4_regs[i-1];
        end else begin
          col_4_regs[i] <= col_4_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(4-1)*16+:16] = col_4_regs[2];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(4-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(4-1)*16+:16] <= col_4_regs[2];
    end else begin
      delay_row_pixels[(4-1)*16+:16] <= delay_row_pixels[(4-1)*16+:16];
    end
  end

  //col 3
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_3_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_3_regs[0] <= re_row_pixels[((3-1)*16)+:16];
    end else begin
      col_3_regs[0] <= col_3_regs[0];
    end
  end
  generate
    for (i = 1; i < row_num - 14; i = i + 1) begin : col_3_row
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          col_3_regs[i] <= 0;
        end else if (en == 1'b1) begin
          col_3_regs[i] <= col_3_regs[i-1];
        end else begin
          col_3_regs[i] <= col_3_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_row_pixels[(3-1)*16+:16] = col_3_regs[1];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(3-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(3-1)*16+:16] <= col_3_regs[1];
    end else begin
      delay_row_pixels[(3-1)*16+:16] <= delay_row_pixels[(3-1)*16+:16];
    end
  end

  //col 2
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      col_2_regs[0] <= 0;
    end else if (en == 1'b1) begin
      col_2_regs[0] <= re_row_pixels[((2-1)*16)+:16];
    end else begin
      col_2_regs[0] <= col_2_regs[0];
    end
  end

  // assign delay_row_pixels[(2-1)*16+:16] = col_2_regs[0];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(2-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(2-1)*16+:16] <= col_2_regs[0];
    end else begin
      delay_row_pixels[(2-1)*16+:16] <= delay_row_pixels[(2-1)*16+:16];
    end
  end

  //col 1

  // assign delay_row_pixels[(1-1)*16+:16] = re_row_pixels[(1-1)*16+:16];
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_row_pixels[(1-1)*16+:16] <= 0;
    end else if (en == 1'b1) begin
      delay_row_pixels[(1-1)*16+:16] <= re_row_pixels[(1-1)*16+:16];
    end else begin
      delay_row_pixels[(1-1)*16+:16] <= delay_row_pixels[(1-1)*16+:16];
    end
  end


endmodule
