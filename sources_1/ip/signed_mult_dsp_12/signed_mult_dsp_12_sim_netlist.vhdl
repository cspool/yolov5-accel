-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jul 16 14:22:52 2024
-- Host        : yang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top signed_mult_dsp_12 -prefix
--               signed_mult_dsp_12_ signed_mac_dsp_12_sim_netlist.vhdl
-- Design      : signed_mac_dsp_12
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
A+jcSfR8ry7pHq8wgdJKTj5xBtEkK3sgP4U5SMJY7jjiCpzTPxzSwbgI1PpdqFYmfa9y5TyB/41P
Blu3vLd3t2zWcd3Rzz467vPg9Dp704IhMR6Ypc/j329NVh73GpAE1Vkqf3ToS15Nw7Raa9jb0iSI
J+nXhRqWCCemwdnCORA6HUqRni60GBOTx2mkU5tT/Od0ApR/Fvyv6kzku4p3Ydr4Et8SooBw8h16
oLUGyYWIqm6qJMCXosTOcjjT5KDhBDOBJbGs0ufOhFPCVb764kb3RicBcPh3zUxPoZ8snYGNWsoH
ptMEWg2q1AWaWQ51bDggDNImuDWc8xIdGIpm6g==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jvVBCJtK7BPkMIE1bXz+9VtkZqdi/R2FT4f7L2W6EDTDoT8ZK1T31ukO464hLeP206yVsyd/ngfD
r+eEdiVK46W5c+31QYgVy8uscwRqpbuUjPkV+Mgd7HQG9NtU1s5afXhRihYvARBUZSFgiDjdXBqX
mURi7evauFeMLqYoPYT4uz5LKoySbsySgSI779KILYlz9FM4lX4Jwb5Jimzo8t4z38Rr5QJM3cED
M2tvLp7QdYOv8Bfvs3NfoPeqQm32AC7jjzNBOUlTzhdyULDRmS6QvC433wcx4MzSYwmUtamql8j/
9LmW4hpt8TQIB2gR/W0p1pydteRVkP50omGJ8Q==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10560)
`protect data_block
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
f+HayQSTjVApWy4=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp_12_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 32 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 21;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 12;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 32;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp_12_mult_gen_v12_0_14 : entity is "yes";
end signed_mult_dsp_12_mult_gen_v12_0_14;

architecture STRUCTURE of signed_mult_dsp_12_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 21;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 12;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 32;
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
i_mult: entity work.signed_mult_dsp_12_mult_gen_v12_0_14_viv
     port map (
      A(20 downto 0) => A(20 downto 0),
      B(11 downto 0) => B(11 downto 0),
      CE => '0',
      CLK => CLK,
      P(32 downto 0) => P(32 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp_12 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    P : out STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of signed_mult_dsp_12 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of signed_mult_dsp_12 : entity is "signed_mac_dsp_12,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp_12 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of signed_mult_dsp_12 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end signed_mult_dsp_12;

architecture STRUCTURE of signed_mult_dsp_12 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 21;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 12;
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
  attribute C_OUT_HIGH of U0 : label is 32;
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
U0: entity work.signed_mult_dsp_12_mult_gen_v12_0_14
     port map (
      A(20 downto 0) => A(20 downto 0),
      B(11 downto 0) => B(11 downto 0),
      CE => '1',
      CLK => CLK,
      P(32 downto 0) => P(32 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
