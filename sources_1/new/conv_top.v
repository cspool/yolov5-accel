`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/12 23:50:40
// Design Name: 
// Module Name: conv_top
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


module conv_top (
    F1_GCLK_40M
);

  parameter DDR_WIDTH = 64;
  parameter UI_WIDTH = DDR_WIDTH * 8;
  parameter ADDR_WIDTH = 29;
  parameter TEST_SIZE = 32;
  parameter RST_CNT = 2000;

  // input
  input F1_GCLK_40M;

  /*
Control flow:
  1. Wait sys reset
  2. test_start for user
  3. test_ready for ddr3 (when state is in STATE_INIT)
  4. test_trig for test (when state is in STATE_Start)
  Waring: Don't have combination loop
*/

  // Internal signals
  reg         rst_n;
  wire        clk_40M;
  wire        clk_150M;
  wire        clk_200M;
  wire        clk_40MHz_locked;
  reg  [15:0] rst_cnt;

  wire        ui_clk;
  wire        ui_rst;

  // Clk wiz
  clk_wiz_0 clk_wiz_40M_inst (
      .clk_out3(clk_200M),
      .clk_out2(clk_150M),
      .clk_out1(clk_40M),
      .locked  (clk_40MHz_locked),
      .clk_in1 (F1_GCLK_40M)
  );

  // Top driver
  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_cnt <= 16'd0;
    end else if (rst_cnt < RST_CNT) begin
      rst_cnt <= rst_cnt + 1'b1;
    end
  end

  always @(posedge clk_40M or negedge clk_40MHz_locked) begin
    if (!clk_40MHz_locked) begin
      rst_n <= 1'b0;
    end else if (rst_cnt > RST_CNT - 100) begin
      rst_n <= 1'b1;
    end else begin
      rst_n <= 1'b0;
    end
  end

  wire         reset;
  //DDR
  wire         ddr_en;  //i
  wire         DDR_en;  //o
  wire         DDR_en_wr;  //o
  wire [511:0] DDR_in;  //o
  wire [ 31:0] DDR_adr;  //o
  wire         DDR_valid;  //i
  wire [511:0] DDR_out;  //i

  quan_CBR_8 quan_CBR_inst (
      .clk   (clk_150M),
      .reset (reset),
      .ddr_en(ddr_en),    //i,1bit

      .DDR_en   (DDR_en),     //o, 1
      .DDR_en_wr(DDR_en_wr),  //o, 1
      .DDR_in   (DDR_in),     //o, 512
      .DDR_adr  (DDR_adr),    //o, 32
      .DDR_valid(DDR_valid),  //i, 1
      .DDR_out  (DDR_out)     //i, 512
  );

  assign reset = ~rst_n;

  vio_0 DDR_vio (
      .clk       (clk_150M),         // input wire clk
      .probe_in0 (DDR_en),           // input wire [0 : 0] probe_in0
      .probe_in1 (DDR_en_wr),        // input wire [0 : 0] probe_in1
      .probe_in2 (DDR_adr),          // input wire [31 : 0] probe_in2
      .probe_in3 (DDR_in[255:0]),    // input wire [255 : 0] probe_in3
      .probe_in4 (DDR_in[511:256]),  // input wire [255 : 0] probe_in4
      .probe_out0(ddr_en),           // output wire [0 : 0] probe_out0
      .probe_out1(DDR_valid),        // output wire [0 : 0] probe_out1
      .probe_out2(DDR_out[255:0]),   // output wire [255 : 0] probe_out2
      .probe_out3(DDR_out[511:256])  // output wire [255 : 0] probe_out3
  );

endmodule
