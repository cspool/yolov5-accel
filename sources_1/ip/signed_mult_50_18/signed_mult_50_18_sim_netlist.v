// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:43:12 2025
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
VO/B+4oR55MzNNuvduOIgjyvPXaelJ2cRvxiy2J8U2MmF3ZxV4AoNSX0xqe2dODF8KBPIeUK/kvm
cTc98v95m5aoFAWt1KaV2RNZ7GVU7SE2e1eyZcwi1xn/IWMY4sExU+6y51bueeThi/JBgkSY8dbN
DazPX5Fz6iqvmD1Mqg08W5AmQwyzAkJG2q631WMlwMdjbAWkeQd5NzNfAXdHuPGuj4DE7BqruzWG
h/KoSylMU9US7ecJP+d6wFcngpr6acWYYe1SpIkDb3zjHQaUHXncknAmEkfIvtcreJ51b5SuAjsD
dw68Q0njaOlRRQ8jOgTnS1MUC6YNsZBYbwdKcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QnqyBYschqY9mEo12JmU0c8znIfO9YyqwjiO9LaTQTYozIexlFIRWl6QB84ycMQhJB3mOiNvjA5Y
X74PKOKU5fUwx3xSDVPGKiFbfocgYc6yzMVb+TNxMBSkGPyv83FjwEB6yK+aE7iUrTRlTt5UB+9r
CN8vtHo1dJ5gpxoVrtO1irTHCPPNJlNDbxZpxah/d37mdRBsHrfcL5/zXihDDjO9/i68+CHdzLc+
d8jQaW6/LRv/JYVSGL+jqtXcx9mfr7elOlMQlogKl7brOdsD3JfUYTthunafR/xPqi/BriaaLIfg
105lYsFr+H159ZuRZ8EophZz3lVsaDGGTMnEEg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
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
pQ==
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
