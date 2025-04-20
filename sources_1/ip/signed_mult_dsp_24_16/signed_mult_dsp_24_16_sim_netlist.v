// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:43:38 2025
// Host        : zack running 64-bit major release  (build 9200)
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
RdXV7nQ4TnDwNr+Ew9qKTRaTiZzh3w8Y8b4J7WdMCC2HHmm+lHPAc0RDhhUuATvWX04pUFaFL5fB
Iv4QXm58hMjkIQqDOV3ec5BE+k8/ag0ZGaIZ3YDBLKNO/y1pak8cm4YPiEQTr1icH16BrOSw7+kg
J0qVvPtqDSYwVY3MQ7TEubkN01hL6uwtXFDMrqHJxuQY8UorO64UPEGzU5Lpi533o54DPjVI+R6z
oGapNJXTkukiVn8IaVZit3Jx0wNw4eI5NOQW2MK+vuesqjxd0vsWS3XRYQg93Kp/Jnr0NplvScZh
SsTLacF0nT68oNluZzl5M9nUZZ4zGqtztDi5yA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yDk+Yjc//cp+4HgfufGYpq7kIlowdwpLqEdvaq6QJZ5y8n41vonFgeA2lPBSDeyIz708D7+Z6UGe
/8S/ygXE2Mc8bXJHF6yQK6cIFPJJECaaCrEEdHniT81wqauQYaXYbbzHTRD4TI5WBFNByUUjiBj8
EaynpjXw45Fbb0rYA8o9BmjPnXaDO7HY7DPbbFT8P6ulqBECegxW61HpCIUcQS9v6ZgTBGDcsF/q
toW8lenKciZVI6hx2ODyKuACi9ptafmejJPiWpTQeRDscv1Qojs2eOnJyOVqnLpdgk0UQPuJvyji
JL42PuyE6uKSouupayTMSdaxC0QT5z9a5SQRZg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
s0sTC+hRtHKpdZqTgcNIBbPG
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
