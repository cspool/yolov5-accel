// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:51 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/unsigned_mult_dsp_12/unsigned_mult_dsp_12_sim_netlist.v
// Design      : unsigned_mult_dsp_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "unsigned_mult_dsp_12,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module unsigned_mult_dsp_12
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

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "1" *) 
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
  unsigned_mult_dsp_12_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "21" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "32" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module unsigned_mult_dsp_12_mult_gen_v12_0_14
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "21" *) 
  (* C_B_TYPE = "1" *) 
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
  unsigned_mult_dsp_12_mult_gen_v12_0_14_viv i_mult
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
VQStwIFHcSBdp7G2kyOT/5+awyeJyUBTwRQDV+sjwfVMqdrqDEBtt3eC8VKbPc+hJtoUtjxEBjP8
VUa56h5OolPYfhhLIqAmZ7y8PKsUvSh4Y3m0uNDVYztDgb2IBBnHiwT2/tsTbhR489p2pRlNrvua
Lt94Ewd00XRp0ZqQj3ilfMbmVVO/9mAnsN4An9TxxGOIdziM83rVNYJku3ZZPu4mWnQvCiJz77qb
WSisRcCu/D6LRpu4R/gc3adkm1IOt1UzmLlXTGKFp9jRgeH2TvhQP8E9rgx6ALto9hVwgZM+YvD4
FUX9ty4tnrJZGj4Wf25dhRm75v5mS1FamudMxA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TW4Sv2wkrfpuaj912XT7OL4phXN5rcfVccEU78HeAzEjMEn2oxZoQrLU+w9Eq/fqIvxgBjxrek5D
4HkWhUjXMImmgKWmU8tWd5yDGkODz10gW8/N32kDBkzisvbxfMYbI2n0tRSk97sPGY85hfHxb3Jq
kLJdy/PYbzMxzJ+T0Thxo4sfGPUURxmz7+TPp3w0sj43Ntb42+g0leF6S3zPppKeRQDQVm1Bm0RX
RRu5RVm/LsbsBAfS48yp3RyGD36EmYWfmoS7xp20AKLzw0b73ST5vQ9a9HEW7x9Exa8PdOi2MVYZ
KoWg6bOQaFVbY0+B3kNcF9WN4NBl7KavG/FmCg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
+Xwyh7fRJQcU
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
