-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 30 21:43:15 2024
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/weights_buffer/weights_buffer_sim_netlist.vhdl
-- Design      : weights_buffer
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_bindec : entity is "bindec";
end weights_buffer_bindec;

architecture STRUCTURE of weights_buffer_bindec is
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addra(0),
      I1 => ena,
      I2 => addra(1),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 502 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOPBDOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \douta[476]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[476]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[475]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[475]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[440]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[440]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[439]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[439]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[404]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[404]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[403]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[403]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[368]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[368]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[367]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[367]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[332]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[332]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[331]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[331]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[296]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[296]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[295]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[295]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[260]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[260]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[259]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[259]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[224]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[224]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[223]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[223]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[188]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[188]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[187]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[187]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[152]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[152]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[151]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[151]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[116]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[116]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[115]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[115]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[80]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[80]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[79]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[79]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[44]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[44]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \douta[43]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \douta[43]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end weights_buffer_blk_mem_gen_mux;

architecture STRUCTURE of weights_buffer_blk_mem_gen_mux is
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1\ : label is "soft_lutpair0";
begin
\douta[100]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(17),
      O => douta(91)
    );
\douta[101]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(18),
      O => douta(92)
    );
\douta[102]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(19),
      O => douta(93)
    );
\douta[103]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(20),
      O => douta(94)
    );
\douta[104]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(21),
      O => douta(95)
    );
\douta[105]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(22),
      O => douta(96)
    );
\douta[106]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(23),
      O => douta(97)
    );
\douta[107]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[116]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[116]_0\(2),
      O => douta(98)
    );
\douta[108]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(24),
      O => douta(99)
    );
\douta[109]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(25),
      O => douta(100)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(1),
      O => douta(1)
    );
\douta[110]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(26),
      O => douta(101)
    );
\douta[111]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(27),
      O => douta(102)
    );
\douta[112]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(28),
      O => douta(103)
    );
\douta[113]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(29),
      O => douta(104)
    );
\douta[114]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(30),
      O => douta(105)
    );
\douta[115]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(31),
      O => douta(106)
    );
\douta[116]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[116]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[116]_0\(3),
      O => douta(107)
    );
\douta[117]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(0),
      O => douta(108)
    );
\douta[118]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(1),
      O => douta(109)
    );
\douta[119]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(2),
      O => douta(110)
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(2),
      O => douta(2)
    );
\douta[120]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(3),
      O => douta(111)
    );
\douta[121]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(4),
      O => douta(112)
    );
\douta[122]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(5),
      O => douta(113)
    );
\douta[123]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(6),
      O => douta(114)
    );
\douta[124]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(7),
      O => douta(115)
    );
\douta[125]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[152]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[152]_0\(0),
      O => douta(116)
    );
\douta[126]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(8),
      O => douta(117)
    );
\douta[127]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(9),
      O => douta(118)
    );
\douta[128]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(10),
      O => douta(119)
    );
\douta[129]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(11),
      O => douta(120)
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(3),
      O => douta(3)
    );
\douta[130]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(12),
      O => douta(121)
    );
\douta[131]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(13),
      O => douta(122)
    );
\douta[132]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(14),
      O => douta(123)
    );
\douta[133]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(15),
      O => douta(124)
    );
\douta[134]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[152]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[152]_0\(1),
      O => douta(125)
    );
\douta[135]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(16),
      O => douta(126)
    );
\douta[136]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(17),
      O => douta(127)
    );
\douta[137]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(18),
      O => douta(128)
    );
\douta[138]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(19),
      O => douta(129)
    );
\douta[139]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(20),
      O => douta(130)
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(4),
      O => douta(4)
    );
\douta[140]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(21),
      O => douta(131)
    );
\douta[141]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(22),
      O => douta(132)
    );
\douta[142]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(23),
      O => douta(133)
    );
\douta[143]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[152]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[152]_0\(2),
      O => douta(134)
    );
\douta[144]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(24),
      O => douta(135)
    );
\douta[145]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(25),
      O => douta(136)
    );
\douta[146]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(26),
      O => douta(137)
    );
\douta[147]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(27),
      O => douta(138)
    );
\douta[148]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(28),
      O => douta(139)
    );
\douta[149]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(29),
      O => douta(140)
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(5),
      O => douta(5)
    );
\douta[150]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(30),
      O => douta(141)
    );
\douta[151]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[151]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[151]_0\(31),
      O => douta(142)
    );
\douta[152]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[152]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[152]_0\(3),
      O => douta(143)
    );
\douta[153]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(0),
      O => douta(144)
    );
\douta[154]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(1),
      O => douta(145)
    );
\douta[155]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(2),
      O => douta(146)
    );
\douta[156]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(3),
      O => douta(147)
    );
\douta[157]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(4),
      O => douta(148)
    );
\douta[158]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(5),
      O => douta(149)
    );
\douta[159]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(6),
      O => douta(150)
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(6),
      O => douta(6)
    );
\douta[160]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(7),
      O => douta(151)
    );
\douta[161]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[188]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[188]_0\(0),
      O => douta(152)
    );
\douta[162]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(8),
      O => douta(153)
    );
\douta[163]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(9),
      O => douta(154)
    );
\douta[164]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(10),
      O => douta(155)
    );
\douta[165]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(11),
      O => douta(156)
    );
\douta[166]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(12),
      O => douta(157)
    );
\douta[167]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(13),
      O => douta(158)
    );
\douta[168]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(14),
      O => douta(159)
    );
\douta[169]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(15),
      O => douta(160)
    );
\douta[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(7),
      O => douta(7)
    );
\douta[170]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[188]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[188]_0\(1),
      O => douta(161)
    );
\douta[171]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(16),
      O => douta(162)
    );
\douta[172]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(17),
      O => douta(163)
    );
\douta[173]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(18),
      O => douta(164)
    );
\douta[174]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(19),
      O => douta(165)
    );
\douta[175]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(20),
      O => douta(166)
    );
\douta[176]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(21),
      O => douta(167)
    );
\douta[177]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(22),
      O => douta(168)
    );
\douta[178]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(23),
      O => douta(169)
    );
\douta[179]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[188]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[188]_0\(2),
      O => douta(170)
    );
\douta[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[44]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[44]_0\(0),
      O => douta(8)
    );
\douta[180]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(24),
      O => douta(171)
    );
\douta[181]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(25),
      O => douta(172)
    );
\douta[182]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(26),
      O => douta(173)
    );
\douta[183]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(27),
      O => douta(174)
    );
\douta[184]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(28),
      O => douta(175)
    );
\douta[185]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(29),
      O => douta(176)
    );
\douta[186]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(30),
      O => douta(177)
    );
\douta[187]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[187]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[187]_0\(31),
      O => douta(178)
    );
\douta[188]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[188]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[188]_0\(3),
      O => douta(179)
    );
\douta[189]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(0),
      O => douta(180)
    );
\douta[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(8),
      O => douta(9)
    );
\douta[190]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(1),
      O => douta(181)
    );
\douta[191]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(2),
      O => douta(182)
    );
\douta[192]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(3),
      O => douta(183)
    );
\douta[193]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(4),
      O => douta(184)
    );
\douta[194]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(5),
      O => douta(185)
    );
\douta[195]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(6),
      O => douta(186)
    );
\douta[196]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(7),
      O => douta(187)
    );
\douta[197]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[224]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[224]_0\(0),
      O => douta(188)
    );
\douta[198]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(8),
      O => douta(189)
    );
\douta[199]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(9),
      O => douta(190)
    );
\douta[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(9),
      O => douta(10)
    );
\douta[200]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(10),
      O => douta(191)
    );
\douta[201]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(11),
      O => douta(192)
    );
\douta[202]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(12),
      O => douta(193)
    );
\douta[203]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(13),
      O => douta(194)
    );
\douta[204]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(14),
      O => douta(195)
    );
\douta[205]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(15),
      O => douta(196)
    );
\douta[206]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[224]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[224]_0\(1),
      O => douta(197)
    );
\douta[207]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(16),
      O => douta(198)
    );
\douta[208]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(17),
      O => douta(199)
    );
\douta[209]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(18),
      O => douta(200)
    );
\douta[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(10),
      O => douta(11)
    );
\douta[210]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(19),
      O => douta(201)
    );
\douta[211]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(20),
      O => douta(202)
    );
\douta[212]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(21),
      O => douta(203)
    );
\douta[213]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(22),
      O => douta(204)
    );
\douta[214]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(23),
      O => douta(205)
    );
\douta[215]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[224]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[224]_0\(2),
      O => douta(206)
    );
\douta[216]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(24),
      O => douta(207)
    );
\douta[217]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(25),
      O => douta(208)
    );
\douta[218]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(26),
      O => douta(209)
    );
\douta[219]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(27),
      O => douta(210)
    );
\douta[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(11),
      O => douta(12)
    );
\douta[220]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(28),
      O => douta(211)
    );
\douta[221]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(29),
      O => douta(212)
    );
\douta[222]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(30),
      O => douta(213)
    );
\douta[223]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[223]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[223]_0\(31),
      O => douta(214)
    );
\douta[224]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[224]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[224]_0\(3),
      O => douta(215)
    );
\douta[225]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(0),
      O => douta(216)
    );
\douta[226]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(1),
      O => douta(217)
    );
\douta[227]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(2),
      O => douta(218)
    );
\douta[228]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(3),
      O => douta(219)
    );
\douta[229]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(4),
      O => douta(220)
    );
\douta[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(12),
      O => douta(13)
    );
\douta[230]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(5),
      O => douta(221)
    );
\douta[231]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(6),
      O => douta(222)
    );
\douta[232]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(7),
      O => douta(223)
    );
\douta[233]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[260]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[260]_0\(0),
      O => douta(224)
    );
\douta[234]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(8),
      O => douta(225)
    );
\douta[235]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(9),
      O => douta(226)
    );
\douta[236]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(10),
      O => douta(227)
    );
\douta[237]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(11),
      O => douta(228)
    );
\douta[238]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(12),
      O => douta(229)
    );
\douta[239]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(13),
      O => douta(230)
    );
\douta[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(13),
      O => douta(14)
    );
\douta[240]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(14),
      O => douta(231)
    );
\douta[241]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(15),
      O => douta(232)
    );
\douta[242]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[260]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[260]_0\(1),
      O => douta(233)
    );
\douta[243]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(16),
      O => douta(234)
    );
\douta[244]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(17),
      O => douta(235)
    );
\douta[245]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(18),
      O => douta(236)
    );
\douta[246]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(19),
      O => douta(237)
    );
\douta[247]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(20),
      O => douta(238)
    );
\douta[248]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(21),
      O => douta(239)
    );
\douta[249]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(22),
      O => douta(240)
    );
\douta[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(14),
      O => douta(15)
    );
\douta[250]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(23),
      O => douta(241)
    );
\douta[251]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[260]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[260]_0\(2),
      O => douta(242)
    );
\douta[252]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(24),
      O => douta(243)
    );
\douta[253]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(25),
      O => douta(244)
    );
\douta[254]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(26),
      O => douta(245)
    );
\douta[255]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(27),
      O => douta(246)
    );
\douta[256]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(28),
      O => douta(247)
    );
\douta[257]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(29),
      O => douta(248)
    );
\douta[258]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(30),
      O => douta(249)
    );
\douta[259]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[259]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[259]_0\(31),
      O => douta(250)
    );
\douta[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(15),
      O => douta(16)
    );
\douta[260]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[260]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[260]_0\(3),
      O => douta(251)
    );
\douta[261]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(0),
      O => douta(252)
    );
\douta[262]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(1),
      O => douta(253)
    );
\douta[263]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(2),
      O => douta(254)
    );
\douta[264]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(3),
      O => douta(255)
    );
\douta[265]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(4),
      O => douta(256)
    );
\douta[266]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(5),
      O => douta(257)
    );
\douta[267]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(6),
      O => douta(258)
    );
\douta[268]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(7),
      O => douta(259)
    );
\douta[269]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[296]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[296]_0\(0),
      O => douta(260)
    );
\douta[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[44]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[44]_0\(1),
      O => douta(17)
    );
\douta[270]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(8),
      O => douta(261)
    );
\douta[271]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(9),
      O => douta(262)
    );
\douta[272]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(10),
      O => douta(263)
    );
\douta[273]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(11),
      O => douta(264)
    );
\douta[274]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(12),
      O => douta(265)
    );
\douta[275]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(13),
      O => douta(266)
    );
\douta[276]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(14),
      O => douta(267)
    );
\douta[277]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(15),
      O => douta(268)
    );
\douta[278]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[296]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[296]_0\(1),
      O => douta(269)
    );
\douta[279]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(16),
      O => douta(270)
    );
\douta[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(16),
      O => douta(18)
    );
\douta[280]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(17),
      O => douta(271)
    );
\douta[281]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(18),
      O => douta(272)
    );
\douta[282]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(19),
      O => douta(273)
    );
\douta[283]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(20),
      O => douta(274)
    );
\douta[284]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(21),
      O => douta(275)
    );
\douta[285]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(22),
      O => douta(276)
    );
\douta[286]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(23),
      O => douta(277)
    );
\douta[287]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[296]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[296]_0\(2),
      O => douta(278)
    );
\douta[288]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(24),
      O => douta(279)
    );
\douta[289]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(25),
      O => douta(280)
    );
\douta[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(17),
      O => douta(19)
    );
\douta[290]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(26),
      O => douta(281)
    );
\douta[291]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(27),
      O => douta(282)
    );
\douta[292]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(28),
      O => douta(283)
    );
\douta[293]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(29),
      O => douta(284)
    );
\douta[294]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(30),
      O => douta(285)
    );
\douta[295]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[295]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[295]_0\(31),
      O => douta(286)
    );
\douta[296]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[296]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[296]_0\(3),
      O => douta(287)
    );
\douta[297]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(0),
      O => douta(288)
    );
\douta[298]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(1),
      O => douta(289)
    );
\douta[299]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(2),
      O => douta(290)
    );
\douta[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(18),
      O => douta(20)
    );
\douta[300]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(3),
      O => douta(291)
    );
\douta[301]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(4),
      O => douta(292)
    );
\douta[302]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(5),
      O => douta(293)
    );
\douta[303]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(6),
      O => douta(294)
    );
\douta[304]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(7),
      O => douta(295)
    );
\douta[305]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[332]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[332]_0\(0),
      O => douta(296)
    );
\douta[306]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(8),
      O => douta(297)
    );
\douta[307]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(9),
      O => douta(298)
    );
\douta[308]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(10),
      O => douta(299)
    );
\douta[309]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(11),
      O => douta(300)
    );
\douta[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(19),
      O => douta(21)
    );
\douta[310]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(12),
      O => douta(301)
    );
\douta[311]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(13),
      O => douta(302)
    );
\douta[312]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(14),
      O => douta(303)
    );
\douta[313]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(15),
      O => douta(304)
    );
\douta[314]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[332]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[332]_0\(1),
      O => douta(305)
    );
\douta[315]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(16),
      O => douta(306)
    );
\douta[316]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(17),
      O => douta(307)
    );
\douta[317]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(18),
      O => douta(308)
    );
\douta[318]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(19),
      O => douta(309)
    );
\douta[319]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(20),
      O => douta(310)
    );
\douta[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(20),
      O => douta(22)
    );
\douta[320]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(21),
      O => douta(311)
    );
\douta[321]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(22),
      O => douta(312)
    );
\douta[322]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(23),
      O => douta(313)
    );
\douta[323]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[332]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[332]_0\(2),
      O => douta(314)
    );
\douta[324]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(24),
      O => douta(315)
    );
\douta[325]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(25),
      O => douta(316)
    );
\douta[326]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(26),
      O => douta(317)
    );
\douta[327]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(27),
      O => douta(318)
    );
\douta[328]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(28),
      O => douta(319)
    );
\douta[329]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(29),
      O => douta(320)
    );
\douta[32]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(21),
      O => douta(23)
    );
\douta[330]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(30),
      O => douta(321)
    );
\douta[331]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[331]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[331]_0\(31),
      O => douta(322)
    );
\douta[332]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[332]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[332]_0\(3),
      O => douta(323)
    );
\douta[333]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(0),
      O => douta(324)
    );
\douta[334]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(1),
      O => douta(325)
    );
\douta[335]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(2),
      O => douta(326)
    );
\douta[336]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(3),
      O => douta(327)
    );
\douta[337]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(4),
      O => douta(328)
    );
\douta[338]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(5),
      O => douta(329)
    );
\douta[339]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(6),
      O => douta(330)
    );
\douta[33]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(22),
      O => douta(24)
    );
\douta[340]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(7),
      O => douta(331)
    );
\douta[341]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[368]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[368]_0\(0),
      O => douta(332)
    );
\douta[342]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(8),
      O => douta(333)
    );
\douta[343]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(9),
      O => douta(334)
    );
\douta[344]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(10),
      O => douta(335)
    );
\douta[345]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(11),
      O => douta(336)
    );
\douta[346]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(12),
      O => douta(337)
    );
\douta[347]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(13),
      O => douta(338)
    );
\douta[348]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(14),
      O => douta(339)
    );
\douta[349]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(15),
      O => douta(340)
    );
\douta[34]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(23),
      O => douta(25)
    );
\douta[350]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[368]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[368]_0\(1),
      O => douta(341)
    );
\douta[351]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(16),
      O => douta(342)
    );
\douta[352]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(17),
      O => douta(343)
    );
\douta[353]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(18),
      O => douta(344)
    );
\douta[354]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(19),
      O => douta(345)
    );
\douta[355]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(20),
      O => douta(346)
    );
\douta[356]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(21),
      O => douta(347)
    );
\douta[357]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(22),
      O => douta(348)
    );
\douta[358]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(23),
      O => douta(349)
    );
\douta[359]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[368]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[368]_0\(2),
      O => douta(350)
    );
\douta[35]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[44]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[44]_0\(2),
      O => douta(26)
    );
\douta[360]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(24),
      O => douta(351)
    );
\douta[361]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(25),
      O => douta(352)
    );
\douta[362]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(26),
      O => douta(353)
    );
\douta[363]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(27),
      O => douta(354)
    );
\douta[364]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(28),
      O => douta(355)
    );
\douta[365]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(29),
      O => douta(356)
    );
\douta[366]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(30),
      O => douta(357)
    );
\douta[367]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[367]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[367]_0\(31),
      O => douta(358)
    );
\douta[368]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[368]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[368]_0\(3),
      O => douta(359)
    );
\douta[369]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(0),
      O => douta(360)
    );
\douta[36]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(24),
      O => douta(27)
    );
\douta[370]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(1),
      O => douta(361)
    );
\douta[371]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(2),
      O => douta(362)
    );
\douta[372]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(3),
      O => douta(363)
    );
\douta[373]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(4),
      O => douta(364)
    );
\douta[374]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(5),
      O => douta(365)
    );
\douta[375]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(6),
      O => douta(366)
    );
\douta[376]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(7),
      O => douta(367)
    );
\douta[377]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[404]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[404]_0\(0),
      O => douta(368)
    );
\douta[378]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(8),
      O => douta(369)
    );
\douta[379]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(9),
      O => douta(370)
    );
\douta[37]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(25),
      O => douta(28)
    );
\douta[380]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(10),
      O => douta(371)
    );
\douta[381]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(11),
      O => douta(372)
    );
\douta[382]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(12),
      O => douta(373)
    );
\douta[383]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(13),
      O => douta(374)
    );
\douta[384]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(14),
      O => douta(375)
    );
\douta[385]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(15),
      O => douta(376)
    );
\douta[386]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[404]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[404]_0\(1),
      O => douta(377)
    );
\douta[387]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(16),
      O => douta(378)
    );
\douta[388]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(17),
      O => douta(379)
    );
\douta[389]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(18),
      O => douta(380)
    );
\douta[38]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(26),
      O => douta(29)
    );
\douta[390]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(19),
      O => douta(381)
    );
\douta[391]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(20),
      O => douta(382)
    );
\douta[392]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(21),
      O => douta(383)
    );
\douta[393]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(22),
      O => douta(384)
    );
\douta[394]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(23),
      O => douta(385)
    );
\douta[395]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[404]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[404]_0\(2),
      O => douta(386)
    );
\douta[396]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(24),
      O => douta(387)
    );
\douta[397]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(25),
      O => douta(388)
    );
\douta[398]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(26),
      O => douta(389)
    );
\douta[399]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(27),
      O => douta(390)
    );
\douta[39]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(27),
      O => douta(30)
    );
\douta[400]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(28),
      O => douta(391)
    );
\douta[401]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(29),
      O => douta(392)
    );
\douta[402]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(30),
      O => douta(393)
    );
\douta[403]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[403]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[403]_0\(31),
      O => douta(394)
    );
\douta[404]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[404]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[404]_0\(3),
      O => douta(395)
    );
\douta[405]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(0),
      O => douta(396)
    );
\douta[406]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(1),
      O => douta(397)
    );
\douta[407]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(2),
      O => douta(398)
    );
\douta[408]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(3),
      O => douta(399)
    );
\douta[409]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(4),
      O => douta(400)
    );
\douta[40]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(28),
      O => douta(31)
    );
\douta[410]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(5),
      O => douta(401)
    );
\douta[411]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(6),
      O => douta(402)
    );
\douta[412]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(7),
      O => douta(403)
    );
\douta[413]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[440]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[440]_0\(0),
      O => douta(404)
    );
\douta[414]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(8),
      O => douta(405)
    );
\douta[415]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(9),
      O => douta(406)
    );
\douta[416]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(10),
      O => douta(407)
    );
\douta[417]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(11),
      O => douta(408)
    );
\douta[418]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(12),
      O => douta(409)
    );
\douta[419]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(13),
      O => douta(410)
    );
\douta[41]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(29),
      O => douta(32)
    );
\douta[420]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(14),
      O => douta(411)
    );
\douta[421]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(15),
      O => douta(412)
    );
\douta[422]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[440]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[440]_0\(1),
      O => douta(413)
    );
\douta[423]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(16),
      O => douta(414)
    );
\douta[424]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(17),
      O => douta(415)
    );
\douta[425]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(18),
      O => douta(416)
    );
\douta[426]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(19),
      O => douta(417)
    );
\douta[427]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(20),
      O => douta(418)
    );
\douta[428]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(21),
      O => douta(419)
    );
\douta[429]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(22),
      O => douta(420)
    );
\douta[42]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(30),
      O => douta(33)
    );
\douta[430]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(23),
      O => douta(421)
    );
\douta[431]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[440]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[440]_0\(2),
      O => douta(422)
    );
\douta[432]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(24),
      O => douta(423)
    );
\douta[433]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(25),
      O => douta(424)
    );
\douta[434]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(26),
      O => douta(425)
    );
\douta[435]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(27),
      O => douta(426)
    );
\douta[436]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(28),
      O => douta(427)
    );
\douta[437]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(29),
      O => douta(428)
    );
\douta[438]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(30),
      O => douta(429)
    );
\douta[439]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[439]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[439]_0\(31),
      O => douta(430)
    );
\douta[43]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(31),
      O => douta(34)
    );
\douta[440]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[440]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[440]_0\(3),
      O => douta(431)
    );
\douta[441]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(0),
      O => douta(432)
    );
\douta[442]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(1),
      O => douta(433)
    );
\douta[443]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(2),
      O => douta(434)
    );
\douta[444]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(3),
      O => douta(435)
    );
\douta[445]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(4),
      O => douta(436)
    );
\douta[446]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(5),
      O => douta(437)
    );
\douta[447]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(6),
      O => douta(438)
    );
\douta[448]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(7),
      O => douta(439)
    );
\douta[449]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[476]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[476]_0\(0),
      O => douta(440)
    );
\douta[44]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[44]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[44]_0\(3),
      O => douta(35)
    );
\douta[450]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(8),
      O => douta(441)
    );
\douta[451]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(9),
      O => douta(442)
    );
\douta[452]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(10),
      O => douta(443)
    );
\douta[453]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(11),
      O => douta(444)
    );
\douta[454]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(12),
      O => douta(445)
    );
\douta[455]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(13),
      O => douta(446)
    );
\douta[456]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(14),
      O => douta(447)
    );
\douta[457]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(15),
      O => douta(448)
    );
\douta[458]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[476]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[476]_0\(1),
      O => douta(449)
    );
\douta[459]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(16),
      O => douta(450)
    );
\douta[45]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(0),
      O => douta(36)
    );
\douta[460]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(17),
      O => douta(451)
    );
\douta[461]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(18),
      O => douta(452)
    );
\douta[462]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(19),
      O => douta(453)
    );
\douta[463]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(20),
      O => douta(454)
    );
\douta[464]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(21),
      O => douta(455)
    );
\douta[465]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(22),
      O => douta(456)
    );
\douta[466]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(23),
      O => douta(457)
    );
\douta[467]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[476]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[476]_0\(2),
      O => douta(458)
    );
\douta[468]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(24),
      O => douta(459)
    );
\douta[469]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(25),
      O => douta(460)
    );
\douta[46]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(1),
      O => douta(37)
    );
\douta[470]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(26),
      O => douta(461)
    );
\douta[471]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(27),
      O => douta(462)
    );
\douta[472]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(28),
      O => douta(463)
    );
\douta[473]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(29),
      O => douta(464)
    );
\douta[474]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(30),
      O => douta(465)
    );
\douta[475]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[475]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[475]_0\(31),
      O => douta(466)
    );
\douta[476]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[476]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[476]_0\(3),
      O => douta(467)
    );
\douta[477]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(0),
      I2 => sel_pipe(1),
      I3 => DOADO(0),
      O => douta(468)
    );
\douta[478]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(1),
      I2 => sel_pipe(1),
      I3 => DOADO(1),
      O => douta(469)
    );
\douta[479]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(2),
      I2 => sel_pipe(1),
      I3 => DOADO(2),
      O => douta(470)
    );
\douta[47]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(2),
      O => douta(38)
    );
\douta[480]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(3),
      I2 => sel_pipe(1),
      I3 => DOADO(3),
      O => douta(471)
    );
\douta[481]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(4),
      I2 => sel_pipe(1),
      I3 => DOADO(4),
      O => douta(472)
    );
\douta[482]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(5),
      I2 => sel_pipe(1),
      I3 => DOADO(5),
      O => douta(473)
    );
\douta[483]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(6),
      I2 => sel_pipe(1),
      I3 => DOADO(6),
      O => douta(474)
    );
\douta[484]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(7),
      I2 => sel_pipe(1),
      I3 => DOADO(7),
      O => douta(475)
    );
\douta[485]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOPBDOP(0),
      I2 => sel_pipe(1),
      I3 => DOPADOP(0),
      O => douta(476)
    );
\douta[486]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(8),
      I2 => sel_pipe(1),
      I3 => DOADO(8),
      O => douta(477)
    );
\douta[487]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(9),
      I2 => sel_pipe(1),
      I3 => DOADO(9),
      O => douta(478)
    );
\douta[488]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(10),
      I2 => sel_pipe(1),
      I3 => DOADO(10),
      O => douta(479)
    );
\douta[489]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(11),
      I2 => sel_pipe(1),
      I3 => DOADO(11),
      O => douta(480)
    );
\douta[48]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(3),
      O => douta(39)
    );
\douta[490]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(12),
      I2 => sel_pipe(1),
      I3 => DOADO(12),
      O => douta(481)
    );
\douta[491]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(13),
      I2 => sel_pipe(1),
      I3 => DOADO(13),
      O => douta(482)
    );
\douta[492]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(14),
      I2 => sel_pipe(1),
      I3 => DOADO(14),
      O => douta(483)
    );
\douta[493]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(15),
      I2 => sel_pipe(1),
      I3 => DOADO(15),
      O => douta(484)
    );
\douta[494]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOPBDOP(1),
      I2 => sel_pipe(1),
      I3 => DOPADOP(1),
      O => douta(485)
    );
\douta[495]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(16),
      I2 => sel_pipe(1),
      I3 => DOADO(16),
      O => douta(486)
    );
\douta[496]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(17),
      I2 => sel_pipe(1),
      I3 => DOADO(17),
      O => douta(487)
    );
\douta[497]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(18),
      I2 => sel_pipe(1),
      I3 => DOADO(18),
      O => douta(488)
    );
\douta[498]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(19),
      I2 => sel_pipe(1),
      I3 => DOADO(19),
      O => douta(489)
    );
\douta[499]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(20),
      I2 => sel_pipe(1),
      I3 => DOADO(20),
      O => douta(490)
    );
\douta[49]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(4),
      O => douta(40)
    );
\douta[500]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(21),
      I2 => sel_pipe(1),
      I3 => DOADO(21),
      O => douta(491)
    );
\douta[501]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(22),
      I2 => sel_pipe(1),
      I3 => DOADO(22),
      O => douta(492)
    );
\douta[502]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(23),
      I2 => sel_pipe(1),
      I3 => DOADO(23),
      O => douta(493)
    );
\douta[503]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOPBDOP(2),
      I2 => sel_pipe(1),
      I3 => DOPADOP(2),
      O => douta(494)
    );
\douta[504]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(24),
      I2 => sel_pipe(1),
      I3 => DOADO(24),
      O => douta(495)
    );
\douta[505]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(25),
      I2 => sel_pipe(1),
      I3 => DOADO(25),
      O => douta(496)
    );
\douta[506]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(26),
      I2 => sel_pipe(1),
      I3 => DOADO(26),
      O => douta(497)
    );
\douta[507]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(27),
      I2 => sel_pipe(1),
      I3 => DOADO(27),
      O => douta(498)
    );
\douta[508]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(28),
      I2 => sel_pipe(1),
      I3 => DOADO(28),
      O => douta(499)
    );
\douta[509]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(29),
      I2 => sel_pipe(1),
      I3 => DOADO(29),
      O => douta(500)
    );
\douta[50]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(5),
      O => douta(41)
    );
\douta[510]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(30),
      I2 => sel_pipe(1),
      I3 => DOADO(30),
      O => douta(501)
    );
\douta[511]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => DOBDO(31),
      I2 => sel_pipe(1),
      I3 => DOADO(31),
      O => douta(502)
    );
\douta[51]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(6),
      O => douta(42)
    );
\douta[52]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(7),
      O => douta(43)
    );
\douta[53]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[80]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[80]_0\(0),
      O => douta(44)
    );
\douta[54]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(8),
      O => douta(45)
    );
\douta[55]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(9),
      O => douta(46)
    );
\douta[56]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(10),
      O => douta(47)
    );
\douta[57]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(11),
      O => douta(48)
    );
\douta[58]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(12),
      O => douta(49)
    );
\douta[59]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(13),
      O => douta(50)
    );
\douta[60]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(14),
      O => douta(51)
    );
\douta[61]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(15),
      O => douta(52)
    );
\douta[62]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[80]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[80]_0\(1),
      O => douta(53)
    );
\douta[63]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(16),
      O => douta(54)
    );
\douta[64]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(17),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(17),
      O => douta(55)
    );
\douta[65]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(18),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(18),
      O => douta(56)
    );
\douta[66]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(19),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(19),
      O => douta(57)
    );
\douta[67]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(20),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(20),
      O => douta(58)
    );
\douta[68]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(21),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(21),
      O => douta(59)
    );
\douta[69]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(22),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(22),
      O => douta(60)
    );
\douta[70]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(23),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(23),
      O => douta(61)
    );
\douta[71]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[80]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[80]_0\(2),
      O => douta(62)
    );
\douta[72]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(24),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(24),
      O => douta(63)
    );
\douta[73]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(25),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(25),
      O => douta(64)
    );
\douta[74]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(26),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(26),
      O => douta(65)
    );
\douta[75]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(27),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(27),
      O => douta(66)
    );
\douta[76]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(28),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(28),
      O => douta(67)
    );
\douta[77]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(29),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(29),
      O => douta(68)
    );
\douta[78]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(30),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(30),
      O => douta(69)
    );
\douta[79]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[79]\(31),
      I2 => sel_pipe(1),
      I3 => \douta[79]_0\(31),
      O => douta(70)
    );
\douta[80]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[80]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[80]_0\(3),
      O => douta(71)
    );
\douta[81]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(0),
      O => douta(72)
    );
\douta[82]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(1),
      O => douta(73)
    );
\douta[83]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(2),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(2),
      O => douta(74)
    );
\douta[84]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(3),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(3),
      O => douta(75)
    );
\douta[85]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(4),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(4),
      O => douta(76)
    );
\douta[86]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(5),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(5),
      O => douta(77)
    );
\douta[87]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(6),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(6),
      O => douta(78)
    );
\douta[88]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(7),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(7),
      O => douta(79)
    );
\douta[89]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[116]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[116]_0\(0),
      O => douta(80)
    );
\douta[90]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(8),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(8),
      O => douta(81)
    );
\douta[91]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(9),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(9),
      O => douta(82)
    );
\douta[92]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(10),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(10),
      O => douta(83)
    );
\douta[93]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(11),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(11),
      O => douta(84)
    );
\douta[94]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(12),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(12),
      O => douta(85)
    );
\douta[95]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(13),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(13),
      O => douta(86)
    );
\douta[96]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(14),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(14),
      O => douta(87)
    );
\douta[97]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(15),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(15),
      O => douta(88)
    );
\douta[98]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[116]\(1),
      I2 => sel_pipe(1),
      I3 => \douta[116]_0\(1),
      O => douta(89)
    );
\douta[99]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[115]\(16),
      I2 => sel_pipe(1),
      I3 => \douta[115]_0\(16),
      O => douta(90)
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => sel_pipe(0),
      I1 => \douta[43]\(0),
      I2 => sel_pipe(1),
      I3 => \douta[43]_0\(0),
      O => douta(0)
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addra(0),
      I1 => ena,
      I2 => sel_pipe(0),
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addra(1),
      I1 => ena,
      I2 => sel_pipe(1),
      O => \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0\,
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0\,
      Q => sel_pipe(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end weights_buffer_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of weights_buffer_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000003",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000004000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1),
      DOPADOP(0) => douta(8),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000011",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000005488D0205080C000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00000000000000000000000000000000000000000000000000000000000000B9",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000064C6890B24468809",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000077",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000000000000000000960CD9329204C912",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000031",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000006DD8AD532D58AC51",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000099",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000000000000000000272E1BB723260B97",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00000000000000000000000000000000000000000000000000000000000000B9",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000076EAD19B366AD099",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ena_0 : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal \^ena_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  ena_0 <= \^ena_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00000000000000000000000000000000000000000000000000000000000000CC",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000000000000000000B74F5E3BB3474E1B",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \^ena_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena,
      I1 => addra(10),
      O => \^ena_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_n_72\,
      DOPBDOP(2 downto 0) => DOPBDOP(2 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000020",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000049901D3209101C30",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000031",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000007FFCF5E33F7CF4E1",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68\,
      DOPADOP(2 downto 0) => DOPADOP(2 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000077",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000000000000000000000000000000000000000000000000E4A912A5E0A10285",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00000000000000000000000000000000000000000000000000000000000000A8",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000052A2417A12224078",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"00000000000000000000000000000000000000000000000000000000000000AA",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000075CA552971C24509",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => addra(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"011111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => addra(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      DOPBDOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => ena_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000020",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000005BB465C21B3464C0",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000066",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000000000000000000000000000000000005EB97AE01E3878E",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => addra(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end weights_buffer_blk_mem_gen_prim_width;

architecture STRUCTURE of weights_buffer_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.weights_buffer_blk_mem_gen_prim_wrapper_init
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(8 downto 0) => douta(8 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized13\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized14\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized15\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized16\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized17\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized18\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ena_0 : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      ena => ena,
      ena_0 => ena_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized19\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized19\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3 downto 0),
      DOBDO(31 downto 0) => DOBDO(31 downto 0),
      DOPBDOP(2 downto 0) => DOPBDOP(2 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized20\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized20\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\,
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOPADOP(2 downto 0) => DOPADOP(2 downto 0),
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_3\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3 downto 0),
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \weights_buffer_blk_mem_gen_prim_width__parameterized9\ is
  port (
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \weights_buffer_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \weights_buffer_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \weights_buffer_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\weights_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(31 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end weights_buffer_blk_mem_gen_generic_cstr;

architecture STRUCTURE of weights_buffer_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \ramloop[10].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_36\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_37\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_38\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_39\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_40\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_41\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_42\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_43\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_44\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_45\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_46\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_47\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_48\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_49\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_50\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_51\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_52\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_53\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_54\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_55\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_56\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_57\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_58\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_59\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_60\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_61\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_62\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_63\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_64\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_65\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_66\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_67\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_68\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_69\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_70\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_71\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_20\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_21\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_22\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_23\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_24\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_25\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_26\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_27\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_28\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_29\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_30\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_31\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_32\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_33\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_34\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_35\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_9\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.weights_buffer_bindec
     port map (
      addra(1 downto 0) => addra(10 downto 9),
      ena => ena,
      ena_array(0) => ena_array(2)
    );
\has_mux_a.A\: entity work.weights_buffer_blk_mem_gen_mux
     port map (
      DOADO(31) => \ramloop[21].ram.r_n_0\,
      DOADO(30) => \ramloop[21].ram.r_n_1\,
      DOADO(29) => \ramloop[21].ram.r_n_2\,
      DOADO(28) => \ramloop[21].ram.r_n_3\,
      DOADO(27) => \ramloop[21].ram.r_n_4\,
      DOADO(26) => \ramloop[21].ram.r_n_5\,
      DOADO(25) => \ramloop[21].ram.r_n_6\,
      DOADO(24) => \ramloop[21].ram.r_n_7\,
      DOADO(23) => \ramloop[21].ram.r_n_8\,
      DOADO(22) => \ramloop[21].ram.r_n_9\,
      DOADO(21) => \ramloop[21].ram.r_n_10\,
      DOADO(20) => \ramloop[21].ram.r_n_11\,
      DOADO(19) => \ramloop[21].ram.r_n_12\,
      DOADO(18) => \ramloop[21].ram.r_n_13\,
      DOADO(17) => \ramloop[21].ram.r_n_14\,
      DOADO(16) => \ramloop[21].ram.r_n_15\,
      DOADO(15) => \ramloop[21].ram.r_n_16\,
      DOADO(14) => \ramloop[21].ram.r_n_17\,
      DOADO(13) => \ramloop[21].ram.r_n_18\,
      DOADO(12) => \ramloop[21].ram.r_n_19\,
      DOADO(11) => \ramloop[21].ram.r_n_20\,
      DOADO(10) => \ramloop[21].ram.r_n_21\,
      DOADO(9) => \ramloop[21].ram.r_n_22\,
      DOADO(8) => \ramloop[21].ram.r_n_23\,
      DOADO(7) => \ramloop[21].ram.r_n_24\,
      DOADO(6) => \ramloop[21].ram.r_n_25\,
      DOADO(5) => \ramloop[21].ram.r_n_26\,
      DOADO(4) => \ramloop[21].ram.r_n_27\,
      DOADO(3) => \ramloop[21].ram.r_n_28\,
      DOADO(2) => \ramloop[21].ram.r_n_29\,
      DOADO(1) => \ramloop[21].ram.r_n_30\,
      DOADO(0) => \ramloop[21].ram.r_n_31\,
      DOBDO(31) => \ramloop[20].ram.r_n_32\,
      DOBDO(30) => \ramloop[20].ram.r_n_33\,
      DOBDO(29) => \ramloop[20].ram.r_n_34\,
      DOBDO(28) => \ramloop[20].ram.r_n_35\,
      DOBDO(27) => \ramloop[20].ram.r_n_36\,
      DOBDO(26) => \ramloop[20].ram.r_n_37\,
      DOBDO(25) => \ramloop[20].ram.r_n_38\,
      DOBDO(24) => \ramloop[20].ram.r_n_39\,
      DOBDO(23) => \ramloop[20].ram.r_n_40\,
      DOBDO(22) => \ramloop[20].ram.r_n_41\,
      DOBDO(21) => \ramloop[20].ram.r_n_42\,
      DOBDO(20) => \ramloop[20].ram.r_n_43\,
      DOBDO(19) => \ramloop[20].ram.r_n_44\,
      DOBDO(18) => \ramloop[20].ram.r_n_45\,
      DOBDO(17) => \ramloop[20].ram.r_n_46\,
      DOBDO(16) => \ramloop[20].ram.r_n_47\,
      DOBDO(15) => \ramloop[20].ram.r_n_48\,
      DOBDO(14) => \ramloop[20].ram.r_n_49\,
      DOBDO(13) => \ramloop[20].ram.r_n_50\,
      DOBDO(12) => \ramloop[20].ram.r_n_51\,
      DOBDO(11) => \ramloop[20].ram.r_n_52\,
      DOBDO(10) => \ramloop[20].ram.r_n_53\,
      DOBDO(9) => \ramloop[20].ram.r_n_54\,
      DOBDO(8) => \ramloop[20].ram.r_n_55\,
      DOBDO(7) => \ramloop[20].ram.r_n_56\,
      DOBDO(6) => \ramloop[20].ram.r_n_57\,
      DOBDO(5) => \ramloop[20].ram.r_n_58\,
      DOBDO(4) => \ramloop[20].ram.r_n_59\,
      DOBDO(3) => \ramloop[20].ram.r_n_60\,
      DOBDO(2) => \ramloop[20].ram.r_n_61\,
      DOBDO(1) => \ramloop[20].ram.r_n_62\,
      DOBDO(0) => \ramloop[20].ram.r_n_63\,
      DOPADOP(2) => \ramloop[21].ram.r_n_32\,
      DOPADOP(1) => \ramloop[21].ram.r_n_33\,
      DOPADOP(0) => \ramloop[21].ram.r_n_34\,
      DOPBDOP(2) => \ramloop[20].ram.r_n_68\,
      DOPBDOP(1) => \ramloop[20].ram.r_n_69\,
      DOPBDOP(0) => \ramloop[20].ram.r_n_70\,
      addra(1 downto 0) => addra(10 downto 9),
      clka => clka,
      douta(502 downto 0) => douta(511 downto 9),
      \douta[115]\(31) => \ramloop[5].ram.r_n_0\,
      \douta[115]\(30) => \ramloop[5].ram.r_n_1\,
      \douta[115]\(29) => \ramloop[5].ram.r_n_2\,
      \douta[115]\(28) => \ramloop[5].ram.r_n_3\,
      \douta[115]\(27) => \ramloop[5].ram.r_n_4\,
      \douta[115]\(26) => \ramloop[5].ram.r_n_5\,
      \douta[115]\(25) => \ramloop[5].ram.r_n_6\,
      \douta[115]\(24) => \ramloop[5].ram.r_n_7\,
      \douta[115]\(23) => \ramloop[5].ram.r_n_8\,
      \douta[115]\(22) => \ramloop[5].ram.r_n_9\,
      \douta[115]\(21) => \ramloop[5].ram.r_n_10\,
      \douta[115]\(20) => \ramloop[5].ram.r_n_11\,
      \douta[115]\(19) => \ramloop[5].ram.r_n_12\,
      \douta[115]\(18) => \ramloop[5].ram.r_n_13\,
      \douta[115]\(17) => \ramloop[5].ram.r_n_14\,
      \douta[115]\(16) => \ramloop[5].ram.r_n_15\,
      \douta[115]\(15) => \ramloop[5].ram.r_n_16\,
      \douta[115]\(14) => \ramloop[5].ram.r_n_17\,
      \douta[115]\(13) => \ramloop[5].ram.r_n_18\,
      \douta[115]\(12) => \ramloop[5].ram.r_n_19\,
      \douta[115]\(11) => \ramloop[5].ram.r_n_20\,
      \douta[115]\(10) => \ramloop[5].ram.r_n_21\,
      \douta[115]\(9) => \ramloop[5].ram.r_n_22\,
      \douta[115]\(8) => \ramloop[5].ram.r_n_23\,
      \douta[115]\(7) => \ramloop[5].ram.r_n_24\,
      \douta[115]\(6) => \ramloop[5].ram.r_n_25\,
      \douta[115]\(5) => \ramloop[5].ram.r_n_26\,
      \douta[115]\(4) => \ramloop[5].ram.r_n_27\,
      \douta[115]\(3) => \ramloop[5].ram.r_n_28\,
      \douta[115]\(2) => \ramloop[5].ram.r_n_29\,
      \douta[115]\(1) => \ramloop[5].ram.r_n_30\,
      \douta[115]\(0) => \ramloop[5].ram.r_n_31\,
      \douta[115]_0\(31) => \ramloop[4].ram.r_n_0\,
      \douta[115]_0\(30) => \ramloop[4].ram.r_n_1\,
      \douta[115]_0\(29) => \ramloop[4].ram.r_n_2\,
      \douta[115]_0\(28) => \ramloop[4].ram.r_n_3\,
      \douta[115]_0\(27) => \ramloop[4].ram.r_n_4\,
      \douta[115]_0\(26) => \ramloop[4].ram.r_n_5\,
      \douta[115]_0\(25) => \ramloop[4].ram.r_n_6\,
      \douta[115]_0\(24) => \ramloop[4].ram.r_n_7\,
      \douta[115]_0\(23) => \ramloop[4].ram.r_n_8\,
      \douta[115]_0\(22) => \ramloop[4].ram.r_n_9\,
      \douta[115]_0\(21) => \ramloop[4].ram.r_n_10\,
      \douta[115]_0\(20) => \ramloop[4].ram.r_n_11\,
      \douta[115]_0\(19) => \ramloop[4].ram.r_n_12\,
      \douta[115]_0\(18) => \ramloop[4].ram.r_n_13\,
      \douta[115]_0\(17) => \ramloop[4].ram.r_n_14\,
      \douta[115]_0\(16) => \ramloop[4].ram.r_n_15\,
      \douta[115]_0\(15) => \ramloop[4].ram.r_n_16\,
      \douta[115]_0\(14) => \ramloop[4].ram.r_n_17\,
      \douta[115]_0\(13) => \ramloop[4].ram.r_n_18\,
      \douta[115]_0\(12) => \ramloop[4].ram.r_n_19\,
      \douta[115]_0\(11) => \ramloop[4].ram.r_n_20\,
      \douta[115]_0\(10) => \ramloop[4].ram.r_n_21\,
      \douta[115]_0\(9) => \ramloop[4].ram.r_n_22\,
      \douta[115]_0\(8) => \ramloop[4].ram.r_n_23\,
      \douta[115]_0\(7) => \ramloop[4].ram.r_n_24\,
      \douta[115]_0\(6) => \ramloop[4].ram.r_n_25\,
      \douta[115]_0\(5) => \ramloop[4].ram.r_n_26\,
      \douta[115]_0\(4) => \ramloop[4].ram.r_n_27\,
      \douta[115]_0\(3) => \ramloop[4].ram.r_n_28\,
      \douta[115]_0\(2) => \ramloop[4].ram.r_n_29\,
      \douta[115]_0\(1) => \ramloop[4].ram.r_n_30\,
      \douta[115]_0\(0) => \ramloop[4].ram.r_n_31\,
      \douta[116]\(3) => \ramloop[5].ram.r_n_64\,
      \douta[116]\(2) => \ramloop[5].ram.r_n_65\,
      \douta[116]\(1) => \ramloop[5].ram.r_n_66\,
      \douta[116]\(0) => \ramloop[5].ram.r_n_67\,
      \douta[116]_0\(3) => \ramloop[4].ram.r_n_32\,
      \douta[116]_0\(2) => \ramloop[4].ram.r_n_33\,
      \douta[116]_0\(1) => \ramloop[4].ram.r_n_34\,
      \douta[116]_0\(0) => \ramloop[4].ram.r_n_35\,
      \douta[151]\(31) => \ramloop[5].ram.r_n_32\,
      \douta[151]\(30) => \ramloop[5].ram.r_n_33\,
      \douta[151]\(29) => \ramloop[5].ram.r_n_34\,
      \douta[151]\(28) => \ramloop[5].ram.r_n_35\,
      \douta[151]\(27) => \ramloop[5].ram.r_n_36\,
      \douta[151]\(26) => \ramloop[5].ram.r_n_37\,
      \douta[151]\(25) => \ramloop[5].ram.r_n_38\,
      \douta[151]\(24) => \ramloop[5].ram.r_n_39\,
      \douta[151]\(23) => \ramloop[5].ram.r_n_40\,
      \douta[151]\(22) => \ramloop[5].ram.r_n_41\,
      \douta[151]\(21) => \ramloop[5].ram.r_n_42\,
      \douta[151]\(20) => \ramloop[5].ram.r_n_43\,
      \douta[151]\(19) => \ramloop[5].ram.r_n_44\,
      \douta[151]\(18) => \ramloop[5].ram.r_n_45\,
      \douta[151]\(17) => \ramloop[5].ram.r_n_46\,
      \douta[151]\(16) => \ramloop[5].ram.r_n_47\,
      \douta[151]\(15) => \ramloop[5].ram.r_n_48\,
      \douta[151]\(14) => \ramloop[5].ram.r_n_49\,
      \douta[151]\(13) => \ramloop[5].ram.r_n_50\,
      \douta[151]\(12) => \ramloop[5].ram.r_n_51\,
      \douta[151]\(11) => \ramloop[5].ram.r_n_52\,
      \douta[151]\(10) => \ramloop[5].ram.r_n_53\,
      \douta[151]\(9) => \ramloop[5].ram.r_n_54\,
      \douta[151]\(8) => \ramloop[5].ram.r_n_55\,
      \douta[151]\(7) => \ramloop[5].ram.r_n_56\,
      \douta[151]\(6) => \ramloop[5].ram.r_n_57\,
      \douta[151]\(5) => \ramloop[5].ram.r_n_58\,
      \douta[151]\(4) => \ramloop[5].ram.r_n_59\,
      \douta[151]\(3) => \ramloop[5].ram.r_n_60\,
      \douta[151]\(2) => \ramloop[5].ram.r_n_61\,
      \douta[151]\(1) => \ramloop[5].ram.r_n_62\,
      \douta[151]\(0) => \ramloop[5].ram.r_n_63\,
      \douta[151]_0\(31) => \ramloop[6].ram.r_n_0\,
      \douta[151]_0\(30) => \ramloop[6].ram.r_n_1\,
      \douta[151]_0\(29) => \ramloop[6].ram.r_n_2\,
      \douta[151]_0\(28) => \ramloop[6].ram.r_n_3\,
      \douta[151]_0\(27) => \ramloop[6].ram.r_n_4\,
      \douta[151]_0\(26) => \ramloop[6].ram.r_n_5\,
      \douta[151]_0\(25) => \ramloop[6].ram.r_n_6\,
      \douta[151]_0\(24) => \ramloop[6].ram.r_n_7\,
      \douta[151]_0\(23) => \ramloop[6].ram.r_n_8\,
      \douta[151]_0\(22) => \ramloop[6].ram.r_n_9\,
      \douta[151]_0\(21) => \ramloop[6].ram.r_n_10\,
      \douta[151]_0\(20) => \ramloop[6].ram.r_n_11\,
      \douta[151]_0\(19) => \ramloop[6].ram.r_n_12\,
      \douta[151]_0\(18) => \ramloop[6].ram.r_n_13\,
      \douta[151]_0\(17) => \ramloop[6].ram.r_n_14\,
      \douta[151]_0\(16) => \ramloop[6].ram.r_n_15\,
      \douta[151]_0\(15) => \ramloop[6].ram.r_n_16\,
      \douta[151]_0\(14) => \ramloop[6].ram.r_n_17\,
      \douta[151]_0\(13) => \ramloop[6].ram.r_n_18\,
      \douta[151]_0\(12) => \ramloop[6].ram.r_n_19\,
      \douta[151]_0\(11) => \ramloop[6].ram.r_n_20\,
      \douta[151]_0\(10) => \ramloop[6].ram.r_n_21\,
      \douta[151]_0\(9) => \ramloop[6].ram.r_n_22\,
      \douta[151]_0\(8) => \ramloop[6].ram.r_n_23\,
      \douta[151]_0\(7) => \ramloop[6].ram.r_n_24\,
      \douta[151]_0\(6) => \ramloop[6].ram.r_n_25\,
      \douta[151]_0\(5) => \ramloop[6].ram.r_n_26\,
      \douta[151]_0\(4) => \ramloop[6].ram.r_n_27\,
      \douta[151]_0\(3) => \ramloop[6].ram.r_n_28\,
      \douta[151]_0\(2) => \ramloop[6].ram.r_n_29\,
      \douta[151]_0\(1) => \ramloop[6].ram.r_n_30\,
      \douta[151]_0\(0) => \ramloop[6].ram.r_n_31\,
      \douta[152]\(3) => \ramloop[5].ram.r_n_68\,
      \douta[152]\(2) => \ramloop[5].ram.r_n_69\,
      \douta[152]\(1) => \ramloop[5].ram.r_n_70\,
      \douta[152]\(0) => \ramloop[5].ram.r_n_71\,
      \douta[152]_0\(3) => \ramloop[6].ram.r_n_32\,
      \douta[152]_0\(2) => \ramloop[6].ram.r_n_33\,
      \douta[152]_0\(1) => \ramloop[6].ram.r_n_34\,
      \douta[152]_0\(0) => \ramloop[6].ram.r_n_35\,
      \douta[187]\(31) => \ramloop[8].ram.r_n_0\,
      \douta[187]\(30) => \ramloop[8].ram.r_n_1\,
      \douta[187]\(29) => \ramloop[8].ram.r_n_2\,
      \douta[187]\(28) => \ramloop[8].ram.r_n_3\,
      \douta[187]\(27) => \ramloop[8].ram.r_n_4\,
      \douta[187]\(26) => \ramloop[8].ram.r_n_5\,
      \douta[187]\(25) => \ramloop[8].ram.r_n_6\,
      \douta[187]\(24) => \ramloop[8].ram.r_n_7\,
      \douta[187]\(23) => \ramloop[8].ram.r_n_8\,
      \douta[187]\(22) => \ramloop[8].ram.r_n_9\,
      \douta[187]\(21) => \ramloop[8].ram.r_n_10\,
      \douta[187]\(20) => \ramloop[8].ram.r_n_11\,
      \douta[187]\(19) => \ramloop[8].ram.r_n_12\,
      \douta[187]\(18) => \ramloop[8].ram.r_n_13\,
      \douta[187]\(17) => \ramloop[8].ram.r_n_14\,
      \douta[187]\(16) => \ramloop[8].ram.r_n_15\,
      \douta[187]\(15) => \ramloop[8].ram.r_n_16\,
      \douta[187]\(14) => \ramloop[8].ram.r_n_17\,
      \douta[187]\(13) => \ramloop[8].ram.r_n_18\,
      \douta[187]\(12) => \ramloop[8].ram.r_n_19\,
      \douta[187]\(11) => \ramloop[8].ram.r_n_20\,
      \douta[187]\(10) => \ramloop[8].ram.r_n_21\,
      \douta[187]\(9) => \ramloop[8].ram.r_n_22\,
      \douta[187]\(8) => \ramloop[8].ram.r_n_23\,
      \douta[187]\(7) => \ramloop[8].ram.r_n_24\,
      \douta[187]\(6) => \ramloop[8].ram.r_n_25\,
      \douta[187]\(5) => \ramloop[8].ram.r_n_26\,
      \douta[187]\(4) => \ramloop[8].ram.r_n_27\,
      \douta[187]\(3) => \ramloop[8].ram.r_n_28\,
      \douta[187]\(2) => \ramloop[8].ram.r_n_29\,
      \douta[187]\(1) => \ramloop[8].ram.r_n_30\,
      \douta[187]\(0) => \ramloop[8].ram.r_n_31\,
      \douta[187]_0\(31) => \ramloop[7].ram.r_n_0\,
      \douta[187]_0\(30) => \ramloop[7].ram.r_n_1\,
      \douta[187]_0\(29) => \ramloop[7].ram.r_n_2\,
      \douta[187]_0\(28) => \ramloop[7].ram.r_n_3\,
      \douta[187]_0\(27) => \ramloop[7].ram.r_n_4\,
      \douta[187]_0\(26) => \ramloop[7].ram.r_n_5\,
      \douta[187]_0\(25) => \ramloop[7].ram.r_n_6\,
      \douta[187]_0\(24) => \ramloop[7].ram.r_n_7\,
      \douta[187]_0\(23) => \ramloop[7].ram.r_n_8\,
      \douta[187]_0\(22) => \ramloop[7].ram.r_n_9\,
      \douta[187]_0\(21) => \ramloop[7].ram.r_n_10\,
      \douta[187]_0\(20) => \ramloop[7].ram.r_n_11\,
      \douta[187]_0\(19) => \ramloop[7].ram.r_n_12\,
      \douta[187]_0\(18) => \ramloop[7].ram.r_n_13\,
      \douta[187]_0\(17) => \ramloop[7].ram.r_n_14\,
      \douta[187]_0\(16) => \ramloop[7].ram.r_n_15\,
      \douta[187]_0\(15) => \ramloop[7].ram.r_n_16\,
      \douta[187]_0\(14) => \ramloop[7].ram.r_n_17\,
      \douta[187]_0\(13) => \ramloop[7].ram.r_n_18\,
      \douta[187]_0\(12) => \ramloop[7].ram.r_n_19\,
      \douta[187]_0\(11) => \ramloop[7].ram.r_n_20\,
      \douta[187]_0\(10) => \ramloop[7].ram.r_n_21\,
      \douta[187]_0\(9) => \ramloop[7].ram.r_n_22\,
      \douta[187]_0\(8) => \ramloop[7].ram.r_n_23\,
      \douta[187]_0\(7) => \ramloop[7].ram.r_n_24\,
      \douta[187]_0\(6) => \ramloop[7].ram.r_n_25\,
      \douta[187]_0\(5) => \ramloop[7].ram.r_n_26\,
      \douta[187]_0\(4) => \ramloop[7].ram.r_n_27\,
      \douta[187]_0\(3) => \ramloop[7].ram.r_n_28\,
      \douta[187]_0\(2) => \ramloop[7].ram.r_n_29\,
      \douta[187]_0\(1) => \ramloop[7].ram.r_n_30\,
      \douta[187]_0\(0) => \ramloop[7].ram.r_n_31\,
      \douta[188]\(3) => \ramloop[8].ram.r_n_64\,
      \douta[188]\(2) => \ramloop[8].ram.r_n_65\,
      \douta[188]\(1) => \ramloop[8].ram.r_n_66\,
      \douta[188]\(0) => \ramloop[8].ram.r_n_67\,
      \douta[188]_0\(3) => \ramloop[7].ram.r_n_32\,
      \douta[188]_0\(2) => \ramloop[7].ram.r_n_33\,
      \douta[188]_0\(1) => \ramloop[7].ram.r_n_34\,
      \douta[188]_0\(0) => \ramloop[7].ram.r_n_35\,
      \douta[223]\(31) => \ramloop[8].ram.r_n_32\,
      \douta[223]\(30) => \ramloop[8].ram.r_n_33\,
      \douta[223]\(29) => \ramloop[8].ram.r_n_34\,
      \douta[223]\(28) => \ramloop[8].ram.r_n_35\,
      \douta[223]\(27) => \ramloop[8].ram.r_n_36\,
      \douta[223]\(26) => \ramloop[8].ram.r_n_37\,
      \douta[223]\(25) => \ramloop[8].ram.r_n_38\,
      \douta[223]\(24) => \ramloop[8].ram.r_n_39\,
      \douta[223]\(23) => \ramloop[8].ram.r_n_40\,
      \douta[223]\(22) => \ramloop[8].ram.r_n_41\,
      \douta[223]\(21) => \ramloop[8].ram.r_n_42\,
      \douta[223]\(20) => \ramloop[8].ram.r_n_43\,
      \douta[223]\(19) => \ramloop[8].ram.r_n_44\,
      \douta[223]\(18) => \ramloop[8].ram.r_n_45\,
      \douta[223]\(17) => \ramloop[8].ram.r_n_46\,
      \douta[223]\(16) => \ramloop[8].ram.r_n_47\,
      \douta[223]\(15) => \ramloop[8].ram.r_n_48\,
      \douta[223]\(14) => \ramloop[8].ram.r_n_49\,
      \douta[223]\(13) => \ramloop[8].ram.r_n_50\,
      \douta[223]\(12) => \ramloop[8].ram.r_n_51\,
      \douta[223]\(11) => \ramloop[8].ram.r_n_52\,
      \douta[223]\(10) => \ramloop[8].ram.r_n_53\,
      \douta[223]\(9) => \ramloop[8].ram.r_n_54\,
      \douta[223]\(8) => \ramloop[8].ram.r_n_55\,
      \douta[223]\(7) => \ramloop[8].ram.r_n_56\,
      \douta[223]\(6) => \ramloop[8].ram.r_n_57\,
      \douta[223]\(5) => \ramloop[8].ram.r_n_58\,
      \douta[223]\(4) => \ramloop[8].ram.r_n_59\,
      \douta[223]\(3) => \ramloop[8].ram.r_n_60\,
      \douta[223]\(2) => \ramloop[8].ram.r_n_61\,
      \douta[223]\(1) => \ramloop[8].ram.r_n_62\,
      \douta[223]\(0) => \ramloop[8].ram.r_n_63\,
      \douta[223]_0\(31) => \ramloop[9].ram.r_n_0\,
      \douta[223]_0\(30) => \ramloop[9].ram.r_n_1\,
      \douta[223]_0\(29) => \ramloop[9].ram.r_n_2\,
      \douta[223]_0\(28) => \ramloop[9].ram.r_n_3\,
      \douta[223]_0\(27) => \ramloop[9].ram.r_n_4\,
      \douta[223]_0\(26) => \ramloop[9].ram.r_n_5\,
      \douta[223]_0\(25) => \ramloop[9].ram.r_n_6\,
      \douta[223]_0\(24) => \ramloop[9].ram.r_n_7\,
      \douta[223]_0\(23) => \ramloop[9].ram.r_n_8\,
      \douta[223]_0\(22) => \ramloop[9].ram.r_n_9\,
      \douta[223]_0\(21) => \ramloop[9].ram.r_n_10\,
      \douta[223]_0\(20) => \ramloop[9].ram.r_n_11\,
      \douta[223]_0\(19) => \ramloop[9].ram.r_n_12\,
      \douta[223]_0\(18) => \ramloop[9].ram.r_n_13\,
      \douta[223]_0\(17) => \ramloop[9].ram.r_n_14\,
      \douta[223]_0\(16) => \ramloop[9].ram.r_n_15\,
      \douta[223]_0\(15) => \ramloop[9].ram.r_n_16\,
      \douta[223]_0\(14) => \ramloop[9].ram.r_n_17\,
      \douta[223]_0\(13) => \ramloop[9].ram.r_n_18\,
      \douta[223]_0\(12) => \ramloop[9].ram.r_n_19\,
      \douta[223]_0\(11) => \ramloop[9].ram.r_n_20\,
      \douta[223]_0\(10) => \ramloop[9].ram.r_n_21\,
      \douta[223]_0\(9) => \ramloop[9].ram.r_n_22\,
      \douta[223]_0\(8) => \ramloop[9].ram.r_n_23\,
      \douta[223]_0\(7) => \ramloop[9].ram.r_n_24\,
      \douta[223]_0\(6) => \ramloop[9].ram.r_n_25\,
      \douta[223]_0\(5) => \ramloop[9].ram.r_n_26\,
      \douta[223]_0\(4) => \ramloop[9].ram.r_n_27\,
      \douta[223]_0\(3) => \ramloop[9].ram.r_n_28\,
      \douta[223]_0\(2) => \ramloop[9].ram.r_n_29\,
      \douta[223]_0\(1) => \ramloop[9].ram.r_n_30\,
      \douta[223]_0\(0) => \ramloop[9].ram.r_n_31\,
      \douta[224]\(3) => \ramloop[8].ram.r_n_68\,
      \douta[224]\(2) => \ramloop[8].ram.r_n_69\,
      \douta[224]\(1) => \ramloop[8].ram.r_n_70\,
      \douta[224]\(0) => \ramloop[8].ram.r_n_71\,
      \douta[224]_0\(3) => \ramloop[9].ram.r_n_32\,
      \douta[224]_0\(2) => \ramloop[9].ram.r_n_33\,
      \douta[224]_0\(1) => \ramloop[9].ram.r_n_34\,
      \douta[224]_0\(0) => \ramloop[9].ram.r_n_35\,
      \douta[259]\(31) => \ramloop[11].ram.r_n_0\,
      \douta[259]\(30) => \ramloop[11].ram.r_n_1\,
      \douta[259]\(29) => \ramloop[11].ram.r_n_2\,
      \douta[259]\(28) => \ramloop[11].ram.r_n_3\,
      \douta[259]\(27) => \ramloop[11].ram.r_n_4\,
      \douta[259]\(26) => \ramloop[11].ram.r_n_5\,
      \douta[259]\(25) => \ramloop[11].ram.r_n_6\,
      \douta[259]\(24) => \ramloop[11].ram.r_n_7\,
      \douta[259]\(23) => \ramloop[11].ram.r_n_8\,
      \douta[259]\(22) => \ramloop[11].ram.r_n_9\,
      \douta[259]\(21) => \ramloop[11].ram.r_n_10\,
      \douta[259]\(20) => \ramloop[11].ram.r_n_11\,
      \douta[259]\(19) => \ramloop[11].ram.r_n_12\,
      \douta[259]\(18) => \ramloop[11].ram.r_n_13\,
      \douta[259]\(17) => \ramloop[11].ram.r_n_14\,
      \douta[259]\(16) => \ramloop[11].ram.r_n_15\,
      \douta[259]\(15) => \ramloop[11].ram.r_n_16\,
      \douta[259]\(14) => \ramloop[11].ram.r_n_17\,
      \douta[259]\(13) => \ramloop[11].ram.r_n_18\,
      \douta[259]\(12) => \ramloop[11].ram.r_n_19\,
      \douta[259]\(11) => \ramloop[11].ram.r_n_20\,
      \douta[259]\(10) => \ramloop[11].ram.r_n_21\,
      \douta[259]\(9) => \ramloop[11].ram.r_n_22\,
      \douta[259]\(8) => \ramloop[11].ram.r_n_23\,
      \douta[259]\(7) => \ramloop[11].ram.r_n_24\,
      \douta[259]\(6) => \ramloop[11].ram.r_n_25\,
      \douta[259]\(5) => \ramloop[11].ram.r_n_26\,
      \douta[259]\(4) => \ramloop[11].ram.r_n_27\,
      \douta[259]\(3) => \ramloop[11].ram.r_n_28\,
      \douta[259]\(2) => \ramloop[11].ram.r_n_29\,
      \douta[259]\(1) => \ramloop[11].ram.r_n_30\,
      \douta[259]\(0) => \ramloop[11].ram.r_n_31\,
      \douta[259]_0\(31) => \ramloop[10].ram.r_n_0\,
      \douta[259]_0\(30) => \ramloop[10].ram.r_n_1\,
      \douta[259]_0\(29) => \ramloop[10].ram.r_n_2\,
      \douta[259]_0\(28) => \ramloop[10].ram.r_n_3\,
      \douta[259]_0\(27) => \ramloop[10].ram.r_n_4\,
      \douta[259]_0\(26) => \ramloop[10].ram.r_n_5\,
      \douta[259]_0\(25) => \ramloop[10].ram.r_n_6\,
      \douta[259]_0\(24) => \ramloop[10].ram.r_n_7\,
      \douta[259]_0\(23) => \ramloop[10].ram.r_n_8\,
      \douta[259]_0\(22) => \ramloop[10].ram.r_n_9\,
      \douta[259]_0\(21) => \ramloop[10].ram.r_n_10\,
      \douta[259]_0\(20) => \ramloop[10].ram.r_n_11\,
      \douta[259]_0\(19) => \ramloop[10].ram.r_n_12\,
      \douta[259]_0\(18) => \ramloop[10].ram.r_n_13\,
      \douta[259]_0\(17) => \ramloop[10].ram.r_n_14\,
      \douta[259]_0\(16) => \ramloop[10].ram.r_n_15\,
      \douta[259]_0\(15) => \ramloop[10].ram.r_n_16\,
      \douta[259]_0\(14) => \ramloop[10].ram.r_n_17\,
      \douta[259]_0\(13) => \ramloop[10].ram.r_n_18\,
      \douta[259]_0\(12) => \ramloop[10].ram.r_n_19\,
      \douta[259]_0\(11) => \ramloop[10].ram.r_n_20\,
      \douta[259]_0\(10) => \ramloop[10].ram.r_n_21\,
      \douta[259]_0\(9) => \ramloop[10].ram.r_n_22\,
      \douta[259]_0\(8) => \ramloop[10].ram.r_n_23\,
      \douta[259]_0\(7) => \ramloop[10].ram.r_n_24\,
      \douta[259]_0\(6) => \ramloop[10].ram.r_n_25\,
      \douta[259]_0\(5) => \ramloop[10].ram.r_n_26\,
      \douta[259]_0\(4) => \ramloop[10].ram.r_n_27\,
      \douta[259]_0\(3) => \ramloop[10].ram.r_n_28\,
      \douta[259]_0\(2) => \ramloop[10].ram.r_n_29\,
      \douta[259]_0\(1) => \ramloop[10].ram.r_n_30\,
      \douta[259]_0\(0) => \ramloop[10].ram.r_n_31\,
      \douta[260]\(3) => \ramloop[11].ram.r_n_64\,
      \douta[260]\(2) => \ramloop[11].ram.r_n_65\,
      \douta[260]\(1) => \ramloop[11].ram.r_n_66\,
      \douta[260]\(0) => \ramloop[11].ram.r_n_67\,
      \douta[260]_0\(3) => \ramloop[10].ram.r_n_32\,
      \douta[260]_0\(2) => \ramloop[10].ram.r_n_33\,
      \douta[260]_0\(1) => \ramloop[10].ram.r_n_34\,
      \douta[260]_0\(0) => \ramloop[10].ram.r_n_35\,
      \douta[295]\(31) => \ramloop[11].ram.r_n_32\,
      \douta[295]\(30) => \ramloop[11].ram.r_n_33\,
      \douta[295]\(29) => \ramloop[11].ram.r_n_34\,
      \douta[295]\(28) => \ramloop[11].ram.r_n_35\,
      \douta[295]\(27) => \ramloop[11].ram.r_n_36\,
      \douta[295]\(26) => \ramloop[11].ram.r_n_37\,
      \douta[295]\(25) => \ramloop[11].ram.r_n_38\,
      \douta[295]\(24) => \ramloop[11].ram.r_n_39\,
      \douta[295]\(23) => \ramloop[11].ram.r_n_40\,
      \douta[295]\(22) => \ramloop[11].ram.r_n_41\,
      \douta[295]\(21) => \ramloop[11].ram.r_n_42\,
      \douta[295]\(20) => \ramloop[11].ram.r_n_43\,
      \douta[295]\(19) => \ramloop[11].ram.r_n_44\,
      \douta[295]\(18) => \ramloop[11].ram.r_n_45\,
      \douta[295]\(17) => \ramloop[11].ram.r_n_46\,
      \douta[295]\(16) => \ramloop[11].ram.r_n_47\,
      \douta[295]\(15) => \ramloop[11].ram.r_n_48\,
      \douta[295]\(14) => \ramloop[11].ram.r_n_49\,
      \douta[295]\(13) => \ramloop[11].ram.r_n_50\,
      \douta[295]\(12) => \ramloop[11].ram.r_n_51\,
      \douta[295]\(11) => \ramloop[11].ram.r_n_52\,
      \douta[295]\(10) => \ramloop[11].ram.r_n_53\,
      \douta[295]\(9) => \ramloop[11].ram.r_n_54\,
      \douta[295]\(8) => \ramloop[11].ram.r_n_55\,
      \douta[295]\(7) => \ramloop[11].ram.r_n_56\,
      \douta[295]\(6) => \ramloop[11].ram.r_n_57\,
      \douta[295]\(5) => \ramloop[11].ram.r_n_58\,
      \douta[295]\(4) => \ramloop[11].ram.r_n_59\,
      \douta[295]\(3) => \ramloop[11].ram.r_n_60\,
      \douta[295]\(2) => \ramloop[11].ram.r_n_61\,
      \douta[295]\(1) => \ramloop[11].ram.r_n_62\,
      \douta[295]\(0) => \ramloop[11].ram.r_n_63\,
      \douta[295]_0\(31) => \ramloop[12].ram.r_n_0\,
      \douta[295]_0\(30) => \ramloop[12].ram.r_n_1\,
      \douta[295]_0\(29) => \ramloop[12].ram.r_n_2\,
      \douta[295]_0\(28) => \ramloop[12].ram.r_n_3\,
      \douta[295]_0\(27) => \ramloop[12].ram.r_n_4\,
      \douta[295]_0\(26) => \ramloop[12].ram.r_n_5\,
      \douta[295]_0\(25) => \ramloop[12].ram.r_n_6\,
      \douta[295]_0\(24) => \ramloop[12].ram.r_n_7\,
      \douta[295]_0\(23) => \ramloop[12].ram.r_n_8\,
      \douta[295]_0\(22) => \ramloop[12].ram.r_n_9\,
      \douta[295]_0\(21) => \ramloop[12].ram.r_n_10\,
      \douta[295]_0\(20) => \ramloop[12].ram.r_n_11\,
      \douta[295]_0\(19) => \ramloop[12].ram.r_n_12\,
      \douta[295]_0\(18) => \ramloop[12].ram.r_n_13\,
      \douta[295]_0\(17) => \ramloop[12].ram.r_n_14\,
      \douta[295]_0\(16) => \ramloop[12].ram.r_n_15\,
      \douta[295]_0\(15) => \ramloop[12].ram.r_n_16\,
      \douta[295]_0\(14) => \ramloop[12].ram.r_n_17\,
      \douta[295]_0\(13) => \ramloop[12].ram.r_n_18\,
      \douta[295]_0\(12) => \ramloop[12].ram.r_n_19\,
      \douta[295]_0\(11) => \ramloop[12].ram.r_n_20\,
      \douta[295]_0\(10) => \ramloop[12].ram.r_n_21\,
      \douta[295]_0\(9) => \ramloop[12].ram.r_n_22\,
      \douta[295]_0\(8) => \ramloop[12].ram.r_n_23\,
      \douta[295]_0\(7) => \ramloop[12].ram.r_n_24\,
      \douta[295]_0\(6) => \ramloop[12].ram.r_n_25\,
      \douta[295]_0\(5) => \ramloop[12].ram.r_n_26\,
      \douta[295]_0\(4) => \ramloop[12].ram.r_n_27\,
      \douta[295]_0\(3) => \ramloop[12].ram.r_n_28\,
      \douta[295]_0\(2) => \ramloop[12].ram.r_n_29\,
      \douta[295]_0\(1) => \ramloop[12].ram.r_n_30\,
      \douta[295]_0\(0) => \ramloop[12].ram.r_n_31\,
      \douta[296]\(3) => \ramloop[11].ram.r_n_68\,
      \douta[296]\(2) => \ramloop[11].ram.r_n_69\,
      \douta[296]\(1) => \ramloop[11].ram.r_n_70\,
      \douta[296]\(0) => \ramloop[11].ram.r_n_71\,
      \douta[296]_0\(3) => \ramloop[12].ram.r_n_32\,
      \douta[296]_0\(2) => \ramloop[12].ram.r_n_33\,
      \douta[296]_0\(1) => \ramloop[12].ram.r_n_34\,
      \douta[296]_0\(0) => \ramloop[12].ram.r_n_35\,
      \douta[331]\(31) => \ramloop[14].ram.r_n_0\,
      \douta[331]\(30) => \ramloop[14].ram.r_n_1\,
      \douta[331]\(29) => \ramloop[14].ram.r_n_2\,
      \douta[331]\(28) => \ramloop[14].ram.r_n_3\,
      \douta[331]\(27) => \ramloop[14].ram.r_n_4\,
      \douta[331]\(26) => \ramloop[14].ram.r_n_5\,
      \douta[331]\(25) => \ramloop[14].ram.r_n_6\,
      \douta[331]\(24) => \ramloop[14].ram.r_n_7\,
      \douta[331]\(23) => \ramloop[14].ram.r_n_8\,
      \douta[331]\(22) => \ramloop[14].ram.r_n_9\,
      \douta[331]\(21) => \ramloop[14].ram.r_n_10\,
      \douta[331]\(20) => \ramloop[14].ram.r_n_11\,
      \douta[331]\(19) => \ramloop[14].ram.r_n_12\,
      \douta[331]\(18) => \ramloop[14].ram.r_n_13\,
      \douta[331]\(17) => \ramloop[14].ram.r_n_14\,
      \douta[331]\(16) => \ramloop[14].ram.r_n_15\,
      \douta[331]\(15) => \ramloop[14].ram.r_n_16\,
      \douta[331]\(14) => \ramloop[14].ram.r_n_17\,
      \douta[331]\(13) => \ramloop[14].ram.r_n_18\,
      \douta[331]\(12) => \ramloop[14].ram.r_n_19\,
      \douta[331]\(11) => \ramloop[14].ram.r_n_20\,
      \douta[331]\(10) => \ramloop[14].ram.r_n_21\,
      \douta[331]\(9) => \ramloop[14].ram.r_n_22\,
      \douta[331]\(8) => \ramloop[14].ram.r_n_23\,
      \douta[331]\(7) => \ramloop[14].ram.r_n_24\,
      \douta[331]\(6) => \ramloop[14].ram.r_n_25\,
      \douta[331]\(5) => \ramloop[14].ram.r_n_26\,
      \douta[331]\(4) => \ramloop[14].ram.r_n_27\,
      \douta[331]\(3) => \ramloop[14].ram.r_n_28\,
      \douta[331]\(2) => \ramloop[14].ram.r_n_29\,
      \douta[331]\(1) => \ramloop[14].ram.r_n_30\,
      \douta[331]\(0) => \ramloop[14].ram.r_n_31\,
      \douta[331]_0\(31) => \ramloop[13].ram.r_n_0\,
      \douta[331]_0\(30) => \ramloop[13].ram.r_n_1\,
      \douta[331]_0\(29) => \ramloop[13].ram.r_n_2\,
      \douta[331]_0\(28) => \ramloop[13].ram.r_n_3\,
      \douta[331]_0\(27) => \ramloop[13].ram.r_n_4\,
      \douta[331]_0\(26) => \ramloop[13].ram.r_n_5\,
      \douta[331]_0\(25) => \ramloop[13].ram.r_n_6\,
      \douta[331]_0\(24) => \ramloop[13].ram.r_n_7\,
      \douta[331]_0\(23) => \ramloop[13].ram.r_n_8\,
      \douta[331]_0\(22) => \ramloop[13].ram.r_n_9\,
      \douta[331]_0\(21) => \ramloop[13].ram.r_n_10\,
      \douta[331]_0\(20) => \ramloop[13].ram.r_n_11\,
      \douta[331]_0\(19) => \ramloop[13].ram.r_n_12\,
      \douta[331]_0\(18) => \ramloop[13].ram.r_n_13\,
      \douta[331]_0\(17) => \ramloop[13].ram.r_n_14\,
      \douta[331]_0\(16) => \ramloop[13].ram.r_n_15\,
      \douta[331]_0\(15) => \ramloop[13].ram.r_n_16\,
      \douta[331]_0\(14) => \ramloop[13].ram.r_n_17\,
      \douta[331]_0\(13) => \ramloop[13].ram.r_n_18\,
      \douta[331]_0\(12) => \ramloop[13].ram.r_n_19\,
      \douta[331]_0\(11) => \ramloop[13].ram.r_n_20\,
      \douta[331]_0\(10) => \ramloop[13].ram.r_n_21\,
      \douta[331]_0\(9) => \ramloop[13].ram.r_n_22\,
      \douta[331]_0\(8) => \ramloop[13].ram.r_n_23\,
      \douta[331]_0\(7) => \ramloop[13].ram.r_n_24\,
      \douta[331]_0\(6) => \ramloop[13].ram.r_n_25\,
      \douta[331]_0\(5) => \ramloop[13].ram.r_n_26\,
      \douta[331]_0\(4) => \ramloop[13].ram.r_n_27\,
      \douta[331]_0\(3) => \ramloop[13].ram.r_n_28\,
      \douta[331]_0\(2) => \ramloop[13].ram.r_n_29\,
      \douta[331]_0\(1) => \ramloop[13].ram.r_n_30\,
      \douta[331]_0\(0) => \ramloop[13].ram.r_n_31\,
      \douta[332]\(3) => \ramloop[14].ram.r_n_64\,
      \douta[332]\(2) => \ramloop[14].ram.r_n_65\,
      \douta[332]\(1) => \ramloop[14].ram.r_n_66\,
      \douta[332]\(0) => \ramloop[14].ram.r_n_67\,
      \douta[332]_0\(3) => \ramloop[13].ram.r_n_32\,
      \douta[332]_0\(2) => \ramloop[13].ram.r_n_33\,
      \douta[332]_0\(1) => \ramloop[13].ram.r_n_34\,
      \douta[332]_0\(0) => \ramloop[13].ram.r_n_35\,
      \douta[367]\(31) => \ramloop[14].ram.r_n_32\,
      \douta[367]\(30) => \ramloop[14].ram.r_n_33\,
      \douta[367]\(29) => \ramloop[14].ram.r_n_34\,
      \douta[367]\(28) => \ramloop[14].ram.r_n_35\,
      \douta[367]\(27) => \ramloop[14].ram.r_n_36\,
      \douta[367]\(26) => \ramloop[14].ram.r_n_37\,
      \douta[367]\(25) => \ramloop[14].ram.r_n_38\,
      \douta[367]\(24) => \ramloop[14].ram.r_n_39\,
      \douta[367]\(23) => \ramloop[14].ram.r_n_40\,
      \douta[367]\(22) => \ramloop[14].ram.r_n_41\,
      \douta[367]\(21) => \ramloop[14].ram.r_n_42\,
      \douta[367]\(20) => \ramloop[14].ram.r_n_43\,
      \douta[367]\(19) => \ramloop[14].ram.r_n_44\,
      \douta[367]\(18) => \ramloop[14].ram.r_n_45\,
      \douta[367]\(17) => \ramloop[14].ram.r_n_46\,
      \douta[367]\(16) => \ramloop[14].ram.r_n_47\,
      \douta[367]\(15) => \ramloop[14].ram.r_n_48\,
      \douta[367]\(14) => \ramloop[14].ram.r_n_49\,
      \douta[367]\(13) => \ramloop[14].ram.r_n_50\,
      \douta[367]\(12) => \ramloop[14].ram.r_n_51\,
      \douta[367]\(11) => \ramloop[14].ram.r_n_52\,
      \douta[367]\(10) => \ramloop[14].ram.r_n_53\,
      \douta[367]\(9) => \ramloop[14].ram.r_n_54\,
      \douta[367]\(8) => \ramloop[14].ram.r_n_55\,
      \douta[367]\(7) => \ramloop[14].ram.r_n_56\,
      \douta[367]\(6) => \ramloop[14].ram.r_n_57\,
      \douta[367]\(5) => \ramloop[14].ram.r_n_58\,
      \douta[367]\(4) => \ramloop[14].ram.r_n_59\,
      \douta[367]\(3) => \ramloop[14].ram.r_n_60\,
      \douta[367]\(2) => \ramloop[14].ram.r_n_61\,
      \douta[367]\(1) => \ramloop[14].ram.r_n_62\,
      \douta[367]\(0) => \ramloop[14].ram.r_n_63\,
      \douta[367]_0\(31) => \ramloop[15].ram.r_n_0\,
      \douta[367]_0\(30) => \ramloop[15].ram.r_n_1\,
      \douta[367]_0\(29) => \ramloop[15].ram.r_n_2\,
      \douta[367]_0\(28) => \ramloop[15].ram.r_n_3\,
      \douta[367]_0\(27) => \ramloop[15].ram.r_n_4\,
      \douta[367]_0\(26) => \ramloop[15].ram.r_n_5\,
      \douta[367]_0\(25) => \ramloop[15].ram.r_n_6\,
      \douta[367]_0\(24) => \ramloop[15].ram.r_n_7\,
      \douta[367]_0\(23) => \ramloop[15].ram.r_n_8\,
      \douta[367]_0\(22) => \ramloop[15].ram.r_n_9\,
      \douta[367]_0\(21) => \ramloop[15].ram.r_n_10\,
      \douta[367]_0\(20) => \ramloop[15].ram.r_n_11\,
      \douta[367]_0\(19) => \ramloop[15].ram.r_n_12\,
      \douta[367]_0\(18) => \ramloop[15].ram.r_n_13\,
      \douta[367]_0\(17) => \ramloop[15].ram.r_n_14\,
      \douta[367]_0\(16) => \ramloop[15].ram.r_n_15\,
      \douta[367]_0\(15) => \ramloop[15].ram.r_n_16\,
      \douta[367]_0\(14) => \ramloop[15].ram.r_n_17\,
      \douta[367]_0\(13) => \ramloop[15].ram.r_n_18\,
      \douta[367]_0\(12) => \ramloop[15].ram.r_n_19\,
      \douta[367]_0\(11) => \ramloop[15].ram.r_n_20\,
      \douta[367]_0\(10) => \ramloop[15].ram.r_n_21\,
      \douta[367]_0\(9) => \ramloop[15].ram.r_n_22\,
      \douta[367]_0\(8) => \ramloop[15].ram.r_n_23\,
      \douta[367]_0\(7) => \ramloop[15].ram.r_n_24\,
      \douta[367]_0\(6) => \ramloop[15].ram.r_n_25\,
      \douta[367]_0\(5) => \ramloop[15].ram.r_n_26\,
      \douta[367]_0\(4) => \ramloop[15].ram.r_n_27\,
      \douta[367]_0\(3) => \ramloop[15].ram.r_n_28\,
      \douta[367]_0\(2) => \ramloop[15].ram.r_n_29\,
      \douta[367]_0\(1) => \ramloop[15].ram.r_n_30\,
      \douta[367]_0\(0) => \ramloop[15].ram.r_n_31\,
      \douta[368]\(3) => \ramloop[14].ram.r_n_68\,
      \douta[368]\(2) => \ramloop[14].ram.r_n_69\,
      \douta[368]\(1) => \ramloop[14].ram.r_n_70\,
      \douta[368]\(0) => \ramloop[14].ram.r_n_71\,
      \douta[368]_0\(3) => \ramloop[15].ram.r_n_32\,
      \douta[368]_0\(2) => \ramloop[15].ram.r_n_33\,
      \douta[368]_0\(1) => \ramloop[15].ram.r_n_34\,
      \douta[368]_0\(0) => \ramloop[15].ram.r_n_35\,
      \douta[403]\(31) => \ramloop[17].ram.r_n_0\,
      \douta[403]\(30) => \ramloop[17].ram.r_n_1\,
      \douta[403]\(29) => \ramloop[17].ram.r_n_2\,
      \douta[403]\(28) => \ramloop[17].ram.r_n_3\,
      \douta[403]\(27) => \ramloop[17].ram.r_n_4\,
      \douta[403]\(26) => \ramloop[17].ram.r_n_5\,
      \douta[403]\(25) => \ramloop[17].ram.r_n_6\,
      \douta[403]\(24) => \ramloop[17].ram.r_n_7\,
      \douta[403]\(23) => \ramloop[17].ram.r_n_8\,
      \douta[403]\(22) => \ramloop[17].ram.r_n_9\,
      \douta[403]\(21) => \ramloop[17].ram.r_n_10\,
      \douta[403]\(20) => \ramloop[17].ram.r_n_11\,
      \douta[403]\(19) => \ramloop[17].ram.r_n_12\,
      \douta[403]\(18) => \ramloop[17].ram.r_n_13\,
      \douta[403]\(17) => \ramloop[17].ram.r_n_14\,
      \douta[403]\(16) => \ramloop[17].ram.r_n_15\,
      \douta[403]\(15) => \ramloop[17].ram.r_n_16\,
      \douta[403]\(14) => \ramloop[17].ram.r_n_17\,
      \douta[403]\(13) => \ramloop[17].ram.r_n_18\,
      \douta[403]\(12) => \ramloop[17].ram.r_n_19\,
      \douta[403]\(11) => \ramloop[17].ram.r_n_20\,
      \douta[403]\(10) => \ramloop[17].ram.r_n_21\,
      \douta[403]\(9) => \ramloop[17].ram.r_n_22\,
      \douta[403]\(8) => \ramloop[17].ram.r_n_23\,
      \douta[403]\(7) => \ramloop[17].ram.r_n_24\,
      \douta[403]\(6) => \ramloop[17].ram.r_n_25\,
      \douta[403]\(5) => \ramloop[17].ram.r_n_26\,
      \douta[403]\(4) => \ramloop[17].ram.r_n_27\,
      \douta[403]\(3) => \ramloop[17].ram.r_n_28\,
      \douta[403]\(2) => \ramloop[17].ram.r_n_29\,
      \douta[403]\(1) => \ramloop[17].ram.r_n_30\,
      \douta[403]\(0) => \ramloop[17].ram.r_n_31\,
      \douta[403]_0\(31) => \ramloop[16].ram.r_n_0\,
      \douta[403]_0\(30) => \ramloop[16].ram.r_n_1\,
      \douta[403]_0\(29) => \ramloop[16].ram.r_n_2\,
      \douta[403]_0\(28) => \ramloop[16].ram.r_n_3\,
      \douta[403]_0\(27) => \ramloop[16].ram.r_n_4\,
      \douta[403]_0\(26) => \ramloop[16].ram.r_n_5\,
      \douta[403]_0\(25) => \ramloop[16].ram.r_n_6\,
      \douta[403]_0\(24) => \ramloop[16].ram.r_n_7\,
      \douta[403]_0\(23) => \ramloop[16].ram.r_n_8\,
      \douta[403]_0\(22) => \ramloop[16].ram.r_n_9\,
      \douta[403]_0\(21) => \ramloop[16].ram.r_n_10\,
      \douta[403]_0\(20) => \ramloop[16].ram.r_n_11\,
      \douta[403]_0\(19) => \ramloop[16].ram.r_n_12\,
      \douta[403]_0\(18) => \ramloop[16].ram.r_n_13\,
      \douta[403]_0\(17) => \ramloop[16].ram.r_n_14\,
      \douta[403]_0\(16) => \ramloop[16].ram.r_n_15\,
      \douta[403]_0\(15) => \ramloop[16].ram.r_n_16\,
      \douta[403]_0\(14) => \ramloop[16].ram.r_n_17\,
      \douta[403]_0\(13) => \ramloop[16].ram.r_n_18\,
      \douta[403]_0\(12) => \ramloop[16].ram.r_n_19\,
      \douta[403]_0\(11) => \ramloop[16].ram.r_n_20\,
      \douta[403]_0\(10) => \ramloop[16].ram.r_n_21\,
      \douta[403]_0\(9) => \ramloop[16].ram.r_n_22\,
      \douta[403]_0\(8) => \ramloop[16].ram.r_n_23\,
      \douta[403]_0\(7) => \ramloop[16].ram.r_n_24\,
      \douta[403]_0\(6) => \ramloop[16].ram.r_n_25\,
      \douta[403]_0\(5) => \ramloop[16].ram.r_n_26\,
      \douta[403]_0\(4) => \ramloop[16].ram.r_n_27\,
      \douta[403]_0\(3) => \ramloop[16].ram.r_n_28\,
      \douta[403]_0\(2) => \ramloop[16].ram.r_n_29\,
      \douta[403]_0\(1) => \ramloop[16].ram.r_n_30\,
      \douta[403]_0\(0) => \ramloop[16].ram.r_n_31\,
      \douta[404]\(3) => \ramloop[17].ram.r_n_64\,
      \douta[404]\(2) => \ramloop[17].ram.r_n_65\,
      \douta[404]\(1) => \ramloop[17].ram.r_n_66\,
      \douta[404]\(0) => \ramloop[17].ram.r_n_67\,
      \douta[404]_0\(3) => \ramloop[16].ram.r_n_32\,
      \douta[404]_0\(2) => \ramloop[16].ram.r_n_33\,
      \douta[404]_0\(1) => \ramloop[16].ram.r_n_34\,
      \douta[404]_0\(0) => \ramloop[16].ram.r_n_35\,
      \douta[439]\(31) => \ramloop[17].ram.r_n_32\,
      \douta[439]\(30) => \ramloop[17].ram.r_n_33\,
      \douta[439]\(29) => \ramloop[17].ram.r_n_34\,
      \douta[439]\(28) => \ramloop[17].ram.r_n_35\,
      \douta[439]\(27) => \ramloop[17].ram.r_n_36\,
      \douta[439]\(26) => \ramloop[17].ram.r_n_37\,
      \douta[439]\(25) => \ramloop[17].ram.r_n_38\,
      \douta[439]\(24) => \ramloop[17].ram.r_n_39\,
      \douta[439]\(23) => \ramloop[17].ram.r_n_40\,
      \douta[439]\(22) => \ramloop[17].ram.r_n_41\,
      \douta[439]\(21) => \ramloop[17].ram.r_n_42\,
      \douta[439]\(20) => \ramloop[17].ram.r_n_43\,
      \douta[439]\(19) => \ramloop[17].ram.r_n_44\,
      \douta[439]\(18) => \ramloop[17].ram.r_n_45\,
      \douta[439]\(17) => \ramloop[17].ram.r_n_46\,
      \douta[439]\(16) => \ramloop[17].ram.r_n_47\,
      \douta[439]\(15) => \ramloop[17].ram.r_n_48\,
      \douta[439]\(14) => \ramloop[17].ram.r_n_49\,
      \douta[439]\(13) => \ramloop[17].ram.r_n_50\,
      \douta[439]\(12) => \ramloop[17].ram.r_n_51\,
      \douta[439]\(11) => \ramloop[17].ram.r_n_52\,
      \douta[439]\(10) => \ramloop[17].ram.r_n_53\,
      \douta[439]\(9) => \ramloop[17].ram.r_n_54\,
      \douta[439]\(8) => \ramloop[17].ram.r_n_55\,
      \douta[439]\(7) => \ramloop[17].ram.r_n_56\,
      \douta[439]\(6) => \ramloop[17].ram.r_n_57\,
      \douta[439]\(5) => \ramloop[17].ram.r_n_58\,
      \douta[439]\(4) => \ramloop[17].ram.r_n_59\,
      \douta[439]\(3) => \ramloop[17].ram.r_n_60\,
      \douta[439]\(2) => \ramloop[17].ram.r_n_61\,
      \douta[439]\(1) => \ramloop[17].ram.r_n_62\,
      \douta[439]\(0) => \ramloop[17].ram.r_n_63\,
      \douta[439]_0\(31) => \ramloop[18].ram.r_n_0\,
      \douta[439]_0\(30) => \ramloop[18].ram.r_n_1\,
      \douta[439]_0\(29) => \ramloop[18].ram.r_n_2\,
      \douta[439]_0\(28) => \ramloop[18].ram.r_n_3\,
      \douta[439]_0\(27) => \ramloop[18].ram.r_n_4\,
      \douta[439]_0\(26) => \ramloop[18].ram.r_n_5\,
      \douta[439]_0\(25) => \ramloop[18].ram.r_n_6\,
      \douta[439]_0\(24) => \ramloop[18].ram.r_n_7\,
      \douta[439]_0\(23) => \ramloop[18].ram.r_n_8\,
      \douta[439]_0\(22) => \ramloop[18].ram.r_n_9\,
      \douta[439]_0\(21) => \ramloop[18].ram.r_n_10\,
      \douta[439]_0\(20) => \ramloop[18].ram.r_n_11\,
      \douta[439]_0\(19) => \ramloop[18].ram.r_n_12\,
      \douta[439]_0\(18) => \ramloop[18].ram.r_n_13\,
      \douta[439]_0\(17) => \ramloop[18].ram.r_n_14\,
      \douta[439]_0\(16) => \ramloop[18].ram.r_n_15\,
      \douta[439]_0\(15) => \ramloop[18].ram.r_n_16\,
      \douta[439]_0\(14) => \ramloop[18].ram.r_n_17\,
      \douta[439]_0\(13) => \ramloop[18].ram.r_n_18\,
      \douta[439]_0\(12) => \ramloop[18].ram.r_n_19\,
      \douta[439]_0\(11) => \ramloop[18].ram.r_n_20\,
      \douta[439]_0\(10) => \ramloop[18].ram.r_n_21\,
      \douta[439]_0\(9) => \ramloop[18].ram.r_n_22\,
      \douta[439]_0\(8) => \ramloop[18].ram.r_n_23\,
      \douta[439]_0\(7) => \ramloop[18].ram.r_n_24\,
      \douta[439]_0\(6) => \ramloop[18].ram.r_n_25\,
      \douta[439]_0\(5) => \ramloop[18].ram.r_n_26\,
      \douta[439]_0\(4) => \ramloop[18].ram.r_n_27\,
      \douta[439]_0\(3) => \ramloop[18].ram.r_n_28\,
      \douta[439]_0\(2) => \ramloop[18].ram.r_n_29\,
      \douta[439]_0\(1) => \ramloop[18].ram.r_n_30\,
      \douta[439]_0\(0) => \ramloop[18].ram.r_n_31\,
      \douta[43]\(31) => \ramloop[2].ram.r_n_0\,
      \douta[43]\(30) => \ramloop[2].ram.r_n_1\,
      \douta[43]\(29) => \ramloop[2].ram.r_n_2\,
      \douta[43]\(28) => \ramloop[2].ram.r_n_3\,
      \douta[43]\(27) => \ramloop[2].ram.r_n_4\,
      \douta[43]\(26) => \ramloop[2].ram.r_n_5\,
      \douta[43]\(25) => \ramloop[2].ram.r_n_6\,
      \douta[43]\(24) => \ramloop[2].ram.r_n_7\,
      \douta[43]\(23) => \ramloop[2].ram.r_n_8\,
      \douta[43]\(22) => \ramloop[2].ram.r_n_9\,
      \douta[43]\(21) => \ramloop[2].ram.r_n_10\,
      \douta[43]\(20) => \ramloop[2].ram.r_n_11\,
      \douta[43]\(19) => \ramloop[2].ram.r_n_12\,
      \douta[43]\(18) => \ramloop[2].ram.r_n_13\,
      \douta[43]\(17) => \ramloop[2].ram.r_n_14\,
      \douta[43]\(16) => \ramloop[2].ram.r_n_15\,
      \douta[43]\(15) => \ramloop[2].ram.r_n_16\,
      \douta[43]\(14) => \ramloop[2].ram.r_n_17\,
      \douta[43]\(13) => \ramloop[2].ram.r_n_18\,
      \douta[43]\(12) => \ramloop[2].ram.r_n_19\,
      \douta[43]\(11) => \ramloop[2].ram.r_n_20\,
      \douta[43]\(10) => \ramloop[2].ram.r_n_21\,
      \douta[43]\(9) => \ramloop[2].ram.r_n_22\,
      \douta[43]\(8) => \ramloop[2].ram.r_n_23\,
      \douta[43]\(7) => \ramloop[2].ram.r_n_24\,
      \douta[43]\(6) => \ramloop[2].ram.r_n_25\,
      \douta[43]\(5) => \ramloop[2].ram.r_n_26\,
      \douta[43]\(4) => \ramloop[2].ram.r_n_27\,
      \douta[43]\(3) => \ramloop[2].ram.r_n_28\,
      \douta[43]\(2) => \ramloop[2].ram.r_n_29\,
      \douta[43]\(1) => \ramloop[2].ram.r_n_30\,
      \douta[43]\(0) => \ramloop[2].ram.r_n_31\,
      \douta[43]_0\(31) => \ramloop[1].ram.r_n_0\,
      \douta[43]_0\(30) => \ramloop[1].ram.r_n_1\,
      \douta[43]_0\(29) => \ramloop[1].ram.r_n_2\,
      \douta[43]_0\(28) => \ramloop[1].ram.r_n_3\,
      \douta[43]_0\(27) => \ramloop[1].ram.r_n_4\,
      \douta[43]_0\(26) => \ramloop[1].ram.r_n_5\,
      \douta[43]_0\(25) => \ramloop[1].ram.r_n_6\,
      \douta[43]_0\(24) => \ramloop[1].ram.r_n_7\,
      \douta[43]_0\(23) => \ramloop[1].ram.r_n_8\,
      \douta[43]_0\(22) => \ramloop[1].ram.r_n_9\,
      \douta[43]_0\(21) => \ramloop[1].ram.r_n_10\,
      \douta[43]_0\(20) => \ramloop[1].ram.r_n_11\,
      \douta[43]_0\(19) => \ramloop[1].ram.r_n_12\,
      \douta[43]_0\(18) => \ramloop[1].ram.r_n_13\,
      \douta[43]_0\(17) => \ramloop[1].ram.r_n_14\,
      \douta[43]_0\(16) => \ramloop[1].ram.r_n_15\,
      \douta[43]_0\(15) => \ramloop[1].ram.r_n_16\,
      \douta[43]_0\(14) => \ramloop[1].ram.r_n_17\,
      \douta[43]_0\(13) => \ramloop[1].ram.r_n_18\,
      \douta[43]_0\(12) => \ramloop[1].ram.r_n_19\,
      \douta[43]_0\(11) => \ramloop[1].ram.r_n_20\,
      \douta[43]_0\(10) => \ramloop[1].ram.r_n_21\,
      \douta[43]_0\(9) => \ramloop[1].ram.r_n_22\,
      \douta[43]_0\(8) => \ramloop[1].ram.r_n_23\,
      \douta[43]_0\(7) => \ramloop[1].ram.r_n_24\,
      \douta[43]_0\(6) => \ramloop[1].ram.r_n_25\,
      \douta[43]_0\(5) => \ramloop[1].ram.r_n_26\,
      \douta[43]_0\(4) => \ramloop[1].ram.r_n_27\,
      \douta[43]_0\(3) => \ramloop[1].ram.r_n_28\,
      \douta[43]_0\(2) => \ramloop[1].ram.r_n_29\,
      \douta[43]_0\(1) => \ramloop[1].ram.r_n_30\,
      \douta[43]_0\(0) => \ramloop[1].ram.r_n_31\,
      \douta[440]\(3) => \ramloop[17].ram.r_n_68\,
      \douta[440]\(2) => \ramloop[17].ram.r_n_69\,
      \douta[440]\(1) => \ramloop[17].ram.r_n_70\,
      \douta[440]\(0) => \ramloop[17].ram.r_n_71\,
      \douta[440]_0\(3) => \ramloop[18].ram.r_n_32\,
      \douta[440]_0\(2) => \ramloop[18].ram.r_n_33\,
      \douta[440]_0\(1) => \ramloop[18].ram.r_n_34\,
      \douta[440]_0\(0) => \ramloop[18].ram.r_n_35\,
      \douta[44]\(3) => \ramloop[2].ram.r_n_64\,
      \douta[44]\(2) => \ramloop[2].ram.r_n_65\,
      \douta[44]\(1) => \ramloop[2].ram.r_n_66\,
      \douta[44]\(0) => \ramloop[2].ram.r_n_67\,
      \douta[44]_0\(3) => \ramloop[1].ram.r_n_32\,
      \douta[44]_0\(2) => \ramloop[1].ram.r_n_33\,
      \douta[44]_0\(1) => \ramloop[1].ram.r_n_34\,
      \douta[44]_0\(0) => \ramloop[1].ram.r_n_35\,
      \douta[475]\(31) => \ramloop[20].ram.r_n_0\,
      \douta[475]\(30) => \ramloop[20].ram.r_n_1\,
      \douta[475]\(29) => \ramloop[20].ram.r_n_2\,
      \douta[475]\(28) => \ramloop[20].ram.r_n_3\,
      \douta[475]\(27) => \ramloop[20].ram.r_n_4\,
      \douta[475]\(26) => \ramloop[20].ram.r_n_5\,
      \douta[475]\(25) => \ramloop[20].ram.r_n_6\,
      \douta[475]\(24) => \ramloop[20].ram.r_n_7\,
      \douta[475]\(23) => \ramloop[20].ram.r_n_8\,
      \douta[475]\(22) => \ramloop[20].ram.r_n_9\,
      \douta[475]\(21) => \ramloop[20].ram.r_n_10\,
      \douta[475]\(20) => \ramloop[20].ram.r_n_11\,
      \douta[475]\(19) => \ramloop[20].ram.r_n_12\,
      \douta[475]\(18) => \ramloop[20].ram.r_n_13\,
      \douta[475]\(17) => \ramloop[20].ram.r_n_14\,
      \douta[475]\(16) => \ramloop[20].ram.r_n_15\,
      \douta[475]\(15) => \ramloop[20].ram.r_n_16\,
      \douta[475]\(14) => \ramloop[20].ram.r_n_17\,
      \douta[475]\(13) => \ramloop[20].ram.r_n_18\,
      \douta[475]\(12) => \ramloop[20].ram.r_n_19\,
      \douta[475]\(11) => \ramloop[20].ram.r_n_20\,
      \douta[475]\(10) => \ramloop[20].ram.r_n_21\,
      \douta[475]\(9) => \ramloop[20].ram.r_n_22\,
      \douta[475]\(8) => \ramloop[20].ram.r_n_23\,
      \douta[475]\(7) => \ramloop[20].ram.r_n_24\,
      \douta[475]\(6) => \ramloop[20].ram.r_n_25\,
      \douta[475]\(5) => \ramloop[20].ram.r_n_26\,
      \douta[475]\(4) => \ramloop[20].ram.r_n_27\,
      \douta[475]\(3) => \ramloop[20].ram.r_n_28\,
      \douta[475]\(2) => \ramloop[20].ram.r_n_29\,
      \douta[475]\(1) => \ramloop[20].ram.r_n_30\,
      \douta[475]\(0) => \ramloop[20].ram.r_n_31\,
      \douta[475]_0\(31) => \ramloop[19].ram.r_n_0\,
      \douta[475]_0\(30) => \ramloop[19].ram.r_n_1\,
      \douta[475]_0\(29) => \ramloop[19].ram.r_n_2\,
      \douta[475]_0\(28) => \ramloop[19].ram.r_n_3\,
      \douta[475]_0\(27) => \ramloop[19].ram.r_n_4\,
      \douta[475]_0\(26) => \ramloop[19].ram.r_n_5\,
      \douta[475]_0\(25) => \ramloop[19].ram.r_n_6\,
      \douta[475]_0\(24) => \ramloop[19].ram.r_n_7\,
      \douta[475]_0\(23) => \ramloop[19].ram.r_n_8\,
      \douta[475]_0\(22) => \ramloop[19].ram.r_n_9\,
      \douta[475]_0\(21) => \ramloop[19].ram.r_n_10\,
      \douta[475]_0\(20) => \ramloop[19].ram.r_n_11\,
      \douta[475]_0\(19) => \ramloop[19].ram.r_n_12\,
      \douta[475]_0\(18) => \ramloop[19].ram.r_n_13\,
      \douta[475]_0\(17) => \ramloop[19].ram.r_n_14\,
      \douta[475]_0\(16) => \ramloop[19].ram.r_n_15\,
      \douta[475]_0\(15) => \ramloop[19].ram.r_n_16\,
      \douta[475]_0\(14) => \ramloop[19].ram.r_n_17\,
      \douta[475]_0\(13) => \ramloop[19].ram.r_n_18\,
      \douta[475]_0\(12) => \ramloop[19].ram.r_n_19\,
      \douta[475]_0\(11) => \ramloop[19].ram.r_n_20\,
      \douta[475]_0\(10) => \ramloop[19].ram.r_n_21\,
      \douta[475]_0\(9) => \ramloop[19].ram.r_n_22\,
      \douta[475]_0\(8) => \ramloop[19].ram.r_n_23\,
      \douta[475]_0\(7) => \ramloop[19].ram.r_n_24\,
      \douta[475]_0\(6) => \ramloop[19].ram.r_n_25\,
      \douta[475]_0\(5) => \ramloop[19].ram.r_n_26\,
      \douta[475]_0\(4) => \ramloop[19].ram.r_n_27\,
      \douta[475]_0\(3) => \ramloop[19].ram.r_n_28\,
      \douta[475]_0\(2) => \ramloop[19].ram.r_n_29\,
      \douta[475]_0\(1) => \ramloop[19].ram.r_n_30\,
      \douta[475]_0\(0) => \ramloop[19].ram.r_n_31\,
      \douta[476]\(3) => \ramloop[20].ram.r_n_64\,
      \douta[476]\(2) => \ramloop[20].ram.r_n_65\,
      \douta[476]\(1) => \ramloop[20].ram.r_n_66\,
      \douta[476]\(0) => \ramloop[20].ram.r_n_67\,
      \douta[476]_0\(3) => \ramloop[19].ram.r_n_32\,
      \douta[476]_0\(2) => \ramloop[19].ram.r_n_33\,
      \douta[476]_0\(1) => \ramloop[19].ram.r_n_34\,
      \douta[476]_0\(0) => \ramloop[19].ram.r_n_35\,
      \douta[79]\(31) => \ramloop[2].ram.r_n_32\,
      \douta[79]\(30) => \ramloop[2].ram.r_n_33\,
      \douta[79]\(29) => \ramloop[2].ram.r_n_34\,
      \douta[79]\(28) => \ramloop[2].ram.r_n_35\,
      \douta[79]\(27) => \ramloop[2].ram.r_n_36\,
      \douta[79]\(26) => \ramloop[2].ram.r_n_37\,
      \douta[79]\(25) => \ramloop[2].ram.r_n_38\,
      \douta[79]\(24) => \ramloop[2].ram.r_n_39\,
      \douta[79]\(23) => \ramloop[2].ram.r_n_40\,
      \douta[79]\(22) => \ramloop[2].ram.r_n_41\,
      \douta[79]\(21) => \ramloop[2].ram.r_n_42\,
      \douta[79]\(20) => \ramloop[2].ram.r_n_43\,
      \douta[79]\(19) => \ramloop[2].ram.r_n_44\,
      \douta[79]\(18) => \ramloop[2].ram.r_n_45\,
      \douta[79]\(17) => \ramloop[2].ram.r_n_46\,
      \douta[79]\(16) => \ramloop[2].ram.r_n_47\,
      \douta[79]\(15) => \ramloop[2].ram.r_n_48\,
      \douta[79]\(14) => \ramloop[2].ram.r_n_49\,
      \douta[79]\(13) => \ramloop[2].ram.r_n_50\,
      \douta[79]\(12) => \ramloop[2].ram.r_n_51\,
      \douta[79]\(11) => \ramloop[2].ram.r_n_52\,
      \douta[79]\(10) => \ramloop[2].ram.r_n_53\,
      \douta[79]\(9) => \ramloop[2].ram.r_n_54\,
      \douta[79]\(8) => \ramloop[2].ram.r_n_55\,
      \douta[79]\(7) => \ramloop[2].ram.r_n_56\,
      \douta[79]\(6) => \ramloop[2].ram.r_n_57\,
      \douta[79]\(5) => \ramloop[2].ram.r_n_58\,
      \douta[79]\(4) => \ramloop[2].ram.r_n_59\,
      \douta[79]\(3) => \ramloop[2].ram.r_n_60\,
      \douta[79]\(2) => \ramloop[2].ram.r_n_61\,
      \douta[79]\(1) => \ramloop[2].ram.r_n_62\,
      \douta[79]\(0) => \ramloop[2].ram.r_n_63\,
      \douta[79]_0\(31) => \ramloop[3].ram.r_n_0\,
      \douta[79]_0\(30) => \ramloop[3].ram.r_n_1\,
      \douta[79]_0\(29) => \ramloop[3].ram.r_n_2\,
      \douta[79]_0\(28) => \ramloop[3].ram.r_n_3\,
      \douta[79]_0\(27) => \ramloop[3].ram.r_n_4\,
      \douta[79]_0\(26) => \ramloop[3].ram.r_n_5\,
      \douta[79]_0\(25) => \ramloop[3].ram.r_n_6\,
      \douta[79]_0\(24) => \ramloop[3].ram.r_n_7\,
      \douta[79]_0\(23) => \ramloop[3].ram.r_n_8\,
      \douta[79]_0\(22) => \ramloop[3].ram.r_n_9\,
      \douta[79]_0\(21) => \ramloop[3].ram.r_n_10\,
      \douta[79]_0\(20) => \ramloop[3].ram.r_n_11\,
      \douta[79]_0\(19) => \ramloop[3].ram.r_n_12\,
      \douta[79]_0\(18) => \ramloop[3].ram.r_n_13\,
      \douta[79]_0\(17) => \ramloop[3].ram.r_n_14\,
      \douta[79]_0\(16) => \ramloop[3].ram.r_n_15\,
      \douta[79]_0\(15) => \ramloop[3].ram.r_n_16\,
      \douta[79]_0\(14) => \ramloop[3].ram.r_n_17\,
      \douta[79]_0\(13) => \ramloop[3].ram.r_n_18\,
      \douta[79]_0\(12) => \ramloop[3].ram.r_n_19\,
      \douta[79]_0\(11) => \ramloop[3].ram.r_n_20\,
      \douta[79]_0\(10) => \ramloop[3].ram.r_n_21\,
      \douta[79]_0\(9) => \ramloop[3].ram.r_n_22\,
      \douta[79]_0\(8) => \ramloop[3].ram.r_n_23\,
      \douta[79]_0\(7) => \ramloop[3].ram.r_n_24\,
      \douta[79]_0\(6) => \ramloop[3].ram.r_n_25\,
      \douta[79]_0\(5) => \ramloop[3].ram.r_n_26\,
      \douta[79]_0\(4) => \ramloop[3].ram.r_n_27\,
      \douta[79]_0\(3) => \ramloop[3].ram.r_n_28\,
      \douta[79]_0\(2) => \ramloop[3].ram.r_n_29\,
      \douta[79]_0\(1) => \ramloop[3].ram.r_n_30\,
      \douta[79]_0\(0) => \ramloop[3].ram.r_n_31\,
      \douta[80]\(3) => \ramloop[2].ram.r_n_68\,
      \douta[80]\(2) => \ramloop[2].ram.r_n_69\,
      \douta[80]\(1) => \ramloop[2].ram.r_n_70\,
      \douta[80]\(0) => \ramloop[2].ram.r_n_71\,
      \douta[80]_0\(3) => \ramloop[3].ram.r_n_32\,
      \douta[80]_0\(2) => \ramloop[3].ram.r_n_33\,
      \douta[80]_0\(1) => \ramloop[3].ram.r_n_34\,
      \douta[80]_0\(0) => \ramloop[3].ram.r_n_35\,
      ena => ena
    );
\ramloop[0].ram.r\: entity work.weights_buffer_blk_mem_gen_prim_width
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(8 downto 0) => douta(8 downto 0),
      ena => ena
    );
\ramloop[10].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized9\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[10].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[10].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[10].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[10].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[10].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[10].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[10].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[10].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[10].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[10].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[10].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[10].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[10].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[10].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[10].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[10].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[10].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[10].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[10].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[10].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[10].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[10].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[10].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[10].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[10].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[10].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[10].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[10].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[10].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[10].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[10].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[10].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[10].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[10].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[10].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[10].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[11].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[11].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[11].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[11].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[11].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[11].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[11].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[11].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[11].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[11].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[11].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[11].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[11].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[11].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[11].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[11].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[11].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[11].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[11].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[11].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[11].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[11].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[11].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[11].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[11].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[11].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[11].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[11].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[11].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[11].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[11].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[11].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[11].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[11].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[11].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[11].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[11].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[11].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[11].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[11].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[11].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[11].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[11].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[11].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[11].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[11].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[11].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[11].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[11].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[11].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[11].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[11].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[11].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[11].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[11].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[11].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[11].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[11].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[11].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[11].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[11].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[11].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[11].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[11].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[11].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[11].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[11].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[11].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[11].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[11].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[11].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[11].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[11].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[12].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[12].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[12].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[12].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[12].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[12].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[12].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[12].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[12].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[12].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[12].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[12].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[12].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[12].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[12].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[12].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[12].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[12].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[12].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[12].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[12].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[12].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[12].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[12].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[12].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[12].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[12].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[12].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[12].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[12].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[12].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[12].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[12].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[12].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[12].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[12].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[12].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[13].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized12\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[13].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[13].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[13].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[13].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[13].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[13].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[13].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[13].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[13].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[13].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[13].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[13].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[13].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[13].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[13].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[13].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[13].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[13].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[13].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[13].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[13].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[13].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[13].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[13].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[13].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[13].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[13].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[13].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[13].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[13].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[13].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[13].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[13].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[13].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[13].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[13].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[14].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[14].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[14].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[14].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[14].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[14].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[14].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[14].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[14].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[14].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[14].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[14].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[14].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[14].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[14].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[14].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[14].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[14].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[14].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[14].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[14].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[14].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[14].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[14].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[14].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[14].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[14].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[14].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[14].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[14].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[14].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[14].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[14].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[14].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[14].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[14].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[14].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[14].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[14].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[14].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[14].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[14].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[14].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[14].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[14].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[14].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[14].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[14].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[14].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[14].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[14].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[14].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[14].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[14].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[14].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[14].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[14].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[14].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[14].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[14].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[14].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[14].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[14].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[14].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[14].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[14].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[14].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[14].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[14].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[14].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[14].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[14].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[14].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[15].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized14\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[15].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[15].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[15].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[15].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[15].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[15].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[15].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[15].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[15].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[15].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[15].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[15].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[15].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[15].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[15].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[15].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[15].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[15].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[15].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[15].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[15].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[15].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[15].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[15].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[15].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[15].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[15].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[15].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[15].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[15].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[15].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[15].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[15].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[15].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[15].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[15].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[16].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized15\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[16].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[16].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[16].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[16].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[16].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[16].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[16].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[16].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[16].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[16].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[16].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[16].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[16].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[16].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[16].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[16].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[16].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[16].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[16].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[16].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[16].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[16].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[16].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[16].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[16].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[16].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[16].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[16].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[16].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[16].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[16].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[16].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[16].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[16].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[16].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[16].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[17].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized16\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[17].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[17].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[17].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[17].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[17].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[17].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[17].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[17].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[17].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[17].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[17].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[17].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[17].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[17].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[17].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[17].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[17].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[17].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[17].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[17].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[17].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[17].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[17].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[17].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[17].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[17].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[17].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[17].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[17].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[17].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[17].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[17].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[17].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[17].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[17].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[17].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[17].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[17].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[17].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[17].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[17].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[17].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[17].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[17].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[17].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[17].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[17].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[17].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[17].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[17].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[17].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[17].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[17].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[17].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[17].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[17].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[17].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[17].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[17].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[17].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[17].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[17].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[17].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[17].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[17].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[17].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[17].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[17].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[17].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[17].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[17].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[17].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[18].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized17\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[18].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[18].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[18].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[18].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[18].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[18].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[18].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[18].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[18].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[18].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[18].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[18].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[18].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[18].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[18].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[18].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[18].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[18].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[18].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[18].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[18].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[18].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[18].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[18].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[18].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[18].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[18].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[18].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[18].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[18].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[18].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[18].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[18].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[18].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[18].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[18].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[19].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized18\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[19].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[19].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[19].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[19].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[19].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[19].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[19].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[19].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[19].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[19].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[19].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[19].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[19].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[19].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[19].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[19].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[19].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[19].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[19].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[19].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[19].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[19].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[19].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[19].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[19].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[19].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[19].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[19].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[19].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[19].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[19].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[19].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[19].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[19].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[19].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[19].ram.r_n_35\,
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      ena => ena,
      ena_0 => \ramloop[19].ram.r_n_36\
    );
\ramloop[1].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[1].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[1].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[1].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[1].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[1].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[1].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[1].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[1].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[1].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[1].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[1].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[1].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[1].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[1].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[1].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[1].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[1].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[1].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[1].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[1].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[1].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[1].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[1].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[1].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[1].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[1].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[1].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[1].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[1].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[1].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[1].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[1].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[1].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[1].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[1].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[1].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[20].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized19\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[20].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[20].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[20].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[20].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[20].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[20].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[20].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[20].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[20].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[20].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[20].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[20].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[20].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[20].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[20].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[20].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[20].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[20].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[20].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[20].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[20].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[20].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[20].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[20].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[20].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[20].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[20].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[20].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[20].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[20].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[20].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[20].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[20].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[20].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[20].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[20].ram.r_n_67\,
      DOBDO(31) => \ramloop[20].ram.r_n_32\,
      DOBDO(30) => \ramloop[20].ram.r_n_33\,
      DOBDO(29) => \ramloop[20].ram.r_n_34\,
      DOBDO(28) => \ramloop[20].ram.r_n_35\,
      DOBDO(27) => \ramloop[20].ram.r_n_36\,
      DOBDO(26) => \ramloop[20].ram.r_n_37\,
      DOBDO(25) => \ramloop[20].ram.r_n_38\,
      DOBDO(24) => \ramloop[20].ram.r_n_39\,
      DOBDO(23) => \ramloop[20].ram.r_n_40\,
      DOBDO(22) => \ramloop[20].ram.r_n_41\,
      DOBDO(21) => \ramloop[20].ram.r_n_42\,
      DOBDO(20) => \ramloop[20].ram.r_n_43\,
      DOBDO(19) => \ramloop[20].ram.r_n_44\,
      DOBDO(18) => \ramloop[20].ram.r_n_45\,
      DOBDO(17) => \ramloop[20].ram.r_n_46\,
      DOBDO(16) => \ramloop[20].ram.r_n_47\,
      DOBDO(15) => \ramloop[20].ram.r_n_48\,
      DOBDO(14) => \ramloop[20].ram.r_n_49\,
      DOBDO(13) => \ramloop[20].ram.r_n_50\,
      DOBDO(12) => \ramloop[20].ram.r_n_51\,
      DOBDO(11) => \ramloop[20].ram.r_n_52\,
      DOBDO(10) => \ramloop[20].ram.r_n_53\,
      DOBDO(9) => \ramloop[20].ram.r_n_54\,
      DOBDO(8) => \ramloop[20].ram.r_n_55\,
      DOBDO(7) => \ramloop[20].ram.r_n_56\,
      DOBDO(6) => \ramloop[20].ram.r_n_57\,
      DOBDO(5) => \ramloop[20].ram.r_n_58\,
      DOBDO(4) => \ramloop[20].ram.r_n_59\,
      DOBDO(3) => \ramloop[20].ram.r_n_60\,
      DOBDO(2) => \ramloop[20].ram.r_n_61\,
      DOBDO(1) => \ramloop[20].ram.r_n_62\,
      DOBDO(0) => \ramloop[20].ram.r_n_63\,
      DOPBDOP(2) => \ramloop[20].ram.r_n_68\,
      DOPBDOP(1) => \ramloop[20].ram.r_n_69\,
      DOPBDOP(0) => \ramloop[20].ram.r_n_70\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[21].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized20\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ => \ramloop[19].ram.r_n_36\,
      DOADO(31) => \ramloop[21].ram.r_n_0\,
      DOADO(30) => \ramloop[21].ram.r_n_1\,
      DOADO(29) => \ramloop[21].ram.r_n_2\,
      DOADO(28) => \ramloop[21].ram.r_n_3\,
      DOADO(27) => \ramloop[21].ram.r_n_4\,
      DOADO(26) => \ramloop[21].ram.r_n_5\,
      DOADO(25) => \ramloop[21].ram.r_n_6\,
      DOADO(24) => \ramloop[21].ram.r_n_7\,
      DOADO(23) => \ramloop[21].ram.r_n_8\,
      DOADO(22) => \ramloop[21].ram.r_n_9\,
      DOADO(21) => \ramloop[21].ram.r_n_10\,
      DOADO(20) => \ramloop[21].ram.r_n_11\,
      DOADO(19) => \ramloop[21].ram.r_n_12\,
      DOADO(18) => \ramloop[21].ram.r_n_13\,
      DOADO(17) => \ramloop[21].ram.r_n_14\,
      DOADO(16) => \ramloop[21].ram.r_n_15\,
      DOADO(15) => \ramloop[21].ram.r_n_16\,
      DOADO(14) => \ramloop[21].ram.r_n_17\,
      DOADO(13) => \ramloop[21].ram.r_n_18\,
      DOADO(12) => \ramloop[21].ram.r_n_19\,
      DOADO(11) => \ramloop[21].ram.r_n_20\,
      DOADO(10) => \ramloop[21].ram.r_n_21\,
      DOADO(9) => \ramloop[21].ram.r_n_22\,
      DOADO(8) => \ramloop[21].ram.r_n_23\,
      DOADO(7) => \ramloop[21].ram.r_n_24\,
      DOADO(6) => \ramloop[21].ram.r_n_25\,
      DOADO(5) => \ramloop[21].ram.r_n_26\,
      DOADO(4) => \ramloop[21].ram.r_n_27\,
      DOADO(3) => \ramloop[21].ram.r_n_28\,
      DOADO(2) => \ramloop[21].ram.r_n_29\,
      DOADO(1) => \ramloop[21].ram.r_n_30\,
      DOADO(0) => \ramloop[21].ram.r_n_31\,
      DOPADOP(2) => \ramloop[21].ram.r_n_32\,
      DOPADOP(1) => \ramloop[21].ram.r_n_33\,
      DOPADOP(0) => \ramloop[21].ram.r_n_34\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[2].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[2].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[2].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[2].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[2].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[2].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[2].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[2].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[2].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[2].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[2].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[2].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[2].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[2].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[2].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[2].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[2].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[2].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[2].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[2].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[2].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[2].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[2].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[2].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[2].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[2].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[2].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[2].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[2].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[2].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[2].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[2].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[2].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[2].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[2].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[2].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[2].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[2].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[2].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[2].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[2].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[2].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[2].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[2].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[2].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[2].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[2].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[2].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[2].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[2].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[2].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[2].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[2].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[2].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[2].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[2].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[3].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[3].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[3].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[3].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[3].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[3].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[3].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[3].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[3].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[3].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[3].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[3].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[3].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[3].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[3].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[3].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[3].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[3].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[3].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[3].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[3].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[3].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[3].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[3].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[3].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[3].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[3].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[3].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[3].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[3].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[3].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[3].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[3].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[3].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[3].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[4].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized3\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[4].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[4].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[4].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[4].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[4].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[4].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[4].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[4].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[4].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[4].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[4].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[4].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[4].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[4].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[4].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[4].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[4].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[4].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[4].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[4].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[4].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[4].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[4].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[4].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[4].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[4].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[4].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[4].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[4].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[5].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized4\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[5].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[5].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[5].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[5].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[5].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[5].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[5].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[5].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[5].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[5].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[5].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[5].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[5].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[5].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[5].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[5].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[5].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[5].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[5].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[5].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[5].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[5].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[5].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[5].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[5].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[5].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[5].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[5].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[5].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[5].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[5].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[5].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[5].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[5].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[5].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[5].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[5].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[5].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[5].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[5].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[5].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[5].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[5].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[5].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[5].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[5].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[5].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[5].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[5].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[5].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[5].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[5].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[5].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[5].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[5].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[5].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[5].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[5].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[5].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[5].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[5].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[5].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[5].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[5].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[5].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[5].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[5].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[5].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[5].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[5].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[5].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[6].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[6].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[6].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[6].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[6].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[6].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[6].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[6].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[6].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[6].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[6].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[6].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[6].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[6].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[6].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[6].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[6].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[6].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[6].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[6].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[6].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[6].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[6].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[6].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[6].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[6].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[6].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[6].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[6].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[6].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[6].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[6].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[6].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[6].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[6].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[6].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[7].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[7].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[7].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[7].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[7].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[7].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[7].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[7].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[7].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[7].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[7].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[7].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[7].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[7].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[7].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[7].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[7].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[7].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[7].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[7].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[7].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[7].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[7].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[7].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[7].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[7].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[7].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[7].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[7].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[7].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[7].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[7].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[7].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[7].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[7].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[7].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
\ramloop[8].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(31) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(30) => \ramloop[8].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(29) => \ramloop[8].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(28) => \ramloop[8].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(27) => \ramloop[8].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(26) => \ramloop[8].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(25) => \ramloop[8].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(24) => \ramloop[8].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(23) => \ramloop[8].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(22) => \ramloop[8].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(21) => \ramloop[8].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(20) => \ramloop[8].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(19) => \ramloop[8].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(18) => \ramloop[8].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(17) => \ramloop[8].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(16) => \ramloop[8].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(15) => \ramloop[8].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(14) => \ramloop[8].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(13) => \ramloop[8].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(12) => \ramloop[8].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(11) => \ramloop[8].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(10) => \ramloop[8].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(9) => \ramloop[8].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(8) => \ramloop[8].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(7) => \ramloop[8].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(6) => \ramloop[8].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(5) => \ramloop[8].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(4) => \ramloop[8].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(3) => \ramloop[8].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(2) => \ramloop[8].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(1) => \ramloop[8].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram\(0) => \ramloop[8].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(31) => \ramloop[8].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(30) => \ramloop[8].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(29) => \ramloop[8].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(28) => \ramloop[8].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(27) => \ramloop[8].ram.r_n_36\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(26) => \ramloop[8].ram.r_n_37\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(25) => \ramloop[8].ram.r_n_38\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(24) => \ramloop[8].ram.r_n_39\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(23) => \ramloop[8].ram.r_n_40\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(22) => \ramloop[8].ram.r_n_41\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(21) => \ramloop[8].ram.r_n_42\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(20) => \ramloop[8].ram.r_n_43\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(19) => \ramloop[8].ram.r_n_44\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(18) => \ramloop[8].ram.r_n_45\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(17) => \ramloop[8].ram.r_n_46\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(16) => \ramloop[8].ram.r_n_47\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(15) => \ramloop[8].ram.r_n_48\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(14) => \ramloop[8].ram.r_n_49\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(13) => \ramloop[8].ram.r_n_50\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(12) => \ramloop[8].ram.r_n_51\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(11) => \ramloop[8].ram.r_n_52\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(10) => \ramloop[8].ram.r_n_53\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(9) => \ramloop[8].ram.r_n_54\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(8) => \ramloop[8].ram.r_n_55\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(7) => \ramloop[8].ram.r_n_56\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(6) => \ramloop[8].ram.r_n_57\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(5) => \ramloop[8].ram.r_n_58\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(4) => \ramloop[8].ram.r_n_59\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(3) => \ramloop[8].ram.r_n_60\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(2) => \ramloop[8].ram.r_n_61\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(1) => \ramloop[8].ram.r_n_62\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_0\(0) => \ramloop[8].ram.r_n_63\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(3) => \ramloop[8].ram.r_n_64\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(2) => \ramloop[8].ram.r_n_65\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(1) => \ramloop[8].ram.r_n_66\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_1\(0) => \ramloop[8].ram.r_n_67\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(3) => \ramloop[8].ram.r_n_68\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(2) => \ramloop[8].ram.r_n_69\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(1) => \ramloop[8].ram.r_n_70\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM36.ram_2\(0) => \ramloop[8].ram.r_n_71\,
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2)
    );
\ramloop[9].ram.r\: entity work.\weights_buffer_blk_mem_gen_prim_width__parameterized8\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(31) => \ramloop[9].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(30) => \ramloop[9].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(29) => \ramloop[9].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(28) => \ramloop[9].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(27) => \ramloop[9].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(26) => \ramloop[9].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(25) => \ramloop[9].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(24) => \ramloop[9].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(23) => \ramloop[9].ram.r_n_8\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(22) => \ramloop[9].ram.r_n_9\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(21) => \ramloop[9].ram.r_n_10\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(20) => \ramloop[9].ram.r_n_11\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(19) => \ramloop[9].ram.r_n_12\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(18) => \ramloop[9].ram.r_n_13\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(17) => \ramloop[9].ram.r_n_14\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(16) => \ramloop[9].ram.r_n_15\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(15) => \ramloop[9].ram.r_n_16\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(14) => \ramloop[9].ram.r_n_17\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(13) => \ramloop[9].ram.r_n_18\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(12) => \ramloop[9].ram.r_n_19\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(11) => \ramloop[9].ram.r_n_20\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(10) => \ramloop[9].ram.r_n_21\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(9) => \ramloop[9].ram.r_n_22\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(8) => \ramloop[9].ram.r_n_23\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(7) => \ramloop[9].ram.r_n_24\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(6) => \ramloop[9].ram.r_n_25\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(5) => \ramloop[9].ram.r_n_26\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(4) => \ramloop[9].ram.r_n_27\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(3) => \ramloop[9].ram.r_n_28\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(2) => \ramloop[9].ram.r_n_29\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(1) => \ramloop[9].ram.r_n_30\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => \ramloop[9].ram.r_n_31\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[9].ram.r_n_32\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[9].ram.r_n_33\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[9].ram.r_n_34\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[9].ram.r_n_35\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ => \ramloop[19].ram.r_n_36\,
      addra(9 downto 0) => addra(9 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_top : entity is "blk_mem_gen_top";
end weights_buffer_blk_mem_gen_top;

architecture STRUCTURE of weights_buffer_blk_mem_gen_top is
begin
\valid.cstr\: entity work.weights_buffer_blk_mem_gen_generic_cstr
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(511 downto 0) => douta(511 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_v8_4_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_v8_4_2_synth : entity is "blk_mem_gen_v8_4_2_synth";
end weights_buffer_blk_mem_gen_v8_4_2_synth;

architecture STRUCTURE of weights_buffer_blk_mem_gen_v8_4_2_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.weights_buffer_blk_mem_gen_top
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(511 downto 0) => douta(511 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer_blk_mem_gen_v8_4_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 511 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 511 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 511 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of weights_buffer_blk_mem_gen_v8_4_2 : entity is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of weights_buffer_blk_mem_gen_v8_4_2 : entity is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of weights_buffer_blk_mem_gen_v8_4_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of weights_buffer_blk_mem_gen_v8_4_2 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of weights_buffer_blk_mem_gen_v8_4_2 : entity is "21";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of weights_buffer_blk_mem_gen_v8_4_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of weights_buffer_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of weights_buffer_blk_mem_gen_v8_4_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of weights_buffer_blk_mem_gen_v8_4_2 : entity is "Estimated Power for IP     :     41.873736 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of weights_buffer_blk_mem_gen_v8_4_2 : entity is "virtex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of weights_buffer_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of weights_buffer_blk_mem_gen_v8_4_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of weights_buffer_blk_mem_gen_v8_4_2 : entity is "weights_buffer.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of weights_buffer_blk_mem_gen_v8_4_2 : entity is "weights_buffer.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1536;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 512;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 512;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of weights_buffer_blk_mem_gen_v8_4_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of weights_buffer_blk_mem_gen_v8_4_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1536;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 1536;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of weights_buffer_blk_mem_gen_v8_4_2 : entity is 512;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of weights_buffer_blk_mem_gen_v8_4_2 : entity is 512;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of weights_buffer_blk_mem_gen_v8_4_2 : entity is "virtex7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of weights_buffer_blk_mem_gen_v8_4_2 : entity is "blk_mem_gen_v8_4_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of weights_buffer_blk_mem_gen_v8_4_2 : entity is "yes";
end weights_buffer_blk_mem_gen_v8_4_2;

architecture STRUCTURE of weights_buffer_blk_mem_gen_v8_4_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(511) <= \<const0>\;
  doutb(510) <= \<const0>\;
  doutb(509) <= \<const0>\;
  doutb(508) <= \<const0>\;
  doutb(507) <= \<const0>\;
  doutb(506) <= \<const0>\;
  doutb(505) <= \<const0>\;
  doutb(504) <= \<const0>\;
  doutb(503) <= \<const0>\;
  doutb(502) <= \<const0>\;
  doutb(501) <= \<const0>\;
  doutb(500) <= \<const0>\;
  doutb(499) <= \<const0>\;
  doutb(498) <= \<const0>\;
  doutb(497) <= \<const0>\;
  doutb(496) <= \<const0>\;
  doutb(495) <= \<const0>\;
  doutb(494) <= \<const0>\;
  doutb(493) <= \<const0>\;
  doutb(492) <= \<const0>\;
  doutb(491) <= \<const0>\;
  doutb(490) <= \<const0>\;
  doutb(489) <= \<const0>\;
  doutb(488) <= \<const0>\;
  doutb(487) <= \<const0>\;
  doutb(486) <= \<const0>\;
  doutb(485) <= \<const0>\;
  doutb(484) <= \<const0>\;
  doutb(483) <= \<const0>\;
  doutb(482) <= \<const0>\;
  doutb(481) <= \<const0>\;
  doutb(480) <= \<const0>\;
  doutb(479) <= \<const0>\;
  doutb(478) <= \<const0>\;
  doutb(477) <= \<const0>\;
  doutb(476) <= \<const0>\;
  doutb(475) <= \<const0>\;
  doutb(474) <= \<const0>\;
  doutb(473) <= \<const0>\;
  doutb(472) <= \<const0>\;
  doutb(471) <= \<const0>\;
  doutb(470) <= \<const0>\;
  doutb(469) <= \<const0>\;
  doutb(468) <= \<const0>\;
  doutb(467) <= \<const0>\;
  doutb(466) <= \<const0>\;
  doutb(465) <= \<const0>\;
  doutb(464) <= \<const0>\;
  doutb(463) <= \<const0>\;
  doutb(462) <= \<const0>\;
  doutb(461) <= \<const0>\;
  doutb(460) <= \<const0>\;
  doutb(459) <= \<const0>\;
  doutb(458) <= \<const0>\;
  doutb(457) <= \<const0>\;
  doutb(456) <= \<const0>\;
  doutb(455) <= \<const0>\;
  doutb(454) <= \<const0>\;
  doutb(453) <= \<const0>\;
  doutb(452) <= \<const0>\;
  doutb(451) <= \<const0>\;
  doutb(450) <= \<const0>\;
  doutb(449) <= \<const0>\;
  doutb(448) <= \<const0>\;
  doutb(447) <= \<const0>\;
  doutb(446) <= \<const0>\;
  doutb(445) <= \<const0>\;
  doutb(444) <= \<const0>\;
  doutb(443) <= \<const0>\;
  doutb(442) <= \<const0>\;
  doutb(441) <= \<const0>\;
  doutb(440) <= \<const0>\;
  doutb(439) <= \<const0>\;
  doutb(438) <= \<const0>\;
  doutb(437) <= \<const0>\;
  doutb(436) <= \<const0>\;
  doutb(435) <= \<const0>\;
  doutb(434) <= \<const0>\;
  doutb(433) <= \<const0>\;
  doutb(432) <= \<const0>\;
  doutb(431) <= \<const0>\;
  doutb(430) <= \<const0>\;
  doutb(429) <= \<const0>\;
  doutb(428) <= \<const0>\;
  doutb(427) <= \<const0>\;
  doutb(426) <= \<const0>\;
  doutb(425) <= \<const0>\;
  doutb(424) <= \<const0>\;
  doutb(423) <= \<const0>\;
  doutb(422) <= \<const0>\;
  doutb(421) <= \<const0>\;
  doutb(420) <= \<const0>\;
  doutb(419) <= \<const0>\;
  doutb(418) <= \<const0>\;
  doutb(417) <= \<const0>\;
  doutb(416) <= \<const0>\;
  doutb(415) <= \<const0>\;
  doutb(414) <= \<const0>\;
  doutb(413) <= \<const0>\;
  doutb(412) <= \<const0>\;
  doutb(411) <= \<const0>\;
  doutb(410) <= \<const0>\;
  doutb(409) <= \<const0>\;
  doutb(408) <= \<const0>\;
  doutb(407) <= \<const0>\;
  doutb(406) <= \<const0>\;
  doutb(405) <= \<const0>\;
  doutb(404) <= \<const0>\;
  doutb(403) <= \<const0>\;
  doutb(402) <= \<const0>\;
  doutb(401) <= \<const0>\;
  doutb(400) <= \<const0>\;
  doutb(399) <= \<const0>\;
  doutb(398) <= \<const0>\;
  doutb(397) <= \<const0>\;
  doutb(396) <= \<const0>\;
  doutb(395) <= \<const0>\;
  doutb(394) <= \<const0>\;
  doutb(393) <= \<const0>\;
  doutb(392) <= \<const0>\;
  doutb(391) <= \<const0>\;
  doutb(390) <= \<const0>\;
  doutb(389) <= \<const0>\;
  doutb(388) <= \<const0>\;
  doutb(387) <= \<const0>\;
  doutb(386) <= \<const0>\;
  doutb(385) <= \<const0>\;
  doutb(384) <= \<const0>\;
  doutb(383) <= \<const0>\;
  doutb(382) <= \<const0>\;
  doutb(381) <= \<const0>\;
  doutb(380) <= \<const0>\;
  doutb(379) <= \<const0>\;
  doutb(378) <= \<const0>\;
  doutb(377) <= \<const0>\;
  doutb(376) <= \<const0>\;
  doutb(375) <= \<const0>\;
  doutb(374) <= \<const0>\;
  doutb(373) <= \<const0>\;
  doutb(372) <= \<const0>\;
  doutb(371) <= \<const0>\;
  doutb(370) <= \<const0>\;
  doutb(369) <= \<const0>\;
  doutb(368) <= \<const0>\;
  doutb(367) <= \<const0>\;
  doutb(366) <= \<const0>\;
  doutb(365) <= \<const0>\;
  doutb(364) <= \<const0>\;
  doutb(363) <= \<const0>\;
  doutb(362) <= \<const0>\;
  doutb(361) <= \<const0>\;
  doutb(360) <= \<const0>\;
  doutb(359) <= \<const0>\;
  doutb(358) <= \<const0>\;
  doutb(357) <= \<const0>\;
  doutb(356) <= \<const0>\;
  doutb(355) <= \<const0>\;
  doutb(354) <= \<const0>\;
  doutb(353) <= \<const0>\;
  doutb(352) <= \<const0>\;
  doutb(351) <= \<const0>\;
  doutb(350) <= \<const0>\;
  doutb(349) <= \<const0>\;
  doutb(348) <= \<const0>\;
  doutb(347) <= \<const0>\;
  doutb(346) <= \<const0>\;
  doutb(345) <= \<const0>\;
  doutb(344) <= \<const0>\;
  doutb(343) <= \<const0>\;
  doutb(342) <= \<const0>\;
  doutb(341) <= \<const0>\;
  doutb(340) <= \<const0>\;
  doutb(339) <= \<const0>\;
  doutb(338) <= \<const0>\;
  doutb(337) <= \<const0>\;
  doutb(336) <= \<const0>\;
  doutb(335) <= \<const0>\;
  doutb(334) <= \<const0>\;
  doutb(333) <= \<const0>\;
  doutb(332) <= \<const0>\;
  doutb(331) <= \<const0>\;
  doutb(330) <= \<const0>\;
  doutb(329) <= \<const0>\;
  doutb(328) <= \<const0>\;
  doutb(327) <= \<const0>\;
  doutb(326) <= \<const0>\;
  doutb(325) <= \<const0>\;
  doutb(324) <= \<const0>\;
  doutb(323) <= \<const0>\;
  doutb(322) <= \<const0>\;
  doutb(321) <= \<const0>\;
  doutb(320) <= \<const0>\;
  doutb(319) <= \<const0>\;
  doutb(318) <= \<const0>\;
  doutb(317) <= \<const0>\;
  doutb(316) <= \<const0>\;
  doutb(315) <= \<const0>\;
  doutb(314) <= \<const0>\;
  doutb(313) <= \<const0>\;
  doutb(312) <= \<const0>\;
  doutb(311) <= \<const0>\;
  doutb(310) <= \<const0>\;
  doutb(309) <= \<const0>\;
  doutb(308) <= \<const0>\;
  doutb(307) <= \<const0>\;
  doutb(306) <= \<const0>\;
  doutb(305) <= \<const0>\;
  doutb(304) <= \<const0>\;
  doutb(303) <= \<const0>\;
  doutb(302) <= \<const0>\;
  doutb(301) <= \<const0>\;
  doutb(300) <= \<const0>\;
  doutb(299) <= \<const0>\;
  doutb(298) <= \<const0>\;
  doutb(297) <= \<const0>\;
  doutb(296) <= \<const0>\;
  doutb(295) <= \<const0>\;
  doutb(294) <= \<const0>\;
  doutb(293) <= \<const0>\;
  doutb(292) <= \<const0>\;
  doutb(291) <= \<const0>\;
  doutb(290) <= \<const0>\;
  doutb(289) <= \<const0>\;
  doutb(288) <= \<const0>\;
  doutb(287) <= \<const0>\;
  doutb(286) <= \<const0>\;
  doutb(285) <= \<const0>\;
  doutb(284) <= \<const0>\;
  doutb(283) <= \<const0>\;
  doutb(282) <= \<const0>\;
  doutb(281) <= \<const0>\;
  doutb(280) <= \<const0>\;
  doutb(279) <= \<const0>\;
  doutb(278) <= \<const0>\;
  doutb(277) <= \<const0>\;
  doutb(276) <= \<const0>\;
  doutb(275) <= \<const0>\;
  doutb(274) <= \<const0>\;
  doutb(273) <= \<const0>\;
  doutb(272) <= \<const0>\;
  doutb(271) <= \<const0>\;
  doutb(270) <= \<const0>\;
  doutb(269) <= \<const0>\;
  doutb(268) <= \<const0>\;
  doutb(267) <= \<const0>\;
  doutb(266) <= \<const0>\;
  doutb(265) <= \<const0>\;
  doutb(264) <= \<const0>\;
  doutb(263) <= \<const0>\;
  doutb(262) <= \<const0>\;
  doutb(261) <= \<const0>\;
  doutb(260) <= \<const0>\;
  doutb(259) <= \<const0>\;
  doutb(258) <= \<const0>\;
  doutb(257) <= \<const0>\;
  doutb(256) <= \<const0>\;
  doutb(255) <= \<const0>\;
  doutb(254) <= \<const0>\;
  doutb(253) <= \<const0>\;
  doutb(252) <= \<const0>\;
  doutb(251) <= \<const0>\;
  doutb(250) <= \<const0>\;
  doutb(249) <= \<const0>\;
  doutb(248) <= \<const0>\;
  doutb(247) <= \<const0>\;
  doutb(246) <= \<const0>\;
  doutb(245) <= \<const0>\;
  doutb(244) <= \<const0>\;
  doutb(243) <= \<const0>\;
  doutb(242) <= \<const0>\;
  doutb(241) <= \<const0>\;
  doutb(240) <= \<const0>\;
  doutb(239) <= \<const0>\;
  doutb(238) <= \<const0>\;
  doutb(237) <= \<const0>\;
  doutb(236) <= \<const0>\;
  doutb(235) <= \<const0>\;
  doutb(234) <= \<const0>\;
  doutb(233) <= \<const0>\;
  doutb(232) <= \<const0>\;
  doutb(231) <= \<const0>\;
  doutb(230) <= \<const0>\;
  doutb(229) <= \<const0>\;
  doutb(228) <= \<const0>\;
  doutb(227) <= \<const0>\;
  doutb(226) <= \<const0>\;
  doutb(225) <= \<const0>\;
  doutb(224) <= \<const0>\;
  doutb(223) <= \<const0>\;
  doutb(222) <= \<const0>\;
  doutb(221) <= \<const0>\;
  doutb(220) <= \<const0>\;
  doutb(219) <= \<const0>\;
  doutb(218) <= \<const0>\;
  doutb(217) <= \<const0>\;
  doutb(216) <= \<const0>\;
  doutb(215) <= \<const0>\;
  doutb(214) <= \<const0>\;
  doutb(213) <= \<const0>\;
  doutb(212) <= \<const0>\;
  doutb(211) <= \<const0>\;
  doutb(210) <= \<const0>\;
  doutb(209) <= \<const0>\;
  doutb(208) <= \<const0>\;
  doutb(207) <= \<const0>\;
  doutb(206) <= \<const0>\;
  doutb(205) <= \<const0>\;
  doutb(204) <= \<const0>\;
  doutb(203) <= \<const0>\;
  doutb(202) <= \<const0>\;
  doutb(201) <= \<const0>\;
  doutb(200) <= \<const0>\;
  doutb(199) <= \<const0>\;
  doutb(198) <= \<const0>\;
  doutb(197) <= \<const0>\;
  doutb(196) <= \<const0>\;
  doutb(195) <= \<const0>\;
  doutb(194) <= \<const0>\;
  doutb(193) <= \<const0>\;
  doutb(192) <= \<const0>\;
  doutb(191) <= \<const0>\;
  doutb(190) <= \<const0>\;
  doutb(189) <= \<const0>\;
  doutb(188) <= \<const0>\;
  doutb(187) <= \<const0>\;
  doutb(186) <= \<const0>\;
  doutb(185) <= \<const0>\;
  doutb(184) <= \<const0>\;
  doutb(183) <= \<const0>\;
  doutb(182) <= \<const0>\;
  doutb(181) <= \<const0>\;
  doutb(180) <= \<const0>\;
  doutb(179) <= \<const0>\;
  doutb(178) <= \<const0>\;
  doutb(177) <= \<const0>\;
  doutb(176) <= \<const0>\;
  doutb(175) <= \<const0>\;
  doutb(174) <= \<const0>\;
  doutb(173) <= \<const0>\;
  doutb(172) <= \<const0>\;
  doutb(171) <= \<const0>\;
  doutb(170) <= \<const0>\;
  doutb(169) <= \<const0>\;
  doutb(168) <= \<const0>\;
  doutb(167) <= \<const0>\;
  doutb(166) <= \<const0>\;
  doutb(165) <= \<const0>\;
  doutb(164) <= \<const0>\;
  doutb(163) <= \<const0>\;
  doutb(162) <= \<const0>\;
  doutb(161) <= \<const0>\;
  doutb(160) <= \<const0>\;
  doutb(159) <= \<const0>\;
  doutb(158) <= \<const0>\;
  doutb(157) <= \<const0>\;
  doutb(156) <= \<const0>\;
  doutb(155) <= \<const0>\;
  doutb(154) <= \<const0>\;
  doutb(153) <= \<const0>\;
  doutb(152) <= \<const0>\;
  doutb(151) <= \<const0>\;
  doutb(150) <= \<const0>\;
  doutb(149) <= \<const0>\;
  doutb(148) <= \<const0>\;
  doutb(147) <= \<const0>\;
  doutb(146) <= \<const0>\;
  doutb(145) <= \<const0>\;
  doutb(144) <= \<const0>\;
  doutb(143) <= \<const0>\;
  doutb(142) <= \<const0>\;
  doutb(141) <= \<const0>\;
  doutb(140) <= \<const0>\;
  doutb(139) <= \<const0>\;
  doutb(138) <= \<const0>\;
  doutb(137) <= \<const0>\;
  doutb(136) <= \<const0>\;
  doutb(135) <= \<const0>\;
  doutb(134) <= \<const0>\;
  doutb(133) <= \<const0>\;
  doutb(132) <= \<const0>\;
  doutb(131) <= \<const0>\;
  doutb(130) <= \<const0>\;
  doutb(129) <= \<const0>\;
  doutb(128) <= \<const0>\;
  doutb(127) <= \<const0>\;
  doutb(126) <= \<const0>\;
  doutb(125) <= \<const0>\;
  doutb(124) <= \<const0>\;
  doutb(123) <= \<const0>\;
  doutb(122) <= \<const0>\;
  doutb(121) <= \<const0>\;
  doutb(120) <= \<const0>\;
  doutb(119) <= \<const0>\;
  doutb(118) <= \<const0>\;
  doutb(117) <= \<const0>\;
  doutb(116) <= \<const0>\;
  doutb(115) <= \<const0>\;
  doutb(114) <= \<const0>\;
  doutb(113) <= \<const0>\;
  doutb(112) <= \<const0>\;
  doutb(111) <= \<const0>\;
  doutb(110) <= \<const0>\;
  doutb(109) <= \<const0>\;
  doutb(108) <= \<const0>\;
  doutb(107) <= \<const0>\;
  doutb(106) <= \<const0>\;
  doutb(105) <= \<const0>\;
  doutb(104) <= \<const0>\;
  doutb(103) <= \<const0>\;
  doutb(102) <= \<const0>\;
  doutb(101) <= \<const0>\;
  doutb(100) <= \<const0>\;
  doutb(99) <= \<const0>\;
  doutb(98) <= \<const0>\;
  doutb(97) <= \<const0>\;
  doutb(96) <= \<const0>\;
  doutb(95) <= \<const0>\;
  doutb(94) <= \<const0>\;
  doutb(93) <= \<const0>\;
  doutb(92) <= \<const0>\;
  doutb(91) <= \<const0>\;
  doutb(90) <= \<const0>\;
  doutb(89) <= \<const0>\;
  doutb(88) <= \<const0>\;
  doutb(87) <= \<const0>\;
  doutb(86) <= \<const0>\;
  doutb(85) <= \<const0>\;
  doutb(84) <= \<const0>\;
  doutb(83) <= \<const0>\;
  doutb(82) <= \<const0>\;
  doutb(81) <= \<const0>\;
  doutb(80) <= \<const0>\;
  doutb(79) <= \<const0>\;
  doutb(78) <= \<const0>\;
  doutb(77) <= \<const0>\;
  doutb(76) <= \<const0>\;
  doutb(75) <= \<const0>\;
  doutb(74) <= \<const0>\;
  doutb(73) <= \<const0>\;
  doutb(72) <= \<const0>\;
  doutb(71) <= \<const0>\;
  doutb(70) <= \<const0>\;
  doutb(69) <= \<const0>\;
  doutb(68) <= \<const0>\;
  doutb(67) <= \<const0>\;
  doutb(66) <= \<const0>\;
  doutb(65) <= \<const0>\;
  doutb(64) <= \<const0>\;
  doutb(63) <= \<const0>\;
  doutb(62) <= \<const0>\;
  doutb(61) <= \<const0>\;
  doutb(60) <= \<const0>\;
  doutb(59) <= \<const0>\;
  doutb(58) <= \<const0>\;
  doutb(57) <= \<const0>\;
  doutb(56) <= \<const0>\;
  doutb(55) <= \<const0>\;
  doutb(54) <= \<const0>\;
  doutb(53) <= \<const0>\;
  doutb(52) <= \<const0>\;
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39) <= \<const0>\;
  doutb(38) <= \<const0>\;
  doutb(37) <= \<const0>\;
  doutb(36) <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(511) <= \<const0>\;
  s_axi_rdata(510) <= \<const0>\;
  s_axi_rdata(509) <= \<const0>\;
  s_axi_rdata(508) <= \<const0>\;
  s_axi_rdata(507) <= \<const0>\;
  s_axi_rdata(506) <= \<const0>\;
  s_axi_rdata(505) <= \<const0>\;
  s_axi_rdata(504) <= \<const0>\;
  s_axi_rdata(503) <= \<const0>\;
  s_axi_rdata(502) <= \<const0>\;
  s_axi_rdata(501) <= \<const0>\;
  s_axi_rdata(500) <= \<const0>\;
  s_axi_rdata(499) <= \<const0>\;
  s_axi_rdata(498) <= \<const0>\;
  s_axi_rdata(497) <= \<const0>\;
  s_axi_rdata(496) <= \<const0>\;
  s_axi_rdata(495) <= \<const0>\;
  s_axi_rdata(494) <= \<const0>\;
  s_axi_rdata(493) <= \<const0>\;
  s_axi_rdata(492) <= \<const0>\;
  s_axi_rdata(491) <= \<const0>\;
  s_axi_rdata(490) <= \<const0>\;
  s_axi_rdata(489) <= \<const0>\;
  s_axi_rdata(488) <= \<const0>\;
  s_axi_rdata(487) <= \<const0>\;
  s_axi_rdata(486) <= \<const0>\;
  s_axi_rdata(485) <= \<const0>\;
  s_axi_rdata(484) <= \<const0>\;
  s_axi_rdata(483) <= \<const0>\;
  s_axi_rdata(482) <= \<const0>\;
  s_axi_rdata(481) <= \<const0>\;
  s_axi_rdata(480) <= \<const0>\;
  s_axi_rdata(479) <= \<const0>\;
  s_axi_rdata(478) <= \<const0>\;
  s_axi_rdata(477) <= \<const0>\;
  s_axi_rdata(476) <= \<const0>\;
  s_axi_rdata(475) <= \<const0>\;
  s_axi_rdata(474) <= \<const0>\;
  s_axi_rdata(473) <= \<const0>\;
  s_axi_rdata(472) <= \<const0>\;
  s_axi_rdata(471) <= \<const0>\;
  s_axi_rdata(470) <= \<const0>\;
  s_axi_rdata(469) <= \<const0>\;
  s_axi_rdata(468) <= \<const0>\;
  s_axi_rdata(467) <= \<const0>\;
  s_axi_rdata(466) <= \<const0>\;
  s_axi_rdata(465) <= \<const0>\;
  s_axi_rdata(464) <= \<const0>\;
  s_axi_rdata(463) <= \<const0>\;
  s_axi_rdata(462) <= \<const0>\;
  s_axi_rdata(461) <= \<const0>\;
  s_axi_rdata(460) <= \<const0>\;
  s_axi_rdata(459) <= \<const0>\;
  s_axi_rdata(458) <= \<const0>\;
  s_axi_rdata(457) <= \<const0>\;
  s_axi_rdata(456) <= \<const0>\;
  s_axi_rdata(455) <= \<const0>\;
  s_axi_rdata(454) <= \<const0>\;
  s_axi_rdata(453) <= \<const0>\;
  s_axi_rdata(452) <= \<const0>\;
  s_axi_rdata(451) <= \<const0>\;
  s_axi_rdata(450) <= \<const0>\;
  s_axi_rdata(449) <= \<const0>\;
  s_axi_rdata(448) <= \<const0>\;
  s_axi_rdata(447) <= \<const0>\;
  s_axi_rdata(446) <= \<const0>\;
  s_axi_rdata(445) <= \<const0>\;
  s_axi_rdata(444) <= \<const0>\;
  s_axi_rdata(443) <= \<const0>\;
  s_axi_rdata(442) <= \<const0>\;
  s_axi_rdata(441) <= \<const0>\;
  s_axi_rdata(440) <= \<const0>\;
  s_axi_rdata(439) <= \<const0>\;
  s_axi_rdata(438) <= \<const0>\;
  s_axi_rdata(437) <= \<const0>\;
  s_axi_rdata(436) <= \<const0>\;
  s_axi_rdata(435) <= \<const0>\;
  s_axi_rdata(434) <= \<const0>\;
  s_axi_rdata(433) <= \<const0>\;
  s_axi_rdata(432) <= \<const0>\;
  s_axi_rdata(431) <= \<const0>\;
  s_axi_rdata(430) <= \<const0>\;
  s_axi_rdata(429) <= \<const0>\;
  s_axi_rdata(428) <= \<const0>\;
  s_axi_rdata(427) <= \<const0>\;
  s_axi_rdata(426) <= \<const0>\;
  s_axi_rdata(425) <= \<const0>\;
  s_axi_rdata(424) <= \<const0>\;
  s_axi_rdata(423) <= \<const0>\;
  s_axi_rdata(422) <= \<const0>\;
  s_axi_rdata(421) <= \<const0>\;
  s_axi_rdata(420) <= \<const0>\;
  s_axi_rdata(419) <= \<const0>\;
  s_axi_rdata(418) <= \<const0>\;
  s_axi_rdata(417) <= \<const0>\;
  s_axi_rdata(416) <= \<const0>\;
  s_axi_rdata(415) <= \<const0>\;
  s_axi_rdata(414) <= \<const0>\;
  s_axi_rdata(413) <= \<const0>\;
  s_axi_rdata(412) <= \<const0>\;
  s_axi_rdata(411) <= \<const0>\;
  s_axi_rdata(410) <= \<const0>\;
  s_axi_rdata(409) <= \<const0>\;
  s_axi_rdata(408) <= \<const0>\;
  s_axi_rdata(407) <= \<const0>\;
  s_axi_rdata(406) <= \<const0>\;
  s_axi_rdata(405) <= \<const0>\;
  s_axi_rdata(404) <= \<const0>\;
  s_axi_rdata(403) <= \<const0>\;
  s_axi_rdata(402) <= \<const0>\;
  s_axi_rdata(401) <= \<const0>\;
  s_axi_rdata(400) <= \<const0>\;
  s_axi_rdata(399) <= \<const0>\;
  s_axi_rdata(398) <= \<const0>\;
  s_axi_rdata(397) <= \<const0>\;
  s_axi_rdata(396) <= \<const0>\;
  s_axi_rdata(395) <= \<const0>\;
  s_axi_rdata(394) <= \<const0>\;
  s_axi_rdata(393) <= \<const0>\;
  s_axi_rdata(392) <= \<const0>\;
  s_axi_rdata(391) <= \<const0>\;
  s_axi_rdata(390) <= \<const0>\;
  s_axi_rdata(389) <= \<const0>\;
  s_axi_rdata(388) <= \<const0>\;
  s_axi_rdata(387) <= \<const0>\;
  s_axi_rdata(386) <= \<const0>\;
  s_axi_rdata(385) <= \<const0>\;
  s_axi_rdata(384) <= \<const0>\;
  s_axi_rdata(383) <= \<const0>\;
  s_axi_rdata(382) <= \<const0>\;
  s_axi_rdata(381) <= \<const0>\;
  s_axi_rdata(380) <= \<const0>\;
  s_axi_rdata(379) <= \<const0>\;
  s_axi_rdata(378) <= \<const0>\;
  s_axi_rdata(377) <= \<const0>\;
  s_axi_rdata(376) <= \<const0>\;
  s_axi_rdata(375) <= \<const0>\;
  s_axi_rdata(374) <= \<const0>\;
  s_axi_rdata(373) <= \<const0>\;
  s_axi_rdata(372) <= \<const0>\;
  s_axi_rdata(371) <= \<const0>\;
  s_axi_rdata(370) <= \<const0>\;
  s_axi_rdata(369) <= \<const0>\;
  s_axi_rdata(368) <= \<const0>\;
  s_axi_rdata(367) <= \<const0>\;
  s_axi_rdata(366) <= \<const0>\;
  s_axi_rdata(365) <= \<const0>\;
  s_axi_rdata(364) <= \<const0>\;
  s_axi_rdata(363) <= \<const0>\;
  s_axi_rdata(362) <= \<const0>\;
  s_axi_rdata(361) <= \<const0>\;
  s_axi_rdata(360) <= \<const0>\;
  s_axi_rdata(359) <= \<const0>\;
  s_axi_rdata(358) <= \<const0>\;
  s_axi_rdata(357) <= \<const0>\;
  s_axi_rdata(356) <= \<const0>\;
  s_axi_rdata(355) <= \<const0>\;
  s_axi_rdata(354) <= \<const0>\;
  s_axi_rdata(353) <= \<const0>\;
  s_axi_rdata(352) <= \<const0>\;
  s_axi_rdata(351) <= \<const0>\;
  s_axi_rdata(350) <= \<const0>\;
  s_axi_rdata(349) <= \<const0>\;
  s_axi_rdata(348) <= \<const0>\;
  s_axi_rdata(347) <= \<const0>\;
  s_axi_rdata(346) <= \<const0>\;
  s_axi_rdata(345) <= \<const0>\;
  s_axi_rdata(344) <= \<const0>\;
  s_axi_rdata(343) <= \<const0>\;
  s_axi_rdata(342) <= \<const0>\;
  s_axi_rdata(341) <= \<const0>\;
  s_axi_rdata(340) <= \<const0>\;
  s_axi_rdata(339) <= \<const0>\;
  s_axi_rdata(338) <= \<const0>\;
  s_axi_rdata(337) <= \<const0>\;
  s_axi_rdata(336) <= \<const0>\;
  s_axi_rdata(335) <= \<const0>\;
  s_axi_rdata(334) <= \<const0>\;
  s_axi_rdata(333) <= \<const0>\;
  s_axi_rdata(332) <= \<const0>\;
  s_axi_rdata(331) <= \<const0>\;
  s_axi_rdata(330) <= \<const0>\;
  s_axi_rdata(329) <= \<const0>\;
  s_axi_rdata(328) <= \<const0>\;
  s_axi_rdata(327) <= \<const0>\;
  s_axi_rdata(326) <= \<const0>\;
  s_axi_rdata(325) <= \<const0>\;
  s_axi_rdata(324) <= \<const0>\;
  s_axi_rdata(323) <= \<const0>\;
  s_axi_rdata(322) <= \<const0>\;
  s_axi_rdata(321) <= \<const0>\;
  s_axi_rdata(320) <= \<const0>\;
  s_axi_rdata(319) <= \<const0>\;
  s_axi_rdata(318) <= \<const0>\;
  s_axi_rdata(317) <= \<const0>\;
  s_axi_rdata(316) <= \<const0>\;
  s_axi_rdata(315) <= \<const0>\;
  s_axi_rdata(314) <= \<const0>\;
  s_axi_rdata(313) <= \<const0>\;
  s_axi_rdata(312) <= \<const0>\;
  s_axi_rdata(311) <= \<const0>\;
  s_axi_rdata(310) <= \<const0>\;
  s_axi_rdata(309) <= \<const0>\;
  s_axi_rdata(308) <= \<const0>\;
  s_axi_rdata(307) <= \<const0>\;
  s_axi_rdata(306) <= \<const0>\;
  s_axi_rdata(305) <= \<const0>\;
  s_axi_rdata(304) <= \<const0>\;
  s_axi_rdata(303) <= \<const0>\;
  s_axi_rdata(302) <= \<const0>\;
  s_axi_rdata(301) <= \<const0>\;
  s_axi_rdata(300) <= \<const0>\;
  s_axi_rdata(299) <= \<const0>\;
  s_axi_rdata(298) <= \<const0>\;
  s_axi_rdata(297) <= \<const0>\;
  s_axi_rdata(296) <= \<const0>\;
  s_axi_rdata(295) <= \<const0>\;
  s_axi_rdata(294) <= \<const0>\;
  s_axi_rdata(293) <= \<const0>\;
  s_axi_rdata(292) <= \<const0>\;
  s_axi_rdata(291) <= \<const0>\;
  s_axi_rdata(290) <= \<const0>\;
  s_axi_rdata(289) <= \<const0>\;
  s_axi_rdata(288) <= \<const0>\;
  s_axi_rdata(287) <= \<const0>\;
  s_axi_rdata(286) <= \<const0>\;
  s_axi_rdata(285) <= \<const0>\;
  s_axi_rdata(284) <= \<const0>\;
  s_axi_rdata(283) <= \<const0>\;
  s_axi_rdata(282) <= \<const0>\;
  s_axi_rdata(281) <= \<const0>\;
  s_axi_rdata(280) <= \<const0>\;
  s_axi_rdata(279) <= \<const0>\;
  s_axi_rdata(278) <= \<const0>\;
  s_axi_rdata(277) <= \<const0>\;
  s_axi_rdata(276) <= \<const0>\;
  s_axi_rdata(275) <= \<const0>\;
  s_axi_rdata(274) <= \<const0>\;
  s_axi_rdata(273) <= \<const0>\;
  s_axi_rdata(272) <= \<const0>\;
  s_axi_rdata(271) <= \<const0>\;
  s_axi_rdata(270) <= \<const0>\;
  s_axi_rdata(269) <= \<const0>\;
  s_axi_rdata(268) <= \<const0>\;
  s_axi_rdata(267) <= \<const0>\;
  s_axi_rdata(266) <= \<const0>\;
  s_axi_rdata(265) <= \<const0>\;
  s_axi_rdata(264) <= \<const0>\;
  s_axi_rdata(263) <= \<const0>\;
  s_axi_rdata(262) <= \<const0>\;
  s_axi_rdata(261) <= \<const0>\;
  s_axi_rdata(260) <= \<const0>\;
  s_axi_rdata(259) <= \<const0>\;
  s_axi_rdata(258) <= \<const0>\;
  s_axi_rdata(257) <= \<const0>\;
  s_axi_rdata(256) <= \<const0>\;
  s_axi_rdata(255) <= \<const0>\;
  s_axi_rdata(254) <= \<const0>\;
  s_axi_rdata(253) <= \<const0>\;
  s_axi_rdata(252) <= \<const0>\;
  s_axi_rdata(251) <= \<const0>\;
  s_axi_rdata(250) <= \<const0>\;
  s_axi_rdata(249) <= \<const0>\;
  s_axi_rdata(248) <= \<const0>\;
  s_axi_rdata(247) <= \<const0>\;
  s_axi_rdata(246) <= \<const0>\;
  s_axi_rdata(245) <= \<const0>\;
  s_axi_rdata(244) <= \<const0>\;
  s_axi_rdata(243) <= \<const0>\;
  s_axi_rdata(242) <= \<const0>\;
  s_axi_rdata(241) <= \<const0>\;
  s_axi_rdata(240) <= \<const0>\;
  s_axi_rdata(239) <= \<const0>\;
  s_axi_rdata(238) <= \<const0>\;
  s_axi_rdata(237) <= \<const0>\;
  s_axi_rdata(236) <= \<const0>\;
  s_axi_rdata(235) <= \<const0>\;
  s_axi_rdata(234) <= \<const0>\;
  s_axi_rdata(233) <= \<const0>\;
  s_axi_rdata(232) <= \<const0>\;
  s_axi_rdata(231) <= \<const0>\;
  s_axi_rdata(230) <= \<const0>\;
  s_axi_rdata(229) <= \<const0>\;
  s_axi_rdata(228) <= \<const0>\;
  s_axi_rdata(227) <= \<const0>\;
  s_axi_rdata(226) <= \<const0>\;
  s_axi_rdata(225) <= \<const0>\;
  s_axi_rdata(224) <= \<const0>\;
  s_axi_rdata(223) <= \<const0>\;
  s_axi_rdata(222) <= \<const0>\;
  s_axi_rdata(221) <= \<const0>\;
  s_axi_rdata(220) <= \<const0>\;
  s_axi_rdata(219) <= \<const0>\;
  s_axi_rdata(218) <= \<const0>\;
  s_axi_rdata(217) <= \<const0>\;
  s_axi_rdata(216) <= \<const0>\;
  s_axi_rdata(215) <= \<const0>\;
  s_axi_rdata(214) <= \<const0>\;
  s_axi_rdata(213) <= \<const0>\;
  s_axi_rdata(212) <= \<const0>\;
  s_axi_rdata(211) <= \<const0>\;
  s_axi_rdata(210) <= \<const0>\;
  s_axi_rdata(209) <= \<const0>\;
  s_axi_rdata(208) <= \<const0>\;
  s_axi_rdata(207) <= \<const0>\;
  s_axi_rdata(206) <= \<const0>\;
  s_axi_rdata(205) <= \<const0>\;
  s_axi_rdata(204) <= \<const0>\;
  s_axi_rdata(203) <= \<const0>\;
  s_axi_rdata(202) <= \<const0>\;
  s_axi_rdata(201) <= \<const0>\;
  s_axi_rdata(200) <= \<const0>\;
  s_axi_rdata(199) <= \<const0>\;
  s_axi_rdata(198) <= \<const0>\;
  s_axi_rdata(197) <= \<const0>\;
  s_axi_rdata(196) <= \<const0>\;
  s_axi_rdata(195) <= \<const0>\;
  s_axi_rdata(194) <= \<const0>\;
  s_axi_rdata(193) <= \<const0>\;
  s_axi_rdata(192) <= \<const0>\;
  s_axi_rdata(191) <= \<const0>\;
  s_axi_rdata(190) <= \<const0>\;
  s_axi_rdata(189) <= \<const0>\;
  s_axi_rdata(188) <= \<const0>\;
  s_axi_rdata(187) <= \<const0>\;
  s_axi_rdata(186) <= \<const0>\;
  s_axi_rdata(185) <= \<const0>\;
  s_axi_rdata(184) <= \<const0>\;
  s_axi_rdata(183) <= \<const0>\;
  s_axi_rdata(182) <= \<const0>\;
  s_axi_rdata(181) <= \<const0>\;
  s_axi_rdata(180) <= \<const0>\;
  s_axi_rdata(179) <= \<const0>\;
  s_axi_rdata(178) <= \<const0>\;
  s_axi_rdata(177) <= \<const0>\;
  s_axi_rdata(176) <= \<const0>\;
  s_axi_rdata(175) <= \<const0>\;
  s_axi_rdata(174) <= \<const0>\;
  s_axi_rdata(173) <= \<const0>\;
  s_axi_rdata(172) <= \<const0>\;
  s_axi_rdata(171) <= \<const0>\;
  s_axi_rdata(170) <= \<const0>\;
  s_axi_rdata(169) <= \<const0>\;
  s_axi_rdata(168) <= \<const0>\;
  s_axi_rdata(167) <= \<const0>\;
  s_axi_rdata(166) <= \<const0>\;
  s_axi_rdata(165) <= \<const0>\;
  s_axi_rdata(164) <= \<const0>\;
  s_axi_rdata(163) <= \<const0>\;
  s_axi_rdata(162) <= \<const0>\;
  s_axi_rdata(161) <= \<const0>\;
  s_axi_rdata(160) <= \<const0>\;
  s_axi_rdata(159) <= \<const0>\;
  s_axi_rdata(158) <= \<const0>\;
  s_axi_rdata(157) <= \<const0>\;
  s_axi_rdata(156) <= \<const0>\;
  s_axi_rdata(155) <= \<const0>\;
  s_axi_rdata(154) <= \<const0>\;
  s_axi_rdata(153) <= \<const0>\;
  s_axi_rdata(152) <= \<const0>\;
  s_axi_rdata(151) <= \<const0>\;
  s_axi_rdata(150) <= \<const0>\;
  s_axi_rdata(149) <= \<const0>\;
  s_axi_rdata(148) <= \<const0>\;
  s_axi_rdata(147) <= \<const0>\;
  s_axi_rdata(146) <= \<const0>\;
  s_axi_rdata(145) <= \<const0>\;
  s_axi_rdata(144) <= \<const0>\;
  s_axi_rdata(143) <= \<const0>\;
  s_axi_rdata(142) <= \<const0>\;
  s_axi_rdata(141) <= \<const0>\;
  s_axi_rdata(140) <= \<const0>\;
  s_axi_rdata(139) <= \<const0>\;
  s_axi_rdata(138) <= \<const0>\;
  s_axi_rdata(137) <= \<const0>\;
  s_axi_rdata(136) <= \<const0>\;
  s_axi_rdata(135) <= \<const0>\;
  s_axi_rdata(134) <= \<const0>\;
  s_axi_rdata(133) <= \<const0>\;
  s_axi_rdata(132) <= \<const0>\;
  s_axi_rdata(131) <= \<const0>\;
  s_axi_rdata(130) <= \<const0>\;
  s_axi_rdata(129) <= \<const0>\;
  s_axi_rdata(128) <= \<const0>\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.weights_buffer_blk_mem_gen_v8_4_2_synth
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      clka => clka,
      douta(511 downto 0) => douta(511 downto 0),
      ena => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity weights_buffer is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of weights_buffer : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of weights_buffer : entity is "weights_buffer,blk_mem_gen_v8_4_2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of weights_buffer : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of weights_buffer : entity is "blk_mem_gen_v8_4_2,Vivado 2018.3";
end weights_buffer;

architecture STRUCTURE of weights_buffer is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "21";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     41.873736 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "weights_buffer.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "weights_buffer.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 1536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 1536;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 512;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 512;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 1536;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 1536;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 512;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 512;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "virtex7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.weights_buffer_blk_mem_gen_v8_4_2
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => B"00000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      dinb(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(511 downto 0) => douta(511 downto 0),
      doutb(511 downto 0) => NLW_U0_doutb_UNCONNECTED(511 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(10 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(10 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(10 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(10 downto 0),
      s_axi_rdata(511 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(511 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
