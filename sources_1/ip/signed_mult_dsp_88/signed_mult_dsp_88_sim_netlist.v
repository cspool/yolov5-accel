// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 16 17:38:04 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_88/signed_mult_dsp_88_sim_netlist.v
// Design      : signed_mult_dsp_88
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_88,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_88
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_88_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_88_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [23:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_88_mult_gen_v12_0_14_viv i_mult
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
D+nSJg0qLb5+dpq09S4KPeIelQGy3BZBn9mJNzyrLKniPK+UpuBMz7917tuF9b+8kc998Bc1hLAL
rn7p2Td9SnE4u4Ink2wqmwEXp0RlTekM47lWORcIhcE8t4iTy4H/L+tgwtxKKJySpNvITuJJFUxr
LNVNF5EhZpNhC2EDwrrJZIUxwlg1n6A8dYhGxpywbFI068PkZaMcd+Wk+2/Shfl6QNe7qg64qTo1
6a5TE9tNE8kKKf3qar+GSzaDvwPLQcT8rA90Tkmu9Ib/3iP2J2P5kB8d4WW8HesdFWCnM7GBY4oN
xnJfyIS8t7L4B5CUpftcp7Ixs91qDwHBbkIs8A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TkUdUe9fWgDxywn6p3ezjh8jSsumjc3HJUEaYL3YlRvtS3fIAJXd0+Ocz54czbg0jPfEIll7UVyc
kC3Elimm093Db+dfLETsdpbaZ5fylVTG69jUVmVAIWSjEdppqW153rAupgEwldO4V5An59sZA8pm
7ulZrojfQOg5wHRjjQ0veQG4yoT2+tUSz+id21c2iwGDvwZU7Y0PfpsElpwosBcXQte9Cel2Dam3
ghjwuACqUOkx98RuU4UUg4DU4cgv2Ei7ZQhf+7dQGAwp1ifOxIZjjvqzszyKKDWr5q8iqC9Hxss3
aDwGqo8Lp+ozKnzBxoRWXL0SVp3IlKaRW15jmg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
nGjP0AsgmuuITsl3c9cbc1to6hjqNWwQhtWCmFpXi+M1vhO7RLptbaA9TEg9pLWRSwWaTTWwhT0N
gOMpxCrOobNCHTlKNM8TBTLL70527ugQrRSrewCIThEAIP0xFi/g+bUfmQ2S8i9iiO4ug+xstpOG
JU4EWdRoBG9Vrvvrze9OWr5RF7z8HEzVos/MFD4SI1IWQwOHIDSrwDJKX1AK3J0jIkJopYAzqoAT
ktBpEQliR6zd8S1lpxaJ34Y/kBx5NcH6mWJVoRR0XaSKFolSQRuPaAfn8SGzRgfgNpj7lri4j0Md
/RRJcWkRa2VBcXrrVUHqKWHtQQuLSK0jDQ4pVBcJQSC7nKup9zUgBCtF0T7rdWuiA4FbQCGTjJs4
A8PbB2JOZt3cxd2ieTFygfCvuFz+6KsSwRKZhdstxXmWdOcA7r7xVzjxA2RBQYTLN05AVwtwa9Z0
dPNbDLNHpt5sr5l67c+jE53GrN8rAMOxbQBfMfZYEs4kuFnRbro3TyACevh8amR5sqxzRIeXMnN9
98DNG7Me3haF9ChEqZB07wCEdW670DLI2DXR/eBVo+F0J5aTKWxtjSNghOohl0x1JdO7NvXBe97O
ETnhbMjYicVNx2MpRrI9r3aJUQu1VhoowurVX2umWrBJp6PWQqrfQioyLx6RKI6Vwuf9MW/7QYtu
03usBlEHvrs+7hgkEkZwrEqx6OGTVdKm//TsKQ+I7US5jPM4NSEpYqhSWrKrlj4r9/usKwTvG/eP
ZAtdnKI1e0POmftCeja6Yb0WBzPLd/uRsfV7qkJ4BCchVoclUo3VUsCZq9hVhREMEsBwlURQtjzS
4Hjm3o7YHTXqDLHYCRlqwBc/I9wgYxaEMt2xinV/m4L/WjYENHHas4QEw3snM1FgfPr3WKgwRVOv
reZ2NM7CRA7WNsx5K6pZS6hto8JlufTOPkOIuP1cPVVvjhShDjKAYaGlMGXgNGzT5qaqtEzfuV/E
4pTWs3jdpyOFQz/ccNWWFuGQ40rsEFKRneneXwdio5CnA6qWan83J43CZhPjTleI/7h0feBBU5rH
gabwRobZSD8W3f0jmYy8okmMLqkn8S02qrcUpuCJh+S4EnMgvrDMl/Fr7OdB/60eiRlHsrY6DRpV
8oufOE9aPI6/yrdyIoqq7IA8i4LWRPDymTntOpmjIU2outHQbpuCAxXBimVzsUBVTgA+eaYYQRK5
jBczJSP8dBqG2qgyk/ndwifSe93jBmQi1GpnsQYM4Uv82JiU47yr9X7uBOBi4bx2qrQM+l9z+Yhi
fJAiONBxRDc0Px6oypQ0oSJydTUAoCILLIB7uj742wG/5yEx0ZiIKfk7J+IULKExPEE57WTqqztn
kI8/CHBUt0rWMqYGfsBQedOIfKJQ2k/gvOXtVAObtNJyIKEYsdRRg/+rrFoUzSmthAiGUxQxz2Mi
qvDFLSq0pSTSipx6QIYGsOcFXhe829a9G9KFRGDnfFIHh/yyYRfFd+nbyO+az9RdEXEqlgtQHEKm
Mir6/K+l6iccz+mvTt4wtCPkQmCb00XL1fguVVqoQDKOofYIFMjueYXjTxvJrX+AoaRzlT2Wzow3
f/EwtVjoX+NYOPjBJmOYua0B3qOruOs/qzbuvGmp1XafsKh9BekaFa/5CEKTFwoxm8IuUDLBk7ON
wk6ffYEQNalmkQhLMPDpga7AeP0g7qQOOohe4XLTVYwACrAMULM3BAxHiTezZWb6RtVFRPACNpnL
nVo44i4egtXlBeI8ye0N5jYef3JM7YW0lXHKpKikUPmj0zPfEfdPDgggspgziLMex5p/vKhTT8K6
eVLzKwsst1Robeiv23cP4aiVuxOnX5qsjAA5VYIPxltoTcQHOtDKeBygek3bSlpOc18NuJ6MFwzd
qRhnghWyKmkWQaWYm5EZC5j3pLSF3GdsRyF0BSCzw3DsPn7rJH9qTSqDt4gW8Cz1b31rKDajKASW
dxyeLZiEARO8Oe1P72nikQ24D+TBld3OfoSs1PtrEPhTpXdbbyBnuPPASuZJM6JKgnOyxxbAb/UI
AjlmtomDwGXt/Sx3xRBzvMD9qbHMQInugt9dA4Zj7dxfvKOegEzsZzFvI6V3WJgSAUmESceE5+NX
SDZrZNACjS4jx9ZmLP7Fkrsv5kbBOp0Q+4acBKxjd+Tj20avfM5P4VGytaRfiK7lJboJYRxuQdr+
hbKXNwiogJi7svo5tK/ULeleEkXh9NDt6oTTVyj5cRsgrOG8FjcUMzxScCWXHueoH6WDi/Bp4HsS
RoGrNnvevBjNRsyPZ+NQq6O46d5pL6WITGZAADiQ36OiuaMY7bHTfUqyiCrGbiRIZq8SMraS6kv7
gRy+OkvIVQihCMGpl6had1adhebZQZg1D16sA2ceMO9Rqu532RqwycqwGOXGhjvTC2+eqmvixJPh
G4o9TE2/OBogo05WnNQNbG776ley8DKBQe4ks++7I02zorDA9pghwp4oSeyKjpMM6F7KssxEAv3v
OXJMzdXQqcSxsebAd+BoCuKoKvrszA859dPjGN8EI/jInnFN7AdKwSi8voIaxryNEgziea1xRSY3
y/9p2Z2EA1hs0Y+G2xvbFNypBMeDxkow697JQyIxNZVj2iARYSsawCkADb+IO1LJALYgDbEXnnvp
N2gUstcgSzG6I+3qmqm/IrybvoKyr4Cs6eJnSEVXY5+ErLdnRH9SoiTKSxftDDXXVErsUKiSCC4o
01xxTIDMFtSSCL4i4C4QDaEzKvdCjA9Me1FBPJuUhuYKhc/ct8wpejbAeofvTewiT40ZNG3LEZFy
BlzhlcQkWiEfCq88cvN+gahnEL+1DtFYNpnqx4RPIMCGkx88kdmx7ZP91sNRqnmuKWO8D9RaHhwA
av9VtSbEQFAWia3ZUEVDaL5hKwBdlQepIMzw1BGFlZVWidOBkWX4oFuBFDR45wA6fzT40UiAN1Iv
uq9jQLlEoRFkEiVJr4Gv1cyf9QNlVo0MoVmdCCAbgHBAcZ7eeetOp2bHgkW5IjzPUQX8EMy5IftY
y8CcAXNzwxPesAfmPnUW7gVV7NlDb5WmdI3hO2m7N7u97Py7S2OTztdGzfyDPwLb3ubCoszYtZxl
qHtf3deQERBvD1sJxU5r4crrtlKw83IpOJE+H6ttPzadV+ccHwFWTDDCTBOVkjAMBdF+4G5hJrH4
8e07K8dnoGjHDG/P5N/rvKQTAJ4W2pcJKrVbxPgG1MVrr/QYkFYHMO4YrhlFkoluHl7imkv0vef7
QzQVtW/9qjNAwS+XX5LCPoC5nuYR4xp92pawnXM8/Trp0qza0B6IFps99d9w3TgUrQvJXB/TGYdE
XyhvbIdC0Nc/Zjt87eJHbJEUqa3ceJj6T+w6Ca2QZEZhB9rTcThYBuQj+M7MLxhaelwjJ1KovEnR
gPVH9TZTUHuuOiGP+WyZ3+aYmP98Che9vJRWBToRTrghD4lSadObRI5kDsXFib8QPvWxWzLm4f94
7OP1AZWz5AcIqrNe5EV5512AECPeRiQOKL736mkplBgFzy833hlWDvhr952EYDlPZ96FNhIS8LHY
BFWHhRLyxfSQvpSLIW1TDR0IoJDrRrOgCwKDPTv5QAm4C44NEBjZmJ7h8PTzY6evy21SHvqqNNTb
fWssfyH2CDveF5MSS8TF9UbptET9Ff5BqSMkxseoN0d2rHVf4RCvdQKOdqihNOMCSRqb7h2j6tIy
UDKSI9oY9tef4PUbkQoZPJviJbegsDZNMIa2EMX53TbyAh7up6e4qGMqUcGFTrigqGfBv+OntB4A
w/1bznx2v10eLyStV5XYpKX202rguQGrjdS4z7sOh/pOBh/8h+9mFT4RwFPBTuimfFZmWMKTH/Am
/h6PpP0z1tem+OGJTesn7nVhS0PpeEU6vVnRjGZJMdBTC2F2+66/iRFuKs44GmjkFd7OOuwywaBs
atjAo8DOZ4+Qhi79uBv974YJiNSmFFq0cDcs/xzpWj8ESWXIoKg+N1mdIThMDA0DL91VMnxgUlBg
c0IhAmf+Nj0pqZu6t74n9Q9GYEKBIhZdp3ysbzPoSwF640E8SEXzN8t/hGKqHql0mgmEn/Vzxn8U
H8F8r4g7UZpmdhx78VPozm6pE8fbaFYAKXTAW0/NgarhKRh2mSK/b/F+2dAJKR8TWu2dC1rQNRIE
SYZAbH/I0f3relyBaezuEonNgqDcCiG5bq0NUDUCmmgdryvZ+YKGttZOwGv2T7k1kTJkBPYHt5yc
Xg51JWmqsUU1o6b4JMfENhombWFwwowf0D2nNpiZoG72HcNKwHCvgdX4Xfz86SFa6f786QUZflOw
G1iORMZdaOgwVqRvMtx60NTWP41RpylFOm/j8IhiugjaP6KK2Anj3jCJXmeG+p3oAqMFPCNiboxT
VVes29ZKY5Yy7jeyRoDwuGNuterILejnALbg1XifWB0b6Pe2mglEbEaY1V4qfl5QoDEhPq40ZM43
r4Ntxm7P22vioKftKsm5J/owdJpucVUqlEq2AaH3zPeytE4MhGjeXr0Kll5CqnXwrA8+ytfdyUoZ
s0eZKWLB9J602l4vNGrlKswjTLyzfF7kZ2H07S47iuxXELSexVYhQvbZDoVMIsD8osonGJLDM9/J
0MPQWVew6JYpCR3X0EnoDQ1LmHg4dNTm/zvt9A5zdwypqUTH1Y2c5/lRoXnk7iECJrayGYzodfnQ
vlYDl6l2v6tsevzX/GmXCy0/u9+LVdINBnWqubGwkfsbsjGJ9ZwNtYzNgxr9hfx3rCutX4gbpQmn
hdWDMuYpV7Ca0kmpyzL2mKTZAAF1FAu/SYWsM2smzEE2zVF05abSKTo551f3Jjaxs/I/5EZhkEop
5bbMswgDgjmZ6hCsTI6ySpKuNoIzCUrIXOzOFMluIFpT4aN9DIO+42vX8rd3AMqsq68nA/AXu24g
re4rgpTcbCoYb1jgDZdwKEFYjrFq0G8/knfOBs81f6LsaKYV9Xtz7zKrM88mPd+Ps3mHp1UzymsL
s/Ee0XazYZ8HEFCWKbxG3WzUYJDg+aiXibjlRoAKXGjfc5Svvjpv5mrj2sm3urfeOxH3q2MmXUDa
2re9KpYj7LPZAZ2eiYMVkBtk8WNggE/xdGoKnqqAe+XrneqqhzpcAoFAuFgkQybb+HdbFad/iSNf
wDhWsnYWIMS/HmsNZHiwtOwSJ4lkJ3eoAmn+ANKzSm9qLjdS2yVJ0u27ZmgpFJUGOIKxqfgKOMRt
GMMHo6f5wtgOEfOZYwysmdDwMGyOMo3pDVjDHAnujZ9YOY2uYBavrJqFX8deVIMWZUaL9wnuJmu0
BjI+qG6w6pVzEfLbkhVX2G/j6Kox0QMkNKWRAlxB+pAcjH68xw5nHP8kGmfKUYtOnzqKJYUT2dZG
eV3eP3MTcux0teT/C9KXwdmcMm/XqTqN/J87UMhl1sImDRCBml2tZt7I86X620Fyqwdoh9OnP6KF
r646QtjlfmQ/7/KRNO31bZ0mz1Wzc+gkac7AytnI0isNEyUnMPFp09aTHFsWBBtcfKClNB57HDa3
NbFHwo+d//kWFqzT4i8yHewu3Psf8V5SYoreD01coZ+wD1KHDPL3PxDp0tSPNDcD/EtaIMG/7cIW
mJlmrKcf3x4B8CuTatCEVkmcsNK6Ia0u3dnb3ykYOcn+jlWZRp5Y43nY3tHI+nZ41so15qx7dVRU
NS1aZuxEIivETh0XxdkmHwtDABl1TcbKzcuAlakVPptnO+ZPcV2gOLk2ZuS0URKiiYfYWLv3E9fB
lZU/P5Z8asAA8lCchpPiGQrkCxUQe1N7aq5/7oBMLPrpPe6DcVDiYgYyK+GULckrgr7gA3R1e3Et
qPCTmhm9Q2p2NeQa2Q1lvOwpTppmiLSrd4nY/zd5OBHxufM5je7RXOOpumzjUSjL+cUxBlWUpKJ7
b2YTZRs2vEKtJ6CpLfvGJISXqjyC5QAwxZlBRmu/A1dXMSZtsMMVAyoaM26uSPW9ZhpDQNRpVSHX
fDwozjAdwLTYGfT5zMdOo6xjvPuiq3T0Zynr/5QPMg2AFCRlw62XP8XFrft1GfE+M/Zo/BvwAbQo
KHTUNY6OkgKiOM0rqTjv/WmTGsows2bYzjuHlSbG3DNLGaSjOKY1br/oyGnfyxavHmOf/QljYpOr
pVm8jLooXs8+ZklbYqxiBopVhBXwkVJI30AuuP4qBWBhNLsT6rpVyaSbWJlItHP2/MnzuFH4KuvC
Zs8YPBNJVRY/00bWIHoz+d/FE9uTs2qCI6IVJvlHw/D1s9DkQ/dpUf8dcYjRpJ6/Sj/Elvduvf04
nQ5Dqv5qIkoCyLwls7FD7TuIn9CW0gyE+37SgXe9ZNYrLcAXAoCo161BAds7pMfKDQ3zCVVvnvrk
bX94wY77YJIyKqHhOjNelAFVjhL0jBPHwR6lJ0aygWVXzT/Cs7uwVGaI3jCSAPUNIzeFqjIrRtAw
3lPAKuv79X4tJzHtrLpsBSmtglLOY6r22ZwL6WYf27DLppA51lC9dE9EpWsxOfS+Pt3tCMDUxEdq
61abTmZW4sHZb6XkUJt+uvZ5dj3FAkCF4k5JOdilM4nuOloELFfFvmWyOMPsfr8fWiXFdqLNctb+
UNV9hWYY8PtOgPyAGbuoABjg8My8fGlx2NZu7CezO3ssn/JAbDeXcWlH0LH18t/JUv5C0kzn7N/r
YDKdzUKoPLRPBTdqWKkOQCWFRDB/P9g5NxwPU4uNOQaJeTgByYSUPESUFsigmw1QqVbtz2rHLWZu
k7LQgC2FrPg8Bh5m9ygOBErVokwNGN6NcKeoZzCksUbyrSFVTtmGyrDpxYeYV6PW4U3DoqMIkIzX
h3nO6lY3pXkJQe2iDbPlZfQavh0fF4VCC9gSaG0vbp+JAN4ujDHX8bblk+RXjREj5iBo1hDeVnu7
li/BqByBUmu4KeR8iB+mYiiWCvUYkzS7wS+DfyRm0ek86PaNRIIHm4yYNRkbgoVnTJcxOV++2S8T
Ve82PaV59PNFpTtbILgVmI31EnFL66cUDJe4+8ecNPSdRTtER11Drmzoo32JZMAx8AYb4tOfjVi7
ISdK8tmlFSM5jxBnZSUOlz55UFHcYKV0VmjiSEz/pm25eWHxtu2pKUfVmX2LhJLsOaMm7mFMcM6t
+4wGazBPgL9FGH6JS+wxYL6bmdcLBw4uWtzRvh9j5O+aflKq//oohdbz+6nBqkhvclsdLPPUTCy1
ICQ1B/pcL4d9tGipJHzaL3j9y6/JgofEVVNK8jfCt7Ip7gNaWIeg8IbsygSMCU8470KBD/kTWJ8z
GFPAfqfWXA6hvqugXHK8+a4H1zPfcrh9D6bOwKMuJuDVI/rt6AfGvtc1JAzcTiHPJ7MLNENZyR4K
gkxaR5pn8xjhfO9evokzKgBFd6u/dl4taz7r421G5A2YnKp8NmP8YzeXmSFK8RC7BzduHCCt2cfb
tv/PZk8M3oAAxY+nduNtodrwDz9WIalwYZWc/tlXHg2WpI/vwYx9mQqf7rLRaII/BgvYZpcV8Q16
bowHg7UxJQqSseguVwsayqJw9gQAOsgs2c+DJOxxD3Gnz5UHI7BmjhGcPwO+L9urPWELnkVa2hQ0
cvhQpPB9utJ1Yex33j8YDaek9CGwoHfsgHXW0cKeMMDAAB9Ivo47MPvOSFdzcH5SosGjDKvkC/xT
t3tzWBDwhMqoIc6MlHb4vpdlrsDpQvzeZvAXaOU6+0i+ALvmOW56cqVgIYAPLoSfIDOvm4Ca0Oug
g0RDdtDdA7XzREavttCrP8M43KnPjo3xwKdzbWnqhQbSKWzo7cIYXksA5GU/4JvtbxsSwHdAygR9
8c3GoNAf5xV23uZF2/AQQJtKb+embeehAOfOtkHWJ2+FYbUTOph+bu1/1Os8HzFA9YkXbInStK0x
ZoWoBDGbw8HNSW8RDndhzMorGUEK8XdHIQLK17Vz73AzgEedf5UH2IZy3BsoDMDXsoqZtRNXdKOv
U/ijPpBDrvA6Bdx4O3LufzFKZwSdgXtIl8UBxYwx40virLstn+yJhjuaQj8/D7B6Q4W7g1BKj0Mg
jbOonSZIfL+lyuLqJSk+xIkFx4vkQKJKbz56tenHpMhlQaO9fREvd8VdhQ4uwYq/e7Hn7DSmQxPN
18tMjEIiUD32MbBSozfz+5fcq8O6+viwGmA+UBFD/sEuCHjtzGgwRfm2JGUwDyvz0SduBCDpYUrc
aGVhwfW9KWvhYV4HZc8Qkw+QrlhKYym1UIbzd7HiCcg5AYc0VJwyRFLSPcYIM4pUlcd7gYjsPsdx
UmaXUZGhgqo1MvOhDMgMM8vsb1GTEe1ywM+bYVMPEbmm/42fyC+ZKopsiZLawREB0jfZx3Vu7hI8
u3V+5u03WHeK2Su8WA5oOzNr5eIjmXtbqQhoNwQJwa8skpsmZir3swZIiKTI7QNCIUd1WpnIC1hv
O7jzWHhlqdrdOOxU0T22dfYB4IcV5gMG+pbzxONsOjBUAQ0fowbLzy6ysDYRBEgt82fmk3v5ZQNx
b7//3tH3lY3FeoU0u57dk7r8LEUO4BKMSoVoK2+J9OY8GHEWGeeQM4oTzKz2RaAHmC+wBySjCyHU
Aoj6PYQ4/Pk/RGiKEIHlphb633BWLFT8vJWiXROpAdQ5PvS6jelu+NQ/k95V4+CWLbSYPC4eNSK4
KSGE7NaNBO65qRAuNfffNbDWgR/1DUNRkMb2LN155CL2utsu/lcNCY5vc+7gLwPUPVB45HWV1VLL
PklCb7n1Xs5NAL18zyguhUZNOw/PlD4eEndAue9w1cMAFUPO6M81zxgrNar9FrjpLWl5/IhX09g6
Yfr9/JkTG1UHviQM819asRNERJkcE9NRYS0YexEZcmS2pJFP8vLV1yaPEU7XvQAP+ZfYEWTFnm/1
RV9GO7Lpx4PCTYwhKAapr2oZpSFwux8t8BQcIpnWEpSn9NTqHgYzZtBJjeD55dFOURCGm/xVGU2W
RrtXeBoAJd/XzcTr/fxev1SED18jVxSgp3ySUyRJ2qNgzEFJ4ihLhZGyhxmRca/yW9zMe4KXexXe
IxiNZHh6qrscYTBwf3FUgEKpKSwtB6ipnYwvBiGRqvkK33nP2X8FknPjQIvzQrpQyFSHyG3QnF3i
SneIeJUcYorqMA9HCN1qPsPVMUMaOBauRccg5MTu+WnFWt40qsyEZUVUnzrkEoEp3hlzdl2R3gkc
ClrwXtJZrObFeQIzhBHlFLtMlpw9+dBzGK8/M6rjXkmF71Eg26qRFfLb5THc55h1d6xN0TObzcyJ
uiApSXD3vp9i26FPHtvOuLlZA3S5tHCZDYyRFrRjGlk5d8vQjwEwVE371B7zKwlUPRrIvBTFOStn
YVL40zEvNyMBX3/zbJAiZCwJBY154/YyUwkU2Q4afuCk0D5HSLtPZyb1l9HKY5DHRnLQEViblUgW
VjU+Y5jv9aN/sQD3GOPG7+qvr7U/cgu5/izXvJ3JftFVmfppYV7dMpR+xt0hMIgNF5ilB/KuJtWw
qve2oQbms2YKUAlw1xxgGHf2atgind93OMa9UQby3Rnbv41+W+jFKKrG7opnF6izms7IXLMSBcyW
VBsVvNQHAcEqVsMqUR82AMIQ63mGyb556VHHQ6nvi/qQzlOsQIBWhQtNEwW9QEQZtES9SJxLzskh
CQ2n6FX9yMnX
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
