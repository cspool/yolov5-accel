// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:49 2025
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
PFm7etf4b7FiBSFRbRV5tR7pN0dG5nLGbJjkWhX/72YqFI0u21pdkihd6Q1vlfJuvLLO/FrdJ9sK
mIDv3Gsv1TqWmlJtlM1UkEoCHcxP4TGjS9g16x2NLTnDgYH8sTMcsrsqnEPp5wZvFD6VRc47m5Co
Q/mRb9APnCj8SZ7krMJZM4tcRocBadiIA3dBQ/e+yqacesZyhZQ6frVnyorLlOt8twXFXzmIpjF/
5rT8UFSzfdvz8LMYfVPofSr/gJEeJnKouOjedGUPi7IIvOsjr10vx0ayUlwfVxKvOF9eFIAHPtpR
PL9es+negZjmpTC0Ci1am1cbCG234MX5I2wVRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bdpXU8msaDL/faPHtY3ok7n1B4IjnZXBOCU/268WYxg+htaHZz/3mNrOkga7z3r2nfc+JeC9HQ3N
UCruXkMFzHPoZ7HvGL0Jv7JaMgL2ReBnh//0PtaJ8OzeTiPFQU1tm+00tTSuSFHxr2xVrayEELwY
bVjxN2wXSIyt8e47N8r6Ijq97Dy+7Z8UIdlP6FJTk9INMB798InduB+u62BgDq36jADU+/0BDxCV
hu1dVG4/0SYTscDqNjGiHOAXMeklz08VZSOpKgqBINvdocl51z59O4N/IUKKSSFAd+CvMyww9wEm
KN6uGGRK+OWyPkInId2CfTy3O9SOaZ07zaDYuQ==

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
