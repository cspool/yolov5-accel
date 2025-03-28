// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 28 10:12:05 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/accum_dsp_48/accum_dsp_48_sim_netlist.v
// Design      : accum_dsp_48
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "accum_dsp_48,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module accum_dsp_48
   (B,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [47:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [47:0]Q;

  wire [47:0]B;
  wire CE;
  wire CLK;
  wire [47:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "48" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "48" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  accum_dsp_48_c_accum_v12_0_12 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "48" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "48" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_accum_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module accum_dsp_48_c_accum_v12_0_12
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [47:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [47:0]Q;

  wire [47:0]B;
  wire CE;
  wire CLK;
  wire [47:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "48" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "48" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  accum_dsp_48_c_accum_v12_0_12_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
R2WRfNM7iQfVezffU9mXj7DNae56tUQw2KSdDdI4OGMYB65JnERrwsR2dRInx7o7wH1Brw7ehdso
AxemvL19bQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
umbbDadnux1HIv/f5nt3od0S8xUq+jhzaSGi+5TlPeW6L931zufNZnEKGpZodz45bXX8TxhW8JI3
J12xUnskyRF5krUTBcSoqcMJr8/06+d4nJHedF3WjWnW1gHzNmrJoEUYRigH104FnWzebk1isRIr
uCSdAzalikXhTX0SEiY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aTp1eCjrnU1khDqTWy5d+cZDPSAuxQwnTycBPO6Y1aMzqpnXGjhvaNSjYXFh2XSlHbf4EwbDRXqU
K1fW9WBj/U213OBYmro12wgQzjA1GAmNMXMBq4GK1HGbW169XARW9nfzhl95a9jV6qi506hsEK67
g67p6VIHSrgUnhkZ7ez3DpVagtvsGEae3GAFNgKRL9EVO49cxteh3tlOPfgwheDs9USfBIdfa+yB
QV+scaeiQVLOFvXl8t/kTdLx9lEicWLFzNKOE2sVSGZgPvd7fUwZ+y8EtoKTrXzK44aVJvVOiD6m
vTmmSUPCpRj5wl+f0jclvvc86ycqX4gvC3iA9g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XM69JFnplXxalOK99DHcsVHn16k5x1wa/VRdDOR58eYORKM0EfVwK0CqBgG8xVMVulfojxFdppHa
yGzaeL+A8AqbG1w70JWFTru1upLFxJuozxX2AsOo3ewr3ws7tRDZVMoI+uwVgZ+8VyIB/p71YZL7
rWcStJAJWwPmo7JMDVGi7O7lywBtA5r9pDxBRPh6eYRuaLxSllrJAj4FkFA7JbGriJzj3vSrW+sP
7Zs9EBsxbXI75gcdVEvJbPoDfHmbsViPVMyQOXi7zo5w4MNf/nCnJadJLRYnPM6TgOZRxGY9i6Bu
y7FVhmgG241mQi5/8FcBdJy6U+4iQZJHbfZXYQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h7a3PoBXWVyoTzWRLpoXTe52cvA8XSFHzkgYj56I8Df/WDYXD99No7bXQK2NnBnU2QTR0UtLY1nm
c3Ca0F55BQ2WArsbuUl9g6xAtyCfQkQrh3iw3CCTKKVgac4/wGTyWAL71gLKQ/587QYPX1oiFHop
E1F8SfYj739DqBTi/GIHwLA5G+XRYBT9KgQMBbliiHiRNCD35p7ZrngSX7j5x5Zyef78BbsLpSN6
nfBLa5KhSRE+anTpxCjDOtMId/PIp8ggvAFfA96aXOGMlF9WOfoTzYIHSU56BvDQJlUYzJzWD8vZ
HdQZe6g1qfOyVcETeM9SLE9f18G/ypg/cJO46Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hcaOEOxV9amYvmRV9jFkhRHpbu8mNofSGci7o22h0i4J4+5anRkzdXz5ihgmJJ70fzRge/ZpF33A
xGQdRLzSOJnx/0BXHpYpJZmNIHZSMZ623YSrTvEuvaf9YdF7lNT2gUcY1z138BwEKukso1UEBSoj
d5NwAziWrdV5rD1He1s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
X2Xllt9uFeKr6FIBXnJCIzB/ea5RHsUZWPGsJj5FMTHs70YYPxMdlvhX5fMq+3zwRnGLBh2AXlMP
62zwKGikYjtmAJgWsxVxeIAfmLNIoWeJDb3CXVosgoqn1IqFssNWNDKdTGYe9MYTkqRd6QW6R2GX
BnNBdOhSsi2zKr2+y+xqOwoH7yi8jopYEdPIrgHJT58LYcR3uUtM88nga0M2yiwOK20+2btxZLos
JeF6J82bC9r9xvEViWwuspHvhE8eSkL6x7eqB+OIOpF3PFLbV8OmAoKkOBmTuulR3Jj8MFacFgZM
Bvy/68az8+wRddG+v+zCI368BrObIO1JMPpnGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MEiCqfpWjmow0iVP4jyLs/cio0fMLXD+fpbCuOajzj3kXK9BnabClsu4wlmDuOmVLDHPxPUxqu/s
uq3qkDylBmGv6OBXuotJB5y9VOdPMZi9HWdh1d9M3WHlEvHpivwAHILVAodY5J9YvKCM/ue+UWfs
LwRLsOB8QdYsjGCDeWXgZ7vtrptPHW4KmRjcIHbfjKLDkVZJblgUL1ZuIRo0aFc7lpdT7GDDGAxU
ka9dWZRMHq4eB5Z3RtAJGuHsxoqDUVitX3S2H4QP7ZegHn/ejSBHaKpzK3Kv5KddoAunzGJrV8h1
j9xb3VIitxf+/09et+XYJ9k3D/K6jxN6uYnbYA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FDAQ3DxlhUNjZsyEIGXXElfLpKZlG9gl4oqiuij5NpcfmPirSsAZfu9GKn3zNCE4XufNhouJecTr
0zpCHkJnKri8GBufcmsjnhKNq5dQhRm3RQhL9rakb0bQuFUBn9YifSZjY7D+MDeHw0CQUl8Uy+QI
Ryut0vaWBy7G2ZzU5S25z5aLh+GCK0/9e56hDM4sdUtHD06CNpgqDKxDYFl9uvmjyLkw34VV1Jlb
p1+SZwpYWunlNCketFaIT1Rhy1vP7rt6lxLb9addAmGcP9QkcbObTa1YkuoCahg3qAxZK4vl2RIF
P/VAUlhI0hPo/lBCiZI+C+LMHZLzCouFwIpZCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10176)
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
