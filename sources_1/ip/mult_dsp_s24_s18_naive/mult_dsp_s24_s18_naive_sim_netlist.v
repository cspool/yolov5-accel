// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:18:16 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s24_s18_naive/mult_dsp_s24_s18_naive_sim_netlist.v
// Design      : mult_dsp_s24_s18_naive
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18_naive,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18_naive
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
  mult_dsp_s24_s18_naive_mult_gen_v12_0_14 U0
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
module mult_dsp_s24_s18_naive_mult_gen_v12_0_14
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
  mult_dsp_s24_s18_naive_mult_gen_v12_0_14_viv i_mult
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
fHM99ZuLysOwANPAMqTaT6jpfrUNA4D76sYACJS0Vj+HSta/cuNf1rt7TKe3BH9Sj6aW9KncdIFt
sEWaXzt59hJWvPypgnS2/Xu/AgqcxTRsNEq4rsQYuBGIirNAQGcoYNYYk469OfTCOGbQIkzcYX7n
sGsvclIOXjyZqQwWp5x9F3689gWhsSINytXtEpRpW+qLgcLYuWKub9qMhTGI48DeHVDOePbqKyEk
9i5movJjiAjbozh9JkwkCVfK6lB7EM5mmQnnGcVuOVawjUyReKgLzewVxnCQVKPxzL21CRtKC32l
75lmyxc3rw5QjZikBGadutGU9WhOQt06ZqinJg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qiaRo4iaGrcd+fKwNG3HSaW2T/onlv2cML97NvFRZD4+JEy56THeMd+1pb2N6iPPnWlqc7RDLbqt
K3pklgqyZFqrQJenQRVUz4PpMisoAKIBueh9YP6H5f/FNG1XmUGAnZ+PLz5o3yPy57arC3bgZFKF
qQx+hls5yf+GV99/QM+cqAr1CTrQ7w0bFEQh2Z3xWeGxbUfeAX7Qmi5o15vmxrKPay7wS+dCAIlU
yTQNLsO4kwsYXTNV/jlv5BD0trjBB701tv7yBFAUIz88il4Pt8Uq910LZJmwgfnjHWF5ONdOIhtR
PZXI0MnuBdgFHqfHJKHqsZvbcAt6rL8Amj3otg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
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
