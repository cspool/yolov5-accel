// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:44:58 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s24_s18/mult_dsp_s24_s18_sim_netlist.v
// Design      : mult_dsp_s24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  mult_dsp_s24_s18_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_s18_mult_gen_v12_0_14
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
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  mult_dsp_s24_s18_mult_gen_v12_0_14_viv i_mult
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
hx1lKzZZxaashaCAniPb0KJUGpEqzhKhOTIIgHXTGSMIQV81bZ8tzT7EZ46/ipW2Y1I5bBEKd1kt
pB0+Amkguxjyyj4i2yRoscvPhQox9L2dZxEmF5SQNqMdpSRaq7bMugmq53TTxmoOmDPtycxiwVGH
OhStPxxJfvzLaPB7o4EwzOolK9lY2gDBByj8VggdBPu18nB/o4OJoPDWxAlblBcGygOC2DG3bW4V
ZrGwkYS8jGd8bTKsRyQ9Of6qLCQjPvFMrxlkVr3j9ffybQcq/Sjyj1QkkcuBYjtBNAXKH1caj7t7
5r+tu0YhOqkiRu29LjyRGSjp/0q3RwDvl/Sq/g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r8YWZ/2PCoY9Au2WJ6PndGMAWelddSq1AKxAVV94+fCitkZmTusYXrsK5YMUr2zKrfO4vUwe30PJ
/6bXOhNjEcoYRhhk4t6HL+qGBtKmuvo2o2ZznFYCzGCTe6fDqaBbB27Wf8hs+odyqi/4sP3XdeTC
ksRkqsiOBfyiqV2gBoK8wXNFnpv3nGH+Utb0YMM9dWjY+51vtxWpCm/XLJvqp25jj8RW1/4GGZlV
bZWd2Q+t5vMxYKfPDdJc6KAXtrr/auCFMRcybrASgFpU3Ah6sgApNLuLed4p65MqOxyf8x1AXkoy
a0+xriyYHRdztctmzq5xIfjfWn3N3RvcLxojRQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
4NSSw8pMZt88
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
