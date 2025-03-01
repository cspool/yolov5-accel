-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb 20 21:07:11 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_dsp_s24_s18 -prefix
--               mult_dsp_s24_s18_ mult_dsp_s24_s18_sim_netlist.vhdl
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
MfasNOI+NKJw3yOOOzk6nDJnjDnJRXKc6vcD5KxVMN7I8+0tdujcMtqOXwmMs4f35PFbnUXUPzHH
Zuzh4BMUHg6GjuoYXw+QqvjVhvdhg/rFIlLpVgMB6RsqNLgN70kn1Bau4ZUkVJSrsuFv/FsWKbZZ
V717Shlpe5EdRmVOVIL9QU1T3Kp9sW/OvzLIRn+yuh0aCT2BbrfCE1nYowAgnLb2Di/xo/jYEUAF
//lETpl0cu+6zwRO14B3zzZ9FY7lk79KufhNka+h5M2q1TF7HCde2Whv1NMs+jUGcAhH/CtrBhGY
oRHuUX17lRjzfCm2bg6uP9RoqS6IaNV9AxjPhQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xp4A1eyNeXgVbLaWPClfe7fma15rrJK9EnbMjFrD2g1t5lNoASjuC8OrgFXVtu15lo8/DQjRXesx
ljVKITaUxFKUoU2xJLwCLqE3NsMq1B8nFcZN0Ig4ao5/cbES+M9yZL1e5LuJviuS3GtLkdwFNHMc
CkqCwsfFOXf5KAc8BWIdwA5EdQNizcbb9eWCbRW4+VRUSmQW+KmMwilKJb4jtQ2mZ5Vd7dtXLWry
V3R2MoV8ghTrOGzaEjsT3wCgHn9UY5xXxWaihIl0znv1T5rAhNOh14nM9AeycVVvQxTUeAkQFjid
bEShyRll3Ah7GJhB6xcYBqmmjNK1byiTaZemOw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`protect data_block
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
BbHQ9osBvNGUTm+FhKiI
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_dsp_s24_s18_mult_gen_v12_0_14 is
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
  attribute C_A_TYPE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 24;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 18;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 41;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is "virtex7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_s18_mult_gen_v12_0_14 : entity is "yes";
end mult_dsp_s24_s18_mult_gen_v12_0_14;

architecture STRUCTURE of mult_dsp_s24_s18_mult_gen_v12_0_14 is
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
  attribute C_HAS_CE of i_mult : label is 1;
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
i_mult: entity work.mult_dsp_s24_s18_mult_gen_v12_0_14_viv
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => CE,
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
entity mult_dsp_s24_s18 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 41 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_dsp_s24_s18 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_dsp_s24_s18 : entity is "mult_dsp_s24_s18,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_dsp_s24_s18 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_dsp_s24_s18 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_dsp_s24_s18;

architecture STRUCTURE of mult_dsp_s24_s18 is
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
U0: entity work.mult_dsp_s24_s18_mult_gen_v12_0_14
     port map (
      A(23 downto 0) => A(23 downto 0),
      B(17 downto 0) => B(17 downto 0),
      CE => CE,
      CLK => CLK,
      P(41 downto 0) => P(41 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
