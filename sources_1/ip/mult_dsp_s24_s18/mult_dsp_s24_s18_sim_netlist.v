// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:16:40 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/mult_dsp_s24_s18/mult_dsp_s24_s18_sim_netlist.v
// Design      : mult_dsp_s24_s18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_dsp_s24_s18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_dsp_s24_s18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [41:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_dsp_s24_s18_mult_gen_v12_0_14
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
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [41:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [41:0]P;
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
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_dsp_s24_s18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
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
Y7w42zYwXaF9mzr50P+WVazMn2Lh8NIFk876A/+vXxfvpDVbZ2o9s0w6RIhsCk4cm6Z5x1T8QYAj
ibtakoUl/JL6ZiH4KYGEUdjnxgerCh2eXj4sqw3FUsw7RK7dDrHkl/qhl9XSqhE3Sapruti1+8GZ
tZJp/4wNG2nBMipXiYFocGJBfSTlkEPeCUp0CwgtfVVo4Ml00LLg8hxqqWoGDm6PDBsl9dNw0xjJ
EkWe3yPy/mVJJB2lQeoN6YkllC6xqaeH0VP+7rJlyrEQzFs9vCzfcKsxlIpcbQMopNmyYx4dn6I9
ouff8jXIr4/Ide+f+vUFLh5x7iXR0C+PlC3/TA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
swmmzCaXXCyWd7bLF/Vyu3+28Gfj7nV7bpqQZExEwZvPwtRsB2tkSRE3vRfzeIaB8NfD1dQD3PRA
u6dN0gYQSMHhpAe7MQTIxqc4hPFDEmNBZEl1kRvWgrr0YLY8GCwIt77LHMf/J1hUvQRPFX11gSk3
//kmtp8nZ3Dvp8W78W1mUQVSvcJJLMG/9m1vf/Ji2N9PPI4r+PdZUYjeoCsoucbJiDqyXvdKHvdC
AxBbjwPbWKTZ1SeSPjhmoWtYSsO+LI3wHJCK3xgjWYGwJzfL7RSK8i7uBGll3XgyAYpYH/YPZogT
gpFWjhquCUNCjiarHaUPV7SPsc4mNgPWiJvTjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
IQXc2sXAoV0G/S6jJHXAcvQl4/eYOWA/X2d4Y1juLDkHGUqyiGSepbsLEor/oYVzY21nLkyrLHE8
LVojTIvnbnF16mz0I1NRLL1WtdyGVaLggxxEE/U4zBoE49bTl+PYTuLMapTgZDy/x1fp4ZMFgZxH
qka7m0hdLrWP6a3DE5u3C9FXXHX7/bJeHLzuoosFwxOtJV1S6t6IetlKSPbY5OKA29tI9hxzrm29
jPc2pBZT4JYp5oJttwnEgGuAAND/iPvNo0NuLUKyfYI1sgesxuTPO2nHQ8HNpXYCfJXqi0rcLx5Z
GHcGv3et/M3HWVyRKQ3qV8SU+VtPZTF+Jp/K2dmtfEZscqyZVU5tQD+3yld1FJqImFc+Lp8M20Dv
47ofR8493VS4dHEXE07af+1xxrs/MBqqbjeWMpT/BAACodR6RlHMRx3zgdEPHMv0ysU+jg79u+8N
Xac3RtFaBLALqQyybOFT54vdQr1aDxTDoztsJueUXcozu0uuAac8eFW8V0zZc5unzrqpJZ8a2iD6
pI3a5P4BNTvPpvzipktn7wwzA8dUbrzw7NMOW4BMrEJd4JeEE7CSupOrJiwDRYQG5pjaUnLOMakt
IlQHXl19UNk2bpnChSRs7QFILM0iPbIqUCLwaBfzHyUKRcK0hrT5uwPhtlql8E1NdEqNby9ZkNHm
l75nzXUJ7M8JYxBarLdIUySEEif4kk1yZA5i+PFku/F/zm59XQ1lXoV87fY03r7wLTEZDk7u534m
RZUTr1jdim8KEsMlk0GxUz4bjzTjFuubTfaGcvDEut8pCtqjUADjAHBIYPRk+8Mz3LIhJmQenf6v
VJYGilLMY6206pcGJyTqMOaBXjAY9xFPGH5mJbJsXg3af8MAXrf6yiJVNUMYmed+Nqni4ak8OYGK
1ut2ubFxsu9maTY05yPABY9MkKPjdV0Pld0NtSYDfa54mJFlMQMIWDvRXz+RV4l/nCwzASv3+O08
G7dYWb0ZZQmLyFQJC+37VQ0J2dvMpFLZ9CD5rjWukFQhU4xnVb4V3wz6YqXYHH30BnGM/dtj4m4+
O1ppSwhi70adsJH0SuBGf5ajXZ0f4ZlH01B2w11TxwJRpv1Yvsy2/OKIdPoHSdQltJwb6CV/y5dJ
Imcqh0Aj84k2GchffsIO8147e1U49bZl1XsFUbUeIMaoABB91wPlKgwSgYGqyFvmhKITlQSOIvux
OHlHgLDdEsaQwqINJeAHqgLjUwclim9EaltDAY/IdZbc8MXn2FyU4mjsZzNQSQUv4iFFGKNuUCdy
8V4DkWTNIEvFTM0F4TMMYoMu1LTPrisvqnGS8UvysG785C3c7nYkfD03NRc/JBJHjFJaRb1w4/18
OdK8bS4ly3szf6YSEpi0sV8H20KdHuOwNqWrkWWy0J3aSuy12ia9yWze4QO9ERSCJNSoevHlqB3S
4DI5B+SDAT4G1wv+dSbENRE/sLOAVPz5QF/OvROqO7u5Q2SgdrF9+Z3rjpAIpryYpjlcP0b4t4oZ
A61XssToyiota3QGclIlcS9gg5bR/43cmybaa9m6O8+wQvYJeUAUaaEifLQhr/cQS1ybZ0CbbE9E
GWePXJXRXpTYvnqGpdd3BSA3/e7Cmqg2apBnmCo92w284iH1fXm2KVoQbn/HfVZ1JiFFUO5uxyV/
vXA62DalWG+k0sb/9B6VL3oHbCoGnE2es1rDcIttF77ZqDrzgW1tEml4NcqFOrdp1J28xhTOAsJg
lPsHkouEiBjGIC8kV7cWHOB1ypee/0Pk7kSxHemA1POPlNMWsEKMv95eaCU0Q8fiozBBgFO8l4uI
sM43SN/j59buMdcTN8OeY+U6axM6Or4hHzA52V/6hXS1H+viQw3Bx4JJd2Tg96ByCQncZd9GJ43P
9vzQn0pBcD+arUACynjfzVREQLKKd1lJGV9EtSYVQyUrv4NeSfu+ospv/uCFV0MAdN7O+SpYQ6dF
Cr62UWPP70yjVmu2wbe7VOavY7HO4qKFLt1am1ppE5fi3cxs+3LFgab0p1JJWIVrkkohl/l/2LxV
QQ4CBIWZaiv9ZWJI2xlfLv1Vrsrd7QZuhrql7427lVrn2Nw6dOtnaVOufF3KsUwZzyuRTSDmakVu
C+pHgN1DLJqk1b/aWMWngDglIkk3C9WiMu9AAGalAL0SWPnR9paOfI0nQhXsodj7ywpAmT3z0rsO
LNW1f2/GEdZn3kcbaQ9MYrwf+Fv7yswmfHxQJuQ/1Qj+Hveno1GVSl40lBwy/Ne0hj0cK8Db1V6v
vLJ7kFcYsdrKrnUhAHBck+UNRwVb/L8sqllZVNgtw/4VXSaLQvWPEYwJaYkVCONIOK+XQDva+kQP
Et0PfOFJUuzKzSAVGmg0fyMsVKyyIOjzV9gTTLzdC2fszT99HXxDnWf+aeBssb/6upsDGI0eFw0v
uSI6F6wP3TPr8WrUeIG4PhY7dassIczWrJzXHFeMaSbdrZQ0QUkO4CfMxSNE0Dw+T8ONZ2Di/AFm
Jyc1tC+aIdMfQ+64eGGoik+VTlHqjSly597IbakYvOd8ZUgb4p8BdEn5CPSENoHeH7RDCnRdi3DQ
SS14/jWOTi+1EktYQhYywYV/+xU5sGErCUsdblU9N+/6IK/NCcnACstNa95RO3jIYL4iO47O4bxX
e2Zu4ChfCkXf7RSuZ4dB9YvUPquHwSreao2kOhoxnF2vNMrqkBf8dpfDnXs8GKaCs9LJRyZiZb8v
EwFoD/yBP7tqp1rRKS26BBkuFHr8YDUjuzDb2uD6RO7xSSUQPG8eGchvd5OD+SuVwuJU5sP15EKB
iqHYMkcnYq2r74e/S6auf5lmSDYg0nehU2z9lGrZ6+4QebmN/PY8KZ1FR9S/z1M2MWK75inWDdmH
TIUR3UAnCbodDw7c6f9vuWhE2gjHPbhPf8/hur3NxxRgWu9jMeLh4h2GkXnTJtWPHiMAaBLeZ66c
IttmBsAub3lKB8KImnQ7Ovb6vJ/W0homN8RN9PsLr7QcF5cmbuxXlr9pa4f8jaa9kQRilD79o58d
XyMTG/xNTiqMmVmz81fAsrrR48MFVtdKNfpJ2kJQQ9E/hTANxJHm1UJIHqMVpGE9hgn7xYK6wiQh
nZl7U+4JnB4OltYNuVYqlxZ0m6PtVGrOr4VT67lRSHWYMYxg8i8jQHTSRG1Pe57YPCRvUjt6q2eZ
TfMC/e/TyZc8+n1P2xEHvR9QYHPhbaaaqshtp++gGgxMllRL6Nx+3Utv5B7HdkJj1Ka+x20KGP/2
fvQUdezT3y+jVLCysW3v5eaJOYNEmiOhp8DSR0m0Xj6DWqusIwCZjhzpmmhDCyw1DQoUCuAS9FIM
HWC5h8wsME9Y/jdz/sip2UBOD3NmSX2nNW8k5nJyaqjjIiqh2FQFXnPpUlSbIoejwqY63Vt5izvI
tDLv23ecsalZGlm2fJDAVEI0Hd3Wfkpp2K1zCXzrR8tdHPX1O29VRt21S7GsREtDHOTprNJRvy0N
T7NI/aOJRIZNvMqnCZPN0SDHakGyb6a43BMsGSgO2C5ATJ6yxxX4rn96rmfs2Gi31t9GUrUOF0Az
Vc677BQco7SHNT4Nk4p2Z07XO98P8FgfUbfijHhcP8boUzI82YbweOQhd/JlxzuiZfLwoaADW4G+
42Q9D89h0vRxZbVjemjSKsqFbIZMr0GnIRJSvkZTuHDB4t167xEPSpudWZXgrbpTzbGEcG8oMYcB
uoaWSd2Fu8bc+XegQlilSK58OXRPSal+sY/+CMAo4zTGy6jlwk1Yw+Kk+WVY8gGN9/Mk9KLU3gH4
fnIoo6xYlIZV67FxMIFqtPO7PQ0oCDjVo3DTWRXhoXJATvxt8Zi+C9RBj9JD1dQh56zvbSMFuMZl
cmC9KIezRomtcC+h+2maR8StTU2VlUR4Czdc9v1DCNFlfmXXfqvFU+etJo9B0erBSU7NuibgT1oH
ZGIBBCDI9yG5hcR7H4IfaQzPtfBel3AN4sr8fO/OSlvc0qn7VogZ5tcuyRSsq9O+LFCEfE17MerW
FLZw79AcL4Qj5fCpp3NHDjr03DFFMMVzR0Z/I9R/9smGzmMM+NAOkG3BBmUsja2x4OXatb/MD1XP
VvInvjpmEOQTd4jbbJ9PXo5/AVGB/D8B9YS1XoufGy6s00JuFefObSFVQ9exCHsFoj4M+5o2l75m
CqpvCd4QJIL4B1tu1Nlc1656DKKqDHWyrwUJz2bH1TN6AU7JJcxx8zMV6WElPFn4JPV2rhyxBkq0
Tdrdgq3QucI0uhfVEMtkfp1kzs2Xh3YqrII993lkHVGdmSZT1CwGH1C5dLSgfizZvTFQJpLXzWFV
vj4GmKDGFUe/AI1BekxNvCJAojiHECxrMisG5sgNcpX52hient/s1vtXkjYcZuQPWvqERRmMazmu
gq40rRtN1vUPkrJSfMnzcYdG8sXSXG+XF3ok+zS50TBk5T27jXw8XCSdbCVL2PkPtXDZZ/xoQA51
QBENNx3J9LFU7erYw8RkqUc7ofsyw9iFxgmXMq0GKZ5BLangnIV/zFatQegAgTwA1aEHkuKwpWrO
3C/QYJvY8Fhqhy0Jjva5gCD35guXgRiU8mudsMlIMSOIB6M81O3vQBknhICj3JCLPKBObf9lYR9W
RWbtKcc6wZiLYBtDDPkRqFZMlHMsoNcF7brbpiwo6TETFVgO//xN1zz9e+WjL7GBqbFis48yZONy
GqO07vh60eG40FhibXX6XF/qmZvzLC59vgjmUbewQUcoRDTuPfGQLhCSRbVqQeRs5yJAuCsrwmZf
IWt0qOcWJuBJJCYlXeyxVe+ypqwTr001Q+gB9DQS+pLwKCCKWnt195CLOAwjSWeetFG1S6FT1sFs
BNc+la9XIHkDK84v4zXg37hhWoQ3gByop8N+EY9B3aiQI33Xn81tLOHkaQLiQg+L3Ua4y1m/YdYg
1FcW9YW67d+qKI1GrK18ZBW+rmY1/b4PIK/rRQa2FTeVJ6rUlGUoFzPxyhfCS7/91rNi9hlxPPJh
QnQ1dIMdd8BTda8g8LxNtiD6J+6veUv064Tkez6WF9Tboi5Z/z+LG++Hp6PR9NurvdLkTCGU7d4G
gBUHmw0izVfvvSkR9tsYNs3B0lhQexM7o/OKh5o47zGge5UEylg+Lls0UOl6LDeX/FNIShKS8x1b
weB94/ztSq3j6eu/xg/2jlQIlWCZEXHjJBli6YcB99j+nqFdE3O4deO+aI2wrrWkNMnKvHn/MalY
x/+R67ZKpKdpJNL9qrfT7m/GKNi2oZ+jUHbPXEOg2yT4qaDA0ul4YN1SrGFzxaRDUnX1b+pBzV0Y
MjuND6ITT+6qlGgM/QTLYxjf3gg4SV0zs76evBkmCHFT6Kn5c6jpH6zhsYe5KmgaFiGzwZ7DI3Dv
QpltN5S1jxpL1NvNLaPZsWVj15vZG+XyLqCHSuA8eiPkRRKSnwmVpxvfp+wWm27jYVUGhzmKr8eh
cJi/mKYkg8SFKrt/R5ue461S+hApgoslakqtD4b/dIivctH1GzGJzSHwZIQYkn+cD4aAfoICvez1
bwNvWHydNDZeY+D3dbVq+J/xnW9Q4CmfQcyOX618S/W8il+yLavSQXux/5OgP7agpHh8NCyAR8u2
+oy0kXMUuZkoqPDDEuvccy9ZN4Maa2GHHBLo0wFMud8MVidSyKEE+w73JZ9zL+54pN0Bk8BuMp0j
h1ztY41s53W2X6F0tFvA/VVE6ZsoaQRt4QHX774dOo0KyGVKlNjdcSQ7CCvK30AyR8HoRSLyFfS2
NOj/C3CUzjURGnOFXzmT3PhLjx8GptE1r8ePeOcB6SOvsD03PGOLRY+lV4aFmzaRhr764qNCyFt2
6a8E/gqqU/38w8Nh2GRdlAh96qCOSerF+eDw6or4uOwFRXxUb7Mf03oKG0kWykwiwoFKuTY4W4vP
8urAJ2OoZoetlJNeAe/o9K8CXUT114r0bNdjJJX02IXpp5YcAWXZ7FYcmfpvoRrvyzppR2TL+70x
4n/X1IQZyeIg9nAUazzgZlLZ9hXHDATXSZwvftYxSGDdDO8sbaWR9Lb2py0kl4dLiOUUsLEXwdal
N0V81oVwJ8hpQrMELQ6VyWSGOoAXs7cUFmqfe0woEtn/CGSnSvR8ALIHjfrjtDR2fPPfGq3jYZG6
IgNZgLJ3NjZOrp3HMtbptDL/+rl4wFE7EUznobSQeuBiH7WJRtMwnpL/QQCSPk7cW1mPk2yQ3lAZ
wboKEg+JVwR8CiaQE3o9jzjxzJ+ADNLhyyMx90onZVZxMZw1fQwTkJGuXuM5hdxEkqRcp84UfmWM
AnTPNCS86Nhhe11Otq2W23AnHe/CWtJ8R7IlKh1t/cdUdTXt+Dj61bVi/n7tCGMI3iIu7zZhn2qR
asBxW7TgSKfQrP4Han+ifBQWjGIVkOhb9nKVndYiAC5VFfTxHSQWm7d9sEZmv08M+TwXyuamvIbl
M0aTWJjvBLrotk2mQev1ZEx5ioweMqvGuR8biJJAYBnbOsvE5nHrrPTR4wSQaLbHvIYhXJq6XYFf
CNqFtFrddypux1XaOdHVt1VKw5gqjwK3JXIKuVTKvSmnAhrSE4VvDWpXo/67Jvn/Y9XYfHEhIINO
lfddtqXcRw6LWWf7Qqogd6kFyLoVWeeIBD4w9I5t7hZhy31O3mJXD9m93sIwlK4p3mz9AUx2ZAm4
qJnM8LYeIVAe1aFXEH8j6nAXUpscAkk329l9QZreFKiugFVlwMbK+RUyl83P0LrwTjstRl/5uVBw
meyIW7aMX8PxgWLaIkv49yLZ/dFFTA5Z9PkjWjnkqdqf1oiKpi341Wzz8rel/POap3IYbbCmu7Ni
0xXsadxT1KPtoAjdxMaLKczBHDqQF+wS2zU2AbtXXL2ylhNQnMgNte/YQA4nNkNXEZVn8NX/+Iy1
9kB0LlDuy2RaddHsUatA5tTgEsyBf3JCXCoaULttSuw9ItUXs8lms5qSVg002fHfTURaL9mfDiue
V3NiKcbvhJBW2EHwo+LjlTbMYQTieJXR6pRWsx+HTH83Ooji+X5EJ3dkdJQ1AUAqeQbonWVF4K3w
jk26LLP7BSWVm6rKrwREX0RRva6EQp/dvT8jlPxJ3c5CCdlug7e4wUFRqc8WyrkkqkCYsFTm6vea
bOnElLq4BRpv1ueSqqMwgM3D07Jm1uwmPD5KfzVS+jt7p4lKRDNWibGsLwvvdvwTlj2RIY0Ew/fI
QRrqLhX6qJzVhQH4IT74e2ChGJA2SLDSPgq+sUwCfP0fFl7PWLXuxKswks+PEKLS1oONSqQn3cx2
kXogOXzwr7KD306WDVI7yC5Anxgp6mckqn1ix+1gYLAU42Hx2o345fC4lsqcc5c5dLvYDSamjMQc
soYwZclplH4iqp0+FsNSyZHxHvIAZYO3HNPRl21Z879H96/EaDYBsFgfuqEazP3jpCtJL/fwFBEe
jdNx0t8FiqHES5a6hNNz7a8JVO3LbbQEHpQLpS7izair0J7//SYVYfjnKAgsq4Vcs1jB4yA08Te9
GPLAZ+N+WbdI2S1Z4RKLNQipaHnO+ut4aycH/bkEueYkIAJ77ir0EMkp8GufazgeyKKxbMiCrp37
/TCAV3Q3tzLU64KfKv8Jy3PYf31uXpqOqeC3co0/9WxuGl4PENZQLzpPgw7hdchovmEjv6mutclF
TuZAdojgegyzt2jfektsPXlMrpvnEp1lPBw2hJ9B48TBnyA61bFdHxTW5tWE/igWREeh+zYTz0sq
kg1oMgUAp6RCeoQHw8eEnMHY2BFLF9umNv/vJ/cYS7xk/NHn2jPuGJV99qMpIjX8rfTveQE3xo9a
jT1km1Dj+cu3AiHOc/NfbV0N592RCh+bv6nu3BDot8Ms3gNVKIiJG/IseriiNEqFpWhFl665xdIL
O8cOnbKTng9aKt/Xm6O5iIqgCBWx/CSV8GarAdzISYQ0QJ76peFhlZ78AXmrmDysbQEqGuJnLhJ4
PPL2CvbMceSCVqaWkVc6iZnBcDnXM/8h2T6jEosK4DmStumOzVWk0Pnk1UFUjkKVEcPzB9m83qFP
KTuIUe8QQv4qthd5T/cujj5ZF0LL0ojtt8uH9+g6bQfOxYLcYkWX8LOvo9BGNoJ5gunUYlb6NmfY
KUXfeDspRbZHxXAovO0p5gE5E8PsnivUvFh79VMbXjuEACP3QzK6y0arcmKnqUEBSq0bFHIhavB6
VCm93YT0rbg4qlERkeq5+ExggAOQTJlSk+MCv1bVf656UpYOFWQGlfomreTVUoGqGSMHAZjzjr0+
gr0umiaogNR9kpGlaPTknjvxDypAXiCQqxpidiUPtwXbcu9k1tky7TZofWORNJMJNNXfADAgvN5S
UbZIuA7gtN5x0xooEMwi42dLBMk1UpXk2d2rAdxa9P/vYKTURY5x6OpLnbA14OUSJvs5gLlSGLoR
DdK6iHbETxK62MElF0q8PHIelaJ/PN+oNtPibZVz+w9jNu/Ui3mPxutg8pjdsCMTtctRR6p/odjW
/9iJnwnXCkKtpmdpLZgCxFMvwPNzvshApD8NIUZkzgUgiS1GoY7zEcIS2hYyEOd5zCjeGPkQFekt
xG4Ri9U5HIJxtQkmWvcjiTlEYs1xx6360wC5hvyUSYaP2Dntx42cpLQNuOWiRgz1SXjdX0pFq4EA
XUXeeGxon/KzMEX43X4NKqybZcvqpE3HyA+ckYy3z8igAxBq1shjzXMgFD5ucQ53E58VfYKCkJET
NvYtL+DY9oiVh07ZuONnjQmbttPouAWU5zkCw7ufQ8/ssa9/xGGOWdycoOQJfZaveGHf7XYspdXN
o2r392t9T0Fo/un4t2zdvd4vhbfggorPFT+wtuXALlk4dji3RUpeeBHGTqsoakr5+cGr0N0guRi+
8PSapOGKa5uFWT7ItFwffKBmiaXVD26PYHGlauGe1J9M7UNPbMC93NQSMIGCGdmKBymWi9O0pdYK
qgNrWLpxmartL+xfc1dWqhWh+U27dFJoZ4rFBY5NwylSwNFeXj6aBhqXdwEW2A5ZlKKW4AZJpF1F
W84EADE3UQCw0W4ggTO3FKsNi2Ld+BQ8sSiyFzjMsZdg+RAk2TRg+UvHiv9AFnxBLFk9f1vcEvRx
mx2bZ3VFSRHgGJyr3Fw79eHGNTq1b4SJZFYCHNRNNpEuWLYvG0vwk+OhAH7E5nk1VCxKWZjc/IUE
gf6/Qpp5JX4hXqZga5EyLdk3QX54lj/+8S2vsX/zEuzrUlBadU2NJpzzwGuCTOGw4k4uiuk8k3Ek
EKXMR4TCubItMPCBFsNl7sPTa/UCk9YuUsF/P8jMqXRHOKE++Drfm1Eg/29XlR4MCd/y1PPPIPYm
uvkyCBPDsDeLnBYTO6TohatV3v5/DMeN/CK3NSBZHpjAy1Nuuk32uOSefn1pYlVfWmp5SSRx+6ys
u9m5E5EhpFt6afBxGoFs+YByoc8Qw05FZhjdWqKk3nQYO0HBPETRyltWR425faZsKsJpqQvy04o0
LGeSt11grQtxSqV+kRiRdZumC0wIL/NS8lr2OCTC94I0LdH/7RHimww5HDtPXmFuxZKgjMhlISi3
pdYVx9wG4g7ih4W829n7TCpU5v4AEMqi0T2uKBeqSRE7lDUHGH6+RXfkrCYYhdZFLcmE/MgVssDr
+S8iY9qByGaN
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
