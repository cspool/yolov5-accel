// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Sep  6 21:19:53 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel_2/yolov5_accel_2.srcs/sources_1/ip/signed_mult_50_18/signed_mult_50_18_sim_netlist.v
// Design      : signed_mult_50_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_50_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_50_18
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [42:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [60:0]P;

  wire [42:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [60:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "43" *) 
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
  (* C_OUT_HIGH = "60" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_50_18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "43" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "60" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_50_18_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [42:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [60:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [42:0]A;
  wire [17:0]B;
  wire CE;
  wire CLK;
  wire [60:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "43" *) 
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
  (* C_OUT_HIGH = "60" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_50_18_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
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
WKzeFifszXCnRqcxqffVeCBPxFL9c3edxtKpCMeBjAQJCjFzfAy5dUyfOP9DVlraQg2TAGTCx/se
zv9YqUn0TadfjFtGxbzaPem+U09zZoWvo5GnZkM+aHcpTWfYtiKYo3P40gbGsHs7yIBJb838dF4M
OZM2cioVac8abjt6QtPj1g7cP0qByF9kcO3fsxma0h2kdCNIOlLVr+o8d4w7JU1rmBuiLncWeWBw
gMDeTVd6XMkYiZ/t1FYox5Y+oWHzJIZ6+MuFsBuuUv7hkJ/tfPSggg4X7HBEJxPAUw41eb7dDymt
UX51AKR15He/zDLckNMz2dVYOKwJ7VtgjqTODA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
y5EP7cRgG1Li7xfJ2vFXFSjePgepO5CrMpNPpZutu7oI68CBTZGfUjt4gUcFY9jTaTEHS0+2pOfn
selbHsdPsYnEa/ZpX924G7QYaOBojuOEVjw9rZ8SECTqXbtB93Q9AKvJBdAIEP7ug1wQ+8rga059
xACRgVV7uLVM1/Lm4O6Qqeyjrr8waMOvmCeXnAxQy6TAueLNCPwu6f9cEmjJ2dal9IirxFhOeaec
4h+7gJN1ZhT9BWHI/+R6GWHEM7DwhkjIaIIZl8YpZBa75H7p6LAhCVR3vj4Rbvunizx9D5WzlrQ+
RxLefiNhzwBlwGxvutFFMUMVPZGwDKzCwV2Vlg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
v3dQtUNTUoZKdPCs042r2SoZ+xlJm5N2iy56txMnXEXtD/nQlbOllBOsaAvLA2DRlTarwOQBn8UX
9+/ajD/LKayPkGFvTce51hqC/rMitc7hBysax5of+l2fyaqPoE/aCAf33piFh/LbmFCOi6f4qGsP
N//WS3zZaXx7SeDnvoZU4i/dLNQ82yWzPJDRZC8s/JAl/8x6/Lcr8L/Xr6nDYFZY03ncbbvoWaEc
sWLo2bwjjyHoMLDma08NJQy4aqcHJIkbyaNr638+5Q3EiNZrNQhMntdR/F1pmMf7LBVM4hAsXqav
SaR01TG5qS1dS93QCpj9qmc9FacEnrxeI1g77FEdOifcxuioKrbL3QIC1m+LU30GUM2hUdgXVf8h
CoNyf6PLV8zt8/+E3TXbv6Ky0g7ACS/0lr65g7QFj6/WRnw3XB8S0yhH9rnBz9XKK04m3ZEM0jIc
VWMIlPZwIZAJ4AtHMUtSm9uXCWiuRfsi/6b4ytPovgkZCNCkmh1cqRYtRrJGf/D/v+o8/EX7xajb
s7h12jO8TL6n0mBgbvaw1UuhnQSD2mW/SJv60GcJjBfuS0JACxJxECrIIfBPuVMgR/C2S81dE3qt
hltMJ36lHTm8Zq8MFyRIEj/4bU1a51+jUOM4kmobdENyIxyd5POJ8GtCur901C+v7FC0zpk+UgK8
XpfjyRwCrxYN8w6sJhXmsENOT4wwdGzdyqtrvVHJAJozPR2suABJdJw+EZRgx68h8HVxZAocpQBF
ju3WEaDDsecz/xp56aC24my6S4X+XuXMtNHkZddEDxWCnvQNnYbQCIOY2uiCCnfYmQQ2GRQN+alF
oWXsyARM/EtupC86Snc2v0ou1WWJJxwvGJWLtP4gNXSYhAzIIA6IzwSITNqoZYGHmqkqgQFn5hvv
1K1TLmAARtBYPN3ten1IHcj1pslv5LDuu6Q8Sb7ECTu6Ea9he5KvLian12BUJgUVuVGJAXVHTbcf
ZreOkOngBVa390lg02afKKPIue24dgkZ0N7Pk6xDp+fSl998MTJTfcYsC/zdL7u7DUcRlK/FJBpv
ainMFsBUE1Jf1Dsq2FblFp6Sz+97O8mmwe7KFQvXuLVJ7QZXP6l4W2tjGDxg/7GbQQu3lRMKuZxn
52I5yAAe0wIZuEN0H5WYnTmMU2cQ42ks+ATbY9jWIHYfINQ964X5HrM7KickeTkJbdNba1D9cDtI
P7bmFg3JZw5gnz1HEKNfY99rspzbddknsb8wcj5OQDLgjo/l4oLi1QHn/kDwJiqgirAWOeY1xGbc
bBamvDwRct0Zl7+hHW0CAC/uvUr/3OnFypJgVHDdzTGETyilmbUIB9wONK6Z6Asi/O3NW+YwpFeS
ayvg7/neGvgNJBKcRurb8pl2IaHw//MxU7NlDfS/4IkAvsaTCP0Xf20bJkGEN42yORzSb5f0ADuj
lOpyxWLqL04VFkyaJDotnOSMlXhK66983oc1/Ha/38e+7IeBmeSz6N+cQFbznma9pATziiP9PqIk
G2l1jaFyqYuNwXBsj65bdHCASjb6hrM7imvUz3KVHqyCrnUHR+8j3Q1UR+oYn5WF0VjZzPpsHdcR
L7nXmrZ+CAJf1/rUR/d8MrBs33eoy8rUfB8nkp3hlCRht4i8g2AvOKwEhcUkcMLDHYzidEzSup/z
N34PuBwOtTwwEGwZiMN62fHLTakkrGM9uD1pZfQXT3lYcdS72cDXEEfffogDF6WlaNMqfA1Y92HM
4ck0vQcBYEq2aKduNEE6Ics5GK0Ze8eeEZgSaRyVaMbG5nRHQ9/QFWXWC6h749D8O+FTh9TVCnF/
jLOLCNR9Wuz66XPcXl8/iMq68MnuUT3PVfa48BfLNTlHWOmWrGKgh2CZcnyoQlylbLq1gCbvFyMI
+ZFBIhvvPOV948DXYwHo8Bjm1hnDftB7Md4zsR2xE6nYOOz6YzT7b9OJTvjzxkE+8pX8sMYlt9ys
hoK0Q9XVHuT9AVgp8joRiGQa0o0wf2S56piU8hXHQOhJa/h3gkq9TzUfVeLBFer6LdP3eeU+uzBA
mCle8F7sNxHhIGuOGszOWngZDGbFnqlqurLt/WGUHgYG69+3+SbDQThIJp2gcYcLhMNenvFj8zP6
IDqOS8bWdEmTrTTlkMFEfnOA0QhTIbAFlKGcS/xoJzcDlRpXc+g9jei8VqHpcWhE4vVRoZDK2UQl
ic+D6KFTzDaSBVKzt90r9B2DJBOaHYsCNsNj6dRYKLplYqIm/639fuZVK31KS17YPA+PjuGi6t+E
72EEvwVbT1WqORouN4oy4YroOYGT2KkSIEUBeKYmZUB3qLLaFJb1szQ/W4N2gQU2zWw2pb1AbKPA
n+0szSHHyp7w7YUFwfqlmFy/+CBlXAno43ibi/Oic71u4WQyniKLFRomuVKKFoqtOD5a+SDKtvUh
rbPe8WsIjX6rvHWa7WjChmFaOA3Lymi94HGPpNmP/xyA8CYUYTdlRHcn5m8J5aWAhKY/kNaHBI3f
Z7VUToWfMrGjAdIwca78yExg6YZvLaVJz9/2Ye+Asymw3AAvNZOSrvJxossl204dnQs/IFZe5hfl
U4HPNJ+Ei8BwObRtiFkmAv1Rb6r+WlN2KQweHhtP2xwvYOeqAY6rC5mRLDv6ULVVvJnFmbXcEkRV
FWyR6FSQci0sO75kj1nBIk5kWgZysS5XjYDgGh23qqPOe03L1N1+WxGDZthtSiPUWvEIrfF/8S8N
2gKn4TcVFT3ZgnVNT4PQRcNVdO8r2rp37OeawnKeDv9jz+Ua2+EA7hhvfwAQNuvtzKgGRqiODTl7
q/KvQmW/O+vb5PSTRtPiGgIhANW4Ih7RJp85H2scohcRrlAU5oaHA64TXEJsaG6pJqsQwB/juh4S
u5/OU4WVwiUk6+0gQfk+4mt7pQqImyLTbLR1HvZEJcnXq9rRlyT2Up/A2p5fIUN5E0MSQNLeA+7Q
UpG1eBvOObxmY86jmBRqcdH6hr6+P0S6m1wiTfPKBMG7NjA588OaI1gv+ZXZJOlz5bd6FoOKUcSd
HLFqqR2KqGGZh/hXUhjMpgGBo2+QpViNmgIlzo/x8TbS2GObxWxkECqsS9BX9/8YyExZJ4JCAc3a
KndZxOWsficE0B02dLJ555Snx+BBDdL1BCni0N0yYEZvREy53a2aekZ1ni/Tq5PBQitkIICi4plM
i9Zm0WVyz7PytT7VvvxpdQ6rW0waHnln6Q9OlmiKdI8pbqZrwD95mWxQtKISxKawyIUcZ6vnNeIE
7HLwCCHz+d7oSC/4qNvGUnI0DYfJxJPhVOi7BzTYru6U22Lhioi1HcT11EhDjTU44yXOzjPJSM1d
HO11Wep+TvpP18pNnxahXnmg0vFTtS61lZNeankSqiZEmmyUBDr9e/ckCWHRrSLe1YGUi2Rxp7Qq
R6IBSgM8kbA3vD+AcdWrWpFp8ht8KqeEEl3VDwVJqAb0RT4jDNowZr1PGE2u6wU2AM4W5FnvyWwg
5SOMjNSlM1+c2FIzw4jF/u0I3PnjYtmKDiVNwLLsAiMCdQINzABWp3dEzjjHM+yZb8QRf7ax0kdc
Gp7bp3hi6Vk+3iUKg0JjG3jFkLcUkGAKlDYzpXbjZZNxw7k23m6VtkCaKmaIc6QHBsiuqjAM8b4m
FJl9ZvsW1zpSLYaaEq3UJiVlIl6dVO6A+wS4jqkyxHWAmfqR092KHXpMsbsTqrtZkzjYt8W9Xb9J
hXpY9t/1hXF0A4CIW+TwBmNj3ZIVXDiiv/M23XaAX4ce9fLxgGxtXdkgQ4v37I8s4tChePjUnSaF
XNdBrCuPqFoaTezojPMixjXWWNaPcwn2qQxXdqL/oHqeSI0gl7lPwkudqMaVwIwhxCuC+0nko2f+
+rKyIetADiZ+in1IRX/ryPrJ7myBk1UH5RDUbV19/sWtEcsPDalwLAQ2G1kDQjMjNitW6dIaaxlb
d1cHx2XP6UIXsLX0hneUJIsad+wyW/xrTllEQTiimWcpqd04mxMA2s6zcLHj3GGoWyYY2Jk89E+k
0qHEjPyKznJ5wPoy9zLIO9VrizoeUWU0ACRF6C+EshN84UewETndhb4V8aj9M/5L4vj7Ll44m2ht
FW8SvBm3dB8oa0wfZYU5qIgLIoqJ6tR3LAv/qEV68+KK6rv7oH4GnFkgT0Dy3lvaklAjf/Ms7dgF
ChyDJz2ic/4iQODfscogDiTSYRfBLIbS1bQN9RPhNO7pKPMTHerD9XXsIixAnIJ9g2LuYuG/ph8h
OBvJ+GmL5Eaw7/fw8eWdCOFLD6os7mdK9E3V5uwmC3tPso9mqkxFwA+oEpE+L/88LeGSWzLsjyxJ
ti3z1PbB2GwIX1ie6DBR4zBIlqONcJwvd7t8QADqbKHelylW6RIJNbVdFVQ/nUoVnkxxgnOSB50Z
tMP/xTz3DXhkt4iPnUR0jSKPfsg/6to5PnK2/rhmjPzW7zNwpTFHN5Ivhm5FTk5fTvYlvHwuNNbz
00sYX73qD2zp6z4/KkmVTIngJsf0mdt0NUpS2DKCHLgDz89oX2HZnx6JgjIBPobQu4+wp1f6B+ct
9BA4UBEZd8FOcn5LbiJhdAJPfhTkM7yvHO4BhnK2t1powKHmjxSFIEL13dWAYB7kGLmiGOtt5Ti/
yZxNopONhMSUlVEu73mRO+/+Ugw7aToSQT1JMoe1JYPz5wxdMCA7qoCQrcA5cm9nxQ1RhC0+Z7bD
Ku4m7pjGsLS1SRj/boqUbJrLKdvAUyHDBS9pOT7hpGobgdbyUxh0I+5BJfjvtMYyJR+MSnbf7pyS
lW7hJ51ULxoydGl9XDNPA/TqIEPY1SyaKqfRma7FeUGe9Bw3JE/H90v0s2ninllUZjDswX7S0TCr
n1gGKqjCwPgjNOJBqgss2uqlKlU6MwYDRjG1R2F/eIV7kt6MJEs9+gRJYkhAkOr44jo5Z6LTH2Zh
VEdHC8OA9G9MuBo2nyCVKlyDQyYXM7K+cEsGOkbv4tTacztcoHQoY77uBmEUjlZbR6GwjrioNWM3
XG80oUw5/BuO8SmSjmyNON/HVM5EqtaW9HQOfUvlTDQj4Ii3ybyHW8/FpQBsO11F7rN16Z4BE6gi
MUbKq7c7QHag5fmTBloOP8nvkkkExKIHSnVwf9uGKIZmQsusmzLPNsMQXAWiYRj1q7S0CmvtjeuC
A6jeYOetvD13/YUh56bkDA1kQJ/ZT0GRVZIzq57/VruxFiZ+KF503mFQzqv3ny9kPwjn6BiCA7L7
hNjD8wwhM+nlA1dbtyZkcn+ls6QYymfMZFKuRDdOSf8Z3VgRWWdT+FZ+CDN8GAt0R5ftUQQdWKaF
OjnPIu1xzJIF5WhphnGuLFrxkSc1hdXa/nHNmzI+IBzRuvpCL4o1eNQGucHzCUfIcTxfRhY/xgFA
lR5BP5mr1QSOIATfk20r99DHMjd2n9ywBNGPp7QqmKOWOL1AsUt7aF5+7fesfMCODH6sASxyj5el
vF2SYzneTVjm2Ji8FvX+a5TrsCVHlJcQ9ZnjPpg4UfBIdmKhayt32RDRSbpNbw3JK9Aus2bND8Rn
lTDi7ub6hA+heznrB0cc3ljodxi2hE4c0G4skA8QmUC0e1hYJKTuvzqt1Drl7Lur1QMt+LiUo4xs
FCtO08Bu7LYJYHmh63VFaUV76uMMFNMHTfikuwDGDmqzyHbq8/6Qvf9kYhEtmdZfVOCJQFSCkuGi
hGh2D/75A57bfX0J6fyaKwN4OqeEseBp1ZkLE7qWCiwpCba0ZyNpMIyxBvSV54bcMHG3DTqyX8EM
xlHS8tmjBm79CRzOmeLn6OwLDDytL7ququPmgyP8ci/XgAc0hy0NVFjfyQQjvlAryHBYEf8d7FF9
Xf2ocSE6BzxWIkYwURj9uBUTpPgnpSjvt6G4bKb5TZ1D3CjBl17S+EJrP7r88s4tRIkAyCh87KCF
/5J1lUBzpHPglGRwaCOzXDjf/+sjuF2zvvB1V2FmmLwRdYQ1Q4U77tvuVeZl4orYQDTz7c5R7dx5
sHlK30B657hP7/dNX6erunxGpr9vppkh8ADpABBrtCckftLFP+reYjiy2CK/JCOngdR2JtxUwCK5
NMlXriN0TgfEmNJWhXzM1H0qKXOdGnlNhngcIlhYcra2DCYabSf/+LgqGtWoTU6J4DgyiB0C/MzR
/4RTzlizXIMadWGBxaskUHoYJ3ETS5wfA4sV8xplcFs2uJvo1rl1HvpiBO5bRTnkg1s0TKHQ1U+9
ohSgfCLPxJivGlwIm4Uql8FlV/5zULccIRvDMrV9E0WpL5qmCoAhjM2su4uHVTKLILtcA4i9pWJo
cmF/nhiw6+EZxGlJjacrsb7NCy1acoiFwCb9t3hbQIn4kVf/Y236x3aJXl1CyjrS3zA0GSBzwi4C
rlx57BTc9VjVtVkX8Q4t+9yTSdyTCORJ1HaXzM8oymO6cL590E6OGDkHYrxrq8uDd+ZVCv368VmT
yCvFpapH16kqJrWYXUOkV52IoEmrcMBPzcA3PFElwfdvBcKt1yjKTXey7Ln1WuzKS0HorFLw7+1I
HyMJfB5DvEkcxuo2SuE3LzIX8pGx66yvbe1Me1VCcOXotHHdE/J9IxcxBFNbqoLtz6ffhixNDw+z
ylng9vfdFY2LGKBEnhK5Pe3417HJsgPCc8WPPn5L035oazeXSJpsGNbQaWShjP0VxRMe+LY6c5Tr
CeCjesSSXAHIeTyzmG+Dz3zJ0M5acjSR1wBJA1nJVZF7U/g/blSERq9vJK5TiyOLXkzAqysJTVAv
AmrMU01BZ8sboUUxSjEPnIrS44zpnl+q4FIHYABRD/DlCxeVj+w6l0jlpPeghurjGbFx0lIOXakk
cqp2WbPXDnAyUL1C8HbjI2l/OzaeZYU1+iuB/YOrWx/GLUGedkqAm0YLxbbamUA78qYyMYatSrdg
2rUM9Ejev+f/W4Rp7uFBoUUkWAe7anJxtLrHdR0BJdTqogdGB0/8xqzce+2GiaQcr/bJqGutiUis
gwJ1v455CnQUJiSv3Q/7H+FWxUOggWBOgGYElx7Levkh85Sq3BAq9QXPCKskuaQSxIoriejlKAxK
gAc10IvPvaUgP17zFmHKBp+cVyj/CE/Guc0NnA+XU5xEgyjRfe2Zs+94HauAPFr2p3MgwIBbH2gk
7XymMcLhicqRdnHSYp2XFz3/beCIHFiSnAMjPmYHdbXVUffDZwneVeb+Rt8hEzaYqEZhxqyJwfl8
B0kftumvRCV2QluxvGHr8bWLhNW1a8yQpqRe524Q0yt1TEiCiraT1Monn40sLj95qsRXQDvtFMxy
qan3eOmO78ck7PSj31UUCSyqGqBO74kXNn5MvQD2w7ZHWE/SFKz/ReBP1pBP8lhBzgw9fGZfgxT/
J38KGmwyfXzLrS+7EFVsP6YmNk9Lof89ZVKPILboqKitsEXQHDMudMSTdYBJzUsRgV9U6/6KPcrT
KQmSbjhV6ECN03R2VFMYCbNXc98KhoZNH7xf6WIRHZ3SPZXBHaI5M9KPolfrL5xXZqKmdbmCyLr5
FQxMUWToee5vG+tVdcCAYUyfmU5JHg3nl/yYtLfdKMo3Driu7FELpJSVMRZ4v2P0X+ywt1eCD6vl
luBWaCvmK/AIpCu31QimEtpaei7DpH4mJXg1TEPVeaBFbjBsOYxF18XEFOhsaV1wPax4lYigfhfZ
JcE5x+sTZSwY4l85+Jnwhk1rvM/4B/A3gBiW77MAH3pCY+mBlyhsFigCG/mQVJjozRG9J9dIvzQU
cZpbqbT89aT5RWv3bgaG8KStlNnr3bQWDp3+1hYTZKMPFycT5mgtp+2jymKtAxJ6ZKNRfiRtfTaf
7DKVDBxcSD1GCHpxk81st/gQ13HhZTw7slQFSV6auabJn5eCJH5//H7fiAIrVyXF2mOXdSfw93Ld
+JhhPIahZFW8dXFrnYOE8ZPxCErP33ia9GUhvB+l1/zCDgtzfLxH8madwiE8QtJJiVbBZSfucdIC
Bw3wHmmVT/Wsg8Pu7NnrJP6TABBSWEsKXee7OJ4eRLoG3aAcPmrkRGno3Bb8tueEswZzVzEWwkMA
FfWI1/BcHCuAbGpkmuFK+HTucNBHS1gSxxu8Q0hskeVxQPIKv3TsFFnUC+Z8+9lkGB/61ZyqDzOU
Nj9Dy8TP0izWoQ3OPwk5aahffV4/CwFdE4runDZXsfoltjgDSxhkiepWfRVt37kA6E4fZHPs8KYa
cvZh2nsICwX/RTr12Ud0QD+6zsBZRup1VRtaZLKI0Jgu8Fq+ilEPf3W03ZohYNc4wzicTmO/OCSn
PEmyvRdi0CZAuRpi2nm69InRngGg8eUZfHn9HoPdGnOWSinLRzUk8fO5x55TV/Sboy2o7QelXaDM
iq7nWF9CLPLYg0s3JkyoOIZfE3wwdXREAjRqLUxjlHhNRozjDcrUhIuR3NjlZ6GOFpYPeNSmuy46
EbKEuOoOiL3w1DU6IKp1lVj35I5599oM1TzoOmLkNrk84I6VHNxSuhsv/siW4q9xZ4LBvoDi/hGp
Bdf8245VD8uXiL+1r6mCDF1swCkypeGDTRpn6rkiXTJ3Ktmi57XdiBoXpb7UaENrsMo1iEIubmDR
2x4y01iJU3Vg3DQcvRtWMPpWiQqX5WwstemV/5gfgX9G91xSGsTcQWgSkkBOi38PhMfHnX96t6rg
xX8RxoXkIWfsUPEcSpigXvKZQdMz3HP5Cjlkp3PGjJ+D0S6cY9GKcRjojaHHojXOhhqZ/W5SBmbg
aE9gy8m/op/PKd4psmCggcjqvh5lEwr00cO6YU+yDqZ091AmMupfjMFYeTC9Dz61DuGrTNoOMx7B
vOZQw6gCbiLOEUGqZiGeaHpL74jXpyp3snVxdRSLgWx8gogrOvQGklQfMdTu+iUiqTc64+194D6Q
uOLe0sqTsXs9XCO6Ihz6rjZkiDJum2T/sRABJ5WxwATuDx23TRBJuw7Ade4ymMby94FzsUV1zHk7
ZG2zpGnSkFUXYKFVSpHgEClSYNlPh6BWnyiwSUSg5z3SFAOqKDpUWXfuQV1nHUpV2kZKPYF366OF
i9uhsrkFZ0ycYWj8PDGMjEdS5/H84jR60omyMDRDkhlPzaIvF8snmfMAu6mF7lFalpuhaWUL8k7E
IZ1vYB2NyEmZlGu8jYvh6AJn5TgSqQyzkXkucdzP8ODn1k6TjOCWdJnWIIRi/KMy5Lby23NHTWdn
32T3QRVVRMJp9zJ2nQnR1Sgme9UCoLn5TyLO0HSiJ1y4aXkOTZeq+FbM9bEdSnUByLy9U+dGq/XS
/Ui/Ibr+1OPrpyos2Wd3JWgxhDE4DbRO70qU4xQUu3bpsudChoKuWm9w9pCi8lY0KYYbzIUjjOp9
x7RPuGTClaX/8/zT/4EgfQ80PhE0ZiVcq9+YrzS3ntmWdOzqmWx4KuOF9ZJYYyVep7jHUTsQ7OTm
ETA71VFI0toTODp1FkyqQU0CRfWWek2FGBz744ZeykSpkgd4FmML1RuxBR6C0T5bqoF6T1mZIDWg
HI4O/vtJcxD07QPL4tgzXhFCQqetUq/NOUEp5088ZeMN635ObQM+RwnzO4a+nlxnjlr96mA8csqC
og0f98Eoi6GZitYSCrWsmG1sTxqr8LJVXF4ntLrhTZWTBn6hUMF2TaDiFYfAnWjBiiEjnYHepRkp
VYIGJ32MI/4RhnngOQtDJ8CXy0NZeiJQNeB9w1f9wi2u2CrFoP7/UnCXKudNUngll/grkNLOAd/X
p7Vx4I0xqZOQuLnheNjaZV0Wm/VaCehkuG+LST68xeEhw5ARqTj/EciNDGKDOmNsRBX3gsedUUT0
aFjDmZGyqPplYbiZbFZmJVVVmgxPMFHuGYcnwVoB/1Jxj7I1xMMZ7u2PF4jQeEXO9ZtJzyuUbZbc
YuWo7cpziIQ37mpD5ZXmsj11eIbSc+Q1j+9C/3SZcO+025iFe+zqc0Zd+PS2uzWmlSOMrWj6JraT
k3kkloXzHMHRMP6L56xGbAk2l2gH52epxMssF4gOEMgoKQyjPP2MZIDmFFz+wmfqBikjKZstiQsC
UCWBvHEoHRNYh0359lcL8oIirr8efcVdV0uyPo3c2UDBGzGkqh05FQYKlDP0Gga2LiYjrL0is5D5
hGaDQF0ON3QQlw0X932mjz3shG0pKw+24ql8+TQJgYpKG0tYiCNBCuUFOQHEOxTeVI2bHX+H12MH
rhTiKPtX77RsIqU7rBwswD+B5Efr+59N37I5gZygxLx1eDQ1xRqJfjljNOslw/+yu+3RQAMNM538
7TXr3usk94Z8BCUWdqbc2d5wKUJu9MaTz2it11RVqfQOFj6ReJmt0ASJ6QqQHooXKGtgYrjMWOSs
qcm0GhUV0gDO4paDUHNeqWTBZKCcatDmHU5NmoHCehyGbwlBkwHOgbhkhMqYGgYguU6nreKbvUfw
LhviUfUf3Opdn6E5WwSm0fKspXEPlEB/Oq5rhHT/zSgtO1ZN4TtZSRQvXn9Yxc+9Nt+/Z+/1L5ZB
mx9rfRWMYhNbFa1CeO+6NAhMPLPUIBrwCYG8E035Z6kEmkVIHe1V4DAnz1AmeNQdts8hwKOEsCfa
Vz9xWYy+z+JnW5isKr6t+Tc/HljbimFRT5o523R6OdJPacvspR2/1WSwi4nX7i8dbv5+7MJlVlYF
evdUBjTP+eqPe94Q6vbt7RiVMf6tk97Cu5g0yU9Yaf+jMJDJeUCvkfTgx5B+HVgIoumVxrCzXaRE
pAaEUePMbyNXEteDGPc97Cr4INAq0Ao8DsfyQyNZqT92cAs3P52Jme+coxu1MjNdH3OZLplTapPg
4fqL069rEl7G9/VsXA2W1SY7PPcW7xBE8TvTBW4cCzWh+IAGGAY47Pj1Jeo3JMxR2ZzLhr1hDgB+
ThqdOZokdUcaPb6H9NczC6UTorZtPDHHgMrCptoQERRcGLWDNv1qN738lx3BMt08FZ4m7uueDIiQ
ToPmUpvyU2hczuKPI54wuwKhKsL9TXPn31AVW1I2Jhwo4EKtlrCwQVKcR6pjWoOB4qXOrUJvn9fp
FAzRgIVaTS7xMOooHePc2s7BhGRFWYoTQTjL70t/pG8pMID6gfkf+C8XX4IL/LaPqUFgfLWeXRLI
46R6IqIG28/o00/mjvEwWZRx6CTT7bNcrTJk1k4pt8WpvDys/QZScZbofhSPj7x5QQRquZzD/AF1
HeGpMi3+U+a7lgnMyf0G8g2HXj3rHSuMYRG6s36ZhrPZj8jHb8CDh5UpicNJyPNUikz8i4Jzgk/u
6ye8+vzWMH4uAQ4RnCICy/ePJxcEGXaxz9MvlNb4b7u0Z7el3fjXLiL1iL9pr5mjCvQN9A6JAcci
r/7LQ0xZzJDBctUT5pO7cPfhE8Kvum9/9LAfZ7cxj2vWPpl63XZTEZUVBqLrmtiubUJRVS2HzGUc
LLVPFV+CWwRTkRzkMNsPcz1dX/Lc4P79qFo6ijk/EPqNgobriuq3pglwfb0yGhVTZS4kgfsNQk+A
lqYQFYQu8U1ioUFr2MRlaFM5StcAB9HwHAJ7dZ0Le2vr5YNy93DWeqUCN07qc3Jfd0vZAQWVu2Kj
XJ2pWBRUdFpn0w8lJQ4oQgpzb15bcQWgauR7L0lRU+2T/tio27Q0H8IcXYixGyyLl0OPoUs3QPdV
RJPc4cGSmigILZYX+KJpIcwluSUjpQxqZT8At+68aCTXEu4024tK+1v99ce6OsqbknQC1XnUBO+f
QLVDz4sAs1/El4ndt8iC+QSbgchFW5wuTzgxra/ABLhV/icUtjmsGS/hiDj/jVgYNDEofQWbBLgs
Effa3LBsBmZF8R626DceKNSRVidB5v+mEOvJlBWqJ53c0cMfxnpOSKQPTzDKeF/O/dETAyCilz8V
k75G99MkaaRCQg1mJwCcWMq8HGinkwVZYTqAM5xO1mCHNPaZBYRSpQMBbPjeo5XYNeJNQpXdYNu+
P8ISoRMkuQ5bM6m8FMSGHfFc3h13zIYLKIUcT17sTgohw8+t4BGPrdrP1fP7n5b0rTO0GUz1Ah3M
PQy5UDIV2eyaKDJcktlrrIUHxnVXe0ksU0+2VNgmO64kNVOVfbLXUvDLPwUXjsfifpuvkq+yA1hp
+QS0DMMIxZu7o5KO1/nFJc+QjrSlskvPYZXNYqeqTuVzWezKfsvfzSgY39bs7q4ac5oUNF1cSe9l
khpiDuIbsuOwQpsKKCwQlyNGVPqA0Pesw/koBehCHzNlxw+5LXO5k5J5cHag/em4u5/fTNTwRqnA
I7mlS3KUeLiP+3IwyC4cMRhrMwMCinnIDkvfePPpAION/Unu0cNF0YtAViXohBJ9zVq6MCy8n/Nc
fxEbdqkSk6ui0pOsP9KSabEoFQlxRFo0Vn1AjVTE3kdQMFlGZJuFutdGFf/rbi2LuqvxGpR+Q85Q
ARH/QHk1XBz8a6SkVyb3DAvQn/OyfSPMnaQ3aKCe51juk+yGCmhci4PRqh787wj3SZMP6llof4A5
cDh3uIrS43yBzzxYaDs3f/AC8w44x0HNR7U59A3EZEpQwuyVSN1sHI3TZXPKiwggM2ZXtI3/fVuY
BVrWUsVRw7duY4ELcMVwBPavawNGfmB1+3uchvHEY3RurNAwOLpbYW5GWMbq72wYMb79a1gBM38W
dWhzH3hM2i3kXeMtkdFl7XZZFPh5nr+Q0M8IVwKzpFWJVaAv+MeKVWb54gCKHAc3YhWxnGjd7D0a
R0hhISg0CrMKPWOvFaJB/m35ytwVL2h53R6FibRWUZuamv+5RM/Dp7PCyFV9IyxjqfaVD3u7rARd
6EmQPT9FzkMXP/N9K0Hzko/9ZCsmcpQHqZWBCqyXZwjoKQ9u8vLkmdsYlg+QpKsYKWei3NrT7j+5
0CRt4vFwz5a+duI2ddugRylXazZot/GrD365JGYJNNlUrlroL3nagLzuB9ymxgezsNSwOMxJlbO7
FBkLiuf/iO0Hejjr1DYae91Ez6qAVzjf97GYsw1b0NBw5boJHvDHKCWz+LL0OJpilkMs4sOEqVek
nK28F37yveYbBDfqKDHKVRJaoWNpagZ++5N5jzE3/WZV9sca5577MjG5+LutusEDlD3NuCy0aG5O
kmmGKPuytJdatSc+fi6mmy1HHdsbl2zfqMi+JhcK6C6JCVavNLGO+74bpY7A45Ud9aSDdWo2w1po
wyh8nOp6GgfHyeyQk7PpuiiwwRJK4v511GcDC9AWIGIeXjFNbVw2oYGg3IuJFdHRrC8XQ2S24Pcj
ew80+Mn+QB0ER4XNrVwzEWWmVpHO63VUKzRP/Eifymt7XoQzvOh+N13JA9N2UCEK9fuSw9nedzMd
MA7dJfpuxTz0VmDTNFS+FysUtlSgHmH7/LMT8IsxZuLIsEA2EBJISyKZkn0hpzNKkWjrRmBnxp3c
Z/Qppk9e2zGuIFhlQ9cvJoujNMOmeQU3qP+/8rghE6HZFu0noDofeBW3+d4suKO4mm6QS2rLWjQS
S5ZHlfCB8o/YP0mg1u0J5NH4+CmHYpV47ifnQOV5HHQNLYWw/q4YDPGab4ceW5AVwz5P0QEEBm/K
sWnW27Hs2S6RqaZoW9NyYv+wZu+NzGD0uXGg6zr8iCmRUPLu8c35VjivIU0JWhys313+pLzGT2HD
ECwszojNMFtwjic5xtoQ72jKUvvMEY//JfDN5PK+JT2AWuqYa3K+LNX1IZB6wPrY39RzkwAwbCB5
Z26D+J+sHB62EwXzly7h2SPPJVEqiy4Q5MBzlFZ5Ke3yEiVWZzUA2Q2BWfnGMO7QyLX2A2dAopXF
K/lS0+s9rVkzlrSGx2PnumLvAbAgLtpTc51An/R1D2AemmhppWSDyyB/JtIKQNsVRmBp5Gay2r1q
zVzo+f+IwGTycBKBsOlW9x626BBxYhIJEw2dZq2+B2gCoXCD7mISIr4H0iZjplZfhU91cc5o6rFQ
CyyXZBnTynpDYbipNZTx/OyxE3aANdS2PD8erehlV8Gbsncq/G65PtPHYcNdz86Vjq1yTH1rHx8L
p++hoQpDJczIiD9pCEpz9IO9n4xi+hHTYZTYAkMN2TfKqWKkYMAJe+K0m1kNSCDSmKd2N9qiiECv
zQWKKqqBCCYX2EkQ72QUE12QcDAaRsv+yuvOQoDvOAZnhszzqs+n0sqj5C0OlmDiogpxyMF9NnV2
aFsjxPtnx57IcPtpKv4gnpMjF3773DA54JJCro2gDqh/X6yGixX9yU1L8rU6Wc1dCNq8WPdJgZzq
ABFCcGJPm97LU658gKPL2Ngf0ysopb7qWWEKNKa90cUt7wEKYGrsCMZLF5Q4IM9AVXIWzPUNrcHY
/cmzes45rNPYX0w0ls5ncRObHiem49QiYcbXxDdFC7pH68luEyVQm8ouCYfJVGeoUqFP+/qe8gad
WIkI8LO6wxAo96/5bYXB0Sets/geXX/URwQU4vgg9xQg9qC84IHNBmmXTXKM22tajpb6n82cKqy7
umcaHqDR2UdfHfSFBnvYZjFtyH/S5PE36ah9uXF/j//R6dcZaW+LyXW/MEBJ+2u5iHfBgb2FtYtz
fEX0euUlL+SiIaRGV6LOFRX4/MOPTjC5Joqgj50fXRAIA6+UT6g7cISeMbNJooDyG7kdOrOmzH9w
q2SLi7foYo0HmcR624trkBgdpRKhCiTIrHJIab3L7W20CRgMLxu1izi+0FC/dSk69M7vuCm8QWjF
RCGECxo722ZG+ctHmrWx8WC2V1DGM+MySiYq2Hojxm4Y8CSB7rNQHxFRleVetSJ5k0+TJ1dqt8Pk
RMVJBn5us2gtCaZkzE5FPbCuA8dLtVbmP8MkeaOM1qchBwNm6owjI5JiFWRtt8MJhP/rwU3w9yvB
aqZEwJdzZibNU3D35PguY7txLC+4strf1aP64vkbCX6yDuMcWK61A8Jg9z7/en18ECBu+OJ8sGxh
dA+npd/MJ9mfpJKto/6YjhAe9a2s+1EbFsKw6prjOlMrIdZjnhlKtQHv2ixHJKAA0RnT0Snb/sb1
Jxp/nlhRjbLQLNslq2ECT4nQWrEoYkWO2va/svk9xkL4pCNi2PuTAs4GO50ZxhRrM+1du++0fJMm
wZYukWyP32veTk2UmJ6hBBfE5HILK9Ri97xzxP1RmkS6Lv4Z2mrLUpjxAGvQKDNa6e2kGShhCl3F
KqzgeUunk0IMmInNdhT33m7LnWTQVebmtzsuUHDbA/Lp74UIXJMac2xArbrZfdmnaNI3hhqIilF7
a9R+f+MjOBFn2MOA9oVohVMOwYnkWhDfKxz90P4TWvi0XRYNk+mRU7A++CMbGlp3dBXMvWbEtAAs
TBgd/8hyjLFtCnR9i1lwzXZBawzhAKAKlC+iVOgj05Y+Eg+JW31AftYxzRs1qjjfbQcops3S+g/R
dJrxkinjMezMqekZ32/ODkyZpmQn92i7S0T6zIidf51ETY96GQG4LE6VFlNrR6rQyZAaL82Yxz74
unA8uo21rkXxzr7hk0436sonj68ztWYhOhyPB/l5xlEy8LMKUEtZKAB8o/NecnDx86H1SyfcZuJP
hPZG92qW3RXQ1m1fUiaqMm549Q1OpzcgMkxxk/my7I7c4+eJgQihpUQudVQYu5VAlxi5S1r3WxOd
w309ydWn+Qyn9E6iKB310A7xizFQqQKsTiCLweFlqBbO4EzCBTiVC1B7aPCgy8hyf7cjL9U3dtGQ
/dUDSfA+FLILtZLHczpoy6S6paquSKjIZ0YCeZ2GtoCfHPynOoUtBs1cw+EVZ8mNCIPx5R7GoXAg
W1Z3o9TbJQSlY8nzYn3hohQ1NguVS0Abhn0VkaSs7yE5BOLejGjxKHC9NmLdFOAn6QEIOHuw7i1o
TcszAjqstb0ftG6RW6cSW3pl/GACRVDq0ODEFgZfjSjTGAOCQXnCaC7+8dLJKQcAKnkKfpmMz6bf
xD2BHUpv5T7l+Mx7WH6EM52hD7q+RPpBXq2PcFK9NuYWONMfVcXu0D8sbYCBuJBJh+PrckkSXsbr
axe7B2XNtYiudt40dSaV+hJpocJ+kSWBdN5QIynwZzI1WZOz8rX4P0+XLj/oyYMuikfAwcK5CmLq
fKHzaHbKX6M16xVU+cYSfFd1T4iWJT/84v0INYt7tqXUX+f14LGxJpH8u1my8s+imV3zeNL3iOiL
Ik98xmrY0QS4l9wnmJekhNphUm+7xtVCcoamL5Sk+HMgtEyMNO4tuh+YMc5O44rZ/JajocrBjmec
59rOqn968en3VAfrsxF85ziiHcnrgnJ8kSe0JXxsPoQF200bsjPcNEjbyLysi4BxtTqN46734WI2
T+ul/LqO1O+FGpwwtUp7n2OKGZJbtQfGLntnO1qOifNH7T6kyszQ2XtLdYD8rze8Gg4gCMO7qQcC
GK2VwI78BYi7FXU5NIzOL7xRuhq2vZooDUF5WiVqqZtqKueHGG1PQ6mhO7f2pFiyZ4mYioBn7Oj0
RmF2pff0Cl0XhL0lO5x44BVN9425HZ5+UXyCEfcOkGte/4hW2lm9torLbQ5cA92OYi2jBj7EiBQd
3m21xNav7dsOaT6WkiGkwwH7ci9vv8EYOKKc5WckoqrO57M9+iCg3kwbkDjcAqEHhsqCd4IrfGRD
/+N6Pj098x5pTkz408oCQsgygFUHV91K//39RF1RfCvPTUmSaQAoo1HaHbpBQ9pTI4by9tSE/ZL/
dYTxfi0XB8u0uqlAsKjK4ElrBQr+0u84n93qTl4boxrFV796jbArMFqSB3Uu7wUvCEJhjo2ilfo+
xnsyIZny3DGHGYeNFAiZiLffdLDC3NVufTJABRhGMboGoNP9h/2vhrk62fBuiymL+1BW/1rF43Y1
jvgEFgCDgXHXZ+iiztsd1xZ5JQ0YZThD9yYlDfauZ/mDHnzP1eElBt8ACYn7kiU5TxS6+pB//1RL
iV5Y9qBClozWBKOGXtOedQ0PflQ5lBiffVG5Xjlibq5wQOylvwV0Xu/NW2GfKHDFSxVfD9bHRftx
267stMjUgobEdm9E2ewcaxr/u9r+WETPTlAXwEWw1fFlFWeLK16p+XGTBxnywitjlE/Cqt7qcK39
OJ0KknhGbUmDmc1HmtjC/2cwA5rG1DFawVqfZY+2Fqn6CKUbvJuVCKy2SJnjSu5bx4MYn7Gr5rVb
3yIrHcsg8w3clSTArY53g3J0ijKXVj4oXNAIlCDQn/JCR6GR9pgCc71/lULmCIBtfZWwe/ln5F1t
42E6IquYPbG8j2ZUM/mZcJnG//DsuS6awZRhJOm5YhWrfEzH8qulr+Ai0PZxjMxmbSG/udXtBgHx
45qVdoMIJkPqBbZQkZXavMORE6+NuocXYhXaIssex+2KDbkkD3trFClpfpHI0uQNdNQv4/DpU/RE
vgnbV5yNRX+pTMrr8cbrS7JJPhvUR+PCOWHx79QGdNu25P59UC2InyTneRgoPC3ZshXTE2lyL1W9
QwBPLyRmHSb4DeP3H3VA8d11L/dbUCNscFn5ZPt0KHojF4DrzlpOPrXq/N6Zwrlh9PEmaD+t35e6
urFSP4xwO9deTk/dy51Fr/DIWgtKww9GioSipowI2CMK25UaBQe210iaIyx23mk94/9KtUdOK3qD
yTkHba4kOTmgLXxyniVgrZOxJEsjQjeS11TB4Yzjh2yakUpwOgmPrkjTVIOzGyWoBId4QGRbPKA2
C+ICO2a3ATXT8dXML6d7kZZOdEJdTcq8LtNnMsIBO71v0t2xgonVllj80F3lS5wd1EapNDLDNDbu
RikaqhIsJATMihwGWn5d7KmpIySrVT7nTOlDAySb4XX6oDBTu1LlFqfj99zZW9x6Fw/Yde8cG+yW
iMusNz+FNSpm9G2OM9kNXeBSCEJKJqitsHYwKR6VYEAziIDZ3dGJF7fyVgz0aP/wXkpeFUVA2B4k
yfqqhaPd3szSzknwD9ihfGByKLMpZQ9VHhrXL3LSHLJ/vxTM28BOx5mhMFMpBoqBcsxIggVsyOVh
M6qTLuQEEkargirKVc6k43XpV3gtS0tgFVdoraREzeCGrUcoZme6CDElAIYyNWc7H2sbRcd5R3RY
/KOEDWDH/owa+Lybq1GW7iXQjG8WBxpDo2DNIhvza7jETgn6asP7iFcz6/pp+1f3TE9/T5Klh2uL
3PnK7JLOVD39Atsy3lh6L/HgfBVRAcHwLX5RrAlY4tTC/EZWhKpduEOwq9CN1GY63wBbDH4QZH39
eqNWOJWrlHDzATih19yD2Cz3dwCuuoWoZHKI4UdqBiS9FsLhbq4ppUY+hbZtY2wtavdLzcnk8R4g
tDkdf2qJ7eBTQj/29mSk41Oi4XwatZuaYPpI7RlPBMTAgJ3kXwkk+BwEDmhO5NlvGlMFPwrjYhGX
58VcxmeNHznkaOIsxkKg+94+QzMY5MFFoCV9HXVXXyvcyk3GaEYLQ3Q0VzuQ26iMFSp8Vr85de/8
QLlp+3RYpx14Vhn8UgJQ4SDJvBeKPhsRsjjTjgpc/gTemD4gXe04FH6Y5xIR9Ims2c4tvf1u0kYv
5G9or3KQXpax2gx0cnEhIZkUZd2Z7AZXMXnVJICavmcCuD3mFpUVvtD+gLsBF7ROaIV/vAL9GCCB
tMkmFh21ZBxf5cleqo0TLr1CLR+UxA7Pjl4yd8ZeeE6/NGELvhSaXkgr2mTr/D30yZKG0NAw7TPR
kWvUPwfYiovUrNcwsZ6tl7hNw9L6ARdXi7wvHu84qRiov88WSxelslcJJavEN2PSlHUZHzOzKlhb
ah5Wckq9l10Y4m09Si9I4pkk5S0/0f8HEBF9EGp9R30x6sQ/iZOdzOM4oGaWKNA8ahVyjdQ5aggq
D9sJE1+W6XolX4aFvRF+qcMDbol2h6Ms+Jwq2ArBVaT8lYmq05zIxZ/fgiIoYo8eLpN7riasUk08
6XciLQmaR5pcfufef+lLz6ylA7dM2mG6NfpJypiy2pIm3s8IExdbUmbHXwP+XSaMX4dM1Da+PsCT
VxYQAZiyLKqVjU+WtY3yzZYlL9duQzaIZKaAJEKgCSHbFf7JuB6Uoam8czC9TZ7btal8mjWMjX1M
jV3eFe9ndIQNdqpdS3BA+kLSl4mEO6HY1J1oZ8PgNha1vp1Kzc4hLfIvLhtvoOu/x+GBnhHwXzUX
dE3kWO23CD+F7UaeOP/FNg+RwhHNAKmhV6M+h6dH3Fhe1q3z1lpzLC2bxK744sWXaGxtDYHjee9U
A7+LFhDCWB0ZO/kA/cLkOPol2MkY1bWleks2Ah1csLnZzwC1Z6J1ZixRR8YawoqSraqt2UZI+gOn
wuS0PwrtLdgPlwnfxK5Bes4BKO6yQhgUGz5GZYGVxZh5HlCy/9afIPl4GwBA0h1HnpMqSbBPNzUs
OQr12g4iM9v+zoHy4kB9FtRiQFsCGIujcLorxKNrkX63qZTiyixZI5EKrskEwIO/q9jwMZypaHYF
LsyzultcNr6ZbpxsASCsSvYV9pOqa2E5KveRioWSQd4kpacR9OLyk9jPae6cGnHcI/D5+VsbZoi8
sBHQ/dCvCoxcAspxlf6K1bgRa9hZoXtAjP0OUHzlITo+dXjKjqnP4qtOAcLDBr7ZaK3HDXnfUBJl
rsfY4xW2f9L4lylwHpq99vCbmhcqS1ZX+JtYnt88dQdOgq1fifkhGZafUbOo7SuW9p2coBCr+y49
RnOyaPOQlTvpUllqXEd6etRS6WJT6iF0VV8kxsVEEXP+NXT1WnQAz3KZmd7XURycy06hQT0gVpie
NLOtWFvmPtKfjonTIjMLqZd9dzB3gGpBJ8CM0KcAhULGMNLLo1TLPWxayLs9fFvWdoJxQEmslBeA
SfAi+Vxs2Y8y+bilPeb/ev7Ju8usaDGa2OsizygApEH0r/1JCU8uhWAk46O7HVffKpiKvqht+O0V
KmjZ3aQdOp59GtQL0X8SfvXM25KJb92YuaMRUlzxkmZlWzB92RFvGFxqaDm1kOxi/VJCKjAr6whG
HW1LkAnAqGX3Ib1cYmePBjCJafwH069QebBbF5RmA7q+ej+v8pbv58ikcYTzRnjtWP89hDCIiV2x
qxxXxrKnLr7c4eruRq86HVCzNqlOxPppMnSamBH3caevmJwq+AwzoUhYUY1PU4rShZ3oGpKum4EW
jyr5/18OVwoXM/wyz4Lc9OZqa1Jh9E+IzfXGz8Vf3v1NjMiHvIZ87LiWxDW8a2haMWMV+YCny8G+
kP7hdkyGnrf68Nabgpqzr63psrS3pmTwKOyUWVnvl6f/J+VtOfqr62SDbRQN3JnF16bD8WNfDnCN
0o97N07OHW3G/UYl6NGyVm50qxWQ9pGwHyn7axArfgoYE0XhbadQfYzkgeDD/KiozTzVEB2Pfo/W
LidQlraeVNmtRI/S40xI5IrgNdlygfV/Hz82c2UKILkkKL2PQVNQ4fIVTlDF9oG/f3pB0NPNuH9h
IBp9Ci3n4Fs1XkoTYyvO5knZs7E2aRDC+89VOGjoFOVIvj3yVZGSck8Gm/RD7XVcsm2U1OpZnMpB
9na3cjSbxQJfNB18OxcEVtjzidtpeF7bteYts6UzTEaDfVa490oHk0OADaAZzsvOfcKWQmvyHx6g
ViogQP0patnWoc1nAg7p9sKaFht9vRCINQBYOLBwZa82hJo5z5baukWHVDBjn1rFknpWVL54uz6O
8S/KceQt2YOGbkjLswXZVP2xlxTIZ+ALcbf6BO4s3NcO2pahjr8rbINJTkYQ4naguaZ2ihrajz8K
hV/Nnd9I7Wj2ZnGrMlQ3s3cFtTugz9qMcKEh66i+Urn+oUGDhlxH8nYODJjIHvpzRpAX87Epl0Xq
DQlorK/fGYrf1lS/GBn6w2h5dLA6EP/LhUdF8CK0EGmav1M9zzJC3rF9lGjK8ezftkBMBfwnhlsn
4/Zh/n8wu0yU4j50olkegSa5pPc5BbEOQcWExQJzSonW/v+3gXWH3Tdl8LjH/U8EPT4enfzIweRW
Df6OJm329MYVgfIWco5UAo6Kbiih5zk6tgViCboOIabE0T9g23P6FQ25FsWK6zE1g6m9Fhancr6y
ixguavvGJ4RBZJEQ17M404sKTfRW11Pecnt9FWRGBwg2OjPiszi8g0+0Om8//6BQzm5PyqWGdVjC
UnBUFjf67GQH0YPsAdJk4ybXHvI8AATBYoTnWHQZn+/JKQNFVRCeTmax6baAra0LTHf3i01IsDAT
v8Vah0lybev8cqAUykaKloHYoSKF2GXgqdFmOt8+bdHgRf9UGsFGI6AbCHr2qLYqjxMPUbCd0AwD
PGnZd/AhJ4jLGli5yxeE0Dr6OR/1fscdt5VEvUo7f7HjrHHCA2faHNXtCAmqTCquXQL1cbSapqGc
D76n1OoX8PxX60Z1uuhqU8gE9xqd1hkz40h8DXiwHZj01x3JG9RaNd/4ms25USn7iOQ/K9pwSj73
rYrmP8nT89oH38duW2Jz4N1H/kYSBJXIICcUBYEDJ6MyOiCmu/t5EJFokclFZYYPbS0t+f7xPB7z
mO++jHwDS0ntg63kvNfLHl7a0V1bu94KFqdOKGnDQrGem/fON8ovqJU5+Ou2cqkqTnN9bV/Liz5A
46K+gi0ngMpS0fvluAvQqTghL5xSSWi9QgBCG/OiUinU9THVWl1MlgSrc02B3XjnoqbejbHf+6lt
ooQl3ENTsEnIPS1BmY0G5XCdTD31AfWEbV4c3BwX7Me7/TAkpi7BjRDXy180ELjadmKbDkU7yEvK
cMjA3Qdw7Id4++Jlv06qJx5mdJwDam0kGvTT5uzIdNu/7OPKEf+cuvz7GC7rbyM4wCPsXxSwF/2P
ne3c6hUFlXE6PIA8fb6lGweT/HrHBkvCNNRkGeyv63Ir5xtd5HBp7j+FYHUJi0Y600suIxefmnwE
c3X36CMX+/X0TumUnbm415c3DBMaQfMGtJ1LwpDmDM/jKycE7yw9dYiBTvWnL7jZXUILfY8BYEJE
QMKwE7YS4rbjZG7+i0qyklW+QHC6s3dnKGE6A49xf/CTOSOe627BemysEHi9BfkUAQ09mYHwLQh5
4mN5dYv22J/92n789sgtU51UJ8NvsCnJZ79JmYIsf2nvvu5piBPoLbvzRdv6mI7fHq4o3rY5TZ6O
6oIIW4FUSX0VOV74Mct7bB5e6h+6bJ9hyHqcIR9ZDgUXW9449CYLvRHGSkOgQvGCzdttemHvSzEH
Jo3lrv42MUM40eGYZb0utInsbpS7Mw/1qHOpei4NTtEG1hdY3nmOyxThgMpWb6P+f2FpqGNvDKns
wQlHk71DtL8tPZd8cd98diQeUauR06tvs/NfqeUmhBzMnTiWAieUH7Z6cLvZYnlkyvpaWU7+AeN3
DWSEEMWMdSEmdT0R/hknqRyJLyhRGq6Tkr1swcwl9WE8LuOMN4hha6puIBUE8jAR9MtK/utiZrOd
Dn/vmiq/Z/3ORJ0rBLrc0cV60bi1oM/ksnp027RdVq2aRgW1e4rOmUjwqc8JO4IQfhD9F3ZDIXlC
S3PPS2PKDL4YkG570qUjCTyRAteRbisS40aNw0Rwp38c6BvXoAHPMjpI8QmLeMr5b3zoVPE0fq92
Aus3kHkjRpwnGy+aw6tKNwq4QYAiJEo2ze5L/Ub2StwjBMkaADHntPyiKfxlg0sGzta/DqqEMUEK
j0CSkbaLZm0DmD6yOtkiEQbKzx+IXWrlxvX9vG0w2D9rBqae1JKhgPC2Kr0nLxoG3dYs39in0gKL
RgoUT4g22mzMeQIBpfxB89CDpKnKjYEvwFhcmn429HqLSYhEjFRoEXn8YvshRA0icexSa8y4RGpl
NAn/H0TCsIIuz5aw7ZU52X4Qx+udiQb3w4jjIEiR9lvjL299GUlqRWJkzd7SIpUcPB0uLHMTbO8M
x856RVwQxjVjSE3ca3imGl3zYiowmrSorBfHUiY1Mi1s8ew2v7yWpNAXVDdQD5Z/XG+H7hi6Pyiz
wm9Sf6m+yUjTkUbNuAJ9TRAFIjjlirf2p3VRGTRZOZ4gJJX/LA+kNo19qrJH/vEwMtARclFTOwYm
XvEBsXo/TUQZdDos7ViU2OBCccD1zGxkcWijemQH04G+UbUsp/wGvmzVYlOCWo/Z6IquGjL/VLte
hUC7TRwHDdXi0AK7ptZ3VuCHN8Y5KwamMOuIVYasqV28l7rGrD6wO4AhH9xfxUigQBE2a4afhmqL
K0rGeLjyR+MMusYkTui+AVjIadPQHX5+FPrrXP35ieWcZnd00Iu6Q9vk66w75u+bK8Ic338oUF/2
IdDZfVe9BL4LvILxJsMY+14QHXj89yKxAowrEr5VS7bXolHtUWXou4qBjqxWgGAj4ZL+w/UVHmyt
XgIMHg6ww1+k4Uj26/mganFI+wrzsiffvJRr3izDrT03XdPq/F1KCL7pmOrE067FqP9pgCQf96JM
h/TNusfsLCiOXCcH/EBhRB7nXX/g8FeDt2IOsRn4hYxYq/5Hu26tZvPSSJzGEzLu/rRlT75eqtbX
Dd6aUyKTFgQcerG8qGnUYe6DI8BXigtKgMK5yoqg0wh4hz3aTn81aSL5JjETfsDoVaAwtQHJtFCB
3OrOdA2/XQlEYjGWm44llSq/HrddYQnZs/mz5ZEO3xd+dY190+9IFhATFTTqfn8iiyUXhUZu/diW
cW2colofwQCK20OxmkC+9Spl2JTi5Fc0zLTMKM+iSi7CYVO+fdZ/xaAiBmLiK8IYg0QawEFqGUZf
REV3DjbTBJsPnFtpDk1dgje2F+RkHIi3NqLZY3DKEDGSioBtfmMuABrsJAqEPerKjFjjuZtpBloI
cveZphqwW4FKGRMo0kbYg4LWBwAOK4fH1HZZdqLFooJ+O8xq+Dh7K0niyPvaUEcmOxs7l8PRHgkq
dUIfKpz+mQ6Y8as7f94fNHjFW5fD11sxDzNGIKdvrU1VuAgXhrYShGjgq8GWpjqNpl5UzsZGK4NZ
JOioSI9SLnvovGDti6XUBbD9BldCC1LrlGwIv1RO/CREFphsuxfzTLUIaOM6qDqaQ0bIYM/XzZSi
Man/r+X2or9I4FjlPRjqXqwb48xnYDDBhshlyxMwI9FkfYjdMX9R7C0EcQYUXEAB2PiHu2JSuJyG
p4mOAVQNflRIVW/q4oK8yyhpMs05pgmD24OaciPI3nXSIIvuErS+dMLMeGjP8frYvaZbOF+m0FY2
cnPYfTKR0q4NtKMR+J5ip9f32s1uzEqmfJTTf70n+YpJda1uPAO6+NPefIquaoZ+FPYErHISK5ZO
KKDzwfE1Rmcs1p4zh8tpmKickW8mPcSTaQZpZs0rKoLh3c2PhTG4QWuqYjOjXc89Mnf1oU5ZRSUQ
uaDQaX8nMO7b05MGWCIqVhSTLxQwrLWTIDLv+kDsW55yBZLBNa52N9xmO3xTvwytnPmOE5GSn1L2
Ngj1wUZNrIDkh+9ujv2wFQq3MHshPJd7bf1ThmdzY40Y45SgS3il/QttFxL9hFRg9urZAqFCEkRi
6v0Z/hL2ufUx+exHPbr0+1EgbEV444J54Uvn1W4FtMVRinNjas7HiW9kLJbNaAKVBtFjmIoadjT5
NQF/Symhzl+0Nqj3w/FnF7fI5Yrdevnh5qD4QjnWDMkCUAr1b32eqTAfYjttpbIUi4+YhgVat8p0
xP00oa74c92/2D/WhJ41IwpYfBp5uGf9Elk+Gr9oUCv4t/I5o7LumAAfyrqPjiSrkz4R4ugZvVfe
3cTZ102zPtZeMHl43dgbvTdSmFWdBN7N+NZgch6FpRFrfYmXw+m/eqTMLrUAioba8YZcEAw6k+Ch
ZqZ2+MelXYXXu9l8t/3JdurdVvVrJdxg6MXfjxucVAqwEH2sUMhMKB4BKDgbeEUwter0bP+5yxFe
ACIewUEWdZFnjuebYXtwfVfku9GGjPcW3YubhhreGsyi4Pd4EF0qJEmrIJS92VNObICttJUFFaGU
dXwXQPvQeLc4+n+6EICtrg0VfOFyHbBkuIlntfPV79MGrZhFcjwKcLVgT2xgKCFB4kGYvEV9OPAY
vBkE+z0GfsXmCNwGWuGOmmqUXk0b4BtYuN8IUd5TmDjZeMN02vg1S0eDaLXylUEmNcCfDLPwoF5H
eFNNMEdU+BlOXrbXh1yUfYF5A3A+jPyrTjN7mkUKxZsqJryiJm2g+W/dAo6EUxZjSfJT949I/xkx
kIPMy7VqF5wB3EUMNVC1mOtNCmLKf9J7jA+hN3Q2XGn6M4kKpzT25tMc7CU9enqBQTShH4m01d0L
FTzwDcdZSJ3hVCdlwW4Qk71qmhZaaVh9mbKO4hjdM+atBRw9X3RqSqgLVsNq5qdP7huNsddoMzR3
bkY3lDciIX3dRrj37FUDxBa67Y6DK0aygKt5L+qH2rXnaoz8Cw5EPBRwxiZn84/3W1tUsf35dKzv
kond0QFr4NSQpe6FMSXk+rQB+JUjtGoPMh5v5zXy/kRZIVeLbXH1murizacG+cbTwzR4fiSLK5w7
B7AENbAwjes1YelEeHyOY83Kxb8H+6qeC0Ul4/HUj7Nzg9IcNIeLP9kH/Y29itfPLqfJyW7W6pLr
HvOKaLG5qEgCcRNgZHOLRDjFxVZroBAayTv0M46kFprnFRYHpPl4fZ6OvW7vGYNrGNvFbX84nLZp
ItqWYVa65fvhhQvKRYlklvHHY+wPoVm3aFQ9EZKS8ASAFz5j4TdEyuYTn6g3W7DCT4iXF3836PiD
kMLWNCLwlCi0sEjckOm7NdnD3pCmgk80yfBoxgyQmDYB+5k9u4l3NydqhmTK35t0wF2akUiuybSZ
dp9C5qs39l51GSTJZVO7Ms/L51nWTSN2xWAEPNxmuENEEJRCp1zgyiV4EE2/LojQDsJuGlnm4NgC
oVuFGS3tQXxXk4WM0yTnsTN2nSgvsoDeD8Ua9pnHcnaLGBjlh8mQ+VE4KJc4QqUilon4cHRHUZk8
C2MUVfO3W44mZQjlEgv0Z48wv5weqmUqoDN5CqkWXKviyy64dVBn8YIBVYj+KzRkcsuKTlYGefAn
YqDjQel51d/AdLVVjdlMiWLGxVecsW9PluKBhqula9G8IBSG1B8XnYEhww4rf3Px/s7h5CTJ7s0n
L8s4RENItVmXD4E4NyM1ziXuwIJwY5uXySUHK9+RHE7SWMaqOxmXMUdQXbcc0Rld+WH0DuW0t+QR
/Mv9/Ioyo0ilJI3qpm2uL6ikrM5gQZqxtt9MX5UlB31YPThNagbHHYnb/OBtN7aa11XZR34WdOla
049oQith0KIGs6sMkbhX5469TEFXPpZvyqQ4j3+652awRez/P8yWHiX98X+XNYx3wriR5r8q2+Od
NErC6ztCSceyt4jRxJfWcCqIgV60t1W4SDsTrVZAF77lv6J2TnEzn1rlb2FubH/CMVTaTpqnjjjC
0Rd/soFnsbcPBNAzBe0t50UMOY7NJnffVUak9bjk5SHPXQgGq8X1dLYl2jzLwsNtBESecslH1HKw
uiQrqO2tgWwi1Y28kZLgXMxzq5cqLjEXPznPaFDbfB64imb/o0A/fEo5VKqs18n/8nUIkhvIMrPQ
pHhilwZX2nob1MrLrycWvFNrUsvzG/jLxkXFuiJsTtIX+wvsv3r15BlTgXTle8yNcdxOJVXBMQzc
ki3VhEIk+QLjQCk3o2Eu/hSnMMVLcCpPCdUXHHI3T/pfitasCMzXop3Zk6zZ2SzOmfVgKgIkjmon
dGvceZ7DY6cxK2XJmrixfDcU3LV7S1vm3iZ5C3ewNlC9nm2TJb7JIOlaCNVTWGFJgFTnXRGNdrKM
nab43e9fo4e3rr/UVMa2Ngb9XiI0954fOut599f78cAdaokk3MGS7puIR1rLxcCW6Vx5Uvd+ChXb
EOzZZGz1yPQkq5Cr7vPP4j9Rs0VhcZwETdH2bkmCjp1nbiJ2vlkCQ/Pf+2+nST/xpH7qr+eGch1C
SFl9+JZV6HJix6tfa6pE/HQfoXWW++MWKqviR5jHRPS5q09NbJhV5pmdVfszr8t46meueXY08/Na
liYPQoINzbEUsikTQLwaJIjsM3T+IOH9OAfFSPl9Z4Z3zgnz9UXToOTX1K1M/05YaOkwjvAN95Ty
umNBDRhxYTJY2ijSprusaRBelZEPHW/PY5bg+cIFbQbL7WJeSmza7MMnOHSKSOpWpqHu+wHpc3SK
SFYTFsO6qM1vF2BYKhsY2jlSTvR4C878Ue1ERHkZ7XOR1gOxbWFOTpXSRleww4xf1auus/tWeBzi
MehM0loZOvFsRztZYNyyuRxtjrs4BSmxvFd9nyB+YLyQ8OiqL0uACCRH9jMPT9jsRxtd+y1pFEv1
27UGWZ3Ti5qZIi5oAj8qAY5bhUM1qdQsAXE9HKaRmCiwmh0cVfHpngcJV+LPfI4FM3Bc4CkTtv1r
Go9rm8GnsLVNjMd99nMIzlpFdhEpGCLIyk7EZ299Jf6H6Tg//VlDpwtP0AF9mRcSMve81t1c5HqW
VnfwsOgYx6wCtzLcqLaZAG/pGLU5NTj4545zTWty56QwBy6tcqK5wiOafmk5wMWVKKT8DSCutwgQ
iYRms/AkfZw/75Z1GzP5OIOxFCrEyp57Vo1mR8rmxNenVNNxck8i4XebOVl6cegurUM5QCGQWIiJ
IoDXz5FzQnO79tAB0vhuVSRdUF5/6oOOmFjzECyKHn75J+F7E4lxQsj2vVtZ6XcDSB1QS0t6CxRT
q1EC1a/IElG8A2DmceCi9zu+ADR8Z5qx5G8sTGQAc/rPB0l5DlYcYNW9KcEUSX5LB18uV2eYrEV5
XrGfNmfC0aMnBdvJOyPoeAqQp/pTEKUKKie9NXA3r9LupJ3wpZQnNmzWIw1C0iu3QiWipLfkirxH
Nyf0kajXlejc/zcuC0oHllt97z5HBNizkNeS7zpGXXChaSNNZMiJ+JaHP0Og4Ql5HuoZWPECGa9B
/E5gsaUtClkvDD8vwnnTxnfNKCcyQQ+qmqjJf7FjC3UB1uaxGkEdCUyf4Y1ydeO9qh8sDoJdHH8Q
RjbnRcOByiWmXiq4HSA9qaC/j5WiCsry0zOaPEgWJHUn/D1Q8uLcL4ztVsQ2Ndl/paP8k19brKHd
9qgh5vJdLqM8TMsiWX3FBoREOFlYqlDMmzKad8i/KdHc9ULja1YRi58q7S6QM0Gujfl5VgJO2eQe
kbH6A82TJuU32a3be1PfElRWTp1FkIXSDDXlb9VIAc3Y8+kuC+sDWcADALirxGo+a8473KW85M61
niSrLBlWpngAdNTcGPyBkhea9x6XjMsTP2RhJs1FqpMMKRXpQ6rqx1c8tEthYP8MQ9JDEsVzWIMt
pzIcThF4WFrSJKByvtoscG8vdHOrYAfeuwUCH+o5OicvuPe7qoUkmYoIcbY+H24rqAjNymL6lvfN
leszdz1CQGgVMh37FBsrcdIGdQyrZm0UNH2X6XCT6Txcczu5BIAl9TMDtEE0O8mhLcCM3Eda3iNW
0WGPW3fRB99I08Q87bejpoLUkeaA7hNIDWqtCr68kzSAjmbRrrLXa1L/y643gJlrlX5/32PjZ+CP
ZulsUmKlJoqG9pouymYNTKpSKtEc3WTzqK7FVimcJs4z8M3J0qTxeNUDoCsR98siY1fdHNUWC6t5
UTGxa/MKyqYPISKcOIoHbGgNdPZ6jgH5zeQ9LEMivugH2ShhXCh/PwKSFYBf6myHbESRthzbJDiE
23H+STPJuKe8llfOL8cEdwFgZJAZvk6FnQ1gl6EcRlrpA8CYN5XBA7e/+gZYdXQwBfs4sagrMrvy
hGWkQGnl+Z/BsE6VoFlVsLB54c98/wifa8hDhq/J5MA2g/eNRnxb9CtsSNQi9OJWuC3OnTpZp6q+
KV8XALpTLz/n0zWG6cmqVKKH78ZkarhAsUJdqmYS58YkxgpkkjuO1Bv4bZ6bi5A7xeIdkf76actm
5+AInbynSgNczprRlq11uPdlqjN37C5qbqEKIj+0FCsw97gztulI1h4qUL2j4IPLrJlHFnwk2ve4
er9hFMRiheB5pAyQyVlProDTIfpQqCkrzaSIZwpOsWbknFcI/Knp/PdVBcYzXPB1EfWyl7vFyrjg
bynswTesX4YR/rqtmSm5a8U9C0Al+llaCuS0Iene6R7zZGsyunHIJbUkAehOBwup/3Xz+8u0fJmS
+2RAQbIbepYi9QTm/cHUDTNmJB3UJSv8r9+bmkpYbfHHQJt+I4B8xr5gOzfSjwyBIa15gNS2oVWx
Dak1yeGLv0MXjFlGVngXTWa9OBC0FIAdncIorxdm5hYeFPeFC/m26giVuZxCmMvS0FrgDkV5Jxt4
KSfeMgUucgNBKiCDGFoy/y8I0SMaYjCoT+cYwJkfaho8lrZLXUU98v2EETD1qBdSjC172s1Ix5Jq
U72uOUdBQATnW1ro7/B3X29KHkK35dB7XuvVausakYyH7mvkb66lH9Im/uaz/GlO7YRC9zDUJ6vS
K+T6pqDw8m9xAA97Ptckwsgp2BJeED8Ors4Bka1xqHRJwUt8v/nXpA+K0zLwVNtCLhWC1hTjgjuQ
MDVDmMvTmazEMcM9/susLp7WGCSNTyD7lTnT/64mMRlAnsQYGMyFuN329veC9StEgnHiGCVsj8+j
aRtpMfGrRuNl2k1dSPJ7VTLjfe4UwGnKFla4kh5B3mHDbsiRvZ+TD145SfDsAkw275WSrz7d/KbH
3fVn5fvosPUVvreVDOek1hekU1sRqGmK2O/oo705DhiD/g5EQhvLdZ+xScUoHLkiTNd6fGur87es
K1aiWb9PC9toD9DVfUltzcoF+QsIEpqmsdkqmQfjCWVWqArE36cNKzj7w4907KTm+DVItM4oCK5H
cA==
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
