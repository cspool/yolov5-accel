// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:42:46 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_12/signed_mult_dsp_12_sim_netlist.v
// Design      : signed_mult_dsp_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_12,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_12
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

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "0" *) 
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
  signed_mult_dsp_12_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "21" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "32" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_12_mult_gen_v12_0_14
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "0" *) 
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
  signed_mult_dsp_12_mult_gen_v12_0_14_viv i_mult
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
WpNyZyua2PyBc+j3UlXuYLAYTlxSpVfm3wcTlMVmZyC8ksSURtMUAxOaDJvKq+ijeMZ7Q/hR/C4k
GsjOWH+l6paw6h9fKmpIK3A71tCB5wzX0wVv1FjLOCgrWMZPZ2uIQ93OQl8u1g6GWxLjp6krvuDr
l9irkyvvkk9W7+a6mKpqy3xu/g67XiXZu1sWHqh+DU86fbEr1kim1H8RjdwhL5o5mw6iCtoVedY/
aqwa8jvJl0hYp1AUNkOyL3mSXS/gN5p+YnKZJ6PPsOHcy4LlgPVUgJvVj5ze+PDkoKKYi3RhlAgX
RXHXOOn/lLq2LDTZEcuxLKMabSy/uzvr3Q9sQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W4qf5UR+s77CjkSq8c4GGxvXoRLlpiHA7l/nBeG+99O5f1HLA3NdrlmlDT/IftWa4Zk6N3GwwUR/
2rk61zfiYbi8+fOsWf0+rppvf4sHUhqfWr6Iw97OM12bduJYIc66YD81+FZRoR6ygKpYl/QhozNL
E8gE4uINdYisvbEI1hN3CpUUTV6oq4kp0H6q5HIcmZ9L2SdEPyBr/hytfpqara27X+Cj6zlWYzYK
uh3ZCiooa8kqEKxafRzmfSSUMD8vESDV1K4vIaKTtQitvM1S6CM0N2pb+i3G2OkzYmcRn0JPpCJR
Yvm51YSp214+M0eoCCtnnFFmCrs+PpsC378Y0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
eT5Rwtz50uSJ
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
