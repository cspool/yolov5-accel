-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 20 20:05:49 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_dsp_s24_s18_naive -prefix
--               mult_dsp_s24_s18_naive_ mult_dsp_s24_s18_sim_netlist.vhdl
-- Design      : mult_dsp_s24_s18
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
mywZxdoY7RmKEtKmCyohW0TUwKW86mTH01IzTFB4z1ilenUpmwVg6Und9q5rAwEm4B1VNV7UMwV0
HwFdnaT0cjnWONNrg25wh2EbgiakjS7O1sCmnk4AJqYKbPJRU2t2ChpFS0VWxKHJ2RrWf+oztpeB
ouYM3RfnGHGlwHRjmwoZhD9l1Kt9Vc0DzE9a1ovNUk3Mk7Ey9wIa/y2BNNDNQoxNse9UMESTlAnn
O38blobcrrSzJurWzFxQQh71e8+Zl3cFTx4zv0H9t0A/U4tC7K/swTXwFDL+Hq1U21QEAs3KUF6S
znyWPWZc2j2hoGWXsSC1VGpe67VSH13TqRrKHw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
bZoFNo9B8e01kuzAaP97BzJx1OginklVLSxfM7KBimwsdDGw8dB1efurdm6KWwdH6H7F02ucepJS
PkflYOMgd0Nl+Micf3bOgwz8xOYVjs043LLbeYgOfwERurRuEIprqb1Fw2fdW9ZLKoW5zloT1P+T
5uP1zKDm9Cd8Rt58y5qGC4befJAoaB1bmPAb7JvWA8DHDyW7AnS5qwYAa/MCQ+E1GCpAwr7H24A4
XDnOcw1JV7DcUSZW79kuGzcPJVTeH3zA91lauyXsQ9pOymMx4ZUcZeMPEsulB/oq3143vmvgHnUt
Tv6e7J6BV2baYWLkI0EAIkl6KeBTm99hxzSgfg==

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
  attribute CHECK_LICENSE_TYPE of mult_dsp_s24_s18_naive : entity is "mult_dsp_s24_s18,mult_gen_v12_0_14,{}";
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
