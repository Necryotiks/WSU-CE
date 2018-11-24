-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:13:33 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_EXTRA_THICC_MUX_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_EXTRA_THICC_MUX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX is
  port (
    o_Digit_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_CLK : in STD_LOGIC;
    i_T_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Sel : in STD_LOGIC;
    i_SW_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX is
  signal \r_Digit_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_3[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Digit_4[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Digit_1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Digit_1[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Digit_1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Digit_1[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Digit_2[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Digit_2[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Digit_2[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Digit_2[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Digit_3[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Digit_3[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Digit_3[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Digit_3[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Digit_4[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Digit_4[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_Digit_4[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Digit_4[3]_i_1\ : label is "soft_lutpair7";
begin
\r_Digit_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_1(0),
      I1 => i_Sel,
      I2 => i_SW_Digit_1(0),
      O => \r_Digit_1[0]_i_1_n_0\
    );
\r_Digit_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_1(1),
      I1 => i_Sel,
      I2 => i_SW_Digit_1(1),
      O => \r_Digit_1[1]_i_1_n_0\
    );
\r_Digit_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_1(2),
      I1 => i_Sel,
      I2 => i_SW_Digit_1(2),
      O => \r_Digit_1[2]_i_1_n_0\
    );
\r_Digit_1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_1(3),
      I1 => i_Sel,
      I2 => i_SW_Digit_1(3),
      O => \r_Digit_1[3]_i_1_n_0\
    );
\r_Digit_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_1[0]_i_1_n_0\,
      Q => o_Digit_1(0),
      R => '0'
    );
\r_Digit_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_1[1]_i_1_n_0\,
      Q => o_Digit_1(1),
      R => '0'
    );
\r_Digit_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_1[2]_i_1_n_0\,
      Q => o_Digit_1(2),
      R => '0'
    );
\r_Digit_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_1[3]_i_1_n_0\,
      Q => o_Digit_1(3),
      R => '0'
    );
\r_Digit_2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_2(0),
      I1 => i_Sel,
      I2 => i_SW_Digit_2(0),
      O => \r_Digit_2[0]_i_1_n_0\
    );
\r_Digit_2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_2(1),
      I1 => i_Sel,
      I2 => i_SW_Digit_2(1),
      O => \r_Digit_2[1]_i_1_n_0\
    );
\r_Digit_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_2(2),
      I1 => i_Sel,
      I2 => i_SW_Digit_2(2),
      O => \r_Digit_2[2]_i_1_n_0\
    );
\r_Digit_2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_2(3),
      I1 => i_Sel,
      I2 => i_SW_Digit_2(3),
      O => \r_Digit_2[3]_i_1_n_0\
    );
\r_Digit_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_2[0]_i_1_n_0\,
      Q => o_Digit_2(0),
      R => '0'
    );
\r_Digit_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_2[1]_i_1_n_0\,
      Q => o_Digit_2(1),
      R => '0'
    );
\r_Digit_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_2[2]_i_1_n_0\,
      Q => o_Digit_2(2),
      R => '0'
    );
\r_Digit_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_2[3]_i_1_n_0\,
      Q => o_Digit_2(3),
      R => '0'
    );
\r_Digit_3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_3(0),
      I1 => i_Sel,
      I2 => i_SW_Digit_3(0),
      O => \r_Digit_3[0]_i_1_n_0\
    );
\r_Digit_3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_3(1),
      I1 => i_Sel,
      I2 => i_SW_Digit_3(1),
      O => \r_Digit_3[1]_i_1_n_0\
    );
\r_Digit_3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_3(2),
      I1 => i_Sel,
      I2 => i_SW_Digit_3(2),
      O => \r_Digit_3[2]_i_1_n_0\
    );
\r_Digit_3[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_3(3),
      I1 => i_Sel,
      I2 => i_SW_Digit_3(3),
      O => \r_Digit_3[3]_i_1_n_0\
    );
\r_Digit_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_3[0]_i_1_n_0\,
      Q => o_Digit_3(0),
      R => '0'
    );
\r_Digit_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_3[1]_i_1_n_0\,
      Q => o_Digit_3(1),
      R => '0'
    );
\r_Digit_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_3[2]_i_1_n_0\,
      Q => o_Digit_3(2),
      R => '0'
    );
\r_Digit_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_3[3]_i_1_n_0\,
      Q => o_Digit_3(3),
      R => '0'
    );
\r_Digit_4[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_4(0),
      I1 => i_Sel,
      I2 => i_SW_Digit_4(0),
      O => \r_Digit_4[0]_i_1_n_0\
    );
\r_Digit_4[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_4(1),
      I1 => i_Sel,
      I2 => i_SW_Digit_4(1),
      O => \r_Digit_4[1]_i_1_n_0\
    );
\r_Digit_4[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_4(2),
      I1 => i_Sel,
      I2 => i_SW_Digit_4(2),
      O => \r_Digit_4[2]_i_1_n_0\
    );
\r_Digit_4[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_T_Digit_4(3),
      I1 => i_Sel,
      I2 => i_SW_Digit_4(3),
      O => \r_Digit_4[3]_i_1_n_0\
    );
\r_Digit_4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_4[0]_i_1_n_0\,
      Q => o_Digit_4(0),
      R => '0'
    );
\r_Digit_4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_4[1]_i_1_n_0\,
      Q => o_Digit_4(1),
      R => '0'
    );
\r_Digit_4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_4[2]_i_1_n_0\,
      Q => o_Digit_4(2),
      R => '0'
    );
\r_Digit_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_Digit_4[3]_i_1_n_0\,
      Q => o_Digit_4(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_SW_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SW_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_T_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Sel : in STD_LOGIC;
    i_CLK : in STD_LOGIC;
    o_Digit_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Digit_4 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_EXTRA_THICC_MUX_0_0,EXTRA_THICC_MUX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "EXTRA_THICC_MUX,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EXTRA_THICC_MUX
     port map (
      i_CLK => i_CLK,
      i_SW_Digit_1(3 downto 0) => i_SW_Digit_1(3 downto 0),
      i_SW_Digit_2(3 downto 0) => i_SW_Digit_2(3 downto 0),
      i_SW_Digit_3(3 downto 0) => i_SW_Digit_3(3 downto 0),
      i_SW_Digit_4(3 downto 0) => i_SW_Digit_4(3 downto 0),
      i_Sel => i_Sel,
      i_T_Digit_1(3 downto 0) => i_T_Digit_1(3 downto 0),
      i_T_Digit_2(3 downto 0) => i_T_Digit_2(3 downto 0),
      i_T_Digit_3(3 downto 0) => i_T_Digit_3(3 downto 0),
      i_T_Digit_4(3 downto 0) => i_T_Digit_4(3 downto 0),
      o_Digit_1(3 downto 0) => o_Digit_1(3 downto 0),
      o_Digit_2(3 downto 0) => o_Digit_2(3 downto 0),
      o_Digit_3(3 downto 0) => o_Digit_3(3 downto 0),
      o_Digit_4(3 downto 0) => o_Digit_4(3 downto 0)
    );
end STRUCTURE;
