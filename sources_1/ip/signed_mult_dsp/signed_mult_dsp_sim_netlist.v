// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:46 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp/signed_mult_dsp_sim_netlist.v
// Design      : signed_mult_dsp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp
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

  (* C_A_TYPE = "0" *) 
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
  signed_mult_dsp_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_mult_gen_v12_0_14
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
  (* C_A_TYPE = "0" *) 
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
  signed_mult_dsp_mult_gen_v12_0_14_viv i_mult
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
caKHcMH1h3zBcm42Ota68rEgXTBnSPAzddVxBkDNk9/+OB5cjIh0++tsmt7GM3sD0c0cGETdAnXa
NO5AocPcoSsTPorgVhM1608d+YjreiTVHsMzNNFW5roOsJF78hKouzbxVC/2qtPY5ak06WI6kmF+
YCv0RBVVo4syL1DjP/4BfvvddQl2A01osigx6ah/F6EEEj4dKGOrFiCLpfFq8AV2S+/DHQe+WXpm
Odm+yHuFCWt9/sceXvkA8ExuNpzRTux4wQnU365Ye5ESx2gXcE0hFDc0N5GLhjf2vlHDk6MNCZfn
in6Ua9c6s4Pot5AkgUl77tMw9uosvGGBoKw+LQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6OxiM/f2lcmBeUJftX3MGfy7LMs1vXQfEfynizCNPwdLkWY6Er9nL8LGFz4i5NwvGvMmx03wpGda
4ii5bgAxDdctUIAawzkCqaLe4/AY9zFIKK/9AcOtBcv1amKckUE0oEY5TaDzFgLs9zuX1Bm5ccxW
qFBvkz9VZdWXouCseUrgtpW529N5/NIP9M7mxmHpO6ZN6dPsinb0ClgbS/piwSxSyVDIEIkiPCY3
f2qOGiZ0ShLLOg9Se5Hk4RI//OVIqynA/jltXgOnIKyFgnHCqyx3NiSmXPh6erzLzE3Ho8AA2rvO
cDrbtkNKHqG6FxfLgQoXXm01dkubczTAmeL7xQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
npE=
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
