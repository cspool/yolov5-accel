// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:16:27 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_12/signed_mult_dsp_12_sim_netlist.v
// Design      : signed_mult_dsp_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_12,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
qsHCJqQcI1m2FjLo91+w/CuZYYqPSJPa7zCEfuuCEGWfhTxg8TbpSskvaNCmSPIoa9xz4rKL+VwR
En6w7BW+sd7uqPAtYOP9kMqvmrScMwA3UGvDFKXrqVFMpMgCetDYELIQrYPv9N5oZhpQLLDvGB3f
EOezb04nTAm/SCwyLuebaWaRDOAOyr4mk9yIA6SGeK96XdFmZed4O5NjOh0SAgYPtC8DQUcdJoyn
0H0ncam5MX30bfTb6fm0mrRugdQ9OALlYeWxra2orkQuGPIErV4ynkPUzaDLuqEkeeD9hGlJK13t
FA5Vp0F2Lp8j0EvnbetBcMNni6ozTi2/6t7QVg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Di9qGdtCtPTlFjSvzbf4aIQn6ug6b90/amJh+SrRsnaNc02muZB6q9b6IiKXrEFXX9Mu1gAsFXus
bGg5fY6zHBSFy4H22l01jSy08vBZGA+1bNbZLH7F+r9y3TxMJwj8t7QZI7wgcI7VK433jBhr15XJ
CaFA158bSqFdJQZvjj79uLAAdCGOfMSTZ6P+anTFghLl11+FaDW1ed95vrJd95HZIXS6xnn5p+OV
Ru4bA1dlBJXmCcAcSGx1brauPCbKDMJnN+RWic8PMjwSqltfTUsRCWwBY8IMQrxMV2BFsq1E0p8I
2VkxIgvVUlXCUGby+v/SkuEmDKH9Jwn+ny+XPA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
zhKVbDd0w0Sj
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
