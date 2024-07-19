// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 16 14:22:52 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top signed_mult_dsp_12 -prefix
//               signed_mult_dsp_12_ signed_mac_dsp_12_stub.v
// Design      : signed_mac_dsp_12
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module signed_mult_dsp_12(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[20:0],B[11:0],P[32:0]" */;
  input CLK;
  input [20:0]A;
  input [11:0]B;
  output [32:0]P;
endmodule
