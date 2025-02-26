// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 26 19:39:52 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/slab_1/slab_1_stub.v
// Design      : slab_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xq7vx690trf1761-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module slab_1(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[12:0],dina[15:0],clkb,enb,addrb[12:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [12:0]addra;
  input [15:0]dina;
  input clkb;
  input enb;
  input [12:0]addrb;
  output [15:0]doutb;
endmodule
