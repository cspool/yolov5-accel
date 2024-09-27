// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Sep  7 14:01:23 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/vivado_pros/yolov5_accel_2/yolov5_accel_2.srcs/sources_1/ip/signed_dsp_25_18/signed_dsp_25_18_sim_netlist.v
// Design      : signed_dsp_25_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_dsp_25_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_dsp_25_18
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
  signed_dsp_25_18_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_dsp_25_18_mult_gen_v12_0_14
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
  signed_dsp_25_18_mult_gen_v12_0_14_viv i_mult
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
MVrQUEHJcXxfNqPoAKxD3ZycY2M2IzpYi0WcPYMOvTLgI3v7yUleMpqD9eCjOH/tPp97SXx1LScp
2h0a8XiNWQ78o2bSfsjxw1mv4NUpMNKZW+ypcscV/FlY0cWu7/92eOdxzHpHOUQ2v1VJfQlakIVt
kW0N2UvTim0NHxwrjSgUcJ+nXMZqNvlY1OMkCgce5p1tIGV3YTipFPk6TtfWBbEJpLfuMePRtSGV
LitsCvvBiYsVPA6jdBlxTWZUmelkNLkjz2Wu9eOS4nmC+RbV6m7m7FqfuOYMl9DLmrBkH8NE8NCV
KQ5A/JvNkZVGaoQrC1chs28XuprZGJpKpBnDiQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1CfVbUCAQRjPSKnDLT9Fucs3IesRLo2ke4TuihoxF9k1tQLHJCUONGp09VIeU9vbC1kzRCoi7bwN
cqObiIExjWDS/AuoOaLQnX1GSqaVwfalNj89HPhUI0x5cgCUqJ1jPaLRIOZQcWS7zR5LExbmEqUy
wpc0gaa3wCOnBS8AxzU4xxKcPmEnGDds8Z/P2FWVvrLeCOmEoO3zIbJIqNmPfhfcnETg6kkbAKTl
f27NAMD18dWUsjPafbN2lNaS7L2WFIG4p552hxTIB3DLvIyORe+PSDAOghS2EfpquJuVfhHxQ5gv
TT/aBFE5aO7i2YsBB55W21ZvjmHAnlfpfetiLA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
+nkpotR6C0CQEUEVdBfz3MCSncLR6ms7pA==
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
