// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 19 21:12:44 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/uint24_int16_mult_dsp/uint24_int16_mult_dsp_sim_netlist.v
// Design      : uint24_int16_mult_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uint24_int16_mult_dsp,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module uint24_int16_mult_dsp
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;

  wire [23:0]A;
  wire [15:0]B;
  wire CLK;
  wire [39:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  uint24_int16_mult_dsp_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "39" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module uint24_int16_mult_dsp_mult_gen_v12_0_14
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
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
  uint24_int16_mult_dsp_mult_gen_v12_0_14_viv i_mult
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
SAftlB2FsCHaHJMcBbTjkZVaek+cbg3fzC1rAsAe0/dKjTrHp10mmDiOUUmRxZIPuKqgBu6fPuTC
ctvWvPoZpJKZiJXgQ5camX/Bq9VCM7MHFUuZICjVssU0aY5x+HiIqmpBjStjYAKg2TI8Y9T5XNkv
kDdstN9fcCnKUbUMXxOIE2xCg/xUukUcPxPYuA2a/sJVsKbvNBX2Npj+g0vI6FmdIwC/zfSvBJmD
0bBvqJiIPa7wi5e7gtp7XeewLWxE+L0ZrB8PwhGusE+XKx9GGHJUXI4+UKLjXvch59ujweqm/5sW
zzjMnQlkiH8UwHRmTnkc1SsXjzF83vjvZe/AkQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OWm6YN17sULWxh6VSZuag3KDYrLCpAb8N2s8IfilMspi+6MGp76/+AumvoSDWrVJVyjLPdfw7ztL
kCbDRt39KBr3/U885oRSy2BFQpUC1HunLVYnwFXpMRlykycf0NeZSLccuvlz1KPsMjk2n994uG3f
b5bjyVgZ70z5y+fg+O+1IZ36Bxp7m5vI53B2faY4YZgRb4lx2lm1gHCR7+1os1uRPNKsN9/fGnkz
A/txZgN2lTZ0U1K/OOdxGVGrw36Rpg93fmuqnpUG2ivCmo3efEzesvrnmBCogUhm/sQnWG23K4we
fU4FCYrn+7E9mfqhxyR9kSQNqzmO7Wxls+oxTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7296)
`pragma protect data_block
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
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
