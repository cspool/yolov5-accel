// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:45:27 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s25_s18/mult_dsp_s25_s18_sim_netlist.v
// Design      : mult_dsp_s25_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s25_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s25_s18
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
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
  (* C_HAS_CE = "0" *) 
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
  mult_dsp_s25_s18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "25" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "42" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s25_s18_mult_gen_v12_0_14
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
  (* C_HAS_CE = "0" *) 
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
  mult_dsp_s25_s18_mult_gen_v12_0_14_viv i_mult
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
F+c0y/hVmw5/tZ+wj4+ylf0VTrDQhyc8SAgSaD+nKB+NXEn4TxR9bckJ5pEzNh6rrBGwtf+0Nn2W
3I+Ow8hQP0j08kXVd0SN8UVW7EMLcdMIYUZWz4Rd+uSewlk7lcD46OohdhSTI/BWw9F5moP6CD7x
HJT87fnMdklDSQri/nWCXCIgLtEojCVlMw7sXZw1mbykzAb1zHLYg++1IBwuKMZMDyDDX6ut0GUT
8cjOVuuK6nmCT/+ELVqzNtUC9l1UZKkB7A077EVuHsV6haMUkH3KYSJ3gIPik5FWGXrkKbNbPz8P
ZjhMeXx9FmUDGRSoeP2rfa1+oQXK0kjqrVr2cw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TDFoeQCHlslsCsAmi7AJRgVJQDBhmHjjY6kMumSl62LhQG82omadYnK/r7DnAsjCgmBM+wsmtu6L
G1VaSkbWkaEGtSSSaqA5d5R6EGK5hzkkf576PLYl5fTASr/bFnN/s2B/4lfq3q/i+UJTtbJLPngt
sFh2fXCBfaKcskkYYlxDIp4lqD3Bkj4JcnV7lD08ORLgEgSrLgCOA5dQ/vG9AxL1rGx0dp2U++sG
aHK3uJiDCUEMqDNuiMVGzKMM/X24zmaRvaWnxQAUI5/CDYVgcwZ68SVfvR98fSMwWmghZcjj1C4T
tASUYA1dU9YSf05Fv0O4KiGERWR8wFNLvKIJ2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
wns=
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
