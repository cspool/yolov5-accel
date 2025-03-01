// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 20 21:07:11 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_dsp_s24_s18 -prefix
//               mult_dsp_s24_s18_ mult_dsp_s24_s18_sim_netlist.v
// Design      : mult_dsp_s24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  mult_dsp_s24_s18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_s18_mult_gen_v12_0_14
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
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
  mult_dsp_s24_s18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
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
JsWpno5ft0VUDFne6NidYXszlTw0sY2PSZLt53PixKCkqsYobgDm7IVhwaoTHr9z7AJ+UpsT0Kh+
0wW4wCmM2pB9sZhzLXDzarNckwgQvh38YhpBVlI5GeSW/FzKxHw0IiLeE2r94X95y2TIJnaSf3Hb
IGvE8auT+e3F6GOz4zY70Zz6FHDy6gh14sKfbCiciFcwQq4pPf3+RqhpmqJwY6IQpLVfQhut6iHg
12yeYG2lsEbHG9a89J/je+8iM3ckSx55JUP9ichg2YnhdaPOpZmNg9wpw1+oZ7pzGh7nirSKD5qf
noCdi+ZKWvyLye5IqimWbef5gcSLmoAzmotcyA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
H2WjUqMWZvJVZgCreFe5IaRarc5L3uRf8r5CRtqsaHD6mnizq06DlymH6ItXLjd38SxJq1RQNfCx
LqhX+zrY+xXiZ3pD/ebRH8+fiFPg5GBJ9Sp91SWTf+9s/AX1S3emtk0uVdMF33vPKX5Xx2e2Z8Gq
tgfE29dE+L1Aba3mgKewrK/g8kmsYtZ/rAo316pCdmGwo6SEyvj53Lbzot7Bj0QicauSV+L6kWYB
XdBGuWDOT7loK3Ktk3LhLFSvXcSvLjRLVAeU3A70F0xNitQGbkmTH9fENJ5ZQTxTzdUrwmNTrae1
1Nhr4hWhW1A96EhdE/DFNLowarYfJ4MAR+MLwA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
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
