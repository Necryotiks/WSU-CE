-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:19 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_BCD_TO_BINARY_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_BCD_TO_BINARY_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY is
  port (
    o_DATA : out STD_LOGIC_VECTOR ( 13 downto 0 );
    i_Digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_CLK : in STD_LOGIC;
    i_Digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY is
  signal C : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal p_0_in : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal r_DATA0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal r_DATA3 : STD_LOGIC_VECTOR ( 10 downto 5 );
  signal \r_DATA3__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_1\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_2\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_3\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_4\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_5\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_6\ : STD_LOGIC;
  signal \r_DATA3__0_carry__0_n_7\ : STD_LOGIC;
  signal \r_DATA3__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry__1_n_7\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_0\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_1\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_2\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_3\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_4\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_5\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_6\ : STD_LOGIC;
  signal \r_DATA3__0_carry_n_7\ : STD_LOGIC;
  signal \r_DATA3__18_carry__0_n_3\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_i_5_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_n_0\ : STD_LOGIC;
  signal \r_DATA3__18_carry_n_1\ : STD_LOGIC;
  signal \r_DATA3__18_carry_n_2\ : STD_LOGIC;
  signal \r_DATA3__18_carry_n_3\ : STD_LOGIC;
  signal \r_DATA[12]_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA[12]_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA[12]_i_5_n_0\ : STD_LOGIC;
  signal \r_DATA[12]_i_6_n_0\ : STD_LOGIC;
  signal \r_DATA[13]_i_10_n_0\ : STD_LOGIC;
  signal \r_DATA[13]_i_5_n_0\ : STD_LOGIC;
  signal \r_DATA[13]_i_7_n_0\ : STD_LOGIC;
  signal \r_DATA[13]_i_8_n_0\ : STD_LOGIC;
  signal \r_DATA[13]_i_9_n_0\ : STD_LOGIC;
  signal \r_DATA[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_DATA[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA[8]_i_5_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_2_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_2_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_3_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_4_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_4_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_4_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_6_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_6_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_6_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[13]_i_6_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \r_DATA_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_r_DATA3__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_DATA3__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_DATA3__18_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_DATA3__18_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_DATA_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_DATA_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_DATA_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_DATA_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_DATA_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_DATA_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_r_DATA_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_r_DATA_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
\r_DATA3__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_DATA3__0_carry_n_0\,
      CO(2) => \r_DATA3__0_carry_n_1\,
      CO(1) => \r_DATA3__0_carry_n_2\,
      CO(0) => \r_DATA3__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \r_DATA3__0_carry_i_1_n_0\,
      DI(1) => \r_DATA3__0_carry_i_2_n_0\,
      DI(0) => '0',
      O(3) => \r_DATA3__0_carry_n_4\,
      O(2) => \r_DATA3__0_carry_n_5\,
      O(1) => \r_DATA3__0_carry_n_6\,
      O(0) => \r_DATA3__0_carry_n_7\,
      S(3) => \r_DATA3__0_carry_i_3_n_0\,
      S(2) => \r_DATA3__0_carry_i_4_n_0\,
      S(1) => \r_DATA3__0_carry_i_5_n_0\,
      S(0) => \r_DATA3__0_carry_i_6_n_0\
    );
\r_DATA3__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA3__0_carry_n_0\,
      CO(3) => \r_DATA3__0_carry__0_n_0\,
      CO(2) => \r_DATA3__0_carry__0_n_1\,
      CO(1) => \r_DATA3__0_carry__0_n_2\,
      CO(0) => \r_DATA3__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => i_Digit1(2 downto 0),
      DI(0) => '0',
      O(3) => \r_DATA3__0_carry__0_n_4\,
      O(2) => \r_DATA3__0_carry__0_n_5\,
      O(1) => \r_DATA3__0_carry__0_n_6\,
      O(0) => \r_DATA3__0_carry__0_n_7\,
      S(3) => \r_DATA3__0_carry__0_i_1_n_0\,
      S(2) => \r_DATA3__0_carry__0_i_2_n_0\,
      S(1) => \r_DATA3__0_carry__0_i_3_n_0\,
      S(0) => '1'
    );
\r_DATA3__0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit1(2),
      O => \r_DATA3__0_carry__0_i_1_n_0\
    );
\r_DATA3__0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit1(1),
      O => \r_DATA3__0_carry__0_i_2_n_0\
    );
\r_DATA3__0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit1(0),
      O => \r_DATA3__0_carry__0_i_3_n_0\
    );
\r_DATA3__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA3__0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_r_DATA3__0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_DATA3__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_DATA3__0_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \r_DATA3__0_carry__1_i_1_n_0\
    );
\r_DATA3__0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit1(3),
      O => \r_DATA3__0_carry__1_i_1_n_0\
    );
\r_DATA3__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_Digit1(3),
      I1 => i_Digit1(1),
      O => \r_DATA3__0_carry_i_1_n_0\
    );
\r_DATA3__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_Digit1(2),
      I1 => i_Digit1(0),
      O => \r_DATA3__0_carry_i_2_n_0\
    );
\r_DATA3__0_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit1(3),
      O => \r_DATA3__0_carry_i_3_n_0\
    );
\r_DATA3__0_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => i_Digit1(1),
      I1 => i_Digit1(3),
      I2 => i_Digit1(2),
      O => \r_DATA3__0_carry_i_4_n_0\
    );
\r_DATA3__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => i_Digit1(0),
      I1 => i_Digit1(2),
      I2 => i_Digit1(3),
      I3 => i_Digit1(1),
      O => \r_DATA3__0_carry_i_5_n_0\
    );
\r_DATA3__0_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit1(0),
      I1 => i_Digit1(2),
      O => \r_DATA3__0_carry_i_6_n_0\
    );
\r_DATA3__18_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_DATA3__18_carry_n_0\,
      CO(2) => \r_DATA3__18_carry_n_1\,
      CO(1) => \r_DATA3__18_carry_n_2\,
      CO(0) => \r_DATA3__18_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => i_Digit2(1 downto 0),
      DI(1) => \r_DATA3__18_carry_i_1__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => r_DATA3(8 downto 5),
      S(3) => \r_DATA3__18_carry_i_2__0_n_0\,
      S(2) => \r_DATA3__18_carry_i_3_n_0\,
      S(1) => \r_DATA3__18_carry_i_4_n_0\,
      S(0) => \r_DATA3__18_carry_i_5_n_0\
    );
\r_DATA3__18_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA3__18_carry_n_0\,
      CO(3 downto 1) => \NLW_r_DATA3__18_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_DATA3__18_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => i_Digit2(2),
      O(3 downto 2) => \NLW_r_DATA3__18_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => r_DATA3(10 downto 9),
      S(3 downto 2) => B"00",
      S(1) => \r_DATA3__18_carry_i_1_n_0\,
      S(0) => \r_DATA3__18_carry_i_2_n_0\
    );
\r_DATA3__18_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit2(3),
      O => \r_DATA3__18_carry_i_1_n_0\
    );
\r_DATA3__18_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_Digit2(3),
      I1 => i_Digit2(0),
      O => \r_DATA3__18_carry_i_1__0_n_0\
    );
\r_DATA3__18_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_Digit2(2),
      O => \r_DATA3__18_carry_i_2_n_0\
    );
\r_DATA3__18_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_Digit2(1),
      I1 => i_Digit2(3),
      O => \r_DATA3__18_carry_i_2__0_n_0\
    );
\r_DATA3__18_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_Digit2(0),
      I1 => i_Digit2(2),
      O => \r_DATA3__18_carry_i_3_n_0\
    );
\r_DATA3__18_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => i_Digit2(0),
      I1 => i_Digit2(3),
      I2 => i_Digit2(1),
      O => \r_DATA3__18_carry_i_4_n_0\
    );
\r_DATA3__18_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit2(3),
      I1 => i_Digit2(0),
      O => \r_DATA3__18_carry_i_5_n_0\
    );
\r_DATA[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(9),
      I1 => C(9),
      O => \r_DATA[12]_i_3_n_0\
    );
\r_DATA[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(8),
      I1 => C(8),
      O => \r_DATA[12]_i_4_n_0\
    );
\r_DATA[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(7),
      I1 => C(7),
      O => \r_DATA[12]_i_5_n_0\
    );
\r_DATA[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(6),
      I1 => C(6),
      O => \r_DATA[12]_i_6_n_0\
    );
\r_DATA[13]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => i_Digit3(3),
      I1 => i_Digit3(1),
      I2 => i_Digit3(0),
      I3 => i_Digit3(2),
      I4 => i_Digit1(1),
      O => \r_DATA[13]_i_10_n_0\
    );
\r_DATA[13]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(10),
      I1 => C(10),
      O => \r_DATA[13]_i_5_n_0\
    );
\r_DATA[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7FC080"
    )
        port map (
      I0 => i_Digit3(0),
      I1 => i_Digit3(2),
      I2 => i_Digit3(3),
      I3 => i_Digit3(1),
      I4 => \r_DATA3__0_carry_n_5\,
      O => \r_DATA[13]_i_7_n_0\
    );
\r_DATA[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B5D54A2A"
    )
        port map (
      I0 => i_Digit3(3),
      I1 => i_Digit3(0),
      I2 => i_Digit3(2),
      I3 => i_Digit3(1),
      I4 => \r_DATA3__0_carry_n_6\,
      O => \r_DATA[13]_i_8_n_0\
    );
\r_DATA[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BD95426A"
    )
        port map (
      I0 => i_Digit3(2),
      I1 => i_Digit3(1),
      I2 => i_Digit3(3),
      I3 => i_Digit3(0),
      I4 => \r_DATA3__0_carry_n_7\,
      O => \r_DATA[13]_i_9_n_0\
    );
\r_DATA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit4(1),
      I1 => p_0_in(1),
      O => r_DATA0(1)
    );
\r_DATA[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_Digit3(0),
      I1 => i_Digit3(2),
      I2 => i_Digit1(0),
      O => \r_DATA[1]_i_3_n_0\
    );
\r_DATA[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit4(3),
      I1 => p_0_in(3),
      O => \r_DATA[4]_i_2_n_0\
    );
\r_DATA[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_Digit4(2),
      I1 => C(2),
      I2 => i_Digit2(0),
      O => \r_DATA[4]_i_3_n_0\
    );
\r_DATA[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit4(1),
      I1 => p_0_in(1),
      O => \r_DATA[4]_i_4_n_0\
    );
\r_DATA[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_DATA3(5),
      I1 => C(5),
      O => \r_DATA[8]_i_3_n_0\
    );
\r_DATA[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit2(2),
      I1 => C(4),
      O => \r_DATA[8]_i_4_n_0\
    );
\r_DATA[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit2(1),
      I1 => C(3),
      O => \r_DATA[8]_i_5_n_0\
    );
\r_DATA[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_Digit2(0),
      I1 => C(2),
      O => p_0_in(2)
    );
\r_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => i_Digit4(0),
      Q => o_DATA(0),
      R => '0'
    );
\r_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(10),
      Q => o_DATA(10),
      R => '0'
    );
\r_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(11),
      Q => o_DATA(11),
      R => '0'
    );
\r_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(12),
      Q => o_DATA(12),
      R => '0'
    );
\r_DATA_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[8]_i_1_n_0\,
      CO(3) => \r_DATA_reg[12]_i_1_n_0\,
      CO(2) => \r_DATA_reg[12]_i_1_n_1\,
      CO(1) => \r_DATA_reg[12]_i_1_n_2\,
      CO(0) => \r_DATA_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_DATA0(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\r_DATA_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[8]_i_2_n_0\,
      CO(3) => \r_DATA_reg[12]_i_2_n_0\,
      CO(2) => \r_DATA_reg[12]_i_2_n_1\,
      CO(1) => \r_DATA_reg[12]_i_2_n_2\,
      CO(0) => \r_DATA_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => r_DATA3(9 downto 6),
      O(3 downto 0) => p_0_in(9 downto 6),
      S(3) => \r_DATA[12]_i_3_n_0\,
      S(2) => \r_DATA[12]_i_4_n_0\,
      S(1) => \r_DATA[12]_i_5_n_0\,
      S(0) => \r_DATA[12]_i_6_n_0\
    );
\r_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(13),
      Q => o_DATA(13),
      R => '0'
    );
\r_DATA_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_DATA_reg[13]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_DATA_reg[13]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => r_DATA0(13),
      S(3 downto 1) => B"000",
      S(0) => p_0_in(13)
    );
\r_DATA_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[12]_i_2_n_0\,
      CO(3) => \NLW_r_DATA_reg[13]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \r_DATA_reg[13]_i_2_n_1\,
      CO(1) => \r_DATA_reg[13]_i_2_n_2\,
      CO(0) => \r_DATA_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => r_DATA3(10),
      O(3 downto 0) => p_0_in(13 downto 10),
      S(3 downto 1) => C(13 downto 11),
      S(0) => \r_DATA[13]_i_5_n_0\
    );
\r_DATA_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[13]_i_4_n_0\,
      CO(3 downto 1) => \NLW_r_DATA_reg[13]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_DATA_reg[13]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_DATA_reg[13]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => C(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \r_DATA3__0_carry__1_n_7\,
      S(0) => \r_DATA3__0_carry__0_n_4\
    );
\r_DATA_reg[13]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[13]_i_6_n_0\,
      CO(3) => \r_DATA_reg[13]_i_4_n_0\,
      CO(2) => \r_DATA_reg[13]_i_4_n_1\,
      CO(1) => \r_DATA_reg[13]_i_4_n_2\,
      CO(0) => \r_DATA_reg[13]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => C(11 downto 8),
      S(3) => \r_DATA3__0_carry__0_n_5\,
      S(2) => \r_DATA3__0_carry__0_n_6\,
      S(1) => \r_DATA3__0_carry__0_n_7\,
      S(0) => \r_DATA3__0_carry_n_4\
    );
\r_DATA_reg[13]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[1]_i_2_n_0\,
      CO(3) => \r_DATA_reg[13]_i_6_n_0\,
      CO(2) => \r_DATA_reg[13]_i_6_n_1\,
      CO(1) => \r_DATA_reg[13]_i_6_n_2\,
      CO(0) => \r_DATA_reg[13]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \r_DATA3__0_carry_n_5\,
      DI(2) => \r_DATA3__0_carry_n_6\,
      DI(1) => \r_DATA3__0_carry_n_7\,
      DI(0) => i_Digit1(1),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \r_DATA[13]_i_7_n_0\,
      S(2) => \r_DATA[13]_i_8_n_0\,
      S(1) => \r_DATA[13]_i_9_n_0\,
      S(0) => \r_DATA[13]_i_10_n_0\
    );
\r_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(1),
      Q => o_DATA(1),
      R => '0'
    );
\r_DATA_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_DATA_reg[1]_i_2_n_0\,
      CO(2) => \r_DATA_reg[1]_i_2_n_1\,
      CO(1) => \r_DATA_reg[1]_i_2_n_2\,
      CO(0) => \r_DATA_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => i_Digit1(0),
      DI(2 downto 1) => i_Digit3(1 downto 0),
      DI(0) => '0',
      O(3 downto 2) => C(3 downto 2),
      O(1) => p_0_in(1),
      O(0) => \NLW_r_DATA_reg[1]_i_2_O_UNCONNECTED\(0),
      S(3) => \r_DATA[1]_i_3_n_0\,
      S(2 downto 1) => i_Digit3(1 downto 0),
      S(0) => '0'
    );
\r_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(2),
      Q => o_DATA(2),
      R => '0'
    );
\r_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(3),
      Q => o_DATA(3),
      R => '0'
    );
\r_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(4),
      Q => o_DATA(4),
      R => '0'
    );
\r_DATA_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_DATA_reg[4]_i_1_n_0\,
      CO(2) => \r_DATA_reg[4]_i_1_n_1\,
      CO(1) => \r_DATA_reg[4]_i_1_n_2\,
      CO(0) => \r_DATA_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => i_Digit4(3 downto 1),
      O(3 downto 1) => r_DATA0(4 downto 2),
      O(0) => \NLW_r_DATA_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => p_0_in(4),
      S(2) => \r_DATA[4]_i_2_n_0\,
      S(1) => \r_DATA[4]_i_3_n_0\,
      S(0) => \r_DATA[4]_i_4_n_0\
    );
\r_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(5),
      Q => o_DATA(5),
      R => '0'
    );
\r_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(6),
      Q => o_DATA(6),
      R => '0'
    );
\r_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(7),
      Q => o_DATA(7),
      R => '0'
    );
\r_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(8),
      Q => o_DATA(8),
      R => '0'
    );
\r_DATA_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_DATA_reg[4]_i_1_n_0\,
      CO(3) => \r_DATA_reg[8]_i_1_n_0\,
      CO(2) => \r_DATA_reg[8]_i_1_n_1\,
      CO(1) => \r_DATA_reg[8]_i_1_n_2\,
      CO(0) => \r_DATA_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r_DATA0(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
\r_DATA_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_DATA_reg[8]_i_2_n_0\,
      CO(2) => \r_DATA_reg[8]_i_2_n_1\,
      CO(1) => \r_DATA_reg[8]_i_2_n_2\,
      CO(0) => \r_DATA_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => r_DATA3(5),
      DI(2 downto 0) => i_Digit2(2 downto 0),
      O(3 downto 1) => p_0_in(5 downto 3),
      O(0) => \NLW_r_DATA_reg[8]_i_2_O_UNCONNECTED\(0),
      S(3) => \r_DATA[8]_i_3_n_0\,
      S(2) => \r_DATA[8]_i_4_n_0\,
      S(1) => \r_DATA[8]_i_5_n_0\,
      S(0) => p_0_in(2)
    );
\r_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_DATA0(9),
      Q => o_DATA(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_CLK : in STD_LOGIC;
    i_Digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_DATA : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_BCD_TO_BINARY_0_0,BCD_TO_BINARY,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BCD_TO_BINARY,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BCD_TO_BINARY
     port map (
      i_CLK => i_CLK,
      i_Digit1(3 downto 0) => i_Digit1(3 downto 0),
      i_Digit2(3 downto 0) => i_Digit2(3 downto 0),
      i_Digit3(3 downto 0) => i_Digit3(3 downto 0),
      i_Digit4(3 downto 0) => i_Digit4(3 downto 0),
      o_DATA(13 downto 0) => o_DATA(13 downto 0)
    );
end STRUCTURE;
