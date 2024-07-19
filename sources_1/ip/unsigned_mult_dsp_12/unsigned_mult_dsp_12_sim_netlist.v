// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 16 14:24:06 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel/yolov5_accel.srcs/sources_1/ip/unsigned_mult_dsp_12/unsigned_mult_dsp_12_sim_netlist.v
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
h3+eV/RXTnhfNWd08eNAeelKocfkkWvUm+FEH68KeBBm+ws3vDIB+n7aCVQF5BqzkDlThkcziN29
zD6hOh1tgJXQfZ8ixoLfrWr3Qpuwma4SWf/a/Vh7R1jrwRSW4L3yxUbZytN68EgM3vMnRXalfQR2
ByLwxjaF1dium1dh4FNIzKF9ri808toErGbmhybl1jAa5kZ0ry0meNIz8rcGKjRA3PZLehYTtp3P
R8l7e4Bl5c6FIspucXtiRiDU2THtYbcOat9OndNv2X+c5KgkjVmGx6SI7rLhyi03rK853Kd/7BYO
d3z34npEY9yff2Gn/qX7uzjy/53HK96s1KX9DQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nnn19BYLBBxmUSWsGZp3n97kQxmEpN9PRVvxtG3q4/vgIlP71eyqYDE7NAGy9W1K/+4Yr+PujvsY
DWErE24tNofsuGVDN60S/sw1Q06gSqX73Bbv66yMwc9x0M7fIxwBBWKdSaXtFlkdY3iKwSsdXB7i
UZ3jc8zubz56YAeYU2/HgYMdkTVw3HEM6FcpF53k01gNhYpC+POXMw/Ckg2xDQ/jYYt7TpE5f6hb
UWqiiaIiSogZNQmtYoBxsdiGh5TiK0QiiCAAEfXuD5z7r3OiKQYmneqONLZR/Bh27pnGbCLnVKjv
zBGCv0TabWbJ4wbVH/7ZJB1GRpZqLLK56cPoAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
IWePvMCgT2yp
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
