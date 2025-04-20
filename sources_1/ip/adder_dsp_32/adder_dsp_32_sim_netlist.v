// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 19 00:20:04 2025
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
rEDuQJ0dObWyGeGMg3TJhJbryE6eww5tpsID0fsL+Ic/53kf+BjdtBBR95DEkrJ9r3UaGkd0uwEz
sWelLIE5ZY1CI2pAwgJ6T1tMZq1nUZhhavfxquF48//jIC1z5dLrsudC5NfXQna6sn7M9/Y8aCBN
rkZflrK/x578TQQDhcMmGXec1eiQ+FFdXopX42BWmN54dxh8TGwZYWwasM5g4grrNocUP0nHNonR
aa592Mw0RF9j/eC3gQ7WfnH4dLL/IiyLFcuyHDr4Gn6InpdUXAANYC6gnHbZ88BSa9GNYJ3d8VdM
LCDO7BHECYzkuuxM7vLdAVe5Kw4z2Vui4EjaLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pmUXgVelQ/zFHKp4c226FQAKpBlBkMAchXf6Ma2KgusDX+PT1k1Pygb2UUclB+eg1WwQuroMXXFA
YhVGwiqn1aVFJWcHDFsA7uJh36msPCl0rctcedpAYL9ZR0OV+cVpKej7QCus0/6V7WiHX976WVrg
rGLU354j6tGFjsoierlZHHsBSjgRKs/HB26/+wRPgjr6WUaBU5l4jkKKqvb0ilOTfsqYg3x9EFiw
uTEVxRItJsZYcHJEKc60dEKfbVIoLi6UGorFm+axssAVsvKCF8TVK7GXaAAg+O+uf0lA+1g1Cgge
3Ax12TLxlkFBHX/hYEeJ1U39nrGv/u3szczR4Q==

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
