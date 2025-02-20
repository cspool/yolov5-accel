// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 20 21:07:12 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s24_s18/mult_dsp_s24_s18_sim_netlist.v
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
O3Z25JQfZ7dZ1nquFO9U7cu6sCAECkDRMa6Opl0mzBDXM1pvHc0prloORf8l9mkhGZ03Tz2zPRym
CTnP59UDB+Cq1/QzXpFUspqYetby590fE/dT2PtTEnwc2A5nby8bQhnkqG6AZ36x6bRAfRFkgp2A
i+IkGadsJWKqj1DfkwsNx3k9PEtsx62XuOKMLX2+YuG0U3UBUlrK/IM05iv59h0CNvQAROL8TFgR
v/gUutGS339HKHjc4iGYnP4anic0nOmFIxOxLsX8orq6GzKO36XFrHIpdM9cLqpA5N9/RQZkfkdo
YyPU18GepkjNrSTnoBKVm/LSB/Fg1TFPgL4JHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kT0UP29XDbOsYBfT+5D1qe5GaHV5bPkda8miBSdh+GW8DKFjLCEa7Clz0qQI9eSv4E3Ole2hJH9e
r1HdtLOmcNVHo0Yn3F+OdRD++n6hN9PCMJHm7vghOv9dMQ8xCafJlHU6aNQgUXBUsseX40sR002P
FkK/afpKp0rdads67t9zRwG6aICZTDpaTS3jE8R5Uqo8AwicJT0hsFEY/847m5dy0RMGW8hOAGi6
/T3Pl4v31j1tCfnwrYmXrajiFt8jeZgRHyQql+0uWSuFHlikLiGmBEBfO5pnc4pvFbWAP2pitNii
AayeRJfHX5t9fhblDd/cicyqJYPaDtC9bgRx6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
yIY/gWbsqaT+
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
