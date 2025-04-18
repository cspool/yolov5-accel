// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 18 10:41:27 2025
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
Xhq8x8Mzo8dF2kaH7+03mFgaQyAyP2mKy2J+CTal9igc4xTSenQ5+q3Xp1nJMFLuccN8ctM8ti8b
ykZqun59Ot+PukpNn75MWd2Op9DBmKluT5q9X8WsfEZ0SfWKZ2M6DjyDga85JSckezy4w+rxDfeZ
7gW0zr5IXSF3CjbRhJkqA9jUVRd15u150m7vocLbzU7LJVay+EMkMfq3ewk3i5R87GkBr9Z6jDvX
0HOgAVoZ97K35reFOoIltBo6GQO0hyuSHuGgpEqlH2XwwmPSduDDgvl/Uvm9u9+16J8g3pKNHZXc
g99HuKpzpo1LdItHsiTGH7uwebR0vs95B4uudA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZTPHl33Pa6y89YF2oFMM7paha9sNzah4tv1yggA5GDyhUD9L7tJKfdZeKBeK4qi6vHKVdlJh+DEn
8Z3xnnCwtC+NCyNB61rGsuiL6pMhehdmH0wC5NAY1kaZxrfWJDGs8JdLyiUG6h91/0a4feNsiA4a
Wrgz4m+n8KaOZl9b2f4okBHQaFkihlu+c302CluaG7EK9MqRbrzbpOzM/iuMF/On08TUWwo38OVy
peoYV+Dd8H32owL/lKBZlkMzfeFKKhvNHHfTKkyQNspgeOLZkSiztWeFxxl0Dl2zfHAv5KyS7iEE
lw3272/fksD7s5E9wzakb6ZZBhx6AAkRjrbPPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
pn3XK5Zk9DU9
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
