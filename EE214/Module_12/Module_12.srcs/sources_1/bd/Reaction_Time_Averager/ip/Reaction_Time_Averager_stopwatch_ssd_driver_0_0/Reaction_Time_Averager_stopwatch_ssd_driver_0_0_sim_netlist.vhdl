-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 15:49:24 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Necryotiks/AppData/Roaming/SPB_Data/WSU-CPTE/Module_12/Module_12.srcs/sources_1/bd/Reaction_Time_Averager/ip/Reaction_Time_Averager_stopwatch_ssd_driver_0_0/Reaction_Time_Averager_stopwatch_ssd_driver_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_stopwatch_ssd_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Digit_3_val[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Digit_2_val[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_Digit_1_val[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SRST : in STD_LOGIC;
    i_CLK_EN : in STD_LOGIC;
    i_SUBCLK : in STD_LOGIC;
    i_RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver : entity is "stopwatch_ssd_driver";
end Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver;

architecture STRUCTURE of Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^o_digit_1_val[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^o_digit_2_val[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^o_digit_3_val[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_Digit_1_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_Digit_1_val[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_Digit_2_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2_val[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Digit_3_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3_val[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Digit_4_val[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4_val[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4_val[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4_val[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Digit_1_val[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Digit_1_val[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Digit_1_val[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Digit_1_val[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Digit_1_val[3]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Digit_1_val[3]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Digit_1_val[3]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Digit_2_val[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Digit_2_val[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Digit_2_val[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Digit_3_val[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Digit_3_val[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Digit_3_val[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Digit_4_val[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Digit_4_val[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Digit_4_val[3]_i_2\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \o_Digit_1_val[3]\(3 downto 0) <= \^o_digit_1_val[3]\(3 downto 0);
  \o_Digit_2_val[3]\(3 downto 0) <= \^o_digit_2_val[3]\(3 downto 0);
  \o_Digit_3_val[3]\(3 downto 0) <= \^o_digit_3_val[3]\(3 downto 0);
\r_Digit_1_val[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \^o_digit_1_val[3]\(0),
      I1 => \^o_digit_1_val[3]\(2),
      I2 => \^o_digit_1_val[3]\(1),
      I3 => \^o_digit_1_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_1_val[0]_i_1_n_0\
    );
\r_Digit_1_val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \^o_digit_1_val[3]\(1),
      I1 => \^o_digit_1_val[3]\(0),
      I2 => \^o_digit_1_val[3]\(3),
      I3 => i_SRST,
      O => \r_Digit_1_val[1]_i_1_n_0\
    );
\r_Digit_1_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \^o_digit_1_val[3]\(2),
      I1 => \^o_digit_1_val[3]\(1),
      I2 => \^o_digit_1_val[3]\(0),
      I3 => \^o_digit_1_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_1_val[2]_i_1_n_0\
    );
\r_Digit_1_val[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => i_SRST,
      I1 => \r_Digit_1_val[3]_i_3_n_0\,
      I2 => \r_Digit_1_val[3]_i_4_n_0\,
      I3 => i_CLK_EN,
      I4 => \r_Digit_1_val[3]_i_5_n_0\,
      O => \r_Digit_1_val[3]_i_1_n_0\
    );
\r_Digit_1_val[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000180"
    )
        port map (
      I0 => \^o_digit_1_val[3]\(2),
      I1 => \^o_digit_1_val[3]\(1),
      I2 => \^o_digit_1_val[3]\(0),
      I3 => \^o_digit_1_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_1_val[3]_i_2_n_0\
    );
\r_Digit_1_val[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^o_digit_3_val[3]\(2),
      I1 => \^o_digit_3_val[3]\(1),
      I2 => \^o_digit_3_val[3]\(0),
      I3 => \^o_digit_3_val[3]\(3),
      O => \r_Digit_1_val[3]_i_3_n_0\
    );
\r_Digit_1_val[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^o_digit_2_val[3]\(2),
      I1 => \^o_digit_2_val[3]\(1),
      I2 => \^o_digit_2_val[3]\(0),
      I3 => \^o_digit_2_val[3]\(3),
      O => \r_Digit_1_val[3]_i_4_n_0\
    );
\r_Digit_1_val[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \r_Digit_1_val[3]_i_5_n_0\
    );
\r_Digit_1_val_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_1_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_1_val[0]_i_1_n_0\,
      Q => \^o_digit_1_val[3]\(0)
    );
\r_Digit_1_val_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_1_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_1_val[1]_i_1_n_0\,
      Q => \^o_digit_1_val[3]\(1)
    );
\r_Digit_1_val_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_1_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_1_val[2]_i_1_n_0\,
      Q => \^o_digit_1_val[3]\(2)
    );
\r_Digit_1_val_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_1_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_1_val[3]_i_2_n_0\,
      Q => \^o_digit_1_val[3]\(3)
    );
\r_Digit_2_val[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \^o_digit_2_val[3]\(0),
      I1 => \^o_digit_2_val[3]\(2),
      I2 => \^o_digit_2_val[3]\(1),
      I3 => \^o_digit_2_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_2_val[0]_i_1_n_0\
    );
\r_Digit_2_val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \^o_digit_2_val[3]\(1),
      I1 => \^o_digit_2_val[3]\(0),
      I2 => \^o_digit_2_val[3]\(3),
      I3 => i_SRST,
      O => \r_Digit_2_val[1]_i_1_n_0\
    );
\r_Digit_2_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \^o_digit_2_val[3]\(2),
      I1 => \^o_digit_2_val[3]\(1),
      I2 => \^o_digit_2_val[3]\(0),
      I3 => \^o_digit_2_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_2_val[2]_i_1_n_0\
    );
\r_Digit_2_val[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => i_SRST,
      I1 => \r_Digit_1_val[3]_i_5_n_0\,
      I2 => \r_Digit_1_val[3]_i_3_n_0\,
      I3 => i_CLK_EN,
      O => \r_Digit_2_val[3]_i_1_n_0\
    );
\r_Digit_2_val[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000180"
    )
        port map (
      I0 => \^o_digit_2_val[3]\(2),
      I1 => \^o_digit_2_val[3]\(1),
      I2 => \^o_digit_2_val[3]\(0),
      I3 => \^o_digit_2_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_2_val[3]_i_2_n_0\
    );
\r_Digit_2_val_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_2_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_2_val[0]_i_1_n_0\,
      Q => \^o_digit_2_val[3]\(0)
    );
\r_Digit_2_val_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_2_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_2_val[1]_i_1_n_0\,
      Q => \^o_digit_2_val[3]\(1)
    );
\r_Digit_2_val_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_2_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_2_val[2]_i_1_n_0\,
      Q => \^o_digit_2_val[3]\(2)
    );
\r_Digit_2_val_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_2_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_2_val[3]_i_2_n_0\,
      Q => \^o_digit_2_val[3]\(3)
    );
\r_Digit_3_val[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \^o_digit_3_val[3]\(0),
      I1 => \^o_digit_3_val[3]\(2),
      I2 => \^o_digit_3_val[3]\(1),
      I3 => \^o_digit_3_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_3_val[0]_i_1_n_0\
    );
\r_Digit_3_val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \^o_digit_3_val[3]\(1),
      I1 => \^o_digit_3_val[3]\(0),
      I2 => \^o_digit_3_val[3]\(3),
      I3 => i_SRST,
      O => \r_Digit_3_val[1]_i_1_n_0\
    );
\r_Digit_3_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \^o_digit_3_val[3]\(2),
      I1 => \^o_digit_3_val[3]\(1),
      I2 => \^o_digit_3_val[3]\(0),
      I3 => \^o_digit_3_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_3_val[2]_i_1_n_0\
    );
\r_Digit_3_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAAAAAA"
    )
        port map (
      I0 => i_SRST,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => i_CLK_EN,
      O => \r_Digit_3_val[3]_i_1_n_0\
    );
\r_Digit_3_val[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000180"
    )
        port map (
      I0 => \^o_digit_3_val[3]\(2),
      I1 => \^o_digit_3_val[3]\(1),
      I2 => \^o_digit_3_val[3]\(0),
      I3 => \^o_digit_3_val[3]\(3),
      I4 => i_SRST,
      O => \r_Digit_3_val[3]_i_2_n_0\
    );
\r_Digit_3_val_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_3_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_3_val[0]_i_1_n_0\,
      Q => \^o_digit_3_val[3]\(0)
    );
\r_Digit_3_val_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_3_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_3_val[1]_i_1_n_0\,
      Q => \^o_digit_3_val[3]\(1)
    );
\r_Digit_3_val_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_3_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_3_val[2]_i_1_n_0\,
      Q => \^o_digit_3_val[3]\(2)
    );
\r_Digit_3_val_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_3_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_3_val[3]_i_2_n_0\,
      Q => \^o_digit_3_val[3]\(3)
    );
\r_Digit_4_val[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000155"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => i_SRST,
      O => \r_Digit_4_val[0]_i_1_n_0\
    );
\r_Digit_4_val[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => i_SRST,
      O => \r_Digit_4_val[1]_i_1_n_0\
    );
\r_Digit_4_val[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => i_SRST,
      O => \r_Digit_4_val[2]_i_1_n_0\
    );
\r_Digit_4_val[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_SRST,
      I1 => i_CLK_EN,
      O => \r_Digit_4_val[3]_i_1_n_0\
    );
\r_Digit_4_val[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000180"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => i_SRST,
      O => \r_Digit_4_val[3]_i_2_n_0\
    );
\r_Digit_4_val_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_4_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_4_val[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\r_Digit_4_val_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_4_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_4_val[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\r_Digit_4_val_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_4_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_4_val[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\r_Digit_4_val_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_SUBCLK,
      CE => \r_Digit_4_val[3]_i_1_n_0\,
      CLR => i_RST,
      D => \r_Digit_4_val[3]_i_2_n_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Reaction_Time_Averager_stopwatch_ssd_driver_0_0 is
  port (
    i_SUBCLK : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_CLK_EN : in STD_LOGIC;
    i_SRST : in STD_LOGIC;
    o_Digit_1_val : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_2_val : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_3_val : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_4_val : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 : entity is "Reaction_Time_Averager_stopwatch_ssd_driver_0_0,stopwatch_ssd_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 : entity is "stopwatch_ssd_driver,Vivado 2018.2";
end Reaction_Time_Averager_stopwatch_ssd_driver_0_0;

architecture STRUCTURE of Reaction_Time_Averager_stopwatch_ssd_driver_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_RST : signal is "xilinx.com:signal:reset:1.0 i_RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_RST : signal is "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW";
begin
inst: entity work.Reaction_Time_Averager_stopwatch_ssd_driver_0_0_stopwatch_ssd_driver
     port map (
      Q(3 downto 0) => o_Digit_4_val(3 downto 0),
      i_CLK_EN => i_CLK_EN,
      i_RST => i_RST,
      i_SRST => i_SRST,
      i_SUBCLK => i_SUBCLK,
      \o_Digit_1_val[3]\(3 downto 0) => o_Digit_1_val(3 downto 0),
      \o_Digit_2_val[3]\(3 downto 0) => o_Digit_2_val(3 downto 0),
      \o_Digit_3_val[3]\(3 downto 0) => o_Digit_3_val(3 downto 0)
    );
end STRUCTURE;
