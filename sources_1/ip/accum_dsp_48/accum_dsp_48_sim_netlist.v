// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 19 14:22:19 2025
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
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [47:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [47:0]Q;

  wire [47:0]B;
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "48" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b0),
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
pzbF0TMKyHqCdBUrh9oLvTtKQDA2og2MsSjkjGh3mbNxqAdKt3kYyquU8VKcs3hXpHYDFR2bpuqy
olbRtkpE+BxHEYOzoCxvRqgH+TG9tvGQQXz9dC3gPSAV1+sfS9CepVIyxJGo0XNr/tcvOTwv0FAH
sOAJUKGaJCHpFqzcCBFMtE5gnBfXXTgtrNtrF926wcxAsDP/Ti0YnXz0Xudr5OImHfz9F+LixGP7
6ylCI8Go4YqkKuF4vbfU/BQnktPzV716Zk/6qBawWwO3c+zLYgcZXgMXqkBRDtH43EiVccsZ8Mga
+ngQKtQxfHZ+TV9GPNYNP/5NzHaSXjNkXqxglg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mDXloochDAYv79TSR66i4h4v54tHuDpCVaCheREcLcy+xGxu2eG6JcEYZmJjygLS320JWmdi8E23
z2Mv4qmkU93u2llmihOZtohIriqzwhUSOu3yBUnkkwi95bXZmbiOgfOGMXg7Fbiq8FbacDXXlB7x
iSQ2SOHuGKOLag8U1cJpz+ROmM7YS5TVWyVHfdZ3HgiLB+UrIdaOgS2M73JoV855ZxF6mH3Ywx57
vcLms4b1R+xjxfTQJrul02hZPhv4cE34PsPetKqmGL4YGBT7MFYMJY2fYV1YTGcuHDChnj9dcd1h
aGZK0KcunqaLVXB9ojIuhFJD+fhaseZVUUAP+w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9984)
`pragma protect data_block
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
w5vDybFO1hUz
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
