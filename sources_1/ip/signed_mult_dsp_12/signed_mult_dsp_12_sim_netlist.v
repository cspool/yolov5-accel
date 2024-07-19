// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 16 14:22:52 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top signed_mult_dsp_12 -prefix
//               signed_mult_dsp_12_ signed_mac_dsp_12_sim_netlist.v
// Design      : signed_mac_dsp_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mac_dsp_12,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_12
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [32:0]P;

  wire [20:0]A;
  wire [11:0]B;
  wire CLK;
  wire [32:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_12_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "21" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "32" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_12_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [20:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [32:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [20:0]A;
  wire [11:0]B;
  wire CLK;
  wire [32:0]P;
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
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_12_mult_gen_v12_0_14_viv i_mult
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
aTj5zMlF+xHdtpy4oH8qsmZtBtlt6e7Ke/8eSi4Kgfy4IRHb0lp3r0EiTnldiHMM6pXw0wAzQ4SL
wAiaPpkkjvnaesEYMUyU0DnIfU8KeYlvMw+RFqekd6dWP91dpIv19VB6AOkc5OU1iyOnEZRtGQpM
GPQe3eu8t6FYhBJYLNvP/xpshdJfkEEnXoJuWk6+Rb8XUm1FkWYFBzHmwce3t7535/h2t3TkQz8v
BiDJ35If1/2NyBlWjOPkWyviCjQX1HFV1wh9EuWUc4MYBOL3QLCAbKrD5xJpMLJqVPBs0imiTs3y
W3xfUP+VmTua8UO57fwE4M2bbDpGcnftzoj4qw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B12MkSL14YRN653J6YwxQJuQhM6Yp8PmyeuZip+Tq0DD/zSMrO8WxIZmwJ+v0FT1Bmbde6mbi7sS
tF0a3NgonlkaXqe6HFxsl5TYznRsUItNAMTpa2xXSInZxfdt09ItsiaobpgdK4TBH8FBClXQ9GUY
auABQu+raJaDAOXioVbslFYZV2fjHX+zMvegxLnGgZkfH1GeegtEK1/9iZiTQWgEAJEgJlvmtXA6
shuJ7ik13Fpu9cuXHqMg/l0lGsUsFZzUfauZIUFznhA9LodGJAqmZX5H0T0o2p7XoONx2ZHXQNMH
o4Nc+VJ+ar5GDTI0co3gRF1R4iMU4zmw3sdr9w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
bKo=
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
