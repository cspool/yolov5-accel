// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:41 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_lut_24_16/signed_mult_lut_24_16_stub.v
// Design      : signed_mult_lut_24_16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module signed_mult_lut_24_16(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[23:0],B[15:0],CE,P[39:0]" */;
  input CLK;
  input [23:0]A;
  input [15:0]B;
  input CE;
  output [39:0]P;
endmodule
