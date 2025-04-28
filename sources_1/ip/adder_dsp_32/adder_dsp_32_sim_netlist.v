// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:59 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/adder_dsp_32/adder_dsp_32_sim_netlist.v
// Design      : adder_dsp_32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_dsp_32,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_dsp_32
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_dsp_32_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_dsp_32_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_dsp_32_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MQzP7PDwBkU0PXQL0hcWyYIuB+rVgyso4fTl9YPUWDMBxauaF5u/V6MJClCz3wf10+xE3sir6Ja2
/68aFzwFmt1GxYpmFV5u+qxVi8Vs8ZG3lxT0qDgX3dZ2v2RywnTrGzosenTNwgIpTI3+4n0EUxYG
0Dqe/U8gFOASuVLhnuMFDTumd1ho7CtzElpt64i9TAyzoXaRDplvtkvLerNb6pu5KX5yy5wqzyJ4
YQUguhkjVlkxILOgfL5siHR2DjX2GD6LIYqnqPLu9HKZrDR5XUa86Y9BnPp7O3TP5vJzfIVVw9aV
rLG0Js6wKlsNG2ocVUXgfCU2jOfKCairVeatcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nkQEnuR4aL3gf6ENW6aiTmRh9AYTkqMr2zfqXGAVW4lHvIbmhi8Qsq4OPpGA1CXqybYkjGgrzXLQ
VmjGI+4rHj9vwI6pTawfNU1ZELBnX+BRqM4zgxv2ptuRDEenrfAZlHuQCR8WN+F/mCq4ktiKeWg1
QRcaN7EG3DdvpgJdtQ84r5Knkt3jx2xg4Gqjt1M9X7j+KoIvP+bHGhjxvcRc/v4wBHuqHZ+GibPw
NN4I5JAQMMRnjzeB1f2OprF29cNHnm4oL1a/d/iZd3FNX1kNrA1KUkyY14Lz7hEr6zyXciayQ7Ek
X70fKGNPnXGxmD1/nEOGhuuUKlwEN90gj5vj9Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12176)
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
