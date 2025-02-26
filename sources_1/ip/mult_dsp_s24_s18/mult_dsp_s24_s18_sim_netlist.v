// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 26 19:36:57 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s24_s18/mult_dsp_s24_s18_sim_netlist.v
// Design      : mult_dsp_s24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xq7vx690trf1761-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  (* C_XDEVICEFAMILY = "qvirtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "qvirtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_s18_mult_gen_v12_0_14
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
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  (* C_XDEVICEFAMILY = "qvirtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
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
Norx42OgTaegg2L5m6X0IotFAczaIOe0QCpDlAhTonMpvtjYG4Kl4GuwAxJ0+YUN7LF5JcTCPx8r
ij7rlg3zcDLk3qrRAdb+0OAtHdRbaZ3NdUBfYGdW1vb/xQybLUiTXdLvyXwzsn6fpJHivKwt5XuG
GPUxgE6/ZJmdEVLPTYfzS8XgCVjQIZK+1h4Hi4VejGAWdtg5JhvLAV1F3L+iF3ejY2N0n1Ctiy5r
3mokyI69Po3I+XdzLMWD2hRxRREWl5LhpOw/V72iuAdgjxDmSMD2xs94MsgxUwbOaEL8bqOiuVD1
4IXTn15q4eCB3fuj/Oolq7ZzeFAdu/SaPscYjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WNwxI9PL8h+Su0lZTXNhkKLtM1G4yUooCtr29gePAGtyqwKruIxk3LbFZH+4ZDMCsiXJMDWM1315
A66cJNTGNUby230+MxrGxnl5W31N+H2G6NHZ5Ee9CNM0d0tlyiLeXOi4O75LWWkwdLqcAGRg8MBY
fLfFpfunUS7ep3dujeERAzDbmSNKBJQav2nXwrRObsz4R5HOsmLC5F2yUPLf1Rz2XbcNegG4lBhJ
/goF2MWewrrBCNFaY32Or4OyI+KQ9iK9e1zooGI61vXHODR2dyoPqYLWBBxnJpKai9e1nGOfPFfT
Jxem5BXOkxoruXWlOfloEnabOoMraIaEjhOMtg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
yma9iKVBxgIi
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
