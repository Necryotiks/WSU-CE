-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:24 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_HZ_Counter_0_0/Reaction_Time_Averager_HZ_Counter_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_HZ_Counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_HZ_Counter_0_0_HZ_Counter is
  port (
    o_Out : out STD_LOGIC;
    i_CLK : in STD_LOGIC;
    i_RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reaction_Time_Averager_HZ_Counter_0_0_HZ_Counter : entity is "HZ_Counter";
end Reaction_Time_Averager_HZ_Counter_0_0_HZ_Counter;

architecture STRUCTURE of Reaction_Time_Averager_HZ_Counter_0_0_HZ_Counter is
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^o_out\ : STD_LOGIC;
  signal o_Out_i_1_n_0 : STD_LOGIC;
  signal o_Out_i_2_n_0 : STD_LOGIC;
  signal o_Out_i_3_n_0 : STD_LOGIC;
  signal o_Out_i_4_n_0 : STD_LOGIC;
  signal o_Out_i_5_n_0 : STD_LOGIC;
  signal o_Out_i_6_n_0 : STD_LOGIC;
  signal o_Out_i_7_n_0 : STD_LOGIC;
  signal o_Out_i_8_n_0 : STD_LOGIC;
  signal o_Out_i_9_n_0 : STD_LOGIC;
  signal r_Count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_Count_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_Count_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_r_Count_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_Count_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  o_Out <= \^o_out\;
o_Out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => \^o_out\,
      O => o_Out_i_1_n_0
    );
o_Out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_Count(18),
      I1 => r_Count(19),
      I2 => r_Count(16),
      I3 => r_Count(17),
      I4 => o_Out_i_6_n_0,
      O => o_Out_i_2_n_0
    );
o_Out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_Count(26),
      I1 => r_Count(27),
      I2 => r_Count(24),
      I3 => r_Count(25),
      I4 => o_Out_i_7_n_0,
      O => o_Out_i_3_n_0
    );
o_Out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => r_Count(2),
      I1 => r_Count(3),
      I2 => r_Count(0),
      I3 => r_Count(1),
      I4 => o_Out_i_8_n_0,
      O => o_Out_i_4_n_0
    );
o_Out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => r_Count(10),
      I1 => r_Count(11),
      I2 => r_Count(8),
      I3 => r_Count(9),
      I4 => o_Out_i_9_n_0,
      O => o_Out_i_5_n_0
    );
o_Out_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Count(21),
      I1 => r_Count(20),
      I2 => r_Count(23),
      I3 => r_Count(22),
      O => o_Out_i_6_n_0
    );
o_Out_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Count(29),
      I1 => r_Count(28),
      I2 => r_Count(31),
      I3 => r_Count(30),
      O => o_Out_i_7_n_0
    );
o_Out_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => r_Count(5),
      I1 => r_Count(4),
      I2 => r_Count(6),
      I3 => r_Count(7),
      O => o_Out_i_8_n_0
    );
o_Out_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => r_Count(13),
      I1 => r_Count(12),
      I2 => r_Count(15),
      I3 => r_Count(14),
      O => o_Out_i_9_n_0
    );
o_Out_reg: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => o_Out_i_1_n_0,
      Q => \^o_out\
    );
\r_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_Count(0),
      O => r_Count_0(0)
    );
\r_Count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(10),
      O => r_Count_0(10)
    );
\r_Count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(11),
      O => r_Count_0(11)
    );
\r_Count[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(12),
      O => r_Count_0(12)
    );
\r_Count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(13),
      O => r_Count_0(13)
    );
\r_Count[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(14),
      O => r_Count_0(14)
    );
\r_Count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(15),
      O => r_Count_0(15)
    );
\r_Count[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(16),
      O => r_Count_0(16)
    );
\r_Count[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(17),
      O => r_Count_0(17)
    );
\r_Count[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(18),
      O => r_Count_0(18)
    );
\r_Count[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(19),
      O => r_Count_0(19)
    );
\r_Count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(1),
      O => r_Count_0(1)
    );
\r_Count[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(20),
      O => r_Count_0(20)
    );
\r_Count[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(21),
      O => r_Count_0(21)
    );
\r_Count[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(22),
      O => r_Count_0(22)
    );
\r_Count[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(23),
      O => r_Count_0(23)
    );
\r_Count[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(24),
      O => r_Count_0(24)
    );
\r_Count[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(25),
      O => r_Count_0(25)
    );
\r_Count[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(26),
      O => r_Count_0(26)
    );
\r_Count[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(27),
      O => r_Count_0(27)
    );
\r_Count[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(28),
      O => r_Count_0(28)
    );
\r_Count[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(29),
      O => r_Count_0(29)
    );
\r_Count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(2),
      O => r_Count_0(2)
    );
\r_Count[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(30),
      O => r_Count_0(30)
    );
\r_Count[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(31),
      O => r_Count_0(31)
    );
\r_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(3),
      O => r_Count_0(3)
    );
\r_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(4),
      O => r_Count_0(4)
    );
\r_Count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(5),
      O => r_Count_0(5)
    );
\r_Count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(6),
      O => r_Count_0(6)
    );
\r_Count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(7),
      O => r_Count_0(7)
    );
\r_Count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(8),
      O => r_Count_0(8)
    );
\r_Count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => o_Out_i_2_n_0,
      I1 => o_Out_i_3_n_0,
      I2 => o_Out_i_4_n_0,
      I3 => o_Out_i_5_n_0,
      I4 => data0(9),
      O => r_Count_0(9)
    );
\r_Count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(0),
      Q => r_Count(0)
    );
\r_Count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(10),
      Q => r_Count(10)
    );
\r_Count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(11),
      Q => r_Count(11)
    );
\r_Count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(12),
      Q => r_Count(12)
    );
\r_Count_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[8]_i_2_n_0\,
      CO(3) => \r_Count_reg[12]_i_2_n_0\,
      CO(2) => \r_Count_reg[12]_i_2_n_1\,
      CO(1) => \r_Count_reg[12]_i_2_n_2\,
      CO(0) => \r_Count_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => r_Count(12 downto 9)
    );
\r_Count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(13),
      Q => r_Count(13)
    );
\r_Count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(14),
      Q => r_Count(14)
    );
\r_Count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(15),
      Q => r_Count(15)
    );
\r_Count_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(16),
      Q => r_Count(16)
    );
\r_Count_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[12]_i_2_n_0\,
      CO(3) => \r_Count_reg[16]_i_2_n_0\,
      CO(2) => \r_Count_reg[16]_i_2_n_1\,
      CO(1) => \r_Count_reg[16]_i_2_n_2\,
      CO(0) => \r_Count_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => r_Count(16 downto 13)
    );
\r_Count_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(17),
      Q => r_Count(17)
    );
\r_Count_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(18),
      Q => r_Count(18)
    );
\r_Count_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(19),
      Q => r_Count(19)
    );
\r_Count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(1),
      Q => r_Count(1)
    );
\r_Count_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(20),
      Q => r_Count(20)
    );
\r_Count_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[16]_i_2_n_0\,
      CO(3) => \r_Count_reg[20]_i_2_n_0\,
      CO(2) => \r_Count_reg[20]_i_2_n_1\,
      CO(1) => \r_Count_reg[20]_i_2_n_2\,
      CO(0) => \r_Count_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => r_Count(20 downto 17)
    );
\r_Count_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(21),
      Q => r_Count(21)
    );
\r_Count_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(22),
      Q => r_Count(22)
    );
\r_Count_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(23),
      Q => r_Count(23)
    );
\r_Count_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(24),
      Q => r_Count(24)
    );
\r_Count_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[20]_i_2_n_0\,
      CO(3) => \r_Count_reg[24]_i_2_n_0\,
      CO(2) => \r_Count_reg[24]_i_2_n_1\,
      CO(1) => \r_Count_reg[24]_i_2_n_2\,
      CO(0) => \r_Count_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => r_Count(24 downto 21)
    );
\r_Count_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(25),
      Q => r_Count(25)
    );
\r_Count_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(26),
      Q => r_Count(26)
    );
\r_Count_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(27),
      Q => r_Count(27)
    );
\r_Count_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(28),
      Q => r_Count(28)
    );
\r_Count_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[24]_i_2_n_0\,
      CO(3) => \r_Count_reg[28]_i_2_n_0\,
      CO(2) => \r_Count_reg[28]_i_2_n_1\,
      CO(1) => \r_Count_reg[28]_i_2_n_2\,
      CO(0) => \r_Count_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => r_Count(28 downto 25)
    );
\r_Count_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(29),
      Q => r_Count(29)
    );
\r_Count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(2),
      Q => r_Count(2)
    );
\r_Count_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(30),
      Q => r_Count(30)
    );
\r_Count_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(31),
      Q => r_Count(31)
    );
\r_Count_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_Count_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_Count_reg[31]_i_2_n_2\,
      CO(0) => \r_Count_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_Count_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => r_Count(31 downto 29)
    );
\r_Count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(3),
      Q => r_Count(3)
    );
\r_Count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(4),
      Q => r_Count(4)
    );
\r_Count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Count_reg[4]_i_2_n_0\,
      CO(2) => \r_Count_reg[4]_i_2_n_1\,
      CO(1) => \r_Count_reg[4]_i_2_n_2\,
      CO(0) => \r_Count_reg[4]_i_2_n_3\,
      CYINIT => r_Count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => r_Count(4 downto 1)
    );
\r_Count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(5),
      Q => r_Count(5)
    );
\r_Count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(6),
      Q => r_Count(6)
    );
\r_Count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(7),
      Q => r_Count(7)
    );
\r_Count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(8),
      Q => r_Count(8)
    );
\r_Count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[4]_i_2_n_0\,
      CO(3) => \r_Count_reg[8]_i_2_n_0\,
      CO(2) => \r_Count_reg[8]_i_2_n_1\,
      CO(1) => \r_Count_reg[8]_i_2_n_2\,
      CO(0) => \r_Count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => r_Count(8 downto 5)
    );
\r_Count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_CLK,
      CE => '1',
      CLR => i_RST,
      D => r_Count_0(9),
      Q => r_Count(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_HZ_Counter_0_0 is
  port (
    i_CLK : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    o_Out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Reaction_Time_Averager_HZ_Counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Reaction_Time_Averager_HZ_Counter_0_0 : entity is "Reaction_Time_Averager_HZ_Counter_0_0,HZ_Counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Reaction_Time_Averager_HZ_Counter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Reaction_Time_Averager_HZ_Counter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Reaction_Time_Averager_HZ_Counter_0_0 : entity is "HZ_Counter,Vivado 2018.2";
end Reaction_Time_Averager_HZ_Counter_0_0;

architecture STRUCTURE of Reaction_Time_Averager_HZ_Counter_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, ASSOCIATED_RESET i_RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
  attribute X_INTERFACE_INFO of i_RST : signal is "xilinx.com:signal:reset:1.0 i_RST RST";
  attribute X_INTERFACE_PARAMETER of i_RST : signal is "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW";
begin
inst: entity work.Reaction_Time_Averager_HZ_Counter_0_0_HZ_Counter
     port map (
      i_CLK => i_CLK,
      i_RST => i_RST,
      o_Out => o_Out
    );
end STRUCTURE;
