-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Sep  6 21:19:53 2024
-- Host        : yang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/vivado_pros/yolov5_accel_2/yolov5_accel_2.srcs/sources_1/ip/signed_mult_50_18/signed_mult_50_18_stub.vhdl
-- Design      : signed_mult_50_18
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signed_mult_50_18 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 42 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    CE : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 60 downto 0 )
  );

end signed_mult_50_18;

architecture stub of signed_mult_50_18 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[42:0],B[17:0],CE,P[60:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_14,Vivado 2018.3";
begin
end;
