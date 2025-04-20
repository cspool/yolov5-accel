// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 19 00:20:02 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/accum_dsp_48/accum_dsp_48_sim_netlist.v
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
OScmon38rc0dZBDcgrdGQ+x4oLVnAdTJRXd14K9DItOLXrP6GX3JDpTQy7jB2IUQgM05OIQebiyD
RnwwVRcv6l8leFsX09zMFPVXSPFkw+zWUPhH3ZTNXISBPl4xuwgIZK1zGTE4kg2xqXzwHaySmE1B
318wvZhJjXYjfkbeUbpiLUPJQwFN6KxtdW1pNwAwsmz5CSCh5+L9LTeGQG9t4noepkHEgvlwDjiO
QZDrebO58m/kbn7rT3KPlmqmTNPy6iTa5dzJqm7P7r87vltQQWg+V6cejKt5oviUbk4CotEAOI70
Q+1QkVKxn45m6ocZBbVpI50dOhtusahOTsbeQg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GloFuziIuDSswDIczeVJ4pLZn3JGDt9sqdVPO6NHiQwVIkRBN9UydYAegDt4Th6dnHyJzlAvWQGQ
WLDe9pGy7E2TsweFYmobHhi2LRcjG34cGBDl+N/gMGXL57PItbtpRa5BXTn1HSGdkH0dKLMqdAUY
gXZrg+IWCy4LpF6du8o3vrUyX6wvaaA/eBB07KbdtmlSKB7X4GC7NqAYhyXV4x2hcUIXcW0U2JwR
zwmAijvl1tnA7r1qdNvzbgOlN8kkW7wN7wHiBoc3a6fsQTR/YZn1bWZEpey1XJjkaD5aVuFlZkt4
fovfaRwj/7yeWoPPddAcZ+D/452o18L2qsglCA==

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
