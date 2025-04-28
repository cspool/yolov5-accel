// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:43 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_24_16/signed_mult_dsp_24_16_sim_netlist.v
// Design      : signed_mult_dsp_24_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_24_16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
qCOAEi/VVWYoqEN4pY8O7UaJueru03UEw9iCucgmwloIhDrunUYh3gKTYFfbA0voHC0uUghEvwPS
rHDbZMCeu9yyUPUh1l0FY948OP8WusTv2H5nmsxkWW233S3A86OCyqTGpO3TD0K2/vhED9gpsf/t
iUM/99m2t1Oi6tUUKBSoizoksF90YfWlMjKS4bHu+gd4CJRSDur3BBu8bsY/MK2S3ZZcNPpaHdvy
hr8uITLlW0njpiUIfBsvb+7jGXfHJlHnQdqayCc871Pf7VARN7T0l4udDrPbhdkI/vQl/u2zk823
ebNEllrZtuRToYnCMDU1yg+XDvAOoFZBEj2W6w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rErP8EXyyzn569Yedwo21b6H1OKXwQfuZnTqX3rClRux4UYLA2qi2Svcf60wLQlBC8OIf4MrfAzK
N74iOb+kGeuRu9nSh7wdP3eK0bcrahyxcTN2+cjvHPkUp/OoQBrec/45YGTCchEJLsDTC+s72m1l
0LigIAZvmp4KuuSo/3P8Zsa32Da5mFI9T0uuzrgbQfQ+qt8X+yHqbpB32kwEnCrO8WFJKZ9maOSP
TMiAoyFnVVotmSwja2jjATeim/mmN5RdDm/R5S2bYL5XGa/xskVIsFeQcR8WvgVifq067figlKMJ
+3FCxYjjsluKWNQ3IKlEsF6r45s9qjGmXvSeZg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
`pragma protect data_block
+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
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
