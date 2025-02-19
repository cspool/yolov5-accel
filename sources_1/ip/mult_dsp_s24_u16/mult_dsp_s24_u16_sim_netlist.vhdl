-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Feb 19 20:21:12 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_dsp_s24_u16 -prefix
--               mult_dsp_s24_u16_ signed_mult_dsp_24_16_sim_netlist.vhdl
-- Design      : signed_mult_dsp_24_16
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
iX4tHNac3wrcZKGa7n8iC0QcTXCXKhzJIdwGPKXK1lfypu60Cks5mg2Q9efIqsb75x6HA1yj957d
e1oJTOn9qnYWlexVO4TgHJswMPge//w7ARr3CPqPvG/4aFY6EC31+e4AeRikaqRhOKjxn4lw8Ple
fbYkfGvgla8nIfbrky6ZDS0Ja0hsVDNRqrPDB7xOvYHXTvLSCyatrA6/N91AtOywH9giTRj3K39a
ixW/qkg/czLTOQR9rhuLQeyWOxGjkAFbHOdk8RD0oup2lA6cea+I8kE1DaogXohxPNGgRV2UpcHi
8exfRzWeA8P2uxvJAVTagCNqFnZsZTptw3Alng==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
hiG5t6jHvl2dSYH4UAIHV9J9oRED3s5QX/ogDBjYH0Tahii8impoy8RfU6XXBO2/CFppEfMPEwdw
vxaFK5PRG7KU0iczzK1ORKsEG5NGRLjtXup3v0dRyphLvIHvYfH184uCrhkpXp9K81wiDOoRf/cO
wHxlKbNoQ1hDEw1BbqyoPpErCNmHalr0vwnSIvqSaXTljd1rZ8pRR/hYP2N1cOhJtbWKVDTtEW0C
2QC6HKazG+FyYxUlfEtU7B1WgWOPAldzYSRbio7xOMTCyrE5/uDFd1daH84+s5voy+o5S+zWYMqx
mn8o5V/NI1U/vthNpuOPI1YCuuhYzAWWseg7Pg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10656)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_dsp_s24_u16_mult_gen_v12_0_14 is
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
  attribute C_A_TYPE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 39;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_u16_mult_gen_v12_0_14 : entity is "yes";
end mult_dsp_s24_u16_mult_gen_v12_0_14;

architecture STRUCTURE of mult_dsp_s24_u16_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 24;
  attribute C_B_TYPE of i_mult : label is 1;
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
i_mult: entity work.mult_dsp_s24_u16_mult_gen_v12_0_14_viv
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
entity mult_dsp_s24_u16 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_dsp_s24_u16 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_dsp_s24_u16 : entity is "signed_mult_dsp_24_16,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_u16 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_dsp_s24_u16 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_dsp_s24_u16;

architecture STRUCTURE of mult_dsp_s24_u16 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 1;
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
U0: entity work.mult_dsp_s24_u16_mult_gen_v12_0_14
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
