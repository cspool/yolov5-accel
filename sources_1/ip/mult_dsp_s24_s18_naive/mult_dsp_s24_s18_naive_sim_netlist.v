// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 20 20:05:49 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_dsp_s24_s18_naive -prefix
//               mult_dsp_s24_s18_naive_ mult_dsp_s24_s18_sim_netlist.v
// Design      : mult_dsp_s24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
TVrZueiDiOsqte2J/4LyKvwwhoW+mDZKieokytdfhp5+uCyCtNAlCs729aDBZ25xOdhIryqHu3hu
TDuqxaVobPJ12sLIAiC+xq63YfZDW30chShFkaclFZhxj5wzfiljPSFNRroufaW/Np/XOYq/P4yz
3KhD2D2sklgpf5SbXFJFzlo9VH+XmcqI3E95n3Ub1TuATzBjheMTOxvGRX+oAdDlQRAti9VvR9v/
uE9FN1b2KiVH5WrwlrPxRE3AkXiowruoCWBCLceeZkV5Lgiwww+IuYyj3s8r5aw3mGAFVO+7+LFZ
nJRboWbEKInufpor6DG0tirB6gHjj+WDAOuh+A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V+F8hWd6Axe1wvW/SNhezExA5D680S/GQKmHVGELWfWs6HGrWrTdk7mRqvJCkR++g2ni4Vl16wyv
01tYWflk2O+rXQibMH7OWopG4iUlb53nc+ydT981HhWHdfdhZ2rEOqfKMGMf/NxStGNA8+QFxOE7
X4Op/r1mmXWxEtDg6/kh7o5MJHqlThKYOAwH8jjYExzKmy+yGur/+vQyKZaf+rS8TB2LcZWVpOHR
SrJOc00yJIy8p9S1BvmkVqXL3uck9uwcps/iJ4B5azHUdHy5LR2yZCNJtiYdbLIgR4t5TH/GMSsR
9Qwkn2B+54F7c0cPnVI4UjMme5SlxPlbOyHXoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
eJ3vSm+8ss6byl8=
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
