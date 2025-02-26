// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 26 19:36:07 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s25_s18/mult_dsp_s25_s18_sim_netlist.v
// Design      : mult_dsp_s25_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xq7vx690trf1761-2I
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
  (* C_XDEVICEFAMILY = "qvirtex7" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "qvirtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_XDEVICEFAMILY = "qvirtex7" *) 
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
jVFQUCOszDniuz15sKYHYHXegD4CU6WTs4LESNiWNih9/AyszQbi8xEq6rX91jZICAzdIF95b4gJ
b4KIh3ouNTMLrrFRFU0Cr19IC1B/jrZIgd34LJJH2Lxve/G7HIVOx9Zje5bn83DQvMgTYgW66FE6
nbMbkE7ckPli6mPnEIUO5a6oB9oAYVZB1QXrv5xLZqfNQ0frJPs1NXNLaB5RF4ORx7Q8u5JITWth
yo901qkpCbJ/NMdg8kxoVCr2Ozjus54xNOZnriwti2PyKei66S+YqKvihSg8FhUhcAw8N9JKZw9j
xAVATzD44zEy5yv+vvy/EU5e+cZpF7DoEIH0XQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUF6ReuMuH8vjIs9rmJHxHw+j5NSISt+ROEtYyVwAz8xA3nhkgm0LovvXJXKTMXhy5DicoDF5Ovq
pYwMRqccQmgu/SxZy5Cw8B8lO2vLaodmetqFaF7jokT5OMBetEPjbdRavAtnjQwJN6/OIJFLW0JL
DTK2fspgSB/j9U8Eyx+Na5MkyxpFdSyzhhsv2We0yxiOKnknhh+AhcPsa+zfs3aCMmzaDE+t7heY
9fXiyKsVJAycuGhaq4QX/5WuRrJKTvlEHyRW6f8vIOMYXSfUk+9cRTtz7vsR6vJ6K/uE/IZ9Ei5N
BRvTudfc8UI9GBx319bLCUDuAeG5T8ksE1MpCw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
FFk=
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
