// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul  4 19:49:16 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp/signed_mult_dsp_sim_netlist.v
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
enKFN50LsEY+0s+BXMQfhUuEkCYIEH01oGG5uLu44ed2IA03lY0negaxpaxyWsUdMktP6VU/VbOy
hYj8IaoW7NLaH5Rddh7BWzIRklxiGSd0otj6Mz6wx/rLTDCa6dVBzIZSemhQtmP7z77Q+xZxGh+y
HLzqNkVObd6rpwdrgBJVz9dVNRPR0UIUNsxZdoY6BbRH3rPONKSSNmLElyR1wBb/2bGlqW8/djQz
ya9CWsBPLqMoXMzIUSSxx74+xIaYNmDwOB4xcv0ZeFUzEmhEz8MsB3KwPDZqOkwis19AT7u1+tuF
yYIyN/jzrXNSUwpYukV80+emNTWWRTngVFa64A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ah1drRY3VWb3bgB/iZWCExVIc+tLI/n0qrSJdp0YmPaAKdK28YuZQwACafiNGDxxxvWEDXoce7Yx
IBdjiGusJdLCo49xihdOMncI0enS2bTJYBLMCee9RqCGqrkGjOtqzcX93PZ1LmUjpwFZSp5Z+dxU
5QqOgMRd5+awO8jPHehG/c7AThS/pqf5nRmyFIUSabrYSXh30CnKR6Ua6MeOwgae2rhIJPT/q3kF
8UTcGyzY98DoQZDrXTBbtV8K5+HoNUmnv2/jB3zAdRwv7XUdjBtAFRH7LnDalQcxJIJWcdUjUwGW
NfjpXDLAipPej1KdaBtgeDAF2eu+njKxEQYbdA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
MWk=
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
