// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:16:38 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s25_s18/mult_dsp_s25_s18_sim_netlist.v
// Design      : mult_dsp_s25_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s25_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s25_s18
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [42:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "25" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s25_s18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "25" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "42" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s25_s18_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [24:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [42:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [42:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "25" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s25_s18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LxGUXO7CImmLPqmlkm+g9ZKgJi0XT/cItdUKbXCI/wHlgTPzE52tSh9V/lPRUBwkXPFzWl2H3F2v
dBdbKKrCDGcsW4jkkoNYuk/vA1ZpEi2HH+Xlf7u9DOY7/w8lRI6Wcth+p0JUZA3YfNJqGqc7CzY1
qou5TgLA+OaDFgEqi7X91sJEPm1qCfHwtZr7hQY6hx36JYlSQrCwxR4dne8oIJXG00KKejnbZ2XR
tCiF1YFo6YA7wwCreAtDixF8Bxf9Vaf6khhpZRFxLBdtNsShGCG5znZ/YJxcNG4WRmuxGluuRCW9
eDOwf4ZfSYsdgMhnHBGIEcn5EuS20IiTDUlsjw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NV9PByfLi849SbSbCiC03kd4aVbjk24fBcudlzJrUXxyTsSeVbayJ2S7KnGjsFdamIvh8gPcw5uQ
FYuhRRUmf4xHjpc+9Ralv10wvi+tCqJJ9cOtwk3SJ53/o3/oDpJHaQxkzJbXVjB+kUZAAQEs6j1w
nUxn/1TY5v714X134mYrfxhiHDCllJb7X2adxOiYVL95iAhtWRdh+X53l7pxmh5A1nw++Aw3++5y
N11K9fPCW81pDlVdRCgqMuMhDX8WWRZKItM8jCFWxQFdPAxdIJo0BC9jxZbHrgBlUfo+3qDVJ2f+
KOHyBJ99F9HfalGEz0vnCZiU3rAWi48a8cuOxA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
ONg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
