-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Feb 21 17:11:18 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_dsp_s25_s18 -prefix
--               mult_dsp_s25_s18_ mult_dsp_s25_s18_sim_netlist.vhdl
-- Design      : mult_dsp_s25_s18
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
A63Wet2yN7afJM+KNqls0qOmi3E8oaC8xTe5cDbTOtDtAezSP6bgd0yyTnUPoBIQCmG1F0l4OwHd
FbsOJFwMkEFGdW7GAbi8Xrm9KRDvK7WWxqHi9cMKzKQE0dZKmINXfEYb0nH6AZ24zFskBJSu+qTD
VlnAmGGEsQOjOt1Hol4T/joS2Jwjdiw4qCkKG1yHK09dG8JHkgsK+qydZT/Ysnzw1Z6oT3idah8r
GBaorI9oU0cetPkz9QujyjSInFR7TczrqYIysfINf2wEbYA9N2dCoe1CCtgg23n6hkDZFcfdUcV+
o7YQvMQ4l3jWnIMn+2eOlXEBPAIkBLBgF4kBRw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XJNvJazjAzYe+0j4NGODny2imXN98squ73fY9fHZImuSTdr1b8T0e6oTmKafFurJ1Tqd+tySsRJB
FRa5ZL7rfqAuFnRkbv2rXCtUm7lhV93Kx6M+HQ6KVjHwyr+cLfN97L4I5Iy/eBup987OWznGzp5s
0o6GqmFjv0QzidITDyEpCAR8z/j48i3StFUAn8W0ZxJM5XdjuCEKZImZ/pf4HCfov/UfwbanoZOz
vAsggNREN6E04SrzYVgeOozP9GEagTwMxP5WV0WRK7se9xbA+sGXJzIeVJ+nAYpsdTZbXV+IOK6s
TsgW8+FWcvNiGc9eH3CsrlCj6bl1rzrlCrNMEA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10336)
`protect data_block
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
48K7JrFByKk=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_dsp_s25_s18_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 42 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 25;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 18;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 42;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s25_s18_mult_gen_v12_0_14 : entity is "yes";
end mult_dsp_s25_s18_mult_gen_v12_0_14;

architecture STRUCTURE of mult_dsp_s25_s18_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 25;
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
  attribute C_OUT_HIGH of i_mult : label is 42;
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
i_mult: entity work.mult_dsp_s25_s18_mult_gen_v12_0_14_viv
     port map (
      A(24 downto 0) => A(24 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => '0',
      CLK => CLK,
      P(42 downto 0) => P(42 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_dsp_s25_s18 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 42 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_dsp_s25_s18 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_dsp_s25_s18 : entity is "mult_dsp_s25_s18,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s25_s18 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_dsp_s25_s18 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_dsp_s25_s18;

architecture STRUCTURE of mult_dsp_s25_s18 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 25;
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
  attribute C_OUT_HIGH of U0 : label is 42;
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
U0: entity work.mult_dsp_s25_s18_mult_gen_v12_0_14
     port map (
      A(24 downto 0) => A(24 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => '1',
      CLK => CLK,
      P(42 downto 0) => P(42 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
