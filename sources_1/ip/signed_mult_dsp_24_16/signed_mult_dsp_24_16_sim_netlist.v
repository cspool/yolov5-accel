// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Sep  7 14:01:23 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top signed_mult_dsp_24_16 -prefix
//               signed_mult_dsp_24_16_ signed_dsp_25_18_sim_netlist.v
// Design      : signed_dsp_25_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_dsp_25_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_24_16
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;

  wire [23:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [39:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_24_16_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "39" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_24_16_mult_gen_v12_0_14
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [39:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [39:0]P;
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
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_24_16_mult_gen_v12_0_14_viv i_mult
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
N2bb7fStx8Wkr4SkeJzgcVJiKmkNQZpXWpUOznyWrlhoKjz8xbDNkPdykQqbpoqcaVF86eDR01IR
16ZojXC7cNQXtcy4kctB3dSgi9OlbK/+ofcnhV/+trsx3+4JWr5kk5Zxnbn4HOAEmP0Oo5UkE1Vm
I5619ih3pGTlIMyayg+MgRHrzrjzutiss3VXXAyUEuPSJ6SedyIHuLtu8MX27scO17yy3P4bAgQM
lnl1Hq0/auizc3FfL6mfeDuWch4WP7eJ1cMfaIuhLnPA7WU6R92W4RkbFyyYfk67HE48etkfgD65
cLo1V7KTiMxCtaHts+Ygzd/5I1b1txC19w/e1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3OSTW/TYeFdCTwMLgEfJkaxui4cnbSuO0MOzs4AMTc8gBcaGmGLPUjSZ2GaCtlIjQG/CCD6ER2H/
0xLHCZ0HtzMShulCEylVMDvSXKwyElQWYcRxd9UcuogyDsOJ5Fwiz9cga185TSlVyL+ke4b6hJ8p
UHri8xLsjybsGwDuwldScYef3/SeXd3ZqlF5U9vz/dqWD4IYrj/1XzoMLwW91dFcNg16optU6Uyx
cBbv25USTwrnmati7jNVDeCcvmpCo2k0HfrMvXRkjs6tV97WE2N1fMNDSQpLjkA9VdfjjtVgNeVa
CpidNrcj8MDLz/u9vhoT5zjejHNmbuMZBMFdqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
0b0FJONg8tBHu3QzRMhZq74n
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
