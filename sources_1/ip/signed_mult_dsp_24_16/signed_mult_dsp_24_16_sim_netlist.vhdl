-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 18 10:43:38 2025
-- Host        : zack running 64-bit major release  (build 9200)
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
FdlCu9bYS2Egj6SQLDYuM5KagAaYKtVknvlMNsmZz9vAsIyd4AvZIZ8CMsrDIwSTEPRj8bl4brfd
b/vZ6E35IQ0ySjfgLvgGb/Uau86NFEBFRFscHz08uncJNHGrHbsO996bzQunPitL5rbLEoRG9nbY
7GXjTWwCjP3pjmlGF89ujxkWV9B2Ug3It1ud1y/R6G61zoXMZGH8KQJW1KetKp7EVaL3hZIBxWMV
6FnZcgMEazafEnML35azVunxW4EZ1Inw4D/YaQ5+LJo7UnKCiro4DfsDKSYipGW/z40S6TnTTCBZ
fPu1FJOnagq/HIVz+gCTDY+64YbhyZpNdH3Hhw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
cpP7n0DB8ClM/78xjWaYU9EABDXJ8alqYUM1cfF3it62mObNP/CE4Xu6MF5svAt5+nwUNDoR3zen
ykhibfjhoq4+/ZuNZzUT62KeSnjGJLq/hCpo/rQbfPFGL9VeTyZvJowWPaE0ktSrrB4gFY81z0s6
XPGV22NtFrpNpZP26wvHofG6SQXgTa3U4UId4sp7HAKn4icOk5AR5AByAiRcqV64WNoCuDItWDIO
hdcMac03DCy6oD/jf47P45/wpv2HrfSpflrP+1klE4Q4AtZhK6msqkaHKXPwBTpm1xoFijPObvia
ZGaoIfOM4o5SP0YP4WdH6iDAg1cF6wzQiNxF7Q==

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
