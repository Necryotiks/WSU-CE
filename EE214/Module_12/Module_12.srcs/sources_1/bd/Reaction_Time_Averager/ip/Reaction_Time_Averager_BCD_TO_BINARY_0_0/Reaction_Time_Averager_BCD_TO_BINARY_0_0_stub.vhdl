-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:24 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_BCD_TO_BINARY_0_0/Reaction_Time_Averager_BCD_TO_BINARY_0_0_stub.vhdl
-- Design      : Reaction_Time_Averager_BCD_TO_BINARY_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reaction_Time_Averager_BCD_TO_BINARY_0_0 is
  Port ( 
    i_CLK : in STD_LOGIC;
    i_Digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_DATA : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end Reaction_Time_Averager_BCD_TO_BINARY_0_0;

architecture stub of Reaction_Time_Averager_BCD_TO_BINARY_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_CLK,i_Digit1[3:0],i_Digit2[3:0],i_Digit3[3:0],i_Digit4[3:0],o_DATA[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BCD_TO_BINARY,Vivado 2018.2";
begin
end;
