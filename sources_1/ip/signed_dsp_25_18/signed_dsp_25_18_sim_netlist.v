// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Sep  5 16:01:51 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel_2/yolov5_accel_2.srcs/sources_1/ip/signed_dsp_25_18/signed_dsp_25_18_sim_netlist.v
// Design      : signed_dsp_25_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_dsp_25_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_dsp_25_18
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
  signed_dsp_25_18_mult_gen_v12_0_14 U0
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
module signed_dsp_25_18_mult_gen_v12_0_14
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
  signed_dsp_25_18_mult_gen_v12_0_14_viv i_mult
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
h3lTug35MwS20xZvsX+Khu1ezVOZ5FnxjpSVJOMDsO+N72q0uwz2NjNtXJ4BWNQ5rRKHIxrSYzbc
hoVUjaN1+qFE7dP+ZF4zW9nLFbsIF6n76X17w5ovb/oxv8fc/SNuMEW8mMqOHmHSQhkB+egZWiSi
9XoGvrP091REvLTmGE1Il8X5ZrSAkthEZ8aQlAtd5pEnUFw4WsvXBiVxuVarDuYWpxRvrgXd31Y9
LYc29t5ZviSLAiI7rxT4GPaQXaJmsuL6I7CBiv2wbKkunUXaA0thutObBE3PU6jLqbqkcZ6k3oeG
nptmmT5D47Mugv/xvnwtBkE1+o3YIHrkk4z7GA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MltLnkEI4mT6SnTHsE1zWz+W9Qdwifr9CijOnTJANNX5+dQpasmM2c76lbVFk/bmklgkL2rb4AEh
zpLpulQGmB+EZwEO8oBvRUvkPGA0qJxYOKes7ifsL7eG0m870VBkV9I9hBBV8CBem+vYLm7IhVME
pyGEurOinJawrqBBVips6CD9iT3HSS9aTs9iGsEUdWKhkJNY+jkO9oQoaAN3g/SiUUK1MKjkWypc
j3xkmtc8v9hcdXRWIVjED0hWNuwUEwRb4lusRUQhGgbTkmiY7jf+PsRsnDu8hPCXeu2r3GmQ71z7
MKc7C/Kss6o33e3qW1OUY0Lk1Y4pht3VWcTf3g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
CEc=
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
