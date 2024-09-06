// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Sep  6 15:27:02 2024
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [42:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "25" *) 
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
  (* C_OUT_HIGH = "42" *) 
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "25" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "42" *) 
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
  input [24:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [42:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [24:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [42:0]P;
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
  (* C_A_WIDTH = "25" *) 
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
  (* C_OUT_HIGH = "42" *) 
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
Ipm/y0+SrMfnrrilU0FCFoKkZZwk+itizJsTvYMtQOcUUZDk5+2ZGWzwN7evO5RHk74vXgyYx0iS
yyea66g79lgzQ+cUeST88YBA5+kgIpHszlSK/SRvXsSOqoZxPjeGVE84MyW4hOk7HbW3p6fx79Ng
ga7Vnx13Qo+uhTBly09bqy7CD77vDTS+c/Zi/cf8xn18H+jzkdu8FMpebOanVA1hwUb89OPXm122
iStprjcQGyOfQteghl1FKVHUzVqn46D8Pt2HPuWhBIjytOHScrXanT2T2C9O5G0/3WvV2TuyeIoi
KDTlAMJMJsP3km+1Vgdx/b84hT2eteHBXe1MqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ApJ30Z4O2MGsHPd+OwabDVfdHRp0YuSeFgw0HiPBvdbmGVyWzgS7rHXkBfiLbrHmdybNJ49HLUj+
kBur4eRsax0M2dA/weMJ0+d2KchPDb6XFchn/GKc+SW1yjBKpH/Vbfn8jCUMWiB50VVx4rafnzlF
DVMBpYfujizyjfXfc319bJJuPKOFDc8eT7+XByh8Jc+R97YAVg04skgtETcER3GjBkq4XE343hId
UmMEg1v20IoXTxohRbzhVUmhq6XNq9RzCOEOFoW1vtAgsCoTza0C6f1GXGhuOeU3KCpPMw+HGgUU
J13V7UKa1laW1iY+N0o1guoxw/ukt3f0gght2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
ecY8uD5E4lc2
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
