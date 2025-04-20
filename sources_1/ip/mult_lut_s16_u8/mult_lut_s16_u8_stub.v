// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 19 00:20:00 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_lut_s16_u8/mult_lut_s16_u8_stub.v
// Design      : mult_lut_s16_u8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module mult_lut_s16_u8(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[15:0],B[7:0],CE,P[23:0]" */;
  input CLK;
  input [15:0]A;
  input [7:0]B;
  input CE;
  output [23:0]P;
endmodule
