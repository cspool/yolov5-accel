-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Jan 22 00:43:15 2025
-- Host        : zack running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project/Vivado/yolov5_accel/yolov5_accel.srcs/sources_1/ip/load_input_info_fifo_1/load_input_info_fifo_stub.vhdl
-- Design      : load_input_info_fifo
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity load_input_info_fifo is
  Port ( 
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );

end load_input_info_fifo;

architecture stub of load_input_info_fifo is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,srst,din[31:0],wr_en,rd_en,dout[31:0],full,empty,data_count[8:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_3,Vivado 2018.3";
begin
end;
