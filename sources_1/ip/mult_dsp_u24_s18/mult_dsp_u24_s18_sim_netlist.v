// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 19 21:48:42 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_u24_s18/mult_dsp_u24_s18_sim_netlist.v
// Design      : mult_dsp_u24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_u24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_u24_s18
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

  (* C_A_TYPE = "1" *) 
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
  mult_dsp_u24_s18_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_u24_s18_mult_gen_v12_0_14
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
  (* C_A_TYPE = "1" *) 
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
  mult_dsp_u24_s18_mult_gen_v12_0_14_viv i_mult
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
akS+1AjJ9pdFoJ47QIwhq8ExJt/pVwxG63vnUpsfFI4G1gYMMAcnIdLAlTtv91/aEUF0CDGp+w6T
b0LN51sjA8IMH3Qk/tkyPPoQkpJ6W3jFzcqxHTYSyXwDEAwy/bA0JbDOtZaODEalLdwt764Ea0E3
KZueXqiNFt88z5Iwm0SZHer87JuscYBkp1tbVSa2l65ClyDCHf+5gL7jvDqNABnI3jVk+8CYLPVA
m+1weeDIVuQ6DWUjULAaW+8nn9wSczsEsHupKCrV3r+sY1lU63UK5fzjPX/MduFQCrKihSDstNtL
gk7kTwmjBwl4Q6+uCnYsvSDG3zJyyOjCKf9vfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GDz7a/PJnHokY6qPfU5rnn/Dp9778Un8Nxg6KGQtr8wUpibaxAY0Jynu+thS8aq+KtMq8+4TaWBx
4uFj82IBVbsDaJh4LwKy0Vw4vh5PzfZTBtWjM6+NVzQ2vSt4LPezdR5wdxsJBgwEt9nIxhvxy4jU
tL612BZpVSjstaMczhEXABRstJwr9km342he46eKFsFBJ4kZRRLOUpt5bs/OHL/yJnYZ7TaHZv0E
JbctD7YOx/rFCQ8ZoFkG780FASu7C1Hw+xVNaOtwof+FjG948Dinu7wSqIpac7kxh0ql0EObBf9V
HuKxq3KOVUNZ+9xc+eDu6XJrHoOxKJfOOMEETw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
dkI=
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
