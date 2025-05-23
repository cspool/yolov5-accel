`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/17 13:08:40
// Design Name: 
// Module Name: quan_Delay_Regs_Weights
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


module quan_Delay_Regs_Weights (
    clk,
    reset,
    en,

    weights,

    delay_weights
);
  parameter row_num = 16;
  parameter column_num = 16;
  parameter pixels_in_row = 32;

  input clk, reset, en;

  input [row_num*8-1:0] weights;

  output reg [row_num*8-1:0] delay_weights;

  reg [8 -1 : 0] row_16_regs[ (column_num-1) -1:0];
  reg [8 -1 : 0] row_15_regs[ (column_num-2) -1:0];
  reg [8 -1 : 0] row_14_regs[ (column_num-3) -1:0];
  reg [8 -1 : 0] row_13_regs[ (column_num-4) -1:0];
  reg [8 -1 : 0] row_12_regs[ (column_num-5) -1:0];
  reg [8 -1 : 0] row_11_regs[ (column_num-6) -1:0];
  reg [8 -1 : 0] row_10_regs[ (column_num-7) -1:0];
  reg [8 -1 : 0] row_9_regs [ (column_num-8) -1:0];
  reg [8 -1 : 0] row_8_regs [ (column_num-9) -1:0];
  reg [8 -1 : 0] row_7_regs [(column_num-10) -1:0];
  reg [8 -1 : 0] row_6_regs [(column_num-11) -1:0];
  reg [8 -1 : 0] row_5_regs [(column_num-12) -1:0];
  reg [8 -1 : 0] row_4_regs [(column_num-13) -1:0];
  reg [8 -1 : 0] row_3_regs [(column_num-14) -1:0];
  reg [8 -1 : 0] row_2_regs [(column_num-15) -1:0];

  genvar i;

  //row 16
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_16_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_16_regs[0] <= weights[((16-1)*8)+:8];
    end else begin
      row_16_regs[0] <= row_16_regs[0];
    end
  end
  generate
    for (i = 1; i < column_num - 1; i = i + 1) begin : row_16_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_16_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_16_regs[i] <= row_16_regs[i-1];
        end else begin
          row_16_regs[i] <= row_16_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(16-1)*8+:8] = row_16_regs[14];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(16-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(16-1)*8+:8] <= row_16_regs[14];
    end else begin
      delay_weights[(16-1)*8+:8] <= delay_weights[(16-1)*8+:8];
    end
  end

  //row 15
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_15_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_15_regs[0] <= weights[((15-1)*8)+:8];
    end else begin
      row_15_regs[0] <= row_15_regs[0];
    end
  end
  generate
    for (i = 1; i < column_num - 2; i = i + 1) begin : row_15_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_15_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_15_regs[i] <= row_15_regs[i-1];
        end else begin
          row_15_regs[i] <= row_15_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(15-1)*8+:8] = row_15_regs[13];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(15-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(15-1)*8+:8] <= row_15_regs[13];
    end else begin
      delay_weights[(15-1)*8+:8] <= delay_weights[(15-1)*8+:8];
    end
  end

  //row 14
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_14_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_14_regs[0] <= weights[((14-1)*8)+:8];
    end else begin
      row_14_regs[0] <= row_14_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 3; i = i + 1) begin : row_14_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_14_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_14_regs[i] <= row_14_regs[i-1];
        end else begin
          row_14_regs[i] <= row_14_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(14-1)*8+:8] = row_14_regs[12];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(14-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(14-1)*8+:8] <= row_14_regs[12];
    end else begin
      delay_weights[(14-1)*8+:8] <= delay_weights[(14-1)*8+:8];
    end
  end

  //row 13
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_13_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_13_regs[0] <= weights[((13-1)*8)+:8];
    end else begin
      row_13_regs[0] <= row_13_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 4; i = i + 1) begin : row_13_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_13_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_13_regs[i] <= row_13_regs[i-1];
        end else begin
          row_13_regs[i] <= row_13_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(13-1)*8+:8] = row_13_regs[11];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(13-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(13-1)*8+:8] <= row_13_regs[11];
    end else begin
      delay_weights[(13-1)*8+:8] <= delay_weights[(13-1)*8+:8];
    end
  end

  //row 12
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_12_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_12_regs[0] <= weights[((12-1)*8)+:8];
    end else begin
      row_12_regs[0] <= row_12_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 5; i = i + 1) begin : row_12_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_12_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_12_regs[i] <= row_12_regs[i-1];
        end else begin
          row_12_regs[i] <= row_12_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(12-1)*8+:8] = row_12_regs[10];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(12-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(12-1)*8+:8] <= row_12_regs[10];
    end else begin
      delay_weights[(12-1)*8+:8] <= delay_weights[(12-1)*8+:8];
    end
  end

  //row 11
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_11_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_11_regs[0] <= weights[((11-1)*8)+:8];
    end else begin
      row_11_regs[0] <= row_11_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 6; i = i + 1) begin : row_11_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_11_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_11_regs[i] <= row_11_regs[i-1];
        end else begin
          row_11_regs[i] <= row_11_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(11-1)*8+:8] = row_11_regs[9];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(11-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(11-1)*8+:8] <= row_11_regs[9];
    end else begin
      delay_weights[(11-1)*8+:8] <= delay_weights[(11-1)*8+:8];
    end
  end

  //row 10
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_10_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_10_regs[0] <= weights[((10-1)*8)+:8];
    end else begin
      row_10_regs[0] <= row_10_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 7; i = i + 1) begin : row_10_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_10_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_10_regs[i] <= row_10_regs[i-1];
        end else begin
          row_10_regs[i] <= row_10_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(10-1)*8+:8] = row_10_regs[8];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(10-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(10-1)*8+:8] <= row_10_regs[8];
    end else begin
      delay_weights[(10-1)*8+:8] <= delay_weights[(10-1)*8+:8];
    end
  end

  //row 9
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_9_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_9_regs[0] <= weights[((9-1)*8)+:8];
    end else begin
      row_9_regs[0] <= row_9_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 8; i = i + 1) begin : row_9_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_9_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_9_regs[i] <= row_9_regs[i-1];
        end else begin
          row_9_regs[i] <= row_9_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(9-1)*8+:8] = row_9_regs[7];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(9-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(9-1)*8+:8] <= row_9_regs[7];
    end else begin
      delay_weights[(9-1)*8+:8] <= delay_weights[(9-1)*8+:8];
    end
  end

  //row 8
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_8_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_8_regs[0] <= weights[((8-1)*8)+:8];
    end else begin
      row_8_regs[0] <= row_8_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 9; i = i + 1) begin : row_8_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_8_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_8_regs[i] <= row_8_regs[i-1];
        end else begin
          row_8_regs[i] <= row_8_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(8-1)*8+:8] = row_8_regs[6];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(8-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(8-1)*8+:8] <= row_8_regs[6];
    end else begin
      delay_weights[(8-1)*8+:8] <= delay_weights[(8-1)*8+:8];
    end
  end

  //row 7
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_7_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_7_regs[0] <= weights[((7-1)*8)+:8];
    end else begin
      row_7_regs[0] <= row_7_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 10; i = i + 1) begin : row_7_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_7_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_7_regs[i] <= row_7_regs[i-1];
        end else begin
          row_7_regs[i] <= row_7_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(7-1)*8+:8] = row_7_regs[5];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(7-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(7-1)*8+:8] <= row_7_regs[5];
    end else begin
      delay_weights[(7-1)*8+:8] <= delay_weights[(7-1)*8+:8];
    end
  end

  //row 6
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_6_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_6_regs[0] <= weights[((6-1)*8)+:8];
    end else begin
      row_6_regs[0] <= row_6_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 11; i = i + 1) begin : row_6_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_6_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_6_regs[i] <= row_6_regs[i-1];
        end else begin
          row_6_regs[i] <= row_6_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(6-1)*8+:8] = row_6_regs[4];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(6-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(6-1)*8+:8] <= row_6_regs[4];
    end else begin
      delay_weights[(6-1)*8+:8] <= delay_weights[(6-1)*8+:8];
    end
  end

  //row 5
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_5_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_5_regs[0] <= weights[((5-1)*8)+:8];
    end else begin
      row_5_regs[0] <= row_5_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 12; i = i + 1) begin : row_5_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_5_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_5_regs[i] <= row_5_regs[i-1];
        end else begin
          row_5_regs[i] <= row_5_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(5-1)*8+:8] = row_5_regs[3];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(5-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(5-1)*8+:8] <= row_5_regs[3];
    end else begin
      delay_weights[(5-1)*8+:8] <= delay_weights[(5-1)*8+:8];
    end
  end

  //row 4
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_4_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_4_regs[0] <= weights[((4-1)*8)+:8];
    end else begin
      row_4_regs[0] <= row_4_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 13; i = i + 1) begin : row_4_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_4_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_4_regs[i] <= row_4_regs[i-1];
        end else begin
          row_4_regs[i] <= row_4_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(4-1)*8+:8] = row_4_regs[2];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(4-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(4-1)*8+:8] <= row_4_regs[2];
    end else begin
      delay_weights[(4-1)*8+:8] <= delay_weights[(4-1)*8+:8];
    end
  end

  //row 3
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_3_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_3_regs[0] <= weights[((3-1)*8)+:8];
    end else begin
      row_3_regs[0] <= row_3_regs[0];
    end
  end

  generate
    for (i = 1; i < column_num - 14; i = i + 1) begin : row_3_column
      always @(posedge clk) begin
        if (reset == 1'b1) begin
          row_3_regs[i] <= 0;
        end else if (en == 1'b1) begin
          row_3_regs[i] <= row_3_regs[i-1];
        end else begin
          row_3_regs[i] <= row_3_regs[i];
        end
      end

    end

  endgenerate

  // assign delay_weights[(3-1)*8+:8] = row_3_regs[1];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(3-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(3-1)*8+:8] <= row_3_regs[1];
    end else begin
      delay_weights[(3-1)*8+:8] <= delay_weights[(3-1)*8+:8];
    end
  end

  //row 2
  always @(posedge clk) begin
    if (reset == 1'b1) begin
      row_2_regs[0] <= 0;
    end else if (en == 1'b1) begin
      row_2_regs[0] <= weights[((2-1)*8)+:8];
    end else begin
      row_2_regs[0] <= row_2_regs[0];
    end
  end

  // assign delay_weights[(2-1)*8+:8] = row_2_regs[0];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(2-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(2-1)*8+:8] <= row_2_regs[0];
    end else begin
      delay_weights[(2-1)*8+:8] <= delay_weights[(2-1)*8+:8];
    end
  end

  //col 1
  // assign delay_weights[(1-1)*8+:8] = weights[((1-1)*8)+:8];

  always @(posedge clk) begin
    if (reset == 1'b1) begin
      delay_weights[(1-1)*8+:8] <= 0;
    end else if (en == 1'b1) begin
      delay_weights[(1-1)*8+:8] <= weights[((1-1)*8)+:8];
    end else begin
      delay_weights[(1-1)*8+:8] <= delay_weights[(1-1)*8+:8];
    end
  end

endmodule
