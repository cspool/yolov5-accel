// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 19 21:15:52 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_24_16/signed_mult_dsp_24_16_sim_netlist.v
// Design      : signed_mult_dsp_24_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_24_16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_24_16
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
  signed_mult_dsp_24_16_mult_gen_v12_0_14 U0
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
module signed_mult_dsp_24_16_mult_gen_v12_0_14
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
  signed_mult_dsp_24_16_mult_gen_v12_0_14_viv i_mult
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
PchBTgEYAC04WBUMQynpy58Tjz9QJyO0waGvnQ2JZ7BkRWNbbCUgKvzjIu/yIN3PRGreBYSdpLNb
GOFfbrQmyq/EDrqJvE9vI5wjRpSrmQ0WsUzx+3rLN4L9IHAwY2IhxA0V7RMNYlqz/Hwe82G/L75z
tRK263ZuVsoJzx7t8WrWNATkJj8Gx8NkLr0XIYK0AEHYr57QEC+qqnbfdM09DmXz2CbbLOP8fHau
9THhQa0KzR8Bs3BnI1xOYsQzkas2xlPlW+jttOTjvjNt/yPzDe81pnx4cQToaYIsZuU0RgoOKOjD
N1kwwoZZgm/ALEdHU88LF7H9eZoUNNJ5Q5/aVA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VC3ylsQtrYOVwf8KNoHmk8jPsBgC5+JrW6IY9EEGA9k5nwqmyCsFauKr5j4f/yAlboj3L/0D5AtN
1U03MwB1GJJg8QxWWGEoqLEfYR8yY4i+9UrZ6o6rmtOGwflD91zJUkA2DuMsSwNMCFUGeEh+Rzo7
yLLJ5vNLzyTKXmwBOvOmwCcUE2jKk8vSrYsIKpHD3zZrEn6TbsDtwWLsP+YnQJqSobJDmu1rNMzu
yXsY+b7DELoH9tZu/mVP0b9lIXccnBYyCgaBPw6P3FLCwebCY7eoqY5zIysjJlX0GaNfwYJGKARd
ZhhBP5JwK/87a88B23GJ9hq5LWIS/Fvimf5uyg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
`pragma protect data_block
mT1oNATRQ8AmctD28f/ZUWCjKQauE2xOr4EKC47ibXQdYM0N+a9n/P97XI87tt1knGIJ3yxdYaM+
/Q3dqFlSz4jrI2u19kre1uEJir9WZLuYPr7RR6HJnMwY0o1pelvh26QcXkfECxbUQBkH6Q5fQOhI
hw1x2gAJmkrIgU2O5OkMT6cUABQxAe6yxI5shb66e8zWs7JUfd869io0adTfosuq3qT+tCObnLT+
+Mmy4XQiyHNu0x7mmrJWqPm1X9FWTOWp1l2P7xa2snXWltTJU8tV8cWyhm3wclMQJU2QEmodoD4O
qHYrIL+0GewhZUBbEDziZSanaKYTfE7ZIoqK6C6gkX5a7osVKS1+FnkJTYkvW16a65R6mv+pO2gm
b1hQK/0hV4DfoqS2Z3FTEL5udPM7U7n4wtrNxV+X4tAa+i8sOYilcliNdgCRKyOhP3mhFdA0LXDW
k8uD4SC6tC3BG0Ku0kLqijnRBZHIQnHpu5HNnfMMYBLLSVru9GiJZgfNwNL0mjhH8rGKyTKrN+jI
tcA2IOyahMjyZdZ3VcZDbduJpRHRSBarFMcUk9hYuorDNm/0azt5N75Sf5/rBUZ1tYkMuGVraUJQ
FftsYyMZenM2QxC49V62V1EU+nquZD+e4i5Oy1BU5aBW0I4YvgQB/glTS71qBIqekqGPzGtH7dNs
3tFndY+HOQHMvDT4GO9JZxG8j2Ps1HIA70OWfBN0TJtkSv4bOeesRGiw9MKJb3pXUgzoCEr8S50v
hoxO+wxIY7Q0COvldxqIGz0DHCC6142Y8+95uilKecGu9Upi1qXOoQxsvuRtGZEVP+MuAO8BNPRm
GAMsVD1SrXJ8G51PZnEGnO3/I9aPyRw5NfobxOJvtM4uLz5mAB0LO0Y+tBy3aA5G8L8bMcn8v6wC
Ixp+ex0iN3LVp+tt5rBU6OtUq2Rs705ggJu5SGNJYnJ7kXsOg3FkJsrjQXg3W0qnCT4QE0ptzxaP
k1FHE1tUN513GNE8NFOKVmYMWpgWpuxRAneSVcZZsJ9FzGxvXstnNcOWwOmA9u0JQlWh1fyNgi1U
oSHr4U0UDztgEYDEtfmnYFcLqQBVz9flyG63nWmraqaYI5rRPTcVyVUfUu+J6f9QWhEG7gPnCjuq
EZxgRw9BJiflDjbUV6MgeFaSDiEGWrG59SfhoH2gqySKgBkijPFKa4kR4IfykZHI5Ha4s7yPLfun
V3QXDhKofnwqNIdbuLA7RNGEaXKp0y4UHoO1bA7eFXghM03SXNtnyBQF7TrXjq3EFhXlMAWZCuDR
+dWYUnF11Y5G7XzUOkUyG9B5HkKrblynreuZ5sLte1TI0Z+Rv9y8XUwwsOR8rL19CpPVcberAxVR
p65WKUJb+hlbUueCRdlK91cEpibeMx/RFuM9evPNXnULYZ7ttbLDST/fz4oCdxYtTwIgzxFu9tcx
q3hLCRW2xBDIOwgPgunlyHqfpr5r5h5hn7N2+xtmoKGr0S5+L0qth9cKGbbh7ylZ3lmoxHmr9GYI
eB3eUnlN+SS5D/Iv/V9rc7UsFXX7ZbmRvvCsTSTOvsekHxnN1knsHcEUtACkNYjuUpz7c8GRy+wx
9DsAcake8KemqrArm3vUUnOw3HK8DYBg1Gdr6gJOkMzNy9OJiNpt20x2bQ6mUCSQBkCVIFYEHkrc
NtFbQoNqrAeuxYU5wMUbCC8zttZ972sV2ia6DWeoTZEJPF135CWAnzs7lus1QT94EoN1JPPidMOE
Qvwde09vDyoockY5Ri/1bZNFUb3ESaLfho263wOD2fm7YIgjA2J5UAbDkH86kR4wphREK7obRpVZ
UrktJsQa1T1frl2aXjcutDQgIKbv4Yb5UC2GVEzSeqBUyGNkQDtceOcMXhupGya8iXYCr50Mg+63
XrEYJ8MX8DjyVXSxNfjIlLpbJmKJKu9MoVEsmxbgdU33BzvyAf4yc6GQWEbfsZcGsdr2gQKgKyV8
vDEJ4q93OdbKJokxBOMyOZ256ZLktXJferlE6OCR6Jb/PD5t8F47S1OPPTt8mNf1gLgPvB2w8IX0
Ct3aq8v7ukFO2GGkhBvaxbRvMDRL18ZuyuvxyqEnirZdhd91MnrSYwL7+fM+BpF1odmEbUjNEMAV
x4U/LiGGkA9JTlQZLCwJkDldcg/7SOZMrWfO0x+LktVmE9ZWOUNXOAJKVSVNH6X7SHwZ04FVm3YP
ZDypVMl0lIkRXc1mQWzsI+JoPfZDy83ra5YykW6nuxhm7nDOwe2hShoh2bf3MibZwg+Y6aT3fQaz
Pz4j75fDQrU+1smo+6rL8Z7tgITlcVWC+n+aqXYZ3jz68xrX5VdYM4uXQdqjVTF+CZpczNTDRzpI
DuGNVwdrPsIgXno1lmK3mmZky/0XOCjthnNwKvyrhUZyK6pfrVKFCsJGIXK0wCRsyIXA4InL69HU
45jrRXrgUP+J/aRtFd1K+qP08gEttEgDPBX2oPRAJfcCikvwydAHm6pPZt3+m7zAUZicWLl5OSV+
rwdvl+C09kQj+ztiq9jaKM1k2aybH0T6GLx4j6Hd1KJENqVufOMvztYOAMa6BkjGdlfqSBocMBQ7
NAgcFczoLyIYHDKL3nwXc61VEGvFfJ79iOf1Nig/fVY69SBzOaPoZJXftX4/VO+zlXNenmVPPlaK
cB7GpCIw6PE/1i126l3gxfKYPNRTtPnEiFKf9/eSyhVL2aGdnAcmTH2PzptsVLZW1fnKgIwZDz6E
d3jKYYku4KlxsrVpaJZWTVOh84QQ9UtIdrKivVOHmMA/7OTN+zS4KrmlMqD4zT4HVdT3nsLEyP7l
sHjHPbyrALbOW4bzPDO1bg2u3qf0rFgx58HWjgEk5yII6/++h8SC0YIc9P/qdfs/uyUvoBHicUFN
Jofseec7dEjwR4WdyEdl0fPObLJMiM3BV6Gt7z5x00tkSe+XzCrqCmkTt1BQzJkkoWMNqa1EnIIr
LaYSBn8QQB1pb1CgobJfgJsNuSXyldrggjo+BoO3i9Hm4NgvEHXNIFP92iIMvMw/8KSboQngQhaI
Sspn4ED/kvfe2ZGiJ0gieVed5NEP5iDIlqqcDc9xkatlZ45u3l3txTdymVlQnWON19KX1dDF2Gd4
il13PxxHy2wbEpyxmOWFPHRNdLIcKf/xdTWMsXHk/7BZORjn0H9ygA8Xqnjumvh1gXORCCxIbDpE
24d0SSiobuZ6B29mAoIxN2hOg4yzNhcNgtecu1N3sEB14Qr4nt1IFJMB/zmlLhJ3hdrJ6cJndxPq
QSu7kM63elx90diZvSwlYryF0HZMAEf4fp1IKN3YLWscIqcdV+qmXxBrzn+vhjOH6htnpuSjZAq+
qyTMNogR29xyp3OixjQs1d0hi3DO6iBmOIWZG+uiGb6QG7inTsPXNcPh6xux/3/14C/Z8omgtGde
Tz2z4GJm/I5vmrXxMmPJ0J0UAaawJBwbniUzQXlZqg+EMCD2jLR62YqwSLfHAgXt6la8CZvkrHJj
A5RTt/izKj7OuL4EplP31Wuam7FgWzsOK3iLcwOPYVRoVspXcxfM30bL3/Yh+tKQCqwX6OeWlPcS
QpvHpdKrxsNikARxd8vNKf1kRhKc7bx7I6CsC7u4ndbQ9x9WrKPiyuAbd5MXQ7zY4QMaHF24ebpt
A40i6AcKhZZfIn/dOh5ZmQmG06jwrPyBrE64jMw977QrN44onZY0gk3JUt1B1mm+onOQkTBb6YY4
Q/jnTD2PxDUcasTlBEskiHCmxiZYg9VD34X/vH33w1KM0uDDNBnSfvzAYlvMVMLn22sLwaFO7dKu
Ub8Gz8OWybFbOtFSm/TQr0coK6sH73QkdSbyCuxzi+8XkMvXm51thOOuYOaTXIuZKQxwRsJVtYM+
CTgu4wn/jhR+6oH2Y9cAGoVqzHQASJ992YcOQabxkw8L3np91PWizYVMDMwz2SypKKPhz1v2pBXe
YtjHkP/yEu+OOqza9qKYPEVfLcZfmL6ktTT1cXSi0H+fan5Wg8VxU08V+IpzUgygCaWlzcRFyNlJ
WC/QczSW2ATGNQL1PBB5NElrQu0QSZHzE7fk10sb6gYmp3C0CNE/fAjWSsAplVwyoMlHrOAc/ZU2
q/3i2oFyD4YLbU99vtx9kHXGRpOExh4V3xUcrOfk68WVyhtQADbcxlVFiNrnjj0EcBzmiTsg6qL1
lFua/xIgqC7bdR6DxabDltFM8cvISPuVDIj9p5Wi7OCv1Y7ugvJ/S9q8wbcbAjcOl9ao5BLtNPsg
TF1FKEJZuvxAf39bLKENXnUUaRUysh7ZD4Sxt/vIn6sjlEGfMSuF5X65N2lOmGAgnXsoD+CGYbAl
1mcNk5DzoDRtAQcX7sNclzIHyudM7z5dQcyaDmekjEYNbsLrB1NmitYCT9mGaKsIHvLY2iuRIine
JIbUahG7YW2o17JBlW7pL7qudFf07vNkBiKs/RCuRtYaDBmACaBt1ocTNNaN709LSpA9eNWKyYQ5
foRgllQxaqUc9+ckzIZcK1pKRc0b4nmypAy2gA8UQNsdhDqrQAJnu74yM5sm4ErBVsctm0Ve2JhY
ffch7dopqdJVQkMTliNwwxuYfBUaq5RslM34y0axc4IkQtgOC317ecJhpIzMTOIaTy2HkMhAejwg
J87mxb/I/0lbg/hpncrVXkcA9tmDnqj5v/ZN0d5Y9ypVrzmugCJFu5etw7eppT5M89cl6Z1k9QiF
Z2Dg85Gljoa0tuqmIJq18mZRCvrkamQTLujj6MsMRgnxQ/Wfj68tVe0aWBqmWEeMhpE6q+SKhtyb
4h2oC4AjdwmBMnzxN0apcSkrEGIq5YWxNyk0WgPNCwfPPhlxg2gyDWTfqdbO2Ef6I+vyPF22mwfJ
/eS2eYHELKJoerM3bEIWqLAbPyVuVhiLYla5buEgOopZaOeuNOlKNLucczbudh0lnmuMxL5Ta+Zu
84Hv+Onz02a+KXfULaN+6dhhtrN6DOK0Mn3/M1NV6GKbDp9Qo0+CFm17P3x31JEP3Rcs4hJEC6Dz
1DCWA8HjpOQNeeEXwAl4WQbIAsJjLLOGD73f1vDnuv4bAOAMZEV7m5MeCRqsWMc+qq1vsQznFlK7
Tbl1flFqbOQiRZEhbMADOJkoPiID0JiapPsBpM+jKZrR2/++nSo1WWqob3FZLb4GRlDfUYhZ4riH
bESOUnPKObRjMSMMG5BcYSc2YyUHwRup1fTCDmtgOETV2uykHeqjl3AoHb8JjeMM5XWeqcF8HE3h
LkkSP/do3Yf6Wk92vuX77+KlEM4BmZSw9smkpzXW/2dfkFZg8W1SqhFCkpM1dUrmtlp33AUtnEBG
LgPNsUE7XJjPTl+kc/2JPIKntLny4oF8pfWpKtIRP+vTFmFbnp6g6JYfgth9dk7N0jwwN5N7sj7z
YJNii4Akc2jzs9kMeMQY20L3JYjtfXJU52dh0ghFLPyAUgcaBD/di8mIYHVjODl76KK4TSJa9CjH
Kpll0DOiRenflFVcBzpJIAkJ9WDASOgGy2B0BzM5GZfczcjL1BbgOYxTi+GPg6RaiTj/g6uOaiq4
79EIfRGA4qfvJcraHJifkwGhbWRlakaWLDw96C+Hq1r4uzq8vJEcf1uZWBqTrNvAj20eBFPyz6x3
u3HqGsKLKBnnsDWCGq7zlsQYvAE7GHpcVtprhSn7H6HLXf4/MfbLCmPnOnJCinsnILaUVbYayODh
zm2vS/skMlqi7ORY3yFjPXrg+2svXy1CKeegNveCtu1vmp27s9gqI7E3yKVooCfYD2zeQc/wJxp6
XhSNaUBjL+1FOy0ptgksqXn4yMtOvT55v22EmC/c8Gwr0q1oiiBgNh9hz5xkgzOcqtsPptmEvl7o
+Z1kIkYQEHC/i28VIe1fNLbxSKYNVfJ7+StDRFd1tvXP4wR/VyVzEbeG1v1j5zU8yjjVXqozV7Y1
DUcqGNkb+htAIx6co+V6VJ2RL0nH6L9zi9svM4bwOY7LM/qW20UGfN+JrXqlgHf0cXca4YYHEnUh
55CBtpxfWVCDc6+qvLTu1GDggI01Qatq90zGx+3IiSkZVU8g7oIjjYbTyypffUX5GmVolQjVEVBx
hiw+S9wga7CPfGqILhVYAnFbCW3ApzIvKYXzYXr1CHJPWdXnTDyEIKHW0XXihPAxW1116VxFTas0
oldx04inZOAwlGpAmYY/NRV0fskpKy9k/vKancR7TYKZlG1dTIUWHwXULY+CtPiAbJQy5ENnBwQT
8kgRjVbOvLiUql3GUxIfhrbEDZwur57lUCA2vaXRy1FTklse0QNdIN6MEazLY1ktU9/IrOmvUVZl
wp93RkuMTq8K8/SikSW132Me31b6RtBR9txQyM36KMYX0JsP9CSfkIClS/n6WXqqmkDSCZNCwESQ
PvK6NJ9wr/T3s79OjK74ClrTXcMhq/pcsuzX3dCV6kEqp4dzyWsBEv+b0+YYj44n5Z6VOkNM454a
T7dSE+RYOFpZjHFop3d1mXpDPNqvdZQKj7TI2Ggf52dxce9c2MfIDFlUYVObaUy9sRjCASDCipWn
19eqXEChyrhTqaIfiVodjkeKzzS8t8AEzxjTFQ8p1O49dazkLNxALJB3H1VjDwA8JbPiZmJ9bVC+
Bxs7r4lAWBSmw/csvR+AQTlF/pKvcu6MGUz1FiKMXfNBVZxWqG1oSzK2JJRiOxgSClC5j7OCICV6
eFmZbBrfUT2AkpGKh3itjhhXPqDqIAjs+Bg5n7vAlndOZi0M7e7jGVwqyCmekUPDx2tYSJKeMFPA
iKAoXc3w8T+Op6kjuKvRYWawLCw1Po2N4kyYgFabsjY0B/hKKXUJTHJuM2+tEmZDFheaRCpEyiOb
xpQjpVypEDodzUVYgJjF8JFo/VTJRidIhgG9tC9H7gYXSbpQD0dWfZIMGcTH2LHLFLs6mRoqlXl/
kGs2E5bV3m6mFS1Ql38Mm0XAKVJJGD0OIwHvGKLzwq2UkDqO66/1Zl7sHLDhiFweSM4eU3DtEoqU
r6xj9C2K/OgEpzjrfo/fmf7k/U7fS/hYXMVGLIh7r7JgNtLAjURZ6xNcyDhtAsr9s4bC0Jy/Y+v0
4Pde8DpElUUwu9+he0ZJVSwNjr3JMbuKO9HEfGAg1bM5HWAwlS1CoT9Fj9tYBpA/L7WNpykT5bMZ
U9ax8c9xg1lgJWQCjBi9zM9J67kuOP20sI2J2F84ynRIS6hAdc6oh0K6JdhDcIViEWlrFw+ZxaY6
WlMVJDxCI+lbFDRJbjm9ZaH7xnam1IVdmYgvVPqw7iKEremyXb7y86jEPJQA+WNZ/quRG923cTdk
5R5Q0Oh31GAQyK+gfRc/Y3sQruNXb1sFbY/+i5atUkqN19Fk04evFMftXznp4FQfrOATMv6r1a8G
S5ekTkJniXA7doGOHotPHAW0QT183p3B+roV5SkGwidVrUhNgd2RIzePQGYrGNreX33er7z+RKAB
fheNx00uc9AAzptXRyXBvTu29xHdbPmYE43rRVqTyS5fyCc1h+HX8Ju/pSdaPHpetwiolmAsvv0w
4Oc+MRGeqfd2P5MosZRVvUnco6CRx0qb3koBhQoqQANM6lKunAwoAJ4b1DCIdAXt6EdboVGD2dQq
j8/tbKpZb56taymQ2JwHWQj3y6jJohqpohfRjMnl+ujSjzrAEJeG9RYDCTCrfrewJa1mSqzQNrgV
qcYe+1bn5u+tRS/9S5POF5fB94LxPmJwu95Y/oacFxs7/Ro9vZGJk4sbR+0JB7lS/eekqm3g11Um
xf7yQ4oW1PgZwdJlhchcpMuxkomLRW/nBAV6exJdNqtD7nxkZevBqhxZ85OJpDnpTKkjmhss6+tA
cjBCU3laSXgKk4SyMzfqMZVEEMUHzSrwUlHnF9+giuAQR62p/cLwxLLd2TUE974qy9X4YS7ZuKdP
IKiy/e1c8TvmEkt27DqFVFk8T8SMLh3A3OawAtWQCIl2iMUiqVhOhQyLBrd1PmhLzMPG3pwQ9EOZ
PAN2RYr7/8m0icprEB5MNkmc5dXLOCZpwmku2jK/5SMMW5XwrbwTjN61P1erQBeIYfryDzUJBaZT
YDDXqrXVE8lEB8mUC99gPjO8RgRq5a0/O+pvNSrZ9RG5V2mIUrxb3BN3m1iEKrvsvz+GdslLxjhi
QFPZFi6V0fbwy1IzMRXnF/5S2gpSGuZixDbphtjze+2SZhocHpocVfU74g6TOmJOyuAozbbK2whp
cpq70hOFNksGZ6Lj2yPX1dtrwaNHVWmxBwRwiobSBuW6x8lEmJ6CXYgvzwoV74RaGbGEN+dTl/O5
isO8TlnoFcAkO/UcqXwMYmjlf3xk8zHNBpSF9WQV/gauxqGvgbbU0aHm3DgWHrUmWZSGMRom2EIK
9kPoHmgMeYrP/mq3Eh8rmx91+I+g9UIJjkx5I5Db7vy9quGJSPre5+Ozg7BVSqfojQ5IL+mQgGC4
Kjd7oOarSv9nbdqinQnviHT8M42lgHyTHtuSacu3/wRhUMKZjaI8jMbK/oqgnsy836IahGFhWkYc
b9O3olczwh7eoqZkXlz7feqvyTlXGPSmtFZl/Z2W15UWIDzx8y9dRGy+3m2UwXfvTBoggldtxL5q
EvwfFtHD6pXoMPtNhvW4NH8XlVSAjb58RxXVrS2BwvrxEpxnIQ8h7tfzO5bgwbp8BDAB6pBSTH8h
l8RuNJ5goZBY7gkT3kqFyTwoA5tAgTBom/PV1BosA7R7Qy0ph0n6Q+T/CqzMe1HHcrz9JQWtHUoT
wbQ/1iUaPmZs6yWpyWol9da8nlo2UpSMeMhCE45s8hu4M9V2Zw2+/vxFG81/aZLOBxdyzHpPPD3o
vKBaSCTAPtb7UCU/+9u+a1wMXgfx6JsHgMlhzkPHm2qeVsmGgfCVrapzJ48mPNLeOjz/epMY3N9Z
X1teQAKLFwIGfUUjLVa7kDTjl/F3g/tc6iF0XLQxGsOh9mFD8LOp7oMdXXx+R6f+WEhWJzBFE+sa
5WkPhEy2pnQXYeOANPpR3OHBswDmw50rmKj1tvTQTBgi2dba6pbqU8rqQrE2bb6OcIz2epyYaSYx
XNGaRRBW/CLPFAEaw52mLgYc0zl+vtjnihnoZ4PXyq7pM4U8aV+iEMxiFbhu+5GLoaoQFC4BUd4f
sbDbahT3XzsYoWobyx7PhA6MIDEWuA/rtiwpkMQNwBtRF9HKCQlV53m5Nn/KV3u9DoOtPGsTRWSi
4pKzzuZ+KiInVlhCikMyc3d4XDtMQ5+5q5hbErfj05bbFpT+wBBhM8jXms7L06WCz3v+2FSaz/Pq
ORa5qeABxcXKbJfXUlEjZm5OXsrCb3exqzT8n4PzUWAU5m6pfXRWTg7lgyKmccVfsv+tYqYabMQN
rZAfUbG6xdWkt7Gp+Ju6+6UUfNwQoI/NfVudVGxsXa8AtiaXglz/svj+HSdqshU/oyUb+v4HQHel
4ss9bffw/2quh+Gz4dUJljmiYz+U82iO77z7HmtL2pkZkIJ+tpPVPVR4t7giESffvlFchTdRicoX
kkZLFjtOmi+t4UiCi9HmHQQbSwgffDi4Jwf84B0flzc7jF9raSrjeQjgGbzUFdeAap2Iyk/Qk0IY
HenLmxi14di1BKeFn8Akq0zi0rjCf8Ap48RwfC4Z/6wjM4vbQBqx35mI1KRm0ndS8XC2eJEc0+R2
95ZDZAdJ+SqgiCMuLTug4DRYM1F2CTcRkSChFWqF+VchmSE+U/3FjUQ=
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
