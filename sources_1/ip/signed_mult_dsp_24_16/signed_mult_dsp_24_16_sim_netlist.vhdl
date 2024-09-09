-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Sep  7 14:01:23 2024
-- Host        : yang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top signed_mult_dsp_24_16 -prefix
--               signed_mult_dsp_24_16_ signed_dsp_25_18_sim_netlist.vhdl
-- Design      : signed_dsp_25_18
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
phxv+Uf0e39tfcWuHFaP1t7ns4TsaIquhKY3h7QV24VWyfOocx8ZN7ufZcFo4tEKHU04JYdxOhjU
18378ZISw0fRIOg3Z1F0o4UGzxcOZVKE7iZSRU2kSAt6NOzwiYaLQ8eF+s9VqfrKNkc0KrEwgevQ
Sw7dpmzbmdDw/iibwVtkIcaJgmByi7jW5uwuwhwvx+MYHheDg+mwfzH5kuoaSWruGv/2fYC9Td8w
bZj912+kXy4jSCO3g5MqZhl7QcZsoDGjYxfJCkc+cNEzIV9I0f7fM1EXVYphGUjLhkK2PBjvjVSS
QQMGBp6WFqVfLMF055HJSdA8BumVRtkYDnMpIA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ewlkKyL3/DOWnNS9x8qvZXgqp0fkXzxWdfSgfB8ylfRi6+8BoKDeK54HHNlg7njkudrp0yZMlBKZ
ZpVp0IdSkzHPnxsHur+nohMFaXJTCJXMErDKi3+R4Vr3q3YTmQMwPjN+tVV82zRRolH1VYGfSmwC
MSQcvjP2rUnW7aCiCRduwAxNc+BcAvv0mAha8Ep2ql189AGhvSWqSiUxEcMsk5KM86ou79L9jOwe
fJYv/FTtCNCctwlhLIBavVxLmUPhM2tlxs1TJJeqBpWYoSk9/aJCSFlJbw7wISiX2lj9OHXBmkov
XBeehMbT5ks0evvce7BrYuQk3mdUewD8Qy9MCQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10448)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp_24_16_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 39 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 39;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp_24_16_mult_gen_v12_0_14 : entity is "yes";
end signed_mult_dsp_24_16_mult_gen_v12_0_14;

architecture STRUCTURE of signed_mult_dsp_24_16_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 24;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 16;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 1;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 1;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 39;
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
i_mult: entity work.signed_mult_dsp_24_16_mult_gen_v12_0_14_viv
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => CE,
      CLK => CLK,
      P(39 downto 0) => P(39 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity signed_mult_dsp_24_16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of signed_mult_dsp_24_16 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of signed_mult_dsp_24_16 : entity is "signed_dsp_25_18,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of signed_mult_dsp_24_16 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of signed_mult_dsp_24_16 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end signed_mult_dsp_24_16;

architecture STRUCTURE of signed_mult_dsp_24_16 is
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
  attribute C_B_WIDTH of U0 : label is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
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
  attribute C_OUT_HIGH of U0 : label is 39;
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
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.signed_mult_dsp_24_16_mult_gen_v12_0_14
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => CE,
      CLK => CLK,
      P(39 downto 0) => P(39 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
