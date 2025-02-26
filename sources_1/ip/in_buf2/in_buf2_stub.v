// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 26 19:40:57 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top in_buf2 -prefix
//               in_buf2_ in_buf3_stub.v
// Design      : in_buf3
// Purpose     : Stub declaration of top-level module interface
// Device      : xq7vx690trf1761-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module in_buf2(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[11:0],dina[511:0],clkb,enb,addrb[11:0],doutb[511:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [11:0]addra;
  input [511:0]dina;
  input clkb;
  input enb;
  input [11:0]addrb;
  output [511:0]doutb;
endmodule
