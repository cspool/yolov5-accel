// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 23 18:57:54 2024
// Host        : yang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado_pros/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp_18/signed_mult_dsp_18_sim_netlist.v
// Design      : signed_mult_dsp_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "signed_mult_dsp_18,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module signed_mult_dsp_18
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [33:0]P;

  wire [15:0]A;
  wire [17:0]B;
  wire CLK;
  wire [33:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_18_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "33" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module signed_mult_dsp_18_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [33:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [17:0]B;
  wire CLK;
  wire [33:0]P;
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
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  signed_mult_dsp_18_mult_gen_v12_0_14_viv i_mult
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
pG/4dyt9UhZAOKav7oppUnYJljFdc4Y2C/I/a7As35xjLctn1wFLXHQvV9uiVODzAhp4IQxhL+dc
Z3Yf4TylssBURlnj4RLlIVw8pthRSLIC+tO0noX4gtlAhd//6oa2OlDbCVOiEKMPL1y1QhbRC7Cz
7qoaCouCUwgxNzzcLhObHUHzfVsqmsV9cx5Qnq4K06t/K62ir8sV+8hZqklnAv1zCumFxzXgMxsZ
jOfXtEBhYmpRn3sFqLUF7Ri43rvoJdC93IKSTv5nur7k8HecaOYLCB+0zcd+2AlKID/aa287C5g7
zAb97j6u38qzyKEA32wm/YO457hc+Y9OIT+80w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qRBY9X4Airr0ScFmUkOvle2uzbRLUp6B/AKUACsr+HFlo65HqLszwQBfKEk0t1AcV0PwGqVHL8k2
CTrys1nTs31vpPkHb0qLHjyBvvZX/bh5CbT6tyvQ2FvXrbAcYBqAvEvA1nDIln2oQ6cBwhH+6ZUI
VoLZmpXoLT463fgK422B8M1Kt+nqQcPzYdHiwk0gMrew0etdXnuMMwLMZw8TUkHcxYtyuQqBWxFj
GFNF+TspBDytCsDJ+UmveBMkN9ld/Je5ui01nkaq5Z6E28RySEhApAw9YLLB4nB8uQ4oA5LkJ3mi
t3VSFIedUELSNJkrQCz/qSAtfIaK0jkCxEewcg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
dbrhhGGf7os61cnuIMBOJYkgdsJ+uZhIMOqynPSTpc2uJ4wS8S77SW8WNYnfC3NGU7vBqEIizi/o
FSwSdgUOV+3AyoUqL7lQjNgb//UhlEf3aLBIfZgjMTrkqPdAAIxSSdnGnO/f9ssKYdKypzUMce9Y
uE9U1ykkCnQ/VTFKXyx5umqF7YfJwBi3dAe9c3zIosazCUg4tzghJEcdbddflAobmR2B6Q+KV0Vo
hVtzZxoPO49/b8G/JlYgaurisNZJFiEtey/sefMDun21PBmJqhiQklhITHIdldVc+0zNz26I9v3H
AGH3UaOAoTtsZnzxo06RM8/blHPw45g9z958qXuu6zpr0gMNVTMntb4XRTCCjGnyJpMUgJvAJSFk
xtCwHX0gJO0GWW9Hdn/tXqKZMbq9mjeBLiQIpXywF4rHZEw95JMSX3NmjXn/jY9rOMot05tKCgXd
1MHEkH7vVE1LtMuUCh5wjQizGo7myIGfrBoMrluD68YogTc8M+87puGUCMgvoyXec+91wSqNOc8i
J8j8boU+81UduJs58P5IogFZXTQ7ZTgaT7crsNhfKYByibhObwzwxpoLQ2jDuGzFpxdym2q/r1Dg
N+SMwpfueRIAFPD4LaTNsZarmFtbH1jstutoauU1/9QxM71k8ZcyVIYGTmyx71KEzAYGoOeEIJXf
+MZRxqZN0HPaY6oUujd3YKUGvzfzdMq4jrsyzvVGkZBP4X6rsygXpfZRD4f00opkJOhd7wAGuPIc
yTxTrXgx98vRFrmsg4xDNR4HcfNW42kDsCM+cucK1uaYTcdCqlrMn9/6rFFCAH7IPEh7i7X33FX0
VHUaajxUaUjYoqeObzakw0P8Py5+jzPrWxGGbpbAY4iMkAdllGGs44sKayLP/1uQgL6jKGZ2cdfM
cYCje6rCrtzt7ViwBZ2BugaarI87kOPPCCUGXaoRm4FYdoYBa/jKCQVAC8qVqFFNA1bue58ofRGW
ea8M2rhlFFLfbsRjxozpcmLA0cdqbYB/o61W8sxaYlut4ICYPv8ZU7ypa6xGUUz8zRb1gvNXoT3G
tB8I5Rv3RyNJBQrOafiz9hgCPp2AD3zwZMROqDBmc2MWMidzw/UWY35LDssli1SOBqOTpCxyeeDl
K5K3bOnqn7YhFoSWz6xiFfbYIx+owLZLlsGnxa05jEoh23QKKKeGBTG1iwV2oTXAIIADmjq68aMQ
TdhMamCESItC8ISUdDSApkGZcU0d2QHYhmBrN+Y+eWlVvcxKzLbKgKSdVU/aqVyEN/VvJW7Bm9P3
nu4uTWMCmIa4wJ2Uqgv4x8d2T3XGD8T2RJbEOK0wTW4eP4W0H4u4FHrE6smqiqpm/+n5Ge39pLFX
eLn+FfS+P4yhwlaYTpIxQ5QdYMktp/BHRvJ3D8VNk+LqmOdBZY05QRPtHCYF1X1vCsy3ettGPT70
oQWTptHrQlrDr1RMsiiuhVUEN2tdMdbh4v/I3AqqTFwM2dnUeGYEhBXxq7NoR//hJELYCr2jIrxg
HYgSCjrxRsWgV+B8k27lbe0LRxde7luKWfQt/XJX/rAeroZSpXAghXMLcS6eupWVlJOpYwvaP9yv
i11UBGH0x39x3k8nCGkTdLiWViH29AZouo5QVJ8HsYPf3eVpqyhmSB7S/ewzUkYROtcY5wCwb4+F
kZjhuIW3KRM2YvG//zefxBHbUmZOFpQyUtwDB7wcJnvJovyD8N4/smmlmDwWJyg5zhkM4BdNS8tu
zLMtsoegpXGTuqTo4qRIwxuWGGW4suMGl+39lW4QmY0goHbMlg2X9umJqD5JFloRIaxVGeAMTfeU
Ij9RJqyNyvISGWVpH04dOt1dRlHsTaGUeMQMgZyoFa5GnagA6D7h4dKLEtJmIyLeVpGFl8unvYvT
idnQw5CFT+EPTUByameuc67WuuFMWdYKiu8v6m8og4a4LlgEhEg0I59wDa8CAIR7mO2Mf3BLwkBM
Qhd0tRtJnth/aU3W4XE5mxvfFQbhwNzlwJqDF05p4Gkvi/0XY/w6cZAz/P5XGJBNz/H6Q4CoRHgA
H6N+8yovakWkoPQ4wOpEdRrMnAzYxu/dKwqjPpnvjEflk1V/O8leZpVSehQdeIG4u8tBB+ehdnPk
u6SlF1sxasseSUbLMZ0cS33sszcxQK2xoLUIJnS4n9XLSBuNMGAZ/JJ9sljApHLED2bzPuiptx+D
TK8HDCkT4ZSUp2w/3mrJ0PUlPJWxQ7aqlymhXuchAbhMHFFUtWJq6mW5DT1B2C6zT+T5jPDzuPIW
Qbj5ZZ2Dk2lZqHaJsbSi0yBwOP5zL4GSJ52dfzF8Aal1lANwMe8H6aK14CI/t9E5Zy89Mv+3Ao3d
LZbyB7qvuGlj0MrJouUr1EHhkWAN4X2/Oey2tpUryBr9ebMypHf7ppSbT7xjz3qKqOtMK5hTG/AS
m6uwJ6j71iHXEkiXFFfu+AMmds9l9Q33mFCRV9RSc74QBPkkRt1bgmFOWZ/e3Vt3KqYiUjmDYL39
r22wJqUm+had0jYDCTw6dZ0lUyOXWnBYSK5AmgLS5dnba1PluLcZWHTnwmNGyFwOnItBc0SQLwwQ
eFvQrKh16wIWHrzBhqMAiEeGQoVEvCUwTkBXRwXtgzoyHWopr4oHg/02FeYIwyZ+sclfQJLsEDci
3b4i/MQAVN4Gziq3A97HawAnpbjRW6hRGWh3nfM7SVQrEjbDKiH/2PNa/skZbs4W8NcinL8shOM9
pPekAYDVe/DN1oN4ahGkUeqSLB2LPakwPKWWy7edGzh0OTa+WlTsB0aRJ/Y7nOXNgqwQkQLGKNpc
d8Q9PA4jLFDiMut99aYCdiln7quIoeuSrjFHvpYPWzj+2k9Ii/MPGyK9/8nh3Xfm3Sp+phQsSCmb
JfAAZ+f0XHY5wBWyCYb/+8yGIoJyhS04ompo3nmm7z2g5WTYMeYWkCVpUcGelYCGogNU7VrkzRDs
OW86r6nTuSWY21A0oLW81s8uZ3nTzpF5psbW5PtUphJZ6PGUi1JXQOpZRZqnYppJFZ6yOqhSFVpC
Y/SfWgyDVAZ7VN9sD0ZhhRqEfclvEkw92hyZJ9dx6UvH5vMWEbyPEbgoPRJXpSkSt5hUZ1+9zBmr
2VVh/4FxjRg0KJi+PJNfdmT2i/AuQWVy1Mk91x9SzMx47AToJLBD/eC9QbvdnxXzgNLH8cE2Rq6R
pUSiC8yCDGzJz1cMe5LWat5Sf17auQsdIm6mzaN0TT4R191d8PA2L+IsNfGkBeJ5pbvH0ebvj3qy
Q4rKVBFy4s0oTayw816NAXp2LaUR+MQrt+XqnNpDZRAyqizMfVHIAgi0QnqF6x9Ng6uxrEU+hw78
z8Bv8uuVTOdMXZQTMlKBv5QWUxpmVmfBM188/75Gthg1fYd3epd8fLr/G/mYeddKQhp6voDWilQC
+i1ZDCJxNNnvqI+BOcqFPpzvWFB0REdSS0WIIdezF8liQ6G7TkRTMIPGWvG2r71jksLSU8tO5X7I
mptedHC5Byu6SRCgd7gRK3eeWMun+bUxNP9yMC8iv9nE+6nrhlPfsLCWlY2FlLqTYhi4ajA+jMnZ
tj2w5y/ZLX1k9ipnX3ZPouSw2qKNKqdcp0Zm3zn5FZwoW6g13MaJ2oAfsP6Nfz/e4+ynVAPxcQjk
QtoWHauqSAXvonhbbWZwtVBHyJsvuaJUP4oaRY1NlnJt9TaSkxJbf7BVDi4v/s58H92FxO8gNEQX
v6K5ISemStBj6umfyKjdP8N0R5MW0U7EIW4BuCYZ5gUOXLRVMxLzHoO8mdAMhhYYoSlZ+0dYHYw+
YZdSwkS9L5Sr78Wmhws461Z2Ae08bYw+V/jRm3Zza/MCvWkdGwYZGmiQb181vX6jg61mZtAPC1To
StXpJ7HCrpFQUNKOFlDdZdEKvbsQSq9S3VegQ3tu0nrfOZZP+21ZGPCzTNJbBX26jSSjRFtBbBsC
QKeasVoMwPdEEb7VThWqy59NCVN86qUiOdguVyjXRrxwEVr/+8YYF43/wvPBNepUbl3s3artblgi
1GeNM9dHfn3PWaCeNVxBCLbRKeWgbgwVbr+XVQpkLzo9+NY7/TzRYljUKGljKGVQdh9r+C0WhesV
9IVz8QJGoO9VrSLgrPb2S22jzVbSI/+QzegfdaNpZPf3NHJmBPst8l3inwh7oyrHDt/HiO+cGuDD
O5Rqv+FGI/tukML/GWpHuDyfIJ+I9fpw2QgJkP6AblU7R/HX0hGBTG5wkx0vafSON9s686XXmiFg
nhqbggokOI/dPWk20jcL9FrbKGE+tkGBsaS4V93TPyrTTxH7IUkxpV8MMUtqV6grbpGkXyj5O/Oq
LKhYCjk/to0ZWDCNZ9goKltye1Y7ddFhMxNNc9W73zGqhz8CognDGSYcAxQOQ3Ml86yEwjnDabh/
b2ukPS8xFxDkKBZT4dZWEvwzRehfwaYJZnsKxwOvC5yg57xJ9erEVvI3Vd3H2YX15bCD0joZR8L3
X5dLUM/A+lHQD0mgqHfulRdGrVqoohja7jTG/Q9uNvqSyrqyUC/7TZgC8a9jsVoF8vlNe8ztqo65
Hj7Zv6QVIpMr4jbnCJYeE4t0m3stHYcgphQv7guPXKE+46KR2MGUDZYDQ+rF7XH9/HCHvcYyyF0A
CdxUgpxxkqRwuXNOgkkZOSNW89fGGTDUhzDw7IHoDBIKM1FOC92AweufLfhLj1viECF+WWx9V4r1
wW/NA1D5VrDyoHD6CpWRkDZ/SwpPUdpHDfzhGUgUWcAUdAFKwishjL23DGKjUuhJOQBaqme2vdfL
7Kt9bm4RRTUYs9O1abBI/EqremhOrRiRT+guGg2r0NsGj27DexMiyw2rJn0x6VpoX5h/zea8zoAi
gwZns0gc7l7lTu/ZNUfGc+u04v5S6V9TS7HKUsuF6kk5ydkZbyUvU6eintCFBwb25RH3437yu2h3
NF6R9ujxDWWCOTdxtcboA+pt4IBaCsW5l6jcXr8iHV6tczCpBOay2TitShalxCmL5yHaHn2fjK3O
EicXh2k4VXcJKtu1A/jmCK/i8596sxbnTHpV5c641gGrFLgH6XfplPKGH3HhFuojyU1btez+315F
7VA64p+vU1CS6vnBjxShdS8zbaY6wngNicJenjiZKTaue6eqdXblE6SyW4F6zXp1U1lB1hC+GEHS
/cEBp6bsY9EeLLB/4cE2BgpVJruxgFkYS5CwGHXAknjxhWUTLSvXUjIJ4PTlfIWnuiwOTpBkmjdV
P9wRPpgydBpvJRm5TNqC3Mh41QpvBkZz0DnBcH5C/kcZF6gqNVH/5ujO53WJUjluLPPE7EdKD6fZ
9GtGEa4oFxpJszfe8nctLMopAToPyUdIQ58YV8uTodobKPal06t5UHANHnxPeOtKK7HCkwAuiKse
gQjy8KuTkkOoHlkEqzBNrI6hdz4W/8zE1TyRC2Acj2ph1HT/WutU0caq2Uulxppl4/58stckL7ZW
cvtVPYALglmm2E6rakKom75C7Ni3hVoQA69w9/NiyqdA0KCJ/SVeLnuRv1H7v2FSArI0BK2aHWK7
4GnaVO979ZfNKkkYenuoq1p0RrEygeqlHilMp4Bn1N5kGokvVu86GV62VacGjSv3uvNgjRA2yc7L
1tEHt/WfQkeJ0ogkVhywpTz5xLOrNM/FSYke/lGm8KuSfbge+uWNaHGZwWwU9cMYosJldNGS4sPM
gYsjx6Zi4VlXi4BxVT7jDZEM0Vm78y1tcmfz9qV75wEkRBzdBmhqftf+IyVlKovN2NmtZ/v2/O5O
P7Mwn4MS8/nb9vKSmGn2xCtF8xCxT4ZmxcOqNM/cU1pFF0rsydpP59eI7q8bQrJio1vWroDouPi/
YY9GcitDOzaSkqo98fQ/6Tl6zJNpywZMuEWC8XLCYMAKXXoFRjj6gvBvPG5nu06E/guM9iIJwiVc
z2LjOyb0sWw8E23Fcl3f6fsQem5vDoX6wsnrJ03qvdWApj823Db4oSM9FnEFpAtDVAUqToLRAHa4
oVO23uvmcg+pppiw4TyK6m+xaVoxQxfER8Q5IvmCblV/pJKTX442ScKucqZGWVShq96YPgMERylM
vcw0hgGLvBaPJfMGAr1cmo0DTRM0OYyV+p60SXYr20gRSAxUJDZaeTmZ0KCSbu6bqBrtxvIs4BhL
MwrWzpVNhhhlzUgqN9UC996E3XvndyWBSyKlw2zb+uaxVSDohpCMRfFhyuZneFqLbbujzzXqnrTO
yVuYOT/Y653b5KYvMaAetoEawfPxzOWdp7iQul6gONcxu2tNVp1teYfSM7b2F8WU3YLyAGzJD960
T/V4vF/zQFaDvm28ql1C2Imd8cbwOxFXbYDK9ziWF5OpFZav1wWX+8Ao5br7FguQew/Xn6iO+4eH
BlPbqnImpfNCxUB58MbWroqkMtjpBvG+JBgMJ+PVlygzyeNnehxT865qfqZ4eloI7vvyWnzAfvzT
ClvijVQ7ORrTttn4gcwOheYbx0Epx90ODaqyaJ5b7j5nv4of6y+oPyjSpLhQCJgy5NX0DoPQVTdF
NqAJerh9/RtUNym0L/00V9KPdckwZe1gi3bXHIy4u8O8CxcXYkd7P2KEQXEu8nz8iI9QD4NvyF/w
Zdq8NJCkYeyhmhlCpMcyFEOOFkIjy6peOlNBKag8+0nBGJ7Kibik5zW9SBTrc1PgNwHZDWytG3sW
mryNCHY5o+RnYMXfxvhpxJ9aLzWu1pIkuZrhGcb8tGHF17PkPv7xGA8hnZZbdpKXbUCGettzoIvK
dKZkq9LocwHFt1j1EOrgXm1/qXLMUIjAFIAT7NxkNTQ0aHURhyDju0F6x2l/x5e+ZYEd6akwNkD6
n4REnxBZqTq0VvgjydjCZ2zrS2U4CpsDIWzKZ5USgQFCfZpVwPmi711A+nJyRytNR1W14EB/P6mq
RUMcG+bLOCH1eNfq97m2muRBF36Q/XO+SjCI3llHyOFrkqkNLdAK+cPL/rQI7OuRTuvoxH7eazYY
QUcKY+oIn2gK2PBF8wZ0v2J1KT+4lI4m724d5xqqNznZ75Lm/GyHfgyhgOww+0/SG1PU0tdOUQR9
hrIDhG0/qUMPOXgXcPaZ1gNhc4wM6jBJ2bpbqtafwSgIPHinU0v4sYnIj4ua8DRWKqoDema/Q31t
UV691cqFViYYIpN1RuVblL/mz4CqLSO13CUzDJq2zvtfw3/jcLgY8xYmiHEoBa/4vOrBqRMzceRo
jAc7F1RieGlGCRL1aFJ9O1pOGe8Puwp5GdlLSuF5ty+DvL1E0y7uzqLSasp50q8aA+2yYnvgTON6
meqX7uYwS8/RDqrXmHK8hTEtQNwMfh2cK3WslkA9HBnVm5+O/X7HQW1r1RlhZRcwSyCjyaa6VrWN
kMYOHsRKYhOj3CvZSuIJlxe3UCUdpnkOp/ScLjBBs2Rh4a6yB9xOkQgg2h+oPkAD88OoVqBNpF1i
WmLaZlBKKEvQfyMfBm/h/WZh1e1/B8/uOLGBcKeCQzOinJFGcIBajawYKVoDduZqTW4f4WHa32TK
zgmOdA+utKcR5MUYUrIaJHAETTIZk5n7u0aScunVFqVYm0I6a4qPxEmva+rrBLzm5Q64AFyR0Wtw
8apUyY4XClgJbZHnedTHtaZeOUzGAYcDFZSpWwBqveCBzUq6AkBLjTm4QyFFLUeY26bJQ0iP3job
27UVd9cl6G7xVvoqCmj5CTd3GG9G05NxydsxBBmOfjB2taffykXB5ropDp/HYo6ltnosOSNKr1nm
yaWv6n2aKAArL+5OM+hiDt88AWxtsEV9a28H+2LDsxCVxHI0QBnEmrPB7+gvpAv0CvJnyTvFB8bx
l44aTkqRUwSFnaSwtTNwwoE9B3IJS09wfWoxCvIHKf9+bU/nP5IUpist4PaWnA3ipxHlnp8cS1hx
kORAXeVrIQhhqVmEmIqg62EPwVs2T2QQrYLisO5di196UtGfTpCpzHj2glMpr69QgCQK1gHj2N0a
iP4JsiP6OCC87KYODmaNOyfrUqXTdTPu6FvDNnu7JjRdjiRDxiACErq7DnUYVLlGOs+3mN8eEUDY
AnrzBctrfxL05IMDSnk+esUKQcTWHw/1Z0H+x7TmJeEmVmBYB+W3USQMhLoMApiXctSMDu6IA1a/
C/+3SIQd3r6l8px4BmTdO46Yy1yZ0naH/pMpVj9KxVnbgpyassMyBvXDJ90wUpT1ABtPLTVuU1yN
ts/Vo9DOAaWXJ92hr7LnKFv2T10eZgvPhJLFzlLKicnbV7jNu9ic+HX9QfiZtxXlkxDMJacPehB6
uB/PvYOOTH13ctDHIBQKzCp+18elsGbDBZi7A84PrIXtAsApGT6oUUm5cIdL5HozXGQL9sjiTbVi
+zuZ0Nct7V5aXgypqT/RBTclpaa/4LcOgklZo1PesSxwIvC/YFp861pifKELfLnVR/gjvuj51vas
8jiA1gxY1sPzuRZTpkJPTb2hytFgVJDyndalchXgNEYASjM7MGwdCLSuVRcjzZgGQsNpzwzZHHjn
ysAl4gUL2qlLElmRmYPJR+hnVx8PLSjNKKDBvjrJnhxNKdjPZEgXIaMeJW0musqVyevI9sVPq0lg
kqS07SFGTEE4aNkiX6jtVp0nRJQBQmoa0P/VFDEgyuy4SWa423+v20Wo42B+OJPiowokZ14CEdKt
TjqNG18XHXT46MSCiU4Wtsqx/45G81oUP3zaF3jpRxanh1QQliPVuDl4eWcsi7b5ep+5E0hpTvyU
qGbDFGAFWJFLWLOxHbGYYs6PkzwNM+G44fb+k4eJiceT4/JbuRVaYiT/vRIbYqZb5/kL83g9XNEP
1r/FzmLqxboQnDQ5dXgAeWFSVZP2GW1ZP8ZphhQ4CIyX6SEv4iOQe/pZgsDguITlTV2d7tM9SB7Z
tc+dyOrh3vJG+0yPL8e/sf5oKLWCwMCHyyXpvJsjp32r31nBZDCbfzV+jLaRg6dK2hLh+3DbR4JM
YLwgzaYbGhltWyKpUrbaGTQy5W2lxLRjrD9HV+IIBDTuwg1UiWJTNiL/j6+6xhZqvFVgZQD2lEy+
U1XD1UKprOpbF0DXlrgamkWTCyW2d9XmqK4T1zHw3vWnxkHD+sTDM82ZOn1yy0NlC+cqTpLDnaV8
jZkI7C7sUH1vAT0Q1yK5VrtyX3U3LflSaAa0E0pXWCTUoUm8h8IMTU6bf/TlwgIVnKqqoUuKuPLo
LzdMNOECXMOGfysQHsmvf5ezViOSM/OEy0BZBUWMhQVcNN6DG9Nb3qgwH3ErLDRRFVgWv6GNxIgu
o9hpf3hr/LUoqj1X9axFxNpjMW10hWZXxrHT0m+2yOA3ohcMUMR/hyOfQWAglIaCR0sfLn9UMnVE
dQpH7um1PTCY+cuxG8KRPwx3dX9482IzFXqCTE4V4Kq5P6CjMC0TulckkgMx0aM9xlIY75ZBaoqT
CoWAKdWqgqLyAGLlGcGcpYWbQSw9LIo6mvZJHg7EMBM4X+lWf7cQ5cQaX6uWjUC19GEetQYGqRqn
h9cgzd9Te/AgDA2ATQQkABqOLiWAsldGyqBD0MWg5g3xjQAArjsXvwaVV7+pD9xs2/KXQtr8aKLe
Zlt14kk/AHA0owGY9F94e+qbSlLRlZAY/0McpcNfd26inoW692uyH96vamemAMSvW3FNUn/Ii3eT
Hqau+5MRKVQj
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
