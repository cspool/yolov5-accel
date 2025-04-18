// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:42:19 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/unsigned_mult_dsp_12/unsigned_mult_dsp_12_sim_netlist.v
// Design      : unsigned_mult_dsp_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_mult_dsp_12,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module unsigned_mult_dsp_12
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [32:0]P;

  wire [20:0]A;
  wire [11:0]B;
  wire CLK;
  wire [32:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  unsigned_mult_dsp_12_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "21" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "32" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module unsigned_mult_dsp_12_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [20:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [32:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [20:0]A;
  wire [11:0]B;
  wire CLK;
  wire [32:0]P;
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  unsigned_mult_dsp_12_mult_gen_v12_0_14_viv i_mult
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
SaB9ss4xYPuN+WKNkTGy21nB1TOzBHRBocYeuVEFkuP1pgKWgD3a6tQiLmNQM+3SKWEvSpDvR8RH
ZhZCCcFzCDZUP2hpfXq7o5nueXusgmG7ZXW0wiI3qKuwZPrV7j7Pwe08+v9x+rMwQIA7jXcP6Wrd
KyTBkjsL6S9FKRMjGWQ7Q9v1XmEdHBdoCz85h2l0uensFQVQQFbusMJ9VDz8yYzw2xEbG11UaSrs
LlPJH7+gPHyMtzbl9vsHeDwQUw6ECeFzFeKUDS1bzbkqsjN56mVl7DoOvkNBuVtthYTsS6Morstg
O9JEQhugmG1teQWs0OEOq80hkvkeNu+rRh+Qaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tsbxw82yTM3CAy4xqWoWzG+Pvh3I1TeHmY1es22zBfVbRr/EnkfA1Ivam3g62Ie73XNJPcF7Hk0c
Yd7MrPq3HfLi8CKi6ytc1atF9ff9ZXk9hkLDXex7IHdl1yrwEpPKBMjYolY7RPs9ISDiSeYCXfRP
9Qds2cHlJA0UZPiR+HsQPFcK9O6uMEe1OKkuXGGvX3Svi59ACP1Rbce/b323jOgpyqefznRZuyHK
o+dXXKqynK7txEWDG+ZefUNTkAA56msWyRQ+9yvQUwcBK1FdkEH9FZFYtcJqR4zwJ/t29e16NWur
dtGBYcLvmj/IuwuUDBE0ZCsii8K+RzLrGxrdtw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
OJYbK0cIwfGZ
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
