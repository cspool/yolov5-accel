// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr 24 18:14:50 2025
// Host        : zack running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_88/signed_mult_dsp_88_sim_netlist.v
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
PE+i26Rr7GczDcnWDHFaVCAmyeKvRxkeHj/QJlfgWAjaIf8WMHfOlxOHYDRMdGYyM1BF9OzezR6a
K/dHNOfiiwRJVVg+1V+/sqxF+fEeyJnWl2ONSPsEdZBN7tFiP3SJpbWi9Xio+zLt/aFJliTvo+MT
3PVnDAGGf8wK3tuG3TtRE2wqfTfTOxeqZLOC2O78DncbYAy71dpESiGHcYogIr3vqOfjF6kAKtUO
k2YaR1K35gx7/O1tvou3roTllUKyCQnjWhab3BJuWp5vNNhwOW/Qwgm2ZWsfjcvi5yrk/dkP+mlO
bLS6Xb228JtM9hBMIwH+xv9IzXXFGL3ANtKnUw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HErBcduy9BcWkxXShHhenQ5FfibrjGa6xnoLqUr2NjR53wDqe0ejauMlG/nWXbqzC9oKYuaTfz3h
Czggz8j0LD8gH4HQ5DEI5vAO3JxSPk4qOYVbJsh0H2j6NkkDVbT7GLZYeUQ8oOaPyAuzLn8xCgq7
EXZ5mp3lVp8OFyeEOndkIljQuRCXkLsSPPaJHr1TLY2+NSriSUm1ISGjAhlFI1oJ2m6QEKbVbFkU
ZSGWjt/yZPf5cka6DtYGdJkAiiBKMvz9c4Uj+YwHy3F/PDmpeOMKPdIBWYjUTlBK9Gm7RzGp/zzw
xz9XpftDDXlEWEHsPxU1f/q4DDuI+RqH1UmLog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
q0Knlsc1Bew52xxWOumf/YHgCilUeOFXv5JE/n5iaIvGwVEbLbmTZgSh64QURDf/psVGv71x8sgC
46kblg7+dlM/EERSwsjmYFRLdZ6ksdzre3Rw6dJMAsHVEqfHIkPsifbxXnlJ1qVq2c98amMPVcbz
i/RflKtdarP5QB+YtrGfACCM13LC5+BVB6OiI8QAlhd6FkYUuFLtDEH8twX6viN8NDLlPBkezDcc
i3Wo+S4TpFmTYkLbQoBLc3QRF5vx8fLwYlzghEOl4CWLfCpHb6Vaoxfq+WVfj1hxCaAHBn0TsFUS
kdXYH5YwgyDq184Qi7Cbh+v3kh6+341Uf8DwEPIhdxRMmAJ6ErnYeW/5Le+dkORy7amxl0qHhEwW
8VQOCVUQrDkY0mErU3kIJZVBXs/aJ3ZcYHbkqkrN1R69XujTGqzkPvL6ujD2kw4UVA64tJUrs3Bb
vz6IuK6xSq8jGX1xXhQbH+/jQv9tW6rGnCBgrw2ly2+v+/1zIaB1qoZcDygHtRmsIuJlKFcGHuRN
dKsIvbzj5ZqyYrz0+PCsLgL/nBNnb3uaL6cIvEc1T976AmFcEpS7OI6R4xzGczvWv5VdmRw+NBZI
JypbGAu679wyARJ0GjAIR4+YK6LWx7EqjIg2kQhPJb9YE4pGnZ+ntqAmQwFjdo5GJST2B9tUjO/r
L3IxJYOEMnXvS/I9rYbrEDePb34zHTiHeH4Mdku/7kjpxhGnHqDNnfH7flhV35aM7AdTH4nc0TEf
YQ+iJaMZTsGBHqfcsKpGtsPp2deDPZB0uymDBiVjotyqSBk79tT+FLZCyVM+gdgx4g6+j+ob/lhi
1/xuWZjxNLptgpbThIxzU2ZcV9gPRYCoWkoCgUzXbfsrdTtUpEhVaGxaLSoNojz+xzszXpfBU/o5
Z/Gjxk72nXhSoZLxhanffGy8rxwj9yPWZhI+BIu84o4bWW3nRZsRiFo7kOPJavsEVHtd6qsJZgXV
1UfO+SBFnFWErrlS2NNseZitIMQzHnaAEeVbstanayUjgw1m8WBZebXFfEkaNphcSZMsuHgWmEYV
gH17uAiaKKGxzRPc3eIkYRvzS0ksc4nHYcKjy7XX4I9kDOmpJuNCiuePYM66Pd/NlPlIY0Zrb0qG
M8Jrta62sptk0GxRr9osixcaNOaYcMLoYATPpLkRkZ+u3cw4l4RjrqF84mplf1FNtw1IOIJl8bOU
9FmQNek+Lvb8woHqbPtGnuNS1Bdc2kPEjmBIpV+trfqd3eRUtfWxNCNdCjcxr+9VjfTRWQzUgsC2
RR16ceduf2Po1Zom/lLr9VXvyE9NaBSRARJ+YVjBT1B4Im1s4d/Fdg4NCePZc55KKZaFo+WrJf/Z
dKKRcwtDSsh3PnEXcZ+l1WNBFiMlrIui7+pRTB8zR0OawmzbrpATjmwMQTTnmlKWCp+YlOQx3Gw3
hO2d512F4Tzy8uF67rh/IpGWCU55QpdJdDvyi1yS8UlDawV2ENc0drf6w+2IL5Lpvd0ceWQY7LYD
X6noodq+Ro2jz4rO+sIPvglriDkDDSkRs9WvTMAgrMphkP5U46AjN6YVxx7/+xYsisGG6aLnmJbv
3Ca7TlByaZ/BbPK2ONhEnLSR3IM8OfqECoSbiu8S/oqmEa5k62ZzrrjF8htutRyi3h0YmrcFdTpL
kIm3GCss1fs0gV1wwMkgTD66CQJRL5UDcOLBdRxXyo/QCusLB3WFkKVfOGJ1EKZY8ckmBLY/7ZcI
2WQSFj5s95qRdjQaA462qD8U51E8FV88EgpAm+KphW8DaNeC/TO/cnkkRXl4khHX8LzNlb8yOArQ
PLvYyqOXrTALIGWPVaykVRPfff746g3Ux/8FY32iP6OU0OoKCphApDIVy90IAJJqbILTZ9jwrzb6
Ym+LileUSM7tpkZgNwp6Kq7CYg18TvgQrDYlnYJoklfjeWhP7vrmQu4WTfMInZbVYIX95uJcvwBT
IKYmnQ61z48zgPpoqELclYN4DNtu2CoTOEjd7lfTlK7PgQQZ4cuwVauy5j4/rhieB36EG9ylt8Zj
/cFB7GzarjIc1s8AkgxOVEAUVFJnt1npuqUf5glbwYKZ4eCVdMrB5n/uwgOuvR9f1s+ZAYq9tVXq
EnemU7Ng7Xtyext6wIgkVyTdJXMtbkLq75A9AK9rlAaabNYrQTM8xMkdW6zsnUVAi2iqfXpD9DJJ
ewcCXJlIbmzkfvO8FS6xzBAc18gemyTra5pq8Reb+rcM6M6nVG9/7xBnNf7k9rl/Y0G+1D7bwM0m
Pi3EsfKjtFL9z/e7lezv/c4zLEYcUD2yo1X9TtW8q+Cpq9lWusm6Ve6GbES5L0n+31cY3dn5L6Ok
XILWwyR+U/c1oYyxIY/RJYWDY4xMQ3l7Ht4x58eRQPWRRa6dniXqdR93eeLAdFbeQx3sBhvhMEHM
xIEJlwzgSrS5dEpCDhSpb1+Wok8lGgKKsZjVsKYineFDzsiVi3eXTSyg1UP2YKmAIYSIsyb8qCkC
OoFH7O3Cj5IUbZEaMaODeRnQjUPOQDRG41JxiNuhy60LjfHaA9ygBAvaeqgj2AASSlLzCGLm1IEK
DptT3IpEmocBXu87q3CX8FCGGfRybRzn9ESDk7r6xa+GRxlzisfCfkxqGQJKcCClCXGcs/7THKm4
/ktU9MiFsogsk9CkzEyViEUjSYqegcx5upOMBvkWiHGkxv8cHRfpHevWygnH9sas4Bg8fkd6AjsU
xtKf+RReJ9bh4DCzN8oZxjIZwIeQ6ETpRNW4EZ8Ta+vLKCnhjVoAEY2nbt4ipOcuJGG6agmJ48l6
sU93t617nARRNZ2ia/LHF1CqO/AcItz4iAXys6/NEtfO/Zfwm2pCYcBymgaaF1eq54+C4aSuQvrQ
c9zACKQgzE5Co1Nhwp2d74/acEP6IBXMKDk9kvPYIs0IUzQhznpDRibMBr6f45ZTP3xdRmSKMtc+
HZNCXQnWrZ24BeRAztcLvGaUfX9Ys39Dy6dzbW/zyaIguo3iJD9gj9Tgo4ZTiHM0HEwLm750owbc
FS2XSr1fAGSez0aGQleq8YxON52/6AMQ42yIJpT3hqJRId6/ORsUWN3ldGUaWtVU1DcpXHbnJRgn
H1fzKPfbE1+JsNZMVRYtN1o0vIjnI1REOuQEcfSY750oYbk/GXsIvSEXPN6GpqyB3ibreFCiWtrB
0mIT5771aled2ybyl+croNJOxaJE3rvS3aWPDsKTa0jJm13LX0ey1SMcWfLFeTn/lgUxivzg6atk
DHEr7ngAx3WnjKf65IOCh8darqisHuyI3VvBRGblH9+HwtQt6cMZVqikiaoNhvedmaYJySYe91+C
AS80wzG9iZn6vgDA6WZGGICWUb2tv7DqZ9S1B4qkvIvqfMnp8pDq4ya73ltfrwxux4TM4bv+DsiS
ntfcI9c2PdeyodrCm4yeAl68b3+09adtR0KrXXbrq7DQKcwY5esw5nOSFRjEcbDlJZPhJm1JLBD/
26I8KmJLOfvHjm2s5LsN56Tu5Tz9TVlRnCXGz/O3luGQjSVawMllsy6D8rIkgNdnZDiXFvZyqcfY
2kg7pjZHWrcfMJp1rLD2OzZdHgqrYWkM8gf/QWQRBlzDHC8/awKSkt97euyvWIumF4NlZkgvppa5
CVo70ViWwXZcXhQjq9ISPPN1IaMGm6qylNd8+6rTjDqzUOSFyAn8mr5APb9kuppYgFk5VOg0BQYV
rg6pX0XUoU4wQVTpD+laR8Mv4LL1AM0AJwSoy4OgvHsBnTMv4u7BHVbwIfgIka3qq9zmxacSX5VS
UO5mhk3aA7DM9seNtQKZhwDZGdbPbGBfIpA7eNMhHP6X2QHHPZz9dgwpKsyIBmA4rBsoOvtoHNKe
kNDt+Yyga0/pAPR00OtdtbzmaacoQnK6LCbsJSrG/fGUQZJWDGfY5OsHhC0MIb23Iiv1Ybm2eHbT
Q7mEbp8XR5YzkgvA/wwlOh0x3TjywLyRC4ZzU0PNpm2g1Ru4LE8PTxq184KLCCOX6pFhhx8vlK45
yJZ2AyaVl5VyrXUs0a8LXMA1pM6DK3U1aWbBRi4n11VQnrXspvMkK//NCKT59PxnGRL3fc9i3Dmf
t4TQvMXQ9SiCWALjnKgn0KEi2MLbRq9uBedR9fo5YXsOvD0TH1a/PUW/HR2fKTCwBamNgLk3ZbkM
jpCxWtl4Fy7anQVkJwC8135NDpR+6dKrYxxpZgdiakknzxTRETeUiuoDkEvxFddy4mSertUlszqv
1VlTV66w+MA2tdFUBIDsf6nGI2pFozMgDr4GRpsFBg6xFCE+vfO81CFCYnutFbKw1Nkdhm4ni1Zw
VS5DO3hY0n2Ep1LapbXM2GGvIDDbkq1XYAmDKB6/Q0rXlyce2eYZ04lSwayeRqv3wG47tNsv0HfR
GbmHHDNJ32EXAJxu26d/ybm0jLQcv3423gAMhc1F5vh48dsewk6O830MMEKjWJd7bEiP0fxSvInS
FtEtsX3zRkNMsvc9SOHOxgZLPYyE6yWZbIGFOlELw+G8kXXrNgzN9cmRc0TnfW9fCncf59YSxvQe
kJ7cmjkBRmvX3LH5+HL40rl45jclg+wwToyIXG1wvuVk4GXNty07xlHfr7kHDQSK0ZY0LcX80K7M
KyryA5BjJyVNv5C8nRx+KZH14DXDj3fGE2XTY+XwmRBXlmiY9QLPdXEGqKjju42RRMkRb18Obidw
RGFV/gWz9I8rnETDMeGn+UqOUTOwmJJFgq4kZ9/iIfbnJdSI0nwYm3QUtdZ8OMN3mJa42vEJ2iBM
dmVGon0KwMv1Ephlo+vZsMqyvAjsdI6dQ1msIjoI5A1YU6LYoZd02pt1ddN2at/Vy9yXR83YLutQ
XPze9HvD9pye5ixyVcbKG+qHz8F6gaN8unNnPFs+4ifkqYxa1APsOdIPygDE8WFePvhOhSuLgzEa
0+7AFzAJ7Uhuz8Pq5MrX3DKuzN7oSnLR28kssleOSgrYsZx86lhD0Ibr2ythfwsj/9/WsnIJ9bwb
Rutw+Z1EM0ODOAQVA9BsOyev+ZYSzPccAzy822onsZnGw5nW3QEVHsaZdAD3hmGe0f6qQ81+eAgF
mPSDjWaDN6Xxbd9ZQNfMK+QlfQBWHOGukEI6hyPCgxxrATH+nAsk5LijRMCmRvLTi3C+wDfdMNyw
/Isd5+pmFukh80yc4mHMUv15lAcHPI44DAiKbdEJElgn5RtRT3Wb7EZFv3KjAlKwHLhUtG+lEVZI
Be39gWKtiJg/WMKuGWO/o7zesT7Y8TH/IXmpCUHXK8PTiZtHUw3IOvdfpgSp7xvqgQg+/4xVb/Ja
g2yWc+UsNKJNY8NmtRbToP0DLehKGbdCtiVOr1YRFs0UZSPBMlsLDXJHgQeOW3siQObGyd3HSMEV
HSywvUX9ehzBH6BXZTzz8HxEibkQa/h/IQuAJtR6AH0usA4xg7WFiXQKZW8ZPFn7ZoFG33idWNfb
SBoSA5+n8FT98hfx1BPmLCoADjWwaOdgKAFdRf6U9yzgiRc3x1WCCCKLT5pCzi8RpHFAWcRE8VEz
Md7Dh+l3IvxU8v48+eoIf/LsqDVCOsCzWp+4EtUVsh8oUhCMKlk4Rbty/0p/bOwAn50nLaKT5N7Z
EmZbt7XHJZdLhcQJsrCVJzxCpjJEz2Ba8aiTZcXAKAMxQUiBVXODiEOuA6kxp7TxseLhPRpIfUm2
dbkMQx5A6EvEFeqtv9q0ZFD6uAGCgSjDrPWL1/JVGcfpXYRFEV/rpkjFJvdAWMN+WaKgWiy28pTx
h5RkrSsfymaafB/913WCFaxYhMMAH3oDKY25w8H6N2ZRA5+ZCQYHFbFfiCjyT6FTDYX7h9RFnk1l
S7F4KimXIy2GUnzxgSsqh067/I1RRLo5urpNDUsNpsyeZA8lC+wJ2KiWKI6GYjg9mlY93xaENqqJ
ymWsrPvoA/F3vgRruR3p9Xb5c5ficyuVqGsLxswzqFXUXkxZgqjamizZTvbdzMmv8owpYX9nQi0W
CsfGkh7APDw3a7Wa313bwr/rH/uK4amuCGSuRO1xlKa6v2V4CIdM9J9YI3zgHH4k9RRhsu6xNori
9O6wAO/jbsmj7v4CsznT8FQ705Eqy13GFe5ef/Px4JV5Rtvkk+cKe+Fl/FDZbcRpbFhqk0biaCjY
qDeMJs3RbV4A/bXkQoLN3iT9OuZUPw/NUFNNhDVyliFgZ7OjjlrkAMMd0L0fzQA0p/gja91CSs94
BI/BmsltnH+gwIxAN+lfxwxDg64It1FN/FZmySbvIyhOc3pbzRJvN2hTBJ2geLjzxUtq7c2SEHwL
npYrvJ//jSmHea+ts0e1H8YCzUOKGQyGi6tKx02juCe3Z0MvUoeLiXDgLddv+U6ejGJc+WtT595Q
7Wt9m+2ykTXF/l8ADKeCKwAxnCYdd0gbaA8XLiyUZSqNXVtz9AY8FrcuC2JoAp/0DgiqULsvc2/0
gP9QLL4z4Qj4EORsZV/9BWKn/+Pn4rHqFdzJpg0TNexIey14L4EnhuIOJK0m86AIjRJ98M+BbMTp
YOYEo76ofkYWjsx05ODv3O8x9yEZUq18JYWcSubP9r5+c4hlRF2Ds9XbveLV2nI5PNfWKiHlIi4E
fnRFDNA/5Fyx5wWAN3XkHAMAWah8nCBe4ckaN8oltciVkqw/lxIvkw8hzyctN/g2BZs/iVKQlVYG
AgXe+3Be/EmS5wR3Bk29kVlwBSbYBjU657bRiNjOc8tIInksCGgoUefA+uqjPATyWZsSoD0wX2H8
UrIl5oPze4NwkRPiHBkWjxXSrHWOvhEqDc2O6VOoA/sdcDyxf6LOUeW9+whqXPRBSrL9nQs/5Ls+
ZFHQ/eUYusB67vZhNfXi2NGIxqXKhUkNf8xlkJCrp73ChFzy1cpoHSawpKo+yQqebZ1Zsev6iqD8
CfAQdr7CsM8gpo8cN1CbDnyS6YFjfBI8GV+DEK1P8Uw/KR35bdn4osESDmcMVx39Zq0rTP+02pVL
/OSotdR8BrVz2q7Nve05z3yCgcMOPlVapSpsCvxV8AfpwZLiVPIRpSFNmmQ+8t3zk6+aovCE9IpO
yt4/rB989QqzD/90bUrcJaSewtAf+1BrYURM3nGQa+OSwMDccAxkwLE18weSPxgMJl1TXJTn7hCj
PGrN+1EBwi/vSYNJWwAM57d5raBXSMaoRTr2L6Yt9X46VsW+Rw8AGeIPW6OjfiO1WxPkrbufku/c
jIVFiEeht9rF1wngN1rUmI7b46lMvS2XH/6EjVmaxaSbX8OdA91RBvbdOZGHHES9ZcUs8rC7+k2Q
m1y990YVpkRVVlEeyG6LHgcGfAEavPs6G9eEfZx5JzBL3YpYZLD59cw2+3EOpNWyxyzNde/31YFt
ANVej+AIb7M7wkctHVptvqqF2Iam8D6B1e8ugQufm3EfTg6qpIUf4iGFmeWorpgFwcFuQob19Pj7
jaWKBHSarrd492+qS4+I6f8RowqP1oW8su03Cj8qWTHHaoBwzK5PJ+sSQPGH/mAdSHxbX2dfbuF9
5nE5sdR08qshD1UvdjGhrNC1Q6ZEUoYMUIUbl1KZrvZG0kiX9y7nK1t4QrgkDMUwFh7llH3JT/eE
7B3XNh7+B662agfOmBs2iFp4fx4z0XDwuDXSsPec1kBoXjbpeGQq/M8FA9fqpRT5IZu8FotkBoFE
aiKnU40iQBzV4SOZAl9bpdnodzBi5eqU5NMywIB3E4pbtY6/EY17b6hi2+ORgvzjDvkfY+3DF/mw
HicRB+9rmD0Lf4V2UcquEOcEN+i9eBqrqrMfyL/2qjSrMvjbXhmpf6d1xBkTF2U38CDLLMfZeG33
TOrNCBOoh7dVqMCAa+0hARc+LMcK7+v5fJKBGu7CxiVmCtkT9f27mUxuHS8oyVZnn2WYbFDToKIf
Nl1lXMap/D7He4TrI2o0ba013vqLyGmw00/OqzoC7LCodvS83cJTzxX4EFwQ18fjEwlPH1u+zc3r
V3p97XEM+hvY9XXxrDqAu7MIWhVefXC6TZGiOskeuEmJJJFd3tisANBfMIZ9GBB3ANlE7bDXYZxM
I3nVeHETKduK0rr3S3VUJ+b+P+80Z8KNYHJI53+StA4GM981CItclzBuXmuEO0NZMNyVYYrWy6ua
zVJe7KZB+iVkHNVDz4f8sW0MuNWLBzVwT4cIOsAPj2XhutEuCqvm8LoaUHf8rQWqaOSfGxo20/Pp
yMJqGUttlS20ZIL/5uuamy9DefAAIYlfASB4znUvUzW6hoUPgkLGys2Zd8YeEOaPbdvymAsokFQu
QOJHeTnlV9PNmNALMTE/67qMor3wVEWU0l/oBYs99ril8cKSP07Z36UXAQCpf89PkDRThtHbC55d
2WTPdRCiAYcGM9EAzHbcSpIdy0deYEAhfziO7vnqIUp0opdJCjCTLKTCltgdif3vVDxdPLRW7aGi
2wPw7V7ldsrEnkjLZmF5t+lfE8omQMdsx8jlId4d3Odu9Tfq37u05CCA26Tj3IrjaKB//6VXSpnx
gtAz+DqYyZmWIyb4BuTNFJB078gG1lBF/xvXN+0BWjvJ5vbsUFrJLKwWiKnuxVwut5WZd0sSTvg9
ep2Rhfi3LuqVwyin14CEt7v+LPNkFudpvhDNPV6yjjci7MGelA/3JArl5Y7/qYdupuORlZGJQFLt
QboMkw21CTB0Waz/sqQE1EyW9xgVm4EUUWGzrVzBfHYNUcRjKbZcwtwBsXhHXtI9PWd5rvMhRFnR
xYnu1m9MHt/fgSOSRQINevcZnuGDon8Y1w+MLq226yPbWEvHxsS/Yg/Zak0aW3TLm+6+3cGK9Vaj
Rm+lZLQtZfI+nEmu12QlAsIB/p4W4WZJ9IezKcA274xh4uDHggEjsKIdtmQZUBuGQMTDFjvU+AyK
moPpyRKy0Nb9O6F6lNcywqtSGBc/+Q8JW5Jc2igomWhmQFaDaHbYv68HrN/B8C0Of2vKhKALI5ty
PEhnYiG5R13dlK40ytvRsIoLLThzKpmBIx8ru4se0xkbMWDzyMN8CLllbahSivAygjOzTn3m6pJb
zgHCZNg2sQXqgIg3pZ58DOPZLpwiGxV/+qQSu6M+eO+LYAL0VKHhv9XK0PV1JUWfwrQssq1YV2+8
Vb2NSaPQm+cG7I/XY0AhB/R5H30+aQaQc8T+7OlmHVdMXRrwMQH3H0zknRVFr+e2UDj52oTcD7uf
LKpwD9AIuKZ/Efhjii4ZIGu8T07GdqFk6PzwKWxYDRARgNjI+4xkeYW9DCzOir4qRtAGLRfLLf/9
+8sQWYYVr7fxcG5YxZdhSQMDPkOZj+yoRQ+G8aN3dTb8WSzT1g0wJjZNhJ+OBRnvp5HhcDd1izT2
Yt8ZcHx4dLgiilalyHKb8i3kRi/oJasO1e1w1CizrgEo2GZ6cQ988jaHxLAWfDaOLMuU9kOXb7KO
GHqKfWGtEgH1hdVWfLtO9TerymoTNStWAOYI1tfmHXa2b1Fco0/425jzNoi8+3PnA3L4xBOX1mJx
2NI4FEG9KsJRSGkj7q1CLTNLHpNC96wzQMq8qK0jz/jM9Ii1WLE4s/gGKEnW4O8z9mo5e/2Vt8GM
ad0YOdtJo5Nr/LsL4vswLG6Kc/L7ADAMgyasUh0bdRR7wIRtuAkzk6xdm5GcvDfbblAa/ImAeb4h
grUxPoTc3Mfz
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
