// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 21 17:11:17 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_dsp_s25_s18 -prefix
//               mult_dsp_s25_s18_ mult_dsp_s25_s18_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
cNIiH8Aiyrjk2dQZ+XySjvO3V8P74xEY21L1KWPw+cjMZLhX56ZY9LzJWtTpkxIEvB6foKEuR6qY
na3A63+Xd5TmQTRM6j+dkA0XoPbpflD0TbpKbbeX76/Pb1TI9bSq+F5ddCS2/olzmc3+kyDlrdJ5
6BL0xDYhgarJ4wfZngzWwOVGbu4dMFtjzVLdOKR7yVqg9ylw56vZDSTQLUfdnCRU02wR8zknezB0
oPNPHrQKli0NO8V51lD2z6R+nKTebEKhkMxh5++OJS5w4lq05OvUWl0TM84C86Gq7TH0bfOEshGT
kHl9p9NqEeLnrFCZ4KTcft6OLiqkafRhMT3dRw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UQQKr3lXNN/GTiUJGamJKEgV9i0g5PqLihqy6HFuGztJU1/t+YQl9t1s2VY56q3exiEHZFt0j8mS
K9YYsrIf3hpTCFsG0SnSL5ZtNzS3wtcyyksIPIliN5GtR+SXDRXBZPIOeTOLjjNM451oAHsa+UJY
Wafg2QlIFhzfkktbks5zwRF4Jv04xwsynvcyIUbwK8Zg8tNTgtxU/CX/1cSc+zA07utb+a+ha+yE
/EQkO3wjwbCoYrRoX4jWHZaKlYnSdb5pvUhsOIhCXfA8S44J/FGLpyXHkbb5MWrh9+OVq3OQUN8x
FQCrtaJ0hJApe19ULEnwV/3VbHqHQHv5NXzz9Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
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
