-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 18 10:41:01 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_dsp_s24_s18_naive -prefix
--               mult_dsp_s24_s18_naive_ signed_mult_dsp_sim_netlist.vhdl
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
WU0QGdcKt+wNdFbLEJyHHSGx7b9oZaXrdg81zLMKgKemvg2CdwwvbQQ+D79LltCsNzRcLu8wCFd9
kPIut6rZROIOjWFmSwefZOuZH5cMeOyxB2fAWNMJzGw6DOUrgQ5JKdlTBl6lPNLGe18gQgOEfHPs
O9hdv5MIllg/DxlE5odyO6XY9Hy1xvf2vV0mLuN5ZhFfGFOXDkcgAJ1zpR9j5RJdlIy2cISsNiQv
n67x0Xq9DGFtl5ttmB+ZoDV784mgwXY5R0BekUIu47JZvlnpaQyZi9sCPwwXZAHwTr5L6qxcld9R
JdaXTTiCML7wMV1EP1sG0ju/bfwsUM5JPEAk9Q==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
O1E6dpwVviPdgXh7t7xEkLb289NTa2zeO0KTV+hIlh2Ssk4R6V3hFYd/89q1ZypxO9CKm5nMdOnd
jC5PcojiY563yJQyMmbZ3u7UttEvw30wroHLP8iL+JaPFF+1WSZCtgK8N/0bzxrEMHB8qMrT3GfX
2nKKubyxlZAEjHs2lsvMTjKe65O+SkULcrBxsui9jAJzM/FSpUejBsL9IcnkiUY/V4G6TLO6/y9S
Gfn8N8Ltf1yQlqnf3tabqvdK3Qa+1RY6plBM4WYpYXLBohtbWehpx+7vE1IZ6uYVKZf2+J1zTahU
5n8/ykL64sTmjRlwUZMgzPOBWwhhizItx9fqHA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10352)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_dsp_s24_s18_naive_mult_gen_v12_0_14 is
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
  attribute C_A_TYPE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 18;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 41;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 : entity is "yes";
end mult_dsp_s24_s18_naive_mult_gen_v12_0_14;

architecture STRUCTURE of mult_dsp_s24_s18_naive_mult_gen_v12_0_14 is
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
i_mult: entity work.mult_dsp_s24_s18_naive_mult_gen_v12_0_14_viv
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
entity mult_dsp_s24_s18_naive is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_dsp_s24_s18_naive : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_dsp_s24_s18_naive : entity is "signed_mult_dsp,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_s18_naive : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_dsp_s24_s18_naive : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_dsp_s24_s18_naive;

architecture STRUCTURE of mult_dsp_s24_s18_naive is
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
U0: entity work.mult_dsp_s24_s18_naive_mult_gen_v12_0_14
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
