// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 28 14:54:41 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/accum_lut_48/accum_lut_48_sim_netlist.v
// Design      : accum_lut_48
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "accum_lut_48,c_accum_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module accum_lut_48
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

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "48" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "48" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  accum_lut_48_c_accum_v12_0_12 U0
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
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "48" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_accum_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module accum_lut_48_c_accum_v12_0_12
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

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "48" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "48" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  accum_lut_48_c_accum_v12_0_12_viv i_synth
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
AD6IqQ/WkWfnkJwkL7NE86RUauneLCId5TNWLf3wi3ab5ZFh/WdwsBL6iFg2lii399WfdkrFnpXs
fm1aCaWIpm6nhvOtFW12r0Jomh51vMOelmEnyAoL4rKE1zc7xxhZRF6u0YkBO17KimrWkc550Z3T
SsoSfAKPvgfUkhk4HotE2o12LgO6ebyXMFlvsVN7s658x5CFUAQ8G/ZAgrJuqb8gVNwvet3lOepe
38x3ZxPmg0kgCThcmsN1AGa1HQISDqrRJa+IbJpyTVE2Zhq7rGMwaZxWmr/UXVZ7xj+2muMqngs9
whXnF7qql+hsooU2boTvpucEFrfDMtj54zrvaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
md2MGZeAjuTnimiWxWpgnfNpx/OMrLfnylC7h9Yc9wBd9ieuhCiO1SbzNreQRHH0oA7sQLGAUOSS
j9kgjOmC05Rlg4hpponvgNfqlb/3DB79HYyuvqbpB/XZFzJFEgohtWq0NLvcUASBwDXSSBQP1fJ+
jot/Em2G8GxKAjJDssAqWFwiOWqEJLOyBZCPvO48ZRvR+2a2QYtrtB8oBTfm/pW5T6MYWqmLrGLN
yWTxjHXfsN2NTdxUhfX4oyMug5oML0tFafrZenp1cdVRAbRUQaDmKO2+UUsneGPEsk8xuHswhZud
4eKQAOQsZ+HTTNxXkdND4vhxzQ7q6C6k6kPA4w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40496)
`pragma protect data_block
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
s5XCUIejQa3+El8ByShV+Vk56DhTcrTG7Y4=
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
