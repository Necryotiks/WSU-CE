-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:13:33 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_BINARY_TO_BCD_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_BINARY_TO_BCD_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD is
  port (
    o_BCD : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_Clock : in STD_LOGIC;
    i_Start : in STD_LOGIC;
    i_Binary : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD is
  signal \^o_bcd\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_BCD : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal r_BCD0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_BCD[11]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[11]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[15]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_BCD[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_BCD[7]_i_4_n_0\ : STD_LOGIC;
  signal r_Binary : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal r_Binary_0 : STD_LOGIC;
  signal \r_Binary_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Binary_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_CURRENT_STATE[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_CURRENT_STATE[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_CURRENT_STATE[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_CURRENT_STATE[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_CURRENT_STATE__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_Digit_Index[0]__0_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_Index_reg[0]__0_n_0\ : STD_LOGIC;
  signal \r_Digit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal r_Loop_Count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Loop_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Loop_Count[7]_i_3_n_0\ : STD_LOGIC;
  signal r_Loop_Count_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_BCD[11]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_BCD[15]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_BCD[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_BCD[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Binary[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_Binary[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Binary[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Binary[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_Binary[13]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_Binary[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_Binary[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_Binary[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_Binary[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_Binary[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_Binary[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Binary[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_Binary[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_Binary[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_CURRENT_STATE[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_CURRENT_STATE[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_CURRENT_STATE[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_CURRENT_STATE[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_CURRENT_STATE[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Digit_Index[0]__0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Digit_Index[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Loop_Count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Loop_Count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Loop_Count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Loop_Count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Loop_Count[7]_i_2\ : label is "soft_lutpair4";
begin
  o_BCD(15 downto 0) <= \^o_bcd\(15 downto 0);
\r_BCD[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000300AA00AA00"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[13]\,
      I1 => \^o_bcd\(0),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_CURRENT_STATE__0\(0),
      I4 => \r_Digit_Index_reg[0]__0_n_0\,
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(0)
    );
\r_BCD[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B0A03C00B0A0"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => \^o_bcd\(10),
      I2 => \^o_bcd\(9),
      I3 => \r_BCD[11]_i_3_n_0\,
      I4 => \r_CURRENT_STATE__0\(1),
      I5 => \^o_bcd\(8),
      O => r_BCD0_in(10)
    );
\r_BCD[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A888"
    )
        port map (
      I0 => \r_BCD[11]_i_3_n_0\,
      I1 => \^o_bcd\(11),
      I2 => \r_BCD[11]_i_4_n_0\,
      I3 => \^o_bcd\(10),
      I4 => \r_CURRENT_STATE__0\(2),
      I5 => r_Binary_0,
      O => r_BCD(11)
    );
\r_BCD[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48884888FF004800"
    )
        port map (
      I0 => \^o_bcd\(11),
      I1 => \r_BCD[11]_i_3_n_0\,
      I2 => \r_BCD[11]_i_4_n_0\,
      I3 => \^o_bcd\(10),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(11)
    );
\r_BCD[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[11]_i_3_n_0\
    );
\r_BCD[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_bcd\(8),
      I1 => \^o_bcd\(9),
      O => \r_BCD[11]_i_4_n_0\
    );
\r_BCD[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30000000AA00AA00"
    )
        port map (
      I0 => \^o_bcd\(11),
      I1 => \^o_bcd\(12),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_CURRENT_STATE__0\(0),
      I4 => \r_Digit_Index_reg[0]__0_n_0\,
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(12)
    );
\r_BCD[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80080000FF000000"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \^o_bcd\(13),
      I3 => \^o_bcd\(12),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(13)
    );
\r_BCD[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B0A03C00B0A0"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => \^o_bcd\(14),
      I2 => \^o_bcd\(13),
      I3 => \r_BCD[15]_i_3_n_0\,
      I4 => \r_CURRENT_STATE__0\(1),
      I5 => \^o_bcd\(12),
      O => r_BCD0_in(14)
    );
\r_BCD[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A888"
    )
        port map (
      I0 => \r_BCD[15]_i_3_n_0\,
      I1 => \^o_bcd\(15),
      I2 => \r_BCD[15]_i_4_n_0\,
      I3 => \^o_bcd\(14),
      I4 => \r_CURRENT_STATE__0\(2),
      I5 => r_Binary_0,
      O => r_BCD(15)
    );
\r_BCD[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48884888FF004800"
    )
        port map (
      I0 => \^o_bcd\(15),
      I1 => \r_BCD[15]_i_3_n_0\,
      I2 => \r_BCD[15]_i_4_n_0\,
      I3 => \^o_bcd\(14),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(15)
    );
\r_BCD[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[15]_i_3_n_0\
    );
\r_BCD[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_bcd\(12),
      I1 => \^o_bcd\(13),
      O => \r_BCD[15]_i_4_n_0\
    );
\r_BCD[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10010000FF000000"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \^o_bcd\(1),
      I3 => \^o_bcd\(0),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(1)
    );
\r_BCD[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B0A03C00B0A0"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => \^o_bcd\(2),
      I2 => \^o_bcd\(1),
      I3 => \r_BCD[3]_i_3_n_0\,
      I4 => \r_CURRENT_STATE__0\(1),
      I5 => \^o_bcd\(0),
      O => r_BCD0_in(2)
    );
\r_BCD[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A888"
    )
        port map (
      I0 => \r_BCD[3]_i_3_n_0\,
      I1 => \^o_bcd\(3),
      I2 => \r_BCD[3]_i_4_n_0\,
      I3 => \^o_bcd\(2),
      I4 => \r_CURRENT_STATE__0\(2),
      I5 => r_Binary_0,
      O => r_BCD(3)
    );
\r_BCD[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48884888FF004800"
    )
        port map (
      I0 => \^o_bcd\(3),
      I1 => \r_BCD[3]_i_3_n_0\,
      I2 => \r_BCD[3]_i_4_n_0\,
      I3 => \^o_bcd\(2),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(3)
    );
\r_BCD[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[3]_i_3_n_0\
    );
\r_BCD[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_bcd\(0),
      I1 => \^o_bcd\(1),
      O => \r_BCD[3]_i_4_n_0\
    );
\r_BCD[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03000000AA00AA00"
    )
        port map (
      I0 => \^o_bcd\(3),
      I1 => \^o_bcd\(4),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_CURRENT_STATE__0\(0),
      I4 => \r_Digit_Index_reg[0]__0_n_0\,
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(4)
    );
\r_BCD[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20020000FF000000"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \^o_bcd\(5),
      I3 => \^o_bcd\(4),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(5)
    );
\r_BCD[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300B0A03C00B0A0"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => \^o_bcd\(6),
      I2 => \^o_bcd\(5),
      I3 => \r_BCD[7]_i_3_n_0\,
      I4 => \r_CURRENT_STATE__0\(1),
      I5 => \^o_bcd\(4),
      O => r_BCD0_in(6)
    );
\r_BCD[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000A888"
    )
        port map (
      I0 => \r_BCD[7]_i_3_n_0\,
      I1 => \^o_bcd\(7),
      I2 => \r_BCD[7]_i_4_n_0\,
      I3 => \^o_bcd\(6),
      I4 => \r_CURRENT_STATE__0\(2),
      I5 => r_Binary_0,
      O => r_BCD(7)
    );
\r_BCD[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"48884888FF004800"
    )
        port map (
      I0 => \^o_bcd\(7),
      I1 => \r_BCD[7]_i_3_n_0\,
      I2 => \r_BCD[7]_i_4_n_0\,
      I3 => \^o_bcd\(6),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(7)
    );
\r_BCD[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_BCD[7]_i_3_n_0\
    );
\r_BCD[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_bcd\(4),
      I1 => \^o_bcd\(5),
      O => \r_BCD[7]_i_4_n_0\
    );
\r_BCD[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003000AA00AA00"
    )
        port map (
      I0 => \^o_bcd\(7),
      I1 => \^o_bcd\(8),
      I2 => \r_Digit_Index_reg_n_0_[1]\,
      I3 => \r_CURRENT_STATE__0\(0),
      I4 => \r_Digit_Index_reg[0]__0_n_0\,
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(8)
    );
\r_BCD[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40040000FF000000"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_Digit_Index_reg_n_0_[1]\,
      I2 => \^o_bcd\(9),
      I3 => \^o_bcd\(8),
      I4 => \r_CURRENT_STATE__0\(0),
      I5 => \r_CURRENT_STATE__0\(1),
      O => r_BCD0_in(9)
    );
\r_BCD_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(3),
      D => r_BCD0_in(0),
      Q => \^o_bcd\(0),
      R => '0'
    );
\r_BCD_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(11),
      D => r_BCD0_in(10),
      Q => \^o_bcd\(10),
      R => '0'
    );
\r_BCD_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(11),
      D => r_BCD0_in(11),
      Q => \^o_bcd\(11),
      R => '0'
    );
\r_BCD_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(15),
      D => r_BCD0_in(12),
      Q => \^o_bcd\(12),
      R => '0'
    );
\r_BCD_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(15),
      D => r_BCD0_in(13),
      Q => \^o_bcd\(13),
      R => '0'
    );
\r_BCD_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(15),
      D => r_BCD0_in(14),
      Q => \^o_bcd\(14),
      R => '0'
    );
\r_BCD_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(15),
      D => r_BCD0_in(15),
      Q => \^o_bcd\(15),
      R => '0'
    );
\r_BCD_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(3),
      D => r_BCD0_in(1),
      Q => \^o_bcd\(1),
      R => '0'
    );
\r_BCD_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(3),
      D => r_BCD0_in(2),
      Q => \^o_bcd\(2),
      R => '0'
    );
\r_BCD_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(3),
      D => r_BCD0_in(3),
      Q => \^o_bcd\(3),
      R => '0'
    );
\r_BCD_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(7),
      D => r_BCD0_in(4),
      Q => \^o_bcd\(4),
      R => '0'
    );
\r_BCD_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(7),
      D => r_BCD0_in(5),
      Q => \^o_bcd\(5),
      R => '0'
    );
\r_BCD_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(7),
      D => r_BCD0_in(6),
      Q => \^o_bcd\(6),
      R => '0'
    );
\r_BCD_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(7),
      D => r_BCD0_in(7),
      Q => \^o_bcd\(7),
      R => '0'
    );
\r_BCD_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(11),
      D => r_BCD0_in(8),
      Q => \^o_bcd\(8),
      R => '0'
    );
\r_BCD_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_BCD(11),
      D => r_BCD0_in(9),
      Q => \^o_bcd\(9),
      R => '0'
    );
\r_Binary[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_Binary(0),
      I1 => \r_CURRENT_STATE__0\(0),
      O => r_Binary(0)
    );
\r_Binary[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[9]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(10),
      O => r_Binary(10)
    );
\r_Binary[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[10]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(11),
      O => r_Binary(11)
    );
\r_Binary[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[11]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(12),
      O => r_Binary(12)
    );
\r_Binary[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0032"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => \r_CURRENT_STATE__0\(1),
      I2 => i_Start,
      I3 => \r_CURRENT_STATE__0\(2),
      O => r_Binary_0
    );
\r_Binary[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[12]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(13),
      O => r_Binary(13)
    );
\r_Binary[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[0]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(1),
      O => r_Binary(1)
    );
\r_Binary[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[1]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(2),
      O => r_Binary(2)
    );
\r_Binary[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[2]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(3),
      O => r_Binary(3)
    );
\r_Binary[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[3]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(4),
      O => r_Binary(4)
    );
\r_Binary[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[4]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(5),
      O => r_Binary(5)
    );
\r_Binary[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[5]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(6),
      O => r_Binary(6)
    );
\r_Binary[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[6]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(7),
      O => r_Binary(7)
    );
\r_Binary[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[7]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(8),
      O => r_Binary(8)
    );
\r_Binary[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_Binary_reg_n_0_[8]\,
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => i_Binary(9),
      O => r_Binary(9)
    );
\r_Binary_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(0),
      Q => \r_Binary_reg_n_0_[0]\,
      R => '0'
    );
\r_Binary_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(10),
      Q => \r_Binary_reg_n_0_[10]\,
      R => '0'
    );
\r_Binary_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(11),
      Q => \r_Binary_reg_n_0_[11]\,
      R => '0'
    );
\r_Binary_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(12),
      Q => \r_Binary_reg_n_0_[12]\,
      R => '0'
    );
\r_Binary_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(13),
      Q => \r_Binary_reg_n_0_[13]\,
      R => '0'
    );
\r_Binary_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(1),
      Q => \r_Binary_reg_n_0_[1]\,
      R => '0'
    );
\r_Binary_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(2),
      Q => \r_Binary_reg_n_0_[2]\,
      R => '0'
    );
\r_Binary_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(3),
      Q => \r_Binary_reg_n_0_[3]\,
      R => '0'
    );
\r_Binary_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(4),
      Q => \r_Binary_reg_n_0_[4]\,
      R => '0'
    );
\r_Binary_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(5),
      Q => \r_Binary_reg_n_0_[5]\,
      R => '0'
    );
\r_Binary_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(6),
      Q => \r_Binary_reg_n_0_[6]\,
      R => '0'
    );
\r_Binary_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(7),
      Q => \r_Binary_reg_n_0_[7]\,
      R => '0'
    );
\r_Binary_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(8),
      Q => \r_Binary_reg_n_0_[8]\,
      R => '0'
    );
\r_Binary_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => r_Binary_0,
      D => r_Binary(9),
      Q => \r_Binary_reg_n_0_[9]\,
      R => '0'
    );
\r_CURRENT_STATE[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"050E"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(2),
      I1 => i_Start,
      I2 => \r_CURRENT_STATE__0\(0),
      I3 => \r_CURRENT_STATE__0\(1),
      O => \p_0_in__0\(0)
    );
\r_CURRENT_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000EF0"
    )
        port map (
      I0 => \r_CURRENT_STATE[2]_i_3_n_0\,
      I1 => \r_CURRENT_STATE[1]_i_2_n_0\,
      I2 => \r_CURRENT_STATE__0\(0),
      I3 => \r_CURRENT_STATE__0\(1),
      I4 => \r_CURRENT_STATE__0\(2),
      I5 => \r_CURRENT_STATE[1]_i_3_n_0\,
      O => \p_0_in__0\(1)
    );
\r_CURRENT_STATE[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => r_Loop_Count(0),
      I1 => r_Loop_Count(2),
      I2 => r_Loop_Count(3),
      I3 => r_Loop_Count(1),
      O => \r_CURRENT_STATE[1]_i_2_n_0\
    );
\r_CURRENT_STATE[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => \r_Digit_Index_reg_n_0_[1]\,
      I1 => \r_Digit_Index_reg[0]__0_n_0\,
      I2 => \r_CURRENT_STATE__0\(2),
      I3 => \r_CURRENT_STATE__0\(0),
      I4 => \r_CURRENT_STATE__0\(1),
      O => \r_CURRENT_STATE[1]_i_3_n_0\
    );
\r_CURRENT_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAB0000"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(0),
      I1 => r_Loop_Count(1),
      I2 => \r_CURRENT_STATE[2]_i_2_n_0\,
      I3 => \r_CURRENT_STATE[2]_i_3_n_0\,
      I4 => \r_CURRENT_STATE__0\(1),
      I5 => \r_CURRENT_STATE__0\(2),
      O => \p_0_in__0\(2)
    );
\r_CURRENT_STATE[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => r_Loop_Count(3),
      I1 => r_Loop_Count(2),
      I2 => r_Loop_Count(0),
      O => \r_CURRENT_STATE[2]_i_2_n_0\
    );
\r_CURRENT_STATE[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Loop_Count(5),
      I1 => r_Loop_Count(4),
      I2 => r_Loop_Count(7),
      I3 => r_Loop_Count(6),
      O => \r_CURRENT_STATE[2]_i_3_n_0\
    );
\r_CURRENT_STATE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \r_CURRENT_STATE__0\(0),
      R => '0'
    );
\r_CURRENT_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \r_CURRENT_STATE__0\(1),
      R => '0'
    );
\r_CURRENT_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \r_CURRENT_STATE__0\(2),
      R => '0'
    );
\r_Digit_Index[0]__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(2),
      I1 => \r_CURRENT_STATE__0\(0),
      I2 => \r_CURRENT_STATE__0\(1),
      I3 => \r_Digit_Index_reg[0]__0_n_0\,
      O => \r_Digit_Index[0]__0_i_1_n_0\
    );
\r_Digit_Index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0200"
    )
        port map (
      I0 => \r_Digit_Index_reg[0]__0_n_0\,
      I1 => \r_CURRENT_STATE__0\(1),
      I2 => \r_CURRENT_STATE__0\(0),
      I3 => \r_CURRENT_STATE__0\(2),
      I4 => \r_Digit_Index_reg_n_0_[1]\,
      O => \r_Digit_Index[1]_i_1_n_0\
    );
\r_Digit_Index_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_Digit_Index[0]__0_i_1_n_0\,
      Q => \r_Digit_Index_reg[0]__0_n_0\,
      R => '0'
    );
\r_Digit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => '1',
      D => \r_Digit_Index[1]_i_1_n_0\,
      Q => \r_Digit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Loop_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_Loop_Count(0),
      O => r_Loop_Count_1(0)
    );
\r_Loop_Count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBF00"
    )
        port map (
      I0 => \r_CURRENT_STATE[2]_i_3_n_0\,
      I1 => r_Loop_Count(3),
      I2 => r_Loop_Count(2),
      I3 => r_Loop_Count(0),
      I4 => r_Loop_Count(1),
      O => r_Loop_Count_1(1)
    );
\r_Loop_Count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C34CCCC"
    )
        port map (
      I0 => r_Loop_Count(3),
      I1 => r_Loop_Count(2),
      I2 => r_Loop_Count(1),
      I3 => \r_CURRENT_STATE[2]_i_3_n_0\,
      I4 => r_Loop_Count(0),
      O => r_Loop_Count_1(2)
    );
\r_Loop_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C64CCCC"
    )
        port map (
      I0 => r_Loop_Count(2),
      I1 => r_Loop_Count(3),
      I2 => r_Loop_Count(1),
      I3 => \r_CURRENT_STATE[2]_i_3_n_0\,
      I4 => r_Loop_Count(0),
      O => r_Loop_Count_1(3)
    );
\r_Loop_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => r_Loop_Count(1),
      I1 => r_Loop_Count(3),
      I2 => r_Loop_Count(2),
      I3 => r_Loop_Count(0),
      I4 => r_Loop_Count(4),
      O => r_Loop_Count_1(4)
    );
\r_Loop_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => r_Loop_Count(4),
      I1 => r_Loop_Count(0),
      I2 => r_Loop_Count(2),
      I3 => r_Loop_Count(3),
      I4 => r_Loop_Count(1),
      I5 => r_Loop_Count(5),
      O => r_Loop_Count_1(5)
    );
\r_Loop_Count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_Loop_Count[7]_i_3_n_0\,
      I1 => r_Loop_Count(6),
      O => r_Loop_Count_1(6)
    );
\r_Loop_Count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_CURRENT_STATE__0\(2),
      I1 => \r_CURRENT_STATE__0\(1),
      I2 => \r_CURRENT_STATE__0\(0),
      O => \r_Loop_Count[7]_i_1_n_0\
    );
\r_Loop_Count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => r_Loop_Count(6),
      I1 => \r_Loop_Count[7]_i_3_n_0\,
      I2 => r_Loop_Count(7),
      O => r_Loop_Count_1(7)
    );
\r_Loop_Count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => r_Loop_Count(4),
      I1 => r_Loop_Count(0),
      I2 => r_Loop_Count(2),
      I3 => r_Loop_Count(3),
      I4 => r_Loop_Count(1),
      I5 => r_Loop_Count(5),
      O => \r_Loop_Count[7]_i_3_n_0\
    );
\r_Loop_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(0),
      Q => r_Loop_Count(0),
      R => '0'
    );
\r_Loop_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(1),
      Q => r_Loop_Count(1),
      R => '0'
    );
\r_Loop_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(2),
      Q => r_Loop_Count(2),
      R => '0'
    );
\r_Loop_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(3),
      Q => r_Loop_Count(3),
      R => '0'
    );
\r_Loop_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(4),
      Q => r_Loop_Count(4),
      R => '0'
    );
\r_Loop_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(5),
      Q => r_Loop_Count(5),
      R => '0'
    );
\r_Loop_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(6),
      Q => r_Loop_Count(6),
      R => '0'
    );
\r_Loop_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clock,
      CE => \r_Loop_Count[7]_i_1_n_0\,
      D => r_Loop_Count_1(7),
      Q => r_Loop_Count(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_Clock : in STD_LOGIC;
    i_Binary : in STD_LOGIC_VECTOR ( 13 downto 0 );
    i_Start : in STD_LOGIC;
    o_BCD : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_BINARY_TO_BCD_0_0,BINARY_TO_BCD,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BINARY_TO_BCD,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_Clock : signal is "xilinx.com:signal:clock:1.0 i_Clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_Clock : signal is "XIL_INTERFACENAME i_Clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BINARY_TO_BCD
     port map (
      i_Binary(13 downto 0) => i_Binary(13 downto 0),
      i_Clock => i_Clock,
      i_Start => i_Start,
      o_BCD(15 downto 0) => o_BCD(15 downto 0)
    );
end STRUCTURE;
