// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:16:31 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_50_18/signed_mult_50_18_sim_netlist.v
// Design      : signed_mult_50_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_50_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_50_18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [42:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [60:0]P;

  wire [42:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [60:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "43" *) 
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
  (* C_OUT_HIGH = "60" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_50_18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "43" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "60" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_50_18_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [42:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [60:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [42:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [60:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "43" *) 
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
  (* C_OUT_HIGH = "60" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_50_18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
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
eeb0tNTuyQOKYcC5iNNHiQ8aKEspAbLuTdzAyDzgIjjXGgkFh8+eWhBzw5uBAQyXP1hnaX29yTMh
VlWBAX4tGi4oMkzYnGt+2CqETdBUhMiQkow8OshW7QxSoHfilxwSbsiCp4WacZIH6cswyaJYVqaP
qz7TyEpxGezJiTUDp7q1ZRzIPMyp6q6ucxVj3bDOapn7pWxqS6NzgFAjbSF8wJe3LCfHeqJnHI+f
5wGIzpCmA0gHwJvesUjCMWfwWzF9zFY7T7/f68k7C545wQ25DQkQjfxf/ZBIVRL91DJHei8IfSzM
NgyRr30zL9WML72IB77WTqXWwYGSVvYbHS229w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FAU0ex28/VjLLaI6QzRKm2KDhgEG3FWJLoUuaLATZdnJKOb29PD1S5BF1bboopftuYTMJoJL7Yc3
PR8ah6j4BvsP1n0SBxmyRE+vbp0Op5Y7i7NWpBc89xNBzj7OPZAaLrEqftp5QWXp4I6RYF+0Gld3
qwAV3z6DtChCz/6aAc2BvfXr0Z9Bu1e3cPSQS+t4KqcvXl5mLRz4a6pOVyPJJxV4SMn6jzNjAL1Z
wDPGC+W002qneF5VBAFopXi5BMnD2tSc2RGi1B63H80vrxqkv/znP6Q4HqpEUHkKEfBdBoAzwzvo
IlwYfdZxYyh3DNVYtjToWVs3g5n9zbUdyZgl4w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
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
zg==
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
