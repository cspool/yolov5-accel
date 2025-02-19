// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 19 20:21:12 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_dsp_s24_u16 -prefix
//               mult_dsp_s24_u16_ signed_mult_dsp_24_16_sim_netlist.v
// Design      : signed_mult_dsp_24_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_24_16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_u16
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
  (* C_B_TYPE = "1" *) 
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
  mult_dsp_s24_u16_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "39" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_u16_mult_gen_v12_0_14
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
  (* C_B_TYPE = "1" *) 
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
  mult_dsp_s24_u16_mult_gen_v12_0_14_viv i_mult
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
fgnwy2p0PuXnkPgYr2sqzq8LyGGT5602DcNxMxL4t6WGolAjw7LQS0aMsU4IOkXoXQmEpD8H4C9k
XF+1rZZ5vkAkOMp0Ld4L68ql5CjFTMbQEXbOGxknVjzPg348Dc4l08TjQRYz02V3TIrLmYLe7zkQ
JIsvA7sLBxgSgc9gnrNoNgHPoYmILNDAnMdWqBp99fUnHUSWYMgbi3WnW12t3wKb8fTTi40OOfOO
DwUoUTn0Q6V7sFsKMv4VOpMkoEhS+KA1YeYEa4ptyStBVH/dCcQ/c5rKEqyjF+r/iocc996VjuNJ
40aRBpUZMFk7lH0zMZKUIXFgmmDU7zm/OBAbVw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JYKQPVIjSd2Lx/ohglZrxqW0gk914wsUNqG1hzx/eQpLUPg1DpHCg3i6UC0iTA8rt623ktItFWc5
Hw0XDVbe6Tdb9HwqB5vynxELmNNCRurimr5mcvZziM6BszV62lpUcCebKHTpxn3QkYlsJ27f34YB
4Cdzy9mbalSZ5xWzqK5TxsGZfLL1AufWRAMGu/PN1IRzUyO0997Rk+ERTxgus1woX/mHGhs1nb85
cd1q3q7I43C99KJ8n2MyTPYx/ETek+Guxo/KgYUVg7U0xVIEazeLRjfSLmQkSx0zQ5sE2xxg4iTO
PIsPh/GADMF3vwGVOzK12dp3Vgle2qh8xZhs2w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7440)
`pragma protect data_block
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
JyN2SSYMpg==
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
