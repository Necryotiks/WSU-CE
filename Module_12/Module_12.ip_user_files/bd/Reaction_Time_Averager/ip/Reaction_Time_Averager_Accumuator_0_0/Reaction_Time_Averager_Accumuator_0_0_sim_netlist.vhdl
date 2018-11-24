-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:24 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_Accumuator_0_0/Reaction_Time_Averager_Accumuator_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_Accumuator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_Accumuator_0_0_Accumuator is
  port (
    o_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    i_CLK_EN : in STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_DATA : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reaction_Time_Averager_Accumuator_0_0_Accumuator : entity is "Accumuator";
end Reaction_Time_Averager_Accumuator_0_0_Accumuator;

architecture STRUCTURE of Reaction_Time_Averager_Accumuator_0_0_Accumuator is
  signal \^o_out\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \r_OUT[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[11]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[11]_i_4_n_0\ : STD_LOGIC;
  signal \r_OUT[11]_i_5_n_0\ : STD_LOGIC;
  signal \r_OUT[13]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[13]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \r_OUT_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \r_OUT_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \r_OUT_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \r_OUT_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \r_OUT_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \r_OUT_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_r_OUT_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_OUT_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  o_OUT(13 downto 0) <= \^o_out\(13 downto 0);
\r_OUT[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(11),
      I1 => \^o_out\(11),
      O => \r_OUT[11]_i_2_n_0\
    );
\r_OUT[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(10),
      I1 => \^o_out\(10),
      O => \r_OUT[11]_i_3_n_0\
    );
\r_OUT[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(9),
      I1 => \^o_out\(9),
      O => \r_OUT[11]_i_4_n_0\
    );
\r_OUT[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(8),
      I1 => \^o_out\(8),
      O => \r_OUT[11]_i_5_n_0\
    );
\r_OUT[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(13),
      I1 => \^o_out\(13),
      O => \r_OUT[13]_i_2_n_0\
    );
\r_OUT[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(12),
      I1 => \^o_out\(12),
      O => \r_OUT[13]_i_3_n_0\
    );
\r_OUT[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(3),
      I1 => \^o_out\(3),
      O => \r_OUT[3]_i_2_n_0\
    );
\r_OUT[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(2),
      I1 => \^o_out\(2),
      O => \r_OUT[3]_i_3_n_0\
    );
\r_OUT[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(1),
      I1 => \^o_out\(1),
      O => \r_OUT[3]_i_4_n_0\
    );
\r_OUT[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(0),
      I1 => \^o_out\(0),
      O => \r_OUT[3]_i_5_n_0\
    );
\r_OUT[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(7),
      I1 => \^o_out\(7),
      O => \r_OUT[7]_i_2_n_0\
    );
\r_OUT[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(6),
      I1 => \^o_out\(6),
      O => \r_OUT[7]_i_3_n_0\
    );
\r_OUT[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(5),
      I1 => \^o_out\(5),
      O => \r_OUT[7]_i_4_n_0\
    );
\r_OUT[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_DATA(4),
      I1 => \^o_out\(4),
      O => \r_OUT[7]_i_5_n_0\
    );
\r_OUT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[3]_i_1_n_7\,
      Q => \^o_out\(0)
    );
\r_OUT_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[11]_i_1_n_5\,
      Q => \^o_out\(10)
    );
\r_OUT_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[11]_i_1_n_4\,
      Q => \^o_out\(11)
    );
\r_OUT_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OUT_reg[7]_i_1_n_0\,
      CO(3) => \r_OUT_reg[11]_i_1_n_0\,
      CO(2) => \r_OUT_reg[11]_i_1_n_1\,
      CO(1) => \r_OUT_reg[11]_i_1_n_2\,
      CO(0) => \r_OUT_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DATA(11 downto 8),
      O(3) => \r_OUT_reg[11]_i_1_n_4\,
      O(2) => \r_OUT_reg[11]_i_1_n_5\,
      O(1) => \r_OUT_reg[11]_i_1_n_6\,
      O(0) => \r_OUT_reg[11]_i_1_n_7\,
      S(3) => \r_OUT[11]_i_2_n_0\,
      S(2) => \r_OUT[11]_i_3_n_0\,
      S(1) => \r_OUT[11]_i_4_n_0\,
      S(0) => \r_OUT[11]_i_5_n_0\
    );
\r_OUT_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[13]_i_1_n_7\,
      Q => \^o_out\(12)
    );
\r_OUT_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[13]_i_1_n_6\,
      Q => \^o_out\(13)
    );
\r_OUT_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OUT_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_OUT_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_OUT_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => i_DATA(12),
      O(3 downto 2) => \NLW_r_OUT_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_OUT_reg[13]_i_1_n_6\,
      O(0) => \r_OUT_reg[13]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \r_OUT[13]_i_2_n_0\,
      S(0) => \r_OUT[13]_i_3_n_0\
    );
\r_OUT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[3]_i_1_n_6\,
      Q => \^o_out\(1)
    );
\r_OUT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[3]_i_1_n_5\,
      Q => \^o_out\(2)
    );
\r_OUT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[3]_i_1_n_4\,
      Q => \^o_out\(3)
    );
\r_OUT_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_OUT_reg[3]_i_1_n_0\,
      CO(2) => \r_OUT_reg[3]_i_1_n_1\,
      CO(1) => \r_OUT_reg[3]_i_1_n_2\,
      CO(0) => \r_OUT_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DATA(3 downto 0),
      O(3) => \r_OUT_reg[3]_i_1_n_4\,
      O(2) => \r_OUT_reg[3]_i_1_n_5\,
      O(1) => \r_OUT_reg[3]_i_1_n_6\,
      O(0) => \r_OUT_reg[3]_i_1_n_7\,
      S(3) => \r_OUT[3]_i_2_n_0\,
      S(2) => \r_OUT[3]_i_3_n_0\,
      S(1) => \r_OUT[3]_i_4_n_0\,
      S(0) => \r_OUT[3]_i_5_n_0\
    );
\r_OUT_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[7]_i_1_n_7\,
      Q => \^o_out\(4)
    );
\r_OUT_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[7]_i_1_n_6\,
      Q => \^o_out\(5)
    );
\r_OUT_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[7]_i_1_n_5\,
      Q => \^o_out\(6)
    );
\r_OUT_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[7]_i_1_n_4\,
      Q => \^o_out\(7)
    );
\r_OUT_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_OUT_reg[3]_i_1_n_0\,
      CO(3) => \r_OUT_reg[7]_i_1_n_0\,
      CO(2) => \r_OUT_reg[7]_i_1_n_1\,
      CO(1) => \r_OUT_reg[7]_i_1_n_2\,
      CO(0) => \r_OUT_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => i_DATA(7 downto 4),
      O(3) => \r_OUT_reg[7]_i_1_n_4\,
      O(2) => \r_OUT_reg[7]_i_1_n_5\,
      O(1) => \r_OUT_reg[7]_i_1_n_6\,
      O(0) => \r_OUT_reg[7]_i_1_n_7\,
      S(3) => \r_OUT[7]_i_2_n_0\,
      S(2) => \r_OUT[7]_i_3_n_0\,
      S(1) => \r_OUT[7]_i_4_n_0\,
      S(0) => \r_OUT[7]_i_5_n_0\
    );
\r_OUT_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[11]_i_1_n_7\,
      Q => \^o_out\(8)
    );
\r_OUT_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => i_CLK_EN,
      CLR => i_RST,
      D => \r_OUT_reg[11]_i_1_n_6\,
      Q => \^o_out\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_Accumuator_0_0 is
  port (
    i_CLK : in STD_LOGIC;
    i_CLK_EN : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_DATA : in STD_LOGIC_VECTOR ( 13 downto 0 );
    o_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Reaction_Time_Averager_Accumuator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Reaction_Time_Averager_Accumuator_0_0 : entity is "Reaction_Time_Averager_Accumuator_0_0,Accumuator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Reaction_Time_Averager_Accumuator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Reaction_Time_Averager_Accumuator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Reaction_Time_Averager_Accumuator_0_0 : entity is "Accumuator,Vivado 2018.2";
end Reaction_Time_Averager_Accumuator_0_0;

architecture STRUCTURE of Reaction_Time_Averager_Accumuator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
  attribute X_INTERFACE_INFO of i_RST : signal is "xilinx.com:signal:reset:1.0 i_RST RST";
  attribute X_INTERFACE_PARAMETER of i_RST : signal is "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW";
begin
inst: entity work.Reaction_Time_Averager_Accumuator_0_0_Accumuator
     port map (
      i_CLK => i_CLK,
      i_CLK_EN => i_CLK_EN,
      i_DATA(13 downto 0) => i_DATA(13 downto 0),
      i_RST => i_RST,
      o_OUT(13 downto 0) => o_OUT(13 downto 0)
    );
end STRUCTURE;
