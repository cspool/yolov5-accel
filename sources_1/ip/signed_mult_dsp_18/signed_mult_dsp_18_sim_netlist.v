// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:50 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_18/signed_mult_dsp_18_sim_netlist.v
// Design      : signed_mult_dsp_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_18
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [33:0]P;

  wire [15:0]A;
  wire [17:0]B;
  wire CLK;
  wire [33:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
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
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "33" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_18_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [33:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [17:0]B;
  wire CLK;
  wire [33:0]P;
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
  (* C_A_WIDTH = "16" *) 
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
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_18_mult_gen_v12_0_14_viv i_mult
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
MyeCyvUba/TprMAAXHsmtBrDSY5Mp0axmYI0eCZ7pNqWJw4OYE5bxeyLMLjf+jv05J8HQFBT+MTk
JGo7iCp7gADmzgon7f8gqKPueyL1E3BbLSp/wwMndhpxhPjTIDsRMsH0FCmdT1qS3vWErXr1lk9p
SulJ6Y4SlDz53dRLekr72sjLnxkrNsRnuQ7CKmmtSobfhblD29RCG1CzzOp086UBWzefeUNwgYJK
1PpcOtlCjLMPlINtGlvDZH4K862yT/x2U65Hc/QCeK+ffxNm9lWO3c+L8eXbzwAyB47EI8W1ihnF
NM/NoBI6eQiDUIqipfYO0w/E1CzZsunWgYIrqw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DOKVZUHXfSyBI4b0RdRdveaSyXGhb86V4Q9qIfN7AC/jJqMArOWWtrAa0j+EkYwwKAY5bV4AiGjr
utUOARoRMQhkYxrRoL+znjWQeRRTodmMIsgz72NUoD1+QX7xOWXHnadAMxWLiAJviz1OdXS9+s+5
yfhZGq2DInqecNrupD3UdyD6mahLOiEhmIlNJrAe7/H2mEEcnwXDsGskkPUO0T/963k4sl+yIiJX
UxVKsiX4o3+vKIehmLBDAYxFR631z3ahv/8JpYiqmA2RdvHWpf+m4yOCCyk5grqjq+P/NJeqj4nr
hn/MfhlcuLENc3aZiPCCg8PLVqqX6bNvxbfv8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
25ca3eaxRNIE
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
