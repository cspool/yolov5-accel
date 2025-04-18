// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:43:38 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_dsp_25_18/signed_dsp_25_18_sim_netlist.v
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
mCHAkSLZ2MjfB6bLFD1C/XTxEZROy8EcV1JcKYiWQ0K+mc0QScrodz3kf05aIrE+/YyjPBJVDIfw
I7OfLDDuLqgh54zga8B0F6mI6ds7s3sp7aDATtEN/nqvi1IynucP+vE4mWU97xWVV6LIX/rDbeTa
L1sDap/9dKmbV/fUotbqSGtgsq/x8c8uRdW/mBgprjyxQInF5VTs7IrT8nkqgz/udzcy76ZPOVek
/2DFVJpjBDWCOZfMMfpzzE52/4aTvcspqQsRK/b8maWuyY22V4L3MD2O1wZnq/uV4zMOQLgk1s+e
rSdsun0ntIAZDdmpqxH+C4ovTzkL30A8ghbTvg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vp3YlhKmibjOfdbhtxLCZF9FDMpmU2ExP1V4mtrJRtaWbGxGEGgYhLftn4KLvIPumimBydqcdzOf
ZMZD7xed3OQH/vpusnp8DkWuoKCxPcY1bEbWeio2H/OVctU9LqNzIQfFH/2WXhpBlOdpjtHHPLGe
BZWhEr+bSvCydvQ7gSqgP4Xbrxx8hHvxbiKNclQ3OINrJU9ioQTi3NhEOzEvodOzsobQen5ZbJVQ
w9lErxBgnDftRbSSS9eKXnOOXI5sD0R6NwF091Ihkky4FrwaUug4aB6eoP5oisSIRSs8GTxy+U7G
Qt1nNKDl4UFM4BzIffAOP+/9OiVOVWcsbOrRqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
U8a2SsYOEqgQmThrTaRX1BHmT8j3F3vquQ==
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
