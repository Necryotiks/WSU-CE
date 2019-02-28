-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:24 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_LSFR_0_0/Reaction_Time_Averager_LSFR_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_LSFR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_LSFR_0_0_LSFR is
  port (
    o_OUT : out STD_LOGIC_VECTOR ( 12 downto 0 );
    i_EN : in STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reaction_Time_Averager_LSFR_0_0_LSFR : entity is "LSFR";
end Reaction_Time_Averager_LSFR_0_0_LSFR;

architecture STRUCTURE of Reaction_Time_Averager_LSFR_0_0_LSFR is
  signal \^o_out\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  o_OUT(12 downto 0) <= \^o_out\(12 downto 0);
p_0_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^o_out\(10),
      I1 => \^o_out\(11),
      I2 => \^o_out\(12),
      I3 => \^o_out\(7),
      O => \p_0_out__0\(0)
    );
\r_OUT_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => i_CLK,
      CE => i_EN,
      D => \p_0_out__0\(0),
      PRE => i_RST,
      Q => \^o_out\(0)
    );
\r_OUT_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(9),
      Q => \^o_out\(10)
    );
\r_OUT_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(10),
      Q => \^o_out\(11)
    );
\r_OUT_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(11),
      Q => \^o_out\(12)
    );
\r_OUT_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(0),
      Q => \^o_out\(1)
    );
\r_OUT_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(1),
      Q => \^o_out\(2)
    );
\r_OUT_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(2),
      Q => \^o_out\(3)
    );
\r_OUT_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(3),
      Q => \^o_out\(4)
    );
\r_OUT_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(4),
      Q => \^o_out\(5)
    );
\r_OUT_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(5),
      Q => \^o_out\(6)
    );
\r_OUT_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(6),
      Q => \^o_out\(7)
    );
\r_OUT_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(7),
      Q => \^o_out\(8)
    );
\r_OUT_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => i_EN,
      CLR => i_RST,
      D => \^o_out\(8),
      Q => \^o_out\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_LSFR_0_0 is
  port (
    i_CLK : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_EN : in STD_LOGIC;
    o_OUT : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Reaction_Time_Averager_LSFR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Reaction_Time_Averager_LSFR_0_0 : entity is "Reaction_Time_Averager_LSFR_0_0,LSFR,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Reaction_Time_Averager_LSFR_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Reaction_Time_Averager_LSFR_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Reaction_Time_Averager_LSFR_0_0 : entity is "LSFR,Vivado 2018.2";
end Reaction_Time_Averager_LSFR_0_0;

architecture STRUCTURE of Reaction_Time_Averager_LSFR_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
  attribute X_INTERFACE_INFO of i_RST : signal is "xilinx.com:signal:reset:1.0 i_RST RST";
  attribute X_INTERFACE_PARAMETER of i_RST : signal is "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW";
begin
inst: entity work.Reaction_Time_Averager_LSFR_0_0_LSFR
     port map (
      i_CLK => i_CLK,
      i_EN => i_EN,
      i_RST => i_RST,
      o_OUT(12 downto 0) => o_OUT(12 downto 0)
    );
end STRUCTURE;
