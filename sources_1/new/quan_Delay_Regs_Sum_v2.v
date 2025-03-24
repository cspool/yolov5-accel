`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/24 pe_out_width:28:46
// Design Name: 
// Module Name: quan_Delay_Regs_Sum_v2
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


module quan_Delay_Regs_Sum_v2 (
    clk,
    sum_row,
    delay_sum_row
);
  parameter headroom = 8;
  parameter row_num_in_sa = 16;
  parameter column_num_in_sa = 16;
  parameter pixels_in_row = 32;

  parameter pixel_width_88 = 16 + headroom;
  //parameter pixel_width_18 = 10 + headroom;
  parameter pixel_width_18 = 8 + headroom;

  parameter pe_parallel_pixel_88 = 2;
  parameter pe_parallel_weight_88 = 1;
  parameter pe_parallel_pixel_18 = 2;
  parameter pe_parallel_weight_18 = 2;

  parameter sa_out_width = pixel_width_18 * pe_parallel_pixel_18 * pe_parallel_weight_18 * column_num_in_sa;
  parameter pe_out_width = (pixel_width_18) * pe_parallel_pixel_18 * pe_parallel_weight_18;  // width of 18 is bigger than 88

  input clk;

  input [pe_out_width*column_num_in_sa-1:0] sum_row;

  output reg [pe_out_width*column_num_in_sa-1:0] delay_sum_row;

  reg [pe_out_width -1 : 0] col_16_regs[ (row_num_in_sa-1) -1:0];
  reg [pe_out_width -1 : 0] col_15_regs[ (row_num_in_sa-2) -1:0];
  reg [pe_out_width -1 : 0] col_14_regs[ (row_num_in_sa-3) -1:0];
  reg [pe_out_width -1 : 0] col_13_regs[ (row_num_in_sa-4) -1:0];
  reg [pe_out_width -1 : 0] col_12_regs[ (row_num_in_sa-5) -1:0];
  reg [pe_out_width -1 : 0] col_11_regs[ (row_num_in_sa-6) -1:0];
  reg [pe_out_width -1 : 0] col_10_regs[ (row_num_in_sa-7) -1:0];
  reg [pe_out_width -1 : 0] col_9_regs [ (row_num_in_sa-8) -1:0];
  reg [pe_out_width -1 : 0] col_8_regs [ (row_num_in_sa-9) -1:0];
  reg [pe_out_width -1 : 0] col_7_regs [(row_num_in_sa-10) -1:0];
  reg [pe_out_width -1 : 0] col_6_regs [(row_num_in_sa-11) -1:0];
  reg [pe_out_width -1 : 0] col_5_regs [(row_num_in_sa-12) -1:0];
  reg [pe_out_width -1 : 0] col_4_regs [(row_num_in_sa-13) -1:0];
  reg [pe_out_width -1 : 0] col_3_regs [(row_num_in_sa-14) -1:0];
  reg [pe_out_width -1 : 0] col_2_regs [(row_num_in_sa-15) -1:0];
  genvar i;

  //col pe_out_width
  always @(posedge clk) begin
    col_16_regs[0] <= sum_row[((16-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 1; i = i + 1) begin : col_16_row
      always @(posedge clk) begin
        col_16_regs[i] <= col_16_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(pe_out_width-1)*pe_out_width+:pe_out_width] = col_16_regs[14];

  always @(posedge clk) begin
    delay_sum_row[(16-1)*pe_out_width+:pe_out_width] <= col_16_regs[14];
  end

  //col 15
  always @(posedge clk) begin
    col_15_regs[0] <= sum_row[((15-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 2; i = i + 1) begin : col_15_row
      always @(posedge clk) begin
        col_15_regs[i] <= col_15_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(15-1)*pe_out_width+:pe_out_width] = col_15_regs[13];

  always @(posedge clk) begin
    delay_sum_row[(15-1)*pe_out_width+:pe_out_width] <= col_15_regs[13];
  end
  //col 14
  always @(posedge clk) begin
    col_14_regs[0] <= sum_row[((14-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 3; i = i + 1) begin : col_14_row
      always @(posedge clk) begin
        col_14_regs[i] <= col_14_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(14-1)*pe_out_width+:pe_out_width] = col_14_regs[12];
  always @(posedge clk) begin
    delay_sum_row[(14-1)*pe_out_width+:pe_out_width] <= col_14_regs[12];
  end

  //col 13
  always @(posedge clk) begin
    col_13_regs[0] <= sum_row[((13-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 4; i = i + 1) begin : col_13_row
      always @(posedge clk) begin
        col_13_regs[i] <= col_13_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(13-1)*pe_out_width+:pe_out_width] = col_13_regs[11];
  always @(posedge clk) begin
    delay_sum_row[(13-1)*pe_out_width+:pe_out_width] <= col_13_regs[11];
  end

  //col 12
  always @(posedge clk) begin
    col_12_regs[0] <= sum_row[((12-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 5; i = i + 1) begin : col_12_row
      always @(posedge clk) begin
        col_12_regs[i] <= col_12_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(12-1)*pe_out_width+:pe_out_width] = col_12_regs[10];
  always @(posedge clk) begin
    delay_sum_row[(12-1)*pe_out_width+:pe_out_width] <= col_12_regs[10];
  end

  //col 11
  always @(posedge clk) begin
    col_11_regs[0] <= sum_row[((11-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 6; i = i + 1) begin : col_11_row
      always @(posedge clk) begin
        col_11_regs[i] <= col_11_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(11-1)*pe_out_width+:pe_out_width] = col_11_regs[9];
  always @(posedge clk) begin
    delay_sum_row[(11-1)*pe_out_width+:pe_out_width] <= col_11_regs[9];
  end

  //col 10
  always @(posedge clk) begin
    col_10_regs[0] <= sum_row[((10-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 7; i = i + 1) begin : col_10_row
      always @(posedge clk) begin
        col_10_regs[i] <= col_10_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(10-1)*pe_out_width+:pe_out_width] = col_10_regs[8];
  always @(posedge clk) begin
    delay_sum_row[(10-1)*pe_out_width+:pe_out_width] <= col_10_regs[8];
  end

  //col 9
  always @(posedge clk) begin
    col_9_regs[0] <= sum_row[((9-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 8; i = i + 1) begin : col_9_row
      always @(posedge clk) begin
        col_9_regs[i] <= col_9_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(9-1)*pe_out_width+:pe_out_width] = col_9_regs[7];
  always @(posedge clk) begin
    delay_sum_row[(9-1)*pe_out_width+:pe_out_width] <= col_9_regs[7];
  end

  //col 8
  always @(posedge clk) begin
    col_8_regs[0] <= sum_row[((8-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 9; i = i + 1) begin : col_8_row
      always @(posedge clk) begin
        col_8_regs[i] <= col_8_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(8-1)*pe_out_width+:pe_out_width] = col_8_regs[6];
  always @(posedge clk) begin
    delay_sum_row[(8-1)*pe_out_width+:pe_out_width] <= col_8_regs[6];
  end

  //col 7
  always @(posedge clk) begin
    col_7_regs[0] <= sum_row[((7-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 10; i = i + 1) begin : col_7_row
      always @(posedge clk) begin
        col_7_regs[i] <= col_7_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(7-1)*pe_out_width+:pe_out_width] = col_7_regs[5];
  always @(posedge clk) begin
    delay_sum_row[(7-1)*pe_out_width+:pe_out_width] <= col_7_regs[5];
  end

  //col 6
  always @(posedge clk) begin
    col_6_regs[0] <= sum_row[((6-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 11; i = i + 1) begin : col_6_row
      always @(posedge clk) begin
        col_6_regs[i] <= col_6_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(6-1)*pe_out_width+:pe_out_width] = col_6_regs[4];
  always @(posedge clk) begin
    delay_sum_row[(6-1)*pe_out_width+:pe_out_width] <= col_6_regs[4];
  end

  //col 5
  always @(posedge clk) begin
    col_5_regs[0] <= sum_row[((5-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 12; i = i + 1) begin : col_5_row
      always @(posedge clk) begin
        col_5_regs[i] <= col_5_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(5-1)*pe_out_width+:pe_out_width] = col_5_regs[3];
  always @(posedge clk) begin
    delay_sum_row[(5-1)*pe_out_width+:pe_out_width] <= col_5_regs[3];
  end

  //col 4
  always @(posedge clk) begin
    col_4_regs[0] <= sum_row[((4-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 13; i = i + 1) begin : col_4_row
      always @(posedge clk) begin
        col_4_regs[i] <= col_4_regs[i-1];
      end

    end

  endgenerate

  // assign delay_sum_row[(4-1)*pe_out_width+:pe_out_width] = col_4_regs[2];
  always @(posedge clk) begin
    delay_sum_row[(4-1)*pe_out_width+:pe_out_width] <= col_4_regs[2];
  end

  //col 3
  always @(posedge clk) begin
    col_3_regs[0] <= sum_row[((3-1)*pe_out_width)+:pe_out_width];
  end
  generate
    for (i = 1; i < row_num_in_sa - 14; i = i + 1) begin : col_3_row
      always @(posedge clk) begin
        col_3_regs[i] <= col_3_regs[i-1];
      end
    end

  endgenerate

  // assign delay_sum_row[(3-1)*pe_out_width+:pe_out_width] = col_3_regs[1];
  always @(posedge clk) begin
    delay_sum_row[(3-1)*pe_out_width+:pe_out_width] <= col_3_regs[1];
  end

  //col 2
  always @(posedge clk) begin
    col_2_regs[0] <= sum_row[((2-1)*pe_out_width)+:pe_out_width];
  end

  // assign delay_sum_row[(2-1)*pe_out_width+:pe_out_width] = col_2_regs[0];
  always @(posedge clk) begin
    delay_sum_row[(2-1)*pe_out_width+:pe_out_width] <= col_2_regs[0];
  end

  //col 1

  // assign delay_sum_row[(1-1)*pe_out_width+:pe_out_width] = sum_row[(1-1)*pe_out_width+:pe_out_width];
  always @(posedge clk) begin
    delay_sum_row[(1-1)*pe_out_width+:pe_out_width] <= sum_row[(1-1)*pe_out_width+:pe_out_width];
  end


endmodule

