// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 29 15:53:30 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/adder_dsp_32/adder_dsp_32_sim_netlist.v
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
Y99X9eI1Owrer9/VkXGy5SzF4SfW6/JLtCv1II4rPAxWMp4qHUZIVppldf5B80QmwzIioRWBAhAa
0kNQ3cKz7dOAfV7eVcruBxPEL7NeIBshhN6F+mA+7kQ2YNDP2zsvdv6McISnDFHU5tRf2aoYeYGQ
lF05+Ib6pc3NpQ2SQAg4Pjn5IlsqlgNgMusstiedCBXDXSO3kaWQgIKX0M+qT1Wm8jTVVFlK/wW8
nBAKLIH/Yk3PrQn8Uyh61Th54SoYOUVFfCjc6G51vQHw1FXyCcaujJh5ulSgMW5jhG0eQ1aMK40c
QEg7gwbd/tO7ySDo+fY3jROSTRuDH3rmw0VY+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hNQ0MY2+icJnxiHVJF7lbTRX2ZUS3C/MlUgfXfiWFMWpC3IqDhMb26iEYjIuBjjk7osJa1iRouiW
MtGTPRDAr1sQB9H2MWfzDjt6uQU3cV/Z4XIJ3PzJz/l4H+JVZ2wCPXFjwU2sxkV/yDNp/+gAyYQT
so9FDjsBD9bF9spHZTN3nmIUcw3aJmMfZ1FhUFkqylwH3Zya7eye3Co7LLW3oWkXXRHAxPikWYLS
YSu4szX3Nr6KdR1NiF0pTacyI8IpYQZ63kp5SsY64YNxvtgCHFpBgPsZlfXCEUkqo6jVjlhWNJ5/
Ia+KsI9+Ntk3O1wN5V/t8qjOx33zqSzwLVrTcg==

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
