// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 19 14:22:19 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/accum_dsp_48/accum_dsp_48_stub.v
// Design      : accum_dsp_48
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *)
module accum_dsp_48(B, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[47:0],CLK,SCLR,Q[47:0]" */;
  input [47:0]B;
  input CLK;
  input SCLR;
  output [47:0]Q;
endmodule
