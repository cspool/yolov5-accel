-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul  4 19:49:16 2024
-- Host        : yang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/vivado_pros/yolov5_accel/yolov5_accel.srcs/sources_1/ip/signed_mult_dsp/signed_mult_dsp_sim_netlist.vhdl
-- Design      : signed_mult_dsp
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Lcd0hProVPzsLiPDMTK3M3QAqYHhe1whsX8Gmln+iLRLHw3qZjXpQa/iasie6hljtYe80fnVmanu
IYUjYwjzx7biisCbmIqjIvxiCF2DSyemcYcvD1SzGInO6Q1I+eo2O4W3wUDVw/mOrn6+owZLN3c7
kKQ1PHhTAPgPknje6qswf9ze2MxG1O5LGEJm6481T0EcPVR/lJdHbeeHPas23fA4m32Lo1NLp8Pi
hrNrRAWivHbUPDYRv/cqN0Ekhkkfn3Q7/QFBr0kE9iCUMVZ14kldNttd3OK3dZKB4VtKZh0+78Jb
8Cee3dr1e0ecBeanfWFCUUTSOnE3BcFLqYu7dg==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RYEJZQU4vOrNOURkOOia7+LFqATRHttU4Q0DEXzqzUR4VeYGVeJNJCveDqML2LsZNJ0cHda6py+z
h+IRtBSefXQdANk3KJmnuXu+9SbJN/Ili6slld0ZzRamPOQZcJHrtZujwEfxfI0s/iGtWJFNFP/4
sIc8xzC4shxC4JUn9VeKzcKmKOa2z3GpDMErgVk0nwe1Bn9QPI194b6hXGTnOoeDrM7ibBTa6SYy
JNDWvcbSq3SFFO5sv5T7AJM9ybIA3sfCMtpbG2P3Og8uUrMxK+VZyfM+kVP+/zdmVwNy26aiaqSH
Zs8nnoyoRdRj+84ABOLVpXYKS+iZnAKwITEzEQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9824)
`protect data_block
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
fW4JH5CjKhRGA+XaKyxwuWk9WeM=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 41 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of signed_mult_dsp_mult_gen_v12_0_14 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of signed_mult_dsp_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of signed_mult_dsp_mult_gen_v12_0_14 : entity is 18;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of signed_mult_dsp_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of signed_mult_dsp_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of signed_mult_dsp_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of signed_mult_dsp_mult_gen_v12_0_14 : entity is 41;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of signed_mult_dsp_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of signed_mult_dsp_mult_gen_v12_0_14 : entity is "virtex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of signed_mult_dsp_mult_gen_v12_0_14 : entity is "mult_gen_v12_0_14";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp_mult_gen_v12_0_14 : entity is "yes";
end signed_mult_dsp_mult_gen_v12_0_14;

architecture STRUCTURE of signed_mult_dsp_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 24;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 18;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 41;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "virtex7";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.signed_mult_dsp_mult_gen_v12_0_14_viv
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => '0',
      CLK => CLK,
      P(41 downto 0) => P(41 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of signed_mult_dsp : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of signed_mult_dsp : entity is "signed_mult_dsp,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of signed_mult_dsp : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end signed_mult_dsp;

architecture STRUCTURE of signed_mult_dsp is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 18;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 41;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.signed_mult_dsp_mult_gen_v12_0_14
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => '1',
      CLK => CLK,
      P(41 downto 0) => P(41 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
