// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:41:01 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp/signed_mult_dsp_sim_netlist.v
// Design      : signed_mult_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp
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
  signed_mult_dsp_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_mult_gen_v12_0_14
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
  signed_mult_dsp_mult_gen_v12_0_14_viv i_mult
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
dIc413vlDqHOyrC2V/vzSdOB6yEgd1McMTQMQvGsyerpvF73tkm+Jg3iYzqTVUjjk3yM1ThkkRuW
RS+bge5a4s56fq7IAswBkf5LZVvkj8LeRbrH/qKAk8czAnjQ+mjnWd8oNhuC/n9QOKe1x2pio8cZ
a7XbzG1JaKXfma4/7w8tZOPeACv4Evty5G8LIogOkNOvK5cvhH5Ych7VwY0JKxS/YMLfl2bVg3BV
lylPRoD0r+uSzFoipKPz8amzh7MlvBWjpCz9tgs8v4gpVKe9/YGa0ADAM81WGKfWViTYdA6V3pvQ
uSU46NBIltrYHwMZJTS9nMUHSd0gLyHVyIHhoQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n6z6ikY1L1gPHfJZYKVXIzwS+CHHLIR8iQQySzSpb9XR6Ktn9QA4ZaVwYC7yudzu1bMRimISTMTW
wH049lJNq89fG3AyVV6l5Yr8FYYf7xZmRBSA9kAUFT+LXHGqTtcBTePr7rOJjUz8F6KGz0isVY4a
UbGC5YDfPZvH5f9oRPH1ZIlpsju5fRv15/DBcWJEflJo/NCTPLQV5p7Vq1ZoJa2nYFHycSsGlJ3b
+7uEpIrSVVgzjdppY2DkU/iguf3OW34+2QG/N2i49GzMhqCc/VHmofj5HTt3gCN8zRyGBo88dtWB
S/KGFUai0B7taLvD8zAzDY5kw/huEu6IkAclvg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
c0U=
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
