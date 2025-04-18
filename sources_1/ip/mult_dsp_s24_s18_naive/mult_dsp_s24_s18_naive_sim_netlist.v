// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:41:01 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_dsp_s24_s18_naive -prefix
//               mult_dsp_s24_s18_naive_ signed_mult_dsp_sim_netlist.v
// Design      : signed_mult_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18_naive
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CLK;
  wire [41:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
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
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_naive_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_s18_naive_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [23:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [41:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [17:0]B;
  wire CLK;
  wire [41:0]P;
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
  (* C_A_WIDTH = "24" *) 
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
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_naive_mult_gen_v12_0_14_viv i_mult
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
h56AvgEYI7O8hy8s74V6wGk5sjWB3dcXTgWJbS2q75jQPuOl4EQY+V8Zi3zwd6X0KlZQ9S57ZzOZ
RkiFb/pSGlC525F2ClDJNKi1XchSJ5AP/dAWM+RQFsqvSeGGbnPRFk/8SHnk+jF+lJ7u6JrLpR78
yU9sappm9xS3qC8rqyEJcnXdJzHGKYJGkNslXbpqEDtdVJ5mQt/YnN89L9UE3GKzZunLPCWxVxnl
6GJHITrfOcbbr2TrnEXDeqlNndUJAof265Of/QQPhHRmlR+k7giKgod9c/2mte+ZRNssiyl7fUW3
VPj/7F2VSUL6A99KhoPntFKjJpmwoNweKUMd2Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
omQzFPrH7FOgF7CigvAoR2jd36W9Luh4ePn/PafaG/oohop5QMrVHGBErrVoa6gcJqE2zB2qFepz
L3StBLsCGBumBdthd2Hcr6O2iKqlbB7py9SvIfJUy/rKrlat+EDBSjdlMo3slGAk1adiWWc7mcdn
Bh+tOHKQ+/g3OBLaUXj2SQ1oLRUM+Y2PUlMl6RfHrVNwwgvhHfM5ARVj/b58J4Lxd8tECN5Dw+IN
hPlohnZG++sQiHB246RbwkNTZCGlEmz5GF++SBrROvxkiSynsNAid1NOfVQbRsEiCHtNLrMaCzz/
Ba8HhGJ9cX5I/EWpATk1QZVyCg1Uf2Cb5Me97w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
Z6iwNEBb1fl0lFM=
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
