-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:03:35 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Reaction_Time_Averager_xlslice_0_0 -prefix
--               Reaction_Time_Averager_xlslice_0_0_ Reaction_Time_Averager_xlslice_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Reaction_Time_Averager_xlslice_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Reaction_Time_Averager_xlslice_0_0 : entity is "Reaction_Time_Averager_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Reaction_Time_Averager_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Reaction_Time_Averager_xlslice_0_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.2";
end Reaction_Time_Averager_xlslice_0_0;

architecture STRUCTURE of Reaction_Time_Averager_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Dout(3 downto 0) <= \^din\(15 downto 12);
  \^din\(15 downto 12) <= Din(15 downto 12);
end STRUCTURE;
