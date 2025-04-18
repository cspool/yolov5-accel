// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:41:53 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_88/signed_mult_dsp_88_sim_netlist.v
// Design      : signed_mult_dsp_88
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_88,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_88
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_88_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_88_mult_gen_v12_0_14
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
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_88_mult_gen_v12_0_14_viv i_mult
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
P8UIuSXYhNXjWoHjEVnaHgzrkgMLU/UM+IDCUEuAyXKcauhLDC1H8gq6ivN/GpTZ1SVPVB6yMrqg
w6kI59Wz1d7/6SZYe/H5ryOCOjPDO7YA4U2WOEKPCe0UMBnvMgjZm8/wz/oBji7zXdEW640+rhM4
mO5HihWvkWS8v4cZNZbTM3zxB5Z8FwTWz2XJhXN+7H6pPbOy6ExV7i0O19yoFkJUwjZpBYwl5AwO
pm9UNy/r7+pXg4Sundevi3JDNWzkSQv3q2aBkgPllCN2qSutG8p4KBd11zBVQlAE9Vq2cmQvi1F9
XPn1BjtRHrXkdoR2G3Xuj2hU4neShV0q/wdlgQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gkV3lppJmYHx1KFHhdmNaX8i55yUdysdR7/GnPXRMZO4NprqijDuZuh9CWSIdIheU9UToU153RUJ
nzWNa/tyZt37u+nTGyR0q2XWxcJ0yO/xq/y2/uL4+oxXGQ18obBGlo7HlDE5OizrTo9TEnlm56IO
aVcC/QckkJc/NttX3SPk3Gf7w9W4+9f3PV17bDbhBPbVWN72kxlZgce/k9J1Rh73dnNPIrI5rcdX
YnGwlJCANRbDke4nowzhvPfwVA/amVltj6A1cFZK640DGqODgEcskiQ5XxM9ekHZxJ5xHI25l1If
czneJP35JDAm8QO4x2sMiVkcF7CKoPwYDI1KvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
xrH/28SgnXWz
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
