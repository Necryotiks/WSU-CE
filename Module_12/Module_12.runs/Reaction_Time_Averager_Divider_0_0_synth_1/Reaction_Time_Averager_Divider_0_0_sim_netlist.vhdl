-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:13:33 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_Divider_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_Divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divider is
  port (
    o_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    i_TC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_DATA : in STD_LOGIC_VECTOR ( 13 downto 0 );
    i_CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divider is
  signal p_0_out : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \r_OUT[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[10]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_OUT[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_OUT[9]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_OUT[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_OUT[13]_i_1\ : label is "soft_lutpair0";
begin
\r_OUT[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(1),
      I1 => i_TC(1),
      I2 => i_DATA(2),
      I3 => i_TC(2),
      I4 => i_DATA(0),
      O => \r_OUT[0]_i_2_n_0\
    );
\r_OUT[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(0),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(3),
      O => \r_OUT[0]_i_3_n_0\
    );
\r_OUT[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(11),
      I1 => i_TC(1),
      I2 => i_DATA(12),
      I3 => i_TC(2),
      I4 => i_DATA(10),
      O => \r_OUT[10]_i_2_n_0\
    );
\r_OUT[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(10),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(13),
      O => \r_OUT[10]_i_3_n_0\
    );
\r_OUT[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5AEFEF05004040"
    )
        port map (
      I0 => i_TC(0),
      I1 => i_DATA(12),
      I2 => i_TC(1),
      I3 => i_DATA(13),
      I4 => i_TC(2),
      I5 => i_DATA(11),
      O => p_0_out(11)
    );
\r_OUT[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22AAB822"
    )
        port map (
      I0 => i_DATA(12),
      I1 => i_TC(2),
      I2 => i_DATA(13),
      I3 => i_TC(1),
      I4 => i_TC(0),
      O => p_0_out(12)
    );
\r_OUT[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A82"
    )
        port map (
      I0 => i_DATA(13),
      I1 => i_TC(2),
      I2 => i_TC(1),
      I3 => i_TC(0),
      O => p_0_out(13)
    );
\r_OUT[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(2),
      I1 => i_TC(1),
      I2 => i_DATA(3),
      I3 => i_TC(2),
      I4 => i_DATA(1),
      O => \r_OUT[1]_i_2_n_0\
    );
\r_OUT[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(1),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(4),
      O => \r_OUT[1]_i_3_n_0\
    );
\r_OUT[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(3),
      I1 => i_TC(1),
      I2 => i_DATA(4),
      I3 => i_TC(2),
      I4 => i_DATA(2),
      O => \r_OUT[2]_i_2_n_0\
    );
\r_OUT[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(2),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(5),
      O => \r_OUT[2]_i_3_n_0\
    );
\r_OUT[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(4),
      I1 => i_TC(1),
      I2 => i_DATA(5),
      I3 => i_TC(2),
      I4 => i_DATA(3),
      O => \r_OUT[3]_i_2_n_0\
    );
\r_OUT[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(3),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(6),
      O => \r_OUT[3]_i_3_n_0\
    );
\r_OUT[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(5),
      I1 => i_TC(1),
      I2 => i_DATA(6),
      I3 => i_TC(2),
      I4 => i_DATA(4),
      O => \r_OUT[4]_i_2_n_0\
    );
\r_OUT[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(4),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(7),
      O => \r_OUT[4]_i_3_n_0\
    );
\r_OUT[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(6),
      I1 => i_TC(1),
      I2 => i_DATA(7),
      I3 => i_TC(2),
      I4 => i_DATA(5),
      O => \r_OUT[5]_i_2_n_0\
    );
\r_OUT[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(5),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(8),
      O => \r_OUT[5]_i_3_n_0\
    );
\r_OUT[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(7),
      I1 => i_TC(1),
      I2 => i_DATA(8),
      I3 => i_TC(2),
      I4 => i_DATA(6),
      O => \r_OUT[6]_i_2_n_0\
    );
\r_OUT[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(6),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(9),
      O => \r_OUT[6]_i_3_n_0\
    );
\r_OUT[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(8),
      I1 => i_TC(1),
      I2 => i_DATA(9),
      I3 => i_TC(2),
      I4 => i_DATA(7),
      O => \r_OUT[7]_i_2_n_0\
    );
\r_OUT[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(7),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(10),
      O => \r_OUT[7]_i_3_n_0\
    );
\r_OUT[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(9),
      I1 => i_TC(1),
      I2 => i_DATA(10),
      I3 => i_TC(2),
      I4 => i_DATA(8),
      O => \r_OUT[8]_i_2_n_0\
    );
\r_OUT[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(8),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(11),
      O => \r_OUT[8]_i_3_n_0\
    );
\r_OUT[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => i_DATA(10),
      I1 => i_TC(1),
      I2 => i_DATA(11),
      I3 => i_TC(2),
      I4 => i_DATA(9),
      O => \r_OUT[9]_i_2_n_0\
    );
\r_OUT[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => i_DATA(9),
      I1 => i_TC(1),
      I2 => i_TC(2),
      I3 => i_DATA(12),
      O => \r_OUT[9]_i_3_n_0\
    );
\r_OUT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(0),
      Q => o_OUT(0),
      R => '0'
    );
\r_OUT_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[0]_i_2_n_0\,
      I1 => \r_OUT[0]_i_3_n_0\,
      O => p_0_out(0),
      S => i_TC(0)
    );
\r_OUT_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(10),
      Q => o_OUT(10),
      R => '0'
    );
\r_OUT_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[10]_i_2_n_0\,
      I1 => \r_OUT[10]_i_3_n_0\,
      O => p_0_out(10),
      S => i_TC(0)
    );
\r_OUT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(11),
      Q => o_OUT(11),
      R => '0'
    );
\r_OUT_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(12),
      Q => o_OUT(12),
      R => '0'
    );
\r_OUT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(13),
      Q => o_OUT(13),
      R => '0'
    );
\r_OUT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(1),
      Q => o_OUT(1),
      R => '0'
    );
\r_OUT_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[1]_i_2_n_0\,
      I1 => \r_OUT[1]_i_3_n_0\,
      O => p_0_out(1),
      S => i_TC(0)
    );
\r_OUT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(2),
      Q => o_OUT(2),
      R => '0'
    );
\r_OUT_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[2]_i_2_n_0\,
      I1 => \r_OUT[2]_i_3_n_0\,
      O => p_0_out(2),
      S => i_TC(0)
    );
\r_OUT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(3),
      Q => o_OUT(3),
      R => '0'
    );
\r_OUT_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[3]_i_2_n_0\,
      I1 => \r_OUT[3]_i_3_n_0\,
      O => p_0_out(3),
      S => i_TC(0)
    );
\r_OUT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(4),
      Q => o_OUT(4),
      R => '0'
    );
\r_OUT_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[4]_i_2_n_0\,
      I1 => \r_OUT[4]_i_3_n_0\,
      O => p_0_out(4),
      S => i_TC(0)
    );
\r_OUT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(5),
      Q => o_OUT(5),
      R => '0'
    );
\r_OUT_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[5]_i_2_n_0\,
      I1 => \r_OUT[5]_i_3_n_0\,
      O => p_0_out(5),
      S => i_TC(0)
    );
\r_OUT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(6),
      Q => o_OUT(6),
      R => '0'
    );
\r_OUT_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[6]_i_2_n_0\,
      I1 => \r_OUT[6]_i_3_n_0\,
      O => p_0_out(6),
      S => i_TC(0)
    );
\r_OUT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(7),
      Q => o_OUT(7),
      R => '0'
    );
\r_OUT_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[7]_i_2_n_0\,
      I1 => \r_OUT[7]_i_3_n_0\,
      O => p_0_out(7),
      S => i_TC(0)
    );
\r_OUT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(8),
      Q => o_OUT(8),
      R => '0'
    );
\r_OUT_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[8]_i_2_n_0\,
      I1 => \r_OUT[8]_i_3_n_0\,
      O => p_0_out(8),
      S => i_TC(0)
    );
\r_OUT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK,
      CE => '1',
      D => p_0_out(9),
      Q => o_OUT(9),
      R => '0'
    );
\r_OUT_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_OUT[9]_i_2_n_0\,
      I1 => \r_OUT[9]_i_3_n_0\,
      O => p_0_out(9),
      S => i_TC(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_CLK : in STD_LOGIC;
    i_TC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_DATA : in STD_LOGIC_VECTOR ( 13 downto 0 );
    o_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_Divider_0_0,Divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Divider,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Divider
     port map (
      i_CLK => i_CLK,
      i_DATA(13 downto 0) => i_DATA(13 downto 0),
      i_TC(2 downto 0) => i_TC(2 downto 0),
      o_OUT(13 downto 0) => o_OUT(13 downto 0)
    );
end STRUCTURE;
