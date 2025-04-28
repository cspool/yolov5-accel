// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:16:28 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_dsp_25_18/signed_dsp_25_18_sim_netlist.v
// Design      : signed_dsp_25_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_dsp_25_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_dsp_25_18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;

  wire [23:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [39:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_dsp_25_18_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "39" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_dsp_25_18_mult_gen_v12_0_14
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [39:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [39:0]P;
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
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "39" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_dsp_25_18_mult_gen_v12_0_14_viv i_mult
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
RRMKzUpcXjJx93tQ6+xUwu/0z9A9ii5mX/5ROYprhhza28kd9q6wWyE0AFqQzWE82MuOqNmu8l1o
YmLhKoJJvOLK7Pp8wik3HLQBtfO3cOA/p/dq1CAIeMunhAXxquAPdftBynbBw9pemNh9t3pEttKv
SUlm64ounvBxbBlYEYDd2uXn8qFbVKBiNzg3GH1mMmpfM66tColuDFwQRxVUykVoiUxGRm3rh+6a
TOzKrZykBNtQey5IDwjpXcbNWxpSzDNxG7Ng+F/U1rx1LNJaa00JxJvE9kAjjYnipYxTe3fLNkOO
MbL/MY3n39T99+7YeGe/0nbSb7aA1mSCJg/Gpg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mM/wi/udlCAUpTiruy/OAJOiv7shIm8xcue9YpXWOOIDRVAmLOzJJv8CjbPqRiLGLlL32JeI/o19
kzPSoYaae/gsHpi22WoEdE99yoS3OUYbFZ5f/3XziLx+S5Sji/2tp3Vaws5cgqOG3ATdKzes9+Be
HrHYMExJZX9Snm9OZODXIep8YRbagyXjDr6Iacg1erEeYbl6th4MvhqExt2bBgdnzJjS76Xaa74X
V240oT+USqAsUYfFhK/7GcduFQVqQBMvsFC3m36L1lPva7UlQzWC3AcuuTR1zgwgzjnvpWIV7fDk
EMbCfjCv7Ae5zSoCFIlUYGzDC2Bn2tRX3XNpXQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
f7+QU0LODJLQezZ9Qn3IqLVGOXeW3dDGhJl2yR4w+ccKomIyxS4iTzYtKMG/hTaNmiZuEak5aRGL
G0DInHN/Iz6czvBWZcku6fVnbw05dmAMDTHM3XQ0/lvW7z9J0arpHtilfRGfoU23TNoLlRT4zBsB
I+q1UbvfC/MVhr/UkzAAuLLyHK+Oda18IpyY/L5DbCNOJkcXBbU5MZmZdZy32tihomiB0k/7d6cT
9t+sGEE6aMODazPf/2PZJnzdf7kpBQvkEoPvpdH4THru4CGxoIZCNbO5T2MpSgMuqXxfN0AtbzyG
hfpwgdgu5XJOFM3XL+oNfZRU5QXU8GnGv+ajqwT0CHk8IzNUFGvIYhr1PuLy+QVIG6He6/l4ucfc
nh3QmGYrLJI3+ajG+qar0v8TywXKvUoonarMiJtNAd+YzhSGgkvBdUdkeKOkR8+mNHgA6p74SIHd
IfGoyEv0v0asHT4nnLU0jPH2DrprxkyaRROXU325P65wWVYKV7anW4pzxfABrnD21PtmZjpbGZXO
QrlryUJIfIOvhFf9Slcf3vcMUgu7UejWedvoEEtxXU6qz/4FRnXUupYJSDy4PBf/n3y+BT5bSNf6
MTbaSrx+164aaL13XFRVToKkiCDW0L549wYyaGSsjgUiAHTQoSRXY5iRRhjD8LDKJQNt5AZ+hr+3
CxvvYlqgpYigdgEF6zAH0IOM5a3xImC6Gt5pWgUAH9MUv4xUIfPZ5RZYbEDksfHR9vvKRHVtm1xz
qr0zKQHvO9w2bp085dOOeK1IQFcnoUKdyx4MHwiDPSACbduql5IpRhXsOa5LE0c8CIWsMudgr4S2
xWkATMHOwoP/U0VebPPVij8RAX5Og7ImcT6GGOdlwINt6W9J2vnkS/EicmgAmmut+pOqZ3dYFNse
2mUvT+wmNK1G7SCjFATlz5k/nIUjMVLpG8Ir2J2P0MCBQ6UgEilv/H/24WSzlR0Ure+nlZFOXftU
ixtEDBIq4gv3fvqLk3zf35CS0kBFQAJqwnlypbUmHsVsBv5n4wADMpmyY/JXdHJnk6j96hXR96Or
cS7ja69fn0P48uYDDT/7hyi5xYG1h0fqkat6gzy62cS5qFX/0pJcmpgw82sP0OTCCdlShdgVNeNA
iuWb9KQFmzUH6D+p7rKWeFZROF8nsNwZefciYE1eX0L2iOwaUfcWstLaRm3w1PMaVj1tff49sl/1
MoGfNO08dhGi2aLAmusaIuV2NA9spRj5G0OijAh7P8cByrsExIsSJ1alwJRXawlPHHp4IPFPGmUy
EcCxc09oU/+jt1G4Gj6Se9xwzcyB/IYJJrhZJzMdloVJn1OVzQySPwhbLVBL6EZ8K1HbupOu6zB6
CSHxfHFsTMfHee5SbNpwCngQjCFpigeeSa8WDNS9EduZ7qdeTwx8nsCsEmu+9N3uphgaNb4TfJVm
USaj/am3D1OgO7N9DZ/EL89C7SNuHEGFfC/ZQcPuVRyz0yKN82fFNLFrtyK6wYtwEbYKR8mDCB6D
A6BJN7JPoHKxDtL4M9ecNU+sj364rMXCboZmnReJLoT4wpDvk0L4F7PO3GpE42TJ/oxDGKGd+wnT
95M2gzTDCEPAn7rlka1x2r4wpOFwrlbTfUqnJnylIvew9qCOHZKP50kc0HCfA5u/EmKsrvbymkRK
VIdsiGHBcf1DDkbO9/oU7PBmNftru4YmZp3PaXjX8KmX8j9EJttIezy6aIpEuP99zdd4Z7x29u1F
EufdRfzw1ES4umphnquHW/3tHxkOzvQQtw3SSr0O6EN5jSURH+AT3EtQR7ctXMFA3yhoCdKYce1a
oSOQWjjCIP+a5nw+rzR07fYTvOprBa12/lyJgBEP92jF3Tqhkm8aj3i6F0QxrajHbGCjqHs0TumV
PvnvCM5D5ZIzW+BvMlG+qw06JhFPCAXrx7+wIk/vFOO8bqIi3+LEK+A4t1eGAht51NUE04+L99ZJ
NeNOBIA6AOmdK3TChMcQtEyLnaYZi3L5yFUYMjif1s6YPw0r4kHCf/WChJkhn4XdO2K0L7YR0gDD
fvzONk4bWruF1O+9rGpOaBqGPNOQsNpnpYD5FFaqmeZKFHGPrrypqMyAlix8ouD+6I/YXdp8cSfI
TWSz0fgxuCp9bn0R5Ru/bkzATNERLANwS5FESToYppJ6CcQ1rKiJxp4OPmq9quBgO8k5Jebq3yW1
K2nG+ZOlU3zosAQrWIMr2ADRluD4gedIYvtXCHAKc1M6l2YOEQAYQbPTTaToHn4p1EWUC87afUx+
JECVihA4ehvOhh2TclOJdv9UK9v/Cp6uObj54w2mkA5NfrFTeD232IG/F5R6D7PhRSPmWldxb1QH
lkCMU4ckc7vnNJAovQmzUh2xHscnGI/wPn3TNl0hEOIQglawH+FxmI5TpkxxOVDhQ/cyNAEgjc6m
knyREs2XkzshDN/oMbm5uxP/AzgH05CHnux8DfIzmdaUr8DT3WJGb+nc21UbuPVGXnM0EkZ2++AZ
7TPUzVZVktS2fNJnfs/FI/3PAWgILMQc4CRfMUWBUonogyn0+uJ8esOKQWP8SbpD3MDPwg3m/pNa
v5vwlbolPaJm5RAxgqsqs39t+T2TCM4Ki5yhK9vKCRYIQaFkSytU/FP4TrPeDWfMCpVyrBwntpN8
ZCvqWP+VRL6+HHZz20P8CsnT5OZbfJJ9OWVe/2te4e/yBett5GlpAYv5C6oMxCsbIUTsv3okMnsU
mRzlyDbZ6a47k3m/CLQx5njskFR5e27d2ZfNxIaq+erX+cRg/dct0JQkTcKztHp28n1VTtZ2hZ8l
hiCyVoxYEcDTFhBRcm1PqGgR3gfN6l6bOb0tW3xS/HADzn5s6EFZuLB8//4kIBgofLXJsKxC6AT9
35sPmzQh14pW20bDDp3MR4nzslB8vlYzY8uMFhLSWSxFYBiNyeFYqQTZjV1jAO4qoPAfMLS9oTyk
o8uDbiFKr+ehFz+sAL5jgsy7WBId7A3I7YrWc+gds/KnlaU38j2Skk/XVFz69JmDDI2lCcs5rLRm
xMOT83VkFTUS8dGXmg/hm45a3XVNoSPasgrGPz9lGm0RUgOkpyDiqBg5pRRA+Qh47SSgvYHgJC2w
PO7I9iZJp3owXtnLnwMv/tKpH+f+6paVAD/cTPdpLrWlygl/qllMAtPR/xw4yRkyoMJO+FX6jSDq
wfHUqvgWkcqaUrzd0F8rpjqEXN+14Byd7DOlfbU9310EdX8Q1ifwNbhpBayQZRHfcTnSWL6/Z/Nr
zWlOYiczDKCwQ2R5qBp/w4S9O6eu8JVW+IXRTidTdRv+ETHthNlvYgMMfEa90ZptpFoDRHB44U/D
qVkO2m8O6eioQwjwzYiZGg0m3MySV6+Hy14FzwLnpTPBb4uewsADOICJ1m77tXapt9ZY+AAZhRb+
/di7K/6sqsLCeJRUZ4L+rXOwtxFoU+Lxbod3SJ/x6BTvZKW2eq8fNci4AnzehiXDbzyLazaiqyoi
6cu/FMiydvoAhy/sHjOJ4u5JL/898we9J5gPznpTrjBMIXwGY1KrPTr98eVB7XJBx74QN7UePHgn
r8jO7PE8djX0yLS+gRRj88LrEpoS0XFejfKf6UvUOj+FhcWf4/3gcwlggJotmbDjgu2GTsCNrGMI
K6Fi8+BNnKK+AyO1W9yrMpDIaDXQgaGY0Y44klEFtN1neascDFCjMWg+Kr7WiDFNK4KO4PeLDNwd
1xs+jSsxc6GEuws+4icCKtyKQmQt3fJ7vKEMFBQTgWl8Cmb6btXhBtiiY5Behw0e3cODlHAZ92BC
VFw2ZViXi/oSWYze5Njy7s8WUpA+wZIDr+81rymucwoSeIMZiJzYOwGMXxNb+EEIaq4eJLAY8Nzq
QtZhbQp9FhpiaxgC5EBXn3gR8zMKJhDt8uvJ1NC9ZdFbB6DW9jxwDf18b3TSbccAP5Uf2YkeSxcn
PLpJlcpCAuubxYk7XwZIeleQctQiNBJAbyS09hmSsrg61/rrOufS1EHAAaHSg6MLpS0mMQNYq0k5
CezLf+hKEvk2sGSDXFhWFF2z5avygFKeJn/TfxBfLvgo154j8d7svyVw2S04mYJEvTq6UtwuflR8
8g4+ICXQsRVAH7EhzhVBl6KJeyihQ+qE/4gjQVGPlRTZrzRIc3fbHxksmseJc83JSKQGLc/FiHCE
9ibUZuLSUCrOptD/Buu4AwsjDKLEZPhnnQoAU7Lg+keTLXgJBH4GJ5pUCf8x+krnCN8EIMzq4KEZ
FTaexrBrz/nHkKsT7MnOUlqz78/70XaFD2P62e0bC6gH8wV3We7O24Rq8J5sk6UcfDdGNTQw6dWX
YcTslM3l83tCKuIKlMfJh1qxpdeuMcps57n0hJ0DfbdT2/jPgGEuJuPNB8BopDBBu7IijPYWr8JO
pG8NGe6kjD5YgV7QRxnEASr7XLK8W2su++lIWmO6/i0sBkXnYO6+CvbUPvfHshxHG7HtHtxaDe8d
N+Jk2o6fLE7jy/+ymTmUWTrvcd5NxXZv4QpBD+E7XABbfA5M1+6bLaWKh5MUEsydwkmqkmPA7RuZ
GtyMY/RD6YjgOr+eLwojDGJFIZ28a65MrS22vSX1S2iF0EegKj2RCaQj0eECv/dPvByfDPAcYEnk
9XE0V96jVunJbIxpine32Dr1DD4/HZ8PA7cUftMmkWZab1UoENstL1OyQlvo3COUXY2+C0bdJLMj
pk6nKoxqdtqW7GIx+orgf+DQmkZJjzHji6TfnDCx9pGaJn/4X1AmYMoC0jSTpjM30HHnlmdS3sD0
YdXHDlAqzIU/xgt1Lj4IunM+Re7VMjHK5jPwlxIzk8U3WsgLEHMooUjayTE2pRr4oO4tBwLYtYL4
ImVMnQMl7Z1dhcNbhuvk/Vvz1lx5CzT+J4FhHPGwDdC6TArbaG3MjosJDGQ2x7hy5DJqqQbheo1G
vlZFDCqmS7kEW1B3X/snolR/kCpzkNvk1bMpFzOJXjc/015RyMFQwpCIZSP5hyV1vWRbj+QfQShn
2mNSwakDVHqWkchGal7PfN3eNGGSJlgjAsL+YgIeIoe1PMWDkF/tVE/h4hdIFu1Ela5AgAKEc/TN
GYNSiV7faih0Q2uQFN3L703NIjQzD+CBufCvH7GVZMm5aZWgoAjQKwitPeCTRXOJDVmKa1pCIeku
8hyzRJivX0S26e6jzwIRTnLh14a2fbDP1q4681pjrRF/nOpc85/tovzwT09sbsecGM68p+OXqRIh
7sf9YgvfruYy2lh+BEg+5Nk61M5+gmPVX2QG3WqeOjrzlg2R3mzX8eKCUabYW3gLkt1ppl/7K+5L
Tcqcl5MM6hXZKTJUY+gpLD1FcgDAC3culJVK/1LCUs3sZhB+rL7KR8a/YXvSyPZBWaPbqmzvpRTH
dnAOVr9S6wPojgcAcH1If+BRzp9S7WljaQ92R5cPgyOdsQ9PjtC/Hh9KOXZnYvUwewpm+UxS6yfe
vmsep1IXtPBJyhP0q+Kflmv1h3YoX8aFy56up395mW2DRsUzm1FN2nyJSvV6xMzK/g9ICw6clEb5
CdkdOntYFGg4OAMWDenmu5Kk6dPbdwA/oGybK9gvuRbondzPoksjzZmCZevVDSzQ7SxvslDT0Ocn
HgOdaARDT+T3rP+ajvNCPp6E5n9gvEokSDmQ1NkM3KSTMGpgBDhJXsR6x0++7myXy30Z4zxeXLRT
PieFMRzL8pv+7CxX0XUSJfNmwta50GmMylXGvb/gj0ADGyzlUabRJ3DoAAPARdeQaXjl9rsbreBm
sT+6qqKtNVZKRm5G5lonbutO6bqn1VYGnUeBi+hXPHbjigHG4HE+wUqDcx2ciH6Wj51k7Vk9h9Zq
Iul+oVM+zKJGHX54ofNtIEYBFG6BInkTyHZ4PcsOjZgSwgv3N2FemMA/6H/tSazpRsbb8TsbsNHs
2cOvrTDE0kurLv4oByHqtN42AsdBQPpFTGzPsMulMcBZi9BhtVnAwy8K4u6HJGbB7OJ+mWQeP9I5
hqX3NgboO2aUali4YlyhB6a2hQBICv+SiXt2F6UwDi1qAS3ElPyCeAn9Za83TNHTdPapM6/KPoK9
m7nQlGDdwDj1CL68fpol2+mQitWcYOmH3O4ZJ+OYQBoElZTDe272kveMdinX+wANSOUVjd84/UpK
nmBvP1L4jhHFbw0pmvDqr7BnBZxzQD+B53kuNsXtQ9V/F9PYBfnyPcvOH7RjMUanLCjNeuUekgDI
VRKDtO7g7z1EVaVS0P8gEl+0YDw/ENVtyr0AsQchtE0eznsufXr0E8kW1Na328owauPbRsGKTpmK
HSn63dztpptXnarPhFZWRf92MnWvE5fdHqzcQN/HZAgD19RDICqyQpSm1jqnB1i0c9psrDazD7GD
LNolQyU4TwgsN7hIKSmG42vWP9sqJ9kY6h6XTtk20GhBTariOVgWZ6r7n8WV3SJMEMj9VfOpyLwa
M9yczvfMiD85Nh5gxbGGBV4gTEmX5F4YRXraFbjETO9o+cHotY3wsw2UHtYEbHpZWNSW9p/OfVZx
ekttc/QQbgthu6Hcv3bzRoTOzJ8Q/20WgOjWBlBvquZLANrs4PmazE7pmHBX5vpCx7D0L4ITgOpe
OyunvKnqsYspu1L4NQPLhb5q3C8woeL642TXXqPoONtRd8WfGJmd0zloPPK3JD+HPSYU/oSgdCAp
81azehsTCC2nsloWIbYcAUBS8cwBD75Xwcb415T8ajF3sGpfdyxYkAzd61/GFKSqHeJkL6buqp14
MZ8gFV5E34yLd5Q8MgSMwW+INOmkuWX7bKvxtOwLjLgz1hej9OTj01WJlTPSnDgyOnFDyzPplR1K
jP1i7wScGZHiwUQsc3zAuuklVNZIUVALmHlvFlBBcpqK3xII10NeZHFynDh6gXi2+8c77DEFq8H+
1OoZeM7nwv/WftvuO3YYb4TUacpf4TS92sJR6vFRnsdpg8JEGYFXZnZV992xdVxAT5tIVSMAxul1
Wvs0TMRtrE4tpcJWS1eycS0nmb6G3nSR82SPbHF7rooIahnvivuxQZkxwCzerex3RlmTa++Crwk1
nBeZfBDEmtvFN7kAKNy6nT9OfjK5zZ5TlsWphY4q+ny1XAGOe9B79DB2Z+eZ+fdtWpl5PX8NKApj
+jQGhjiLa+N5bN7FMEx985/c2vsuTLyOxmbo/HqMXU1FIXL6Po9UDVlx2rvGjyvCINF0CFaQYu7P
3bd3CJIIk66lQGMFtCHt1g1kos6fZ4SfAQRwwQVmdTC5/1wJcn8G3c5KOusFX/+GQYWjG0J+89+v
oQSueWoyZLacYSDF6j8gopzjWytND2czulM1+apO0FkB2M9UtlOGVvSRsJjnkFOqJaJNjlxJdFLz
m7HqTsCEJ+VHcVs7/LIPUjipMKUzvn6wOaql0j3PIKZtehjAfQu/Ssp921A08+OzJlu5xmqWDidE
951GRoiourq8tQ1f8YvICm2U+3fPrm0GTR+tCbU2Htdghn22VNEtiuz6KLXD3YZaIKy+JUv5wJuU
LUAkxB7oMSDvUm+ufdbuzk9ajl0xqsaSXJuFQ7jQ8y1CUdd/9YUtwIYkROn3yQIDka04oY4yKHzz
8HztN20voaa5F4BlWKyXi4ko91os6OQg3abP/b+vxYG73HucV/lo5Yx/7MhXYas28X8N1lAS8WPs
/88uPf8MwGVWGxb+5TGdDrYQ/bFFXZFgS+oSp1IRtijn/lhXernSlLD+5KC/BfbvE7gkHp1gtvSJ
DD8oZ/5rSwwQwEIepEtgET03OwZJMxgJezqZjhofLZ/DVRXdG9MvR3JutiGO3KO8Uh+GpRTwmRy3
fa1J2kuYlVDcLkpeAyzL6NM+JyFPvJQGKL4ixL9LJ4KyHlsrVejE6tw+No/xb+hiI0bDvp4XQO7Y
/IlW0dN4OJ2PUOw4kgfjEfIFomdJanUi8Il3v7AhsyCI5/0uO7cYQS7sm/aG5o3GSnhYw4QBnkTc
MQMlvEU+HJrG5M5NhkZgtOQl1HHuD1dNG6t8pZEvVtOMlJfgy0f7px3KItoWGqhJwsqKufBCVtj1
oDCzQp9YhNd2FgiIrkP6PHQqaBT3wp41m20mIP883ifcW5cJ4OL4Vd5iErVHFAwp6PVZyawDVwYl
Mt41yZ5YoJowV6TrqLCQ5gD7cFfsGNfKzkVpTZZ1AF8n1tomMW9KP60+WBkiHjw1q3CYBoDaJCh6
uOmIm9K3vWqg1MsatBUptpJ2MT+v3L7bYt+svfY1mnEGgCXGdbcA+7jmzKJ/eOSRQ+nG6M8lYray
jsYmDDMVWzt2GE7kuk29vwpEapZlddxCx0gF+I7oJPCp3ZcCul0ExOYCLM64wgspVrgK+8FSLd3S
tc0AXjRjqjrddBtaEOB58XNPURicHZ36vCauZTwgn6y8Xgie25/+oexf9ELA4skDHnaARo18PjlU
S0iO8eyylgwVGUvVdAnvzCfltc4nfqR08FB651aEpTHEGFGpXMT9DIXdSH/hnpAXZLpaJhuIFaN1
Gibxuts88+9mD79yDqwLd9aELvLsZe2Nx3ULmGTmspd0GkPk2qBvN60lves6lEL0sKF2QUVPf0Vp
jmMC/lTjwdWAX7bMp3SJ9v3vMchH2Tj8Wj0p1ZAZwwRdxqBjuuWHF8qP3etFtyxtI87srPJHQggS
nWImf70zLERFGYod+1CXNwyOL4tXv+mWtbPeiQJNjNEWLJN5e8EaMugxekCcS4VUQirMA/sOiviV
gXfgpuBtdAJrwHXvFS7CRVWiGTnrFKOgEtCK1DS7cMmKZqYN+X7zwEoqj4M4e0j1rLo0l5Hv6x9y
MYmZ7ntNnOmkVVIlhmteOCcQ0ktTRZya+EeM8TcgHU2WSExki27aAqs9XBz4POxLM2f+njpwINw7
EXagTjTExh39HK6lVCNZAcnuIUVk4C7bRwvafTsnyx50J250tWP1Lbppo6P87C/ceVej+fSRXLGx
Gv7ucl+oSuxhmZSZj30z2cX6aK+4lficEve+YX/Yhn1abrr167VrQS8CWx1rlSgYvIqrZjSH3nUX
XE8U1y4H9azSO841NIEMioLdzQf/yCQW/wTdbVBwwr07E0kwB+6JmckcmSNte5kfUsnE7nZTvJn9
1XOYXuZSdwBbYa5XvluIff8B6YJyq9gSTgB/ZQZ97lk0RX7cd9lBgBVww4B3tb1Lxhaefu2KBJCX
IdH5vd4hIV/nEZE0nBST6AB4VOfBmumirqqw/lUnjZy3Rg2+qS08Xz7XfO1p6CjCxSYa7nUq115g
Qk5d/k0B511Tzg0kGLxG1uUHB67NLMhCrAVd93d3qsbE9IrR0b4h2i+e5CEbj5cZbTpCgcQFqhrG
fuSDp6ZHlrmC5TDnGrDzKy+YPxyVH/NJifW1ekN/hgCQJ+mzKw1bBainiz6RYdnBjaYFVmOIHwlf
hOtrUcD3kSwxWUr3XkbM3IcPk42Ft78dgThn5v9eTeKKs5MZdni6gTNhdsZhNxg3WfJqxwtGiviL
wC9ASiguxtCDJVDFIGgJ5G8KnOnY14m20CudiY1lc37dxOo6XXLtsUMZXbvsgnc2nAyobnoX5w4t
5RrZxNVnXhsxtLzzaYPlLKNZrBtsmzwcYh1wKxd7XoUNujXjMRWUC4JMJLzxJU6ebGNm9506mWTV
ui5XJ3LZCj2q/BvzcLxaymFNsxwKqeCYOg==
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
