// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb 21 17:11:18 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s25_s18/mult_dsp_s25_s18_sim_netlist.v
// Design      : mult_dsp_s25_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
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
  (* C_XDEVICEFAMILY = "virtex7" *) 
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
avVzfelqpCGMo9jv2l9MXXt8PKay2d0cJgP4IJLSWLU0t1YNd/miPMWseo3U0bXdYEZAldmD1YT9
5dwOThtP17u/+gp5+IgIYMB9BD1hG5f84fa18mUQo1KZlsd0lsEgMfss8HFcH6Xajyn+wuriT4hf
2jwE4eyjBl2+SNr9UqmNwOUU6Jj+dGDCMsv+XkKvzPItbCVTt0WTRhx7IP1+dOjrsnfyjsagiEAM
ho7Sa+Li9r2v0nGVyQfF5jnPlhy3/KmQrqAmyvWCcU3q40KhYep2TCMnZBJYyseTLUkKF4RLKoqQ
ShZ1CmLnXCIcmj2u6c/wihBkY8/K6bpPiiYFHA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f3GwAzDoAlxj16a9sekg7blaL8/P+bnaBuOPMMNsjSi09gV+MsaSX/ClIjvwjtn6/4zcIe4dW9Co
qfNIUXblpyznw8xrgGBkY292lTeqsOIwXURIuyeUHZAc3CnhHaXQUM90bDEwEOmCplK3gJCWvonp
dUWcOxO6eGb1Bam/kfsHr7bLkMYEKcNVQb+BVBu21suvRQVcL1NMKqzyjgXnii7TIaKSMkdeP3Zc
xTl9rqm3ofjKNDLEiI1lyDqvpVWECOrkvR88zI+sZjoA7yydVyyTv7J80b+y+yNkMFR+mOkZcNPq
3XjEYYLTnV/kzZJ8xrda0vVKDBDcIdM7ArnhGA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
Pxk=
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
