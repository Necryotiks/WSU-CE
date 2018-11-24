-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:19 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_ssd_mux_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_ssd_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux is
  port (
    o_Anodes : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_CLK : in STD_LOGIC;
    i_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r_SUBCLK[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_SUBCLK_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_SUBCLK_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_SUBCLK_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_SUBCLK_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_SUBCLK_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_SUBCLK_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_SUBCLK_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_SUBCLK_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_r_SUBCLK_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_SUBCLK_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Anodes[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_Anodes[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_Anodes[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_Anodes[3]_INST_0\ : label is "soft_lutpair1";
begin
\o_Anodes[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => o_Anodes(0)
    );
\o_Anodes[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => o_Anodes(1)
    );
\o_Anodes[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => o_Anodes(2)
    );
\o_Anodes[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => o_Anodes(3)
    );
\o_Out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => i_Digit_2(0),
      I1 => i_Digit_1(0),
      I2 => i_Digit_4(0),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => i_Digit_3(0),
      O => o_Out(0)
    );
\o_Out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => i_Digit_2(1),
      I1 => i_Digit_1(1),
      I2 => i_Digit_4(1),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => i_Digit_3(1),
      O => o_Out(1)
    );
\o_Out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => i_Digit_2(2),
      I1 => i_Digit_1(2),
      I2 => i_Digit_4(2),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => i_Digit_3(2),
      O => o_Out(2)
    );
\o_Out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => i_Digit_2(3),
      I1 => i_Digit_1(3),
      I2 => i_Digit_4(3),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => i_Digit_3(3),
      O => o_Out(3)
    );
\r_SUBCLK[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SUBCLK_reg_n_0_[0]\,
      O => \r_SUBCLK[0]_i_2_n_0\
    );
\r_SUBCLK_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[0]_i_1_n_7\,
      Q => \r_SUBCLK_reg_n_0_[0]\,
      R => '0'
    );
\r_SUBCLK_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_SUBCLK_reg[0]_i_1_n_0\,
      CO(2) => \r_SUBCLK_reg[0]_i_1_n_1\,
      CO(1) => \r_SUBCLK_reg[0]_i_1_n_2\,
      CO(0) => \r_SUBCLK_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_SUBCLK_reg[0]_i_1_n_4\,
      O(2) => \r_SUBCLK_reg[0]_i_1_n_5\,
      O(1) => \r_SUBCLK_reg[0]_i_1_n_6\,
      O(0) => \r_SUBCLK_reg[0]_i_1_n_7\,
      S(3) => \r_SUBCLK_reg_n_0_[3]\,
      S(2) => \r_SUBCLK_reg_n_0_[2]\,
      S(1) => \r_SUBCLK_reg_n_0_[1]\,
      S(0) => \r_SUBCLK[0]_i_2_n_0\
    );
\r_SUBCLK_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[8]_i_1_n_5\,
      Q => \r_SUBCLK_reg_n_0_[10]\,
      R => '0'
    );
\r_SUBCLK_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[8]_i_1_n_4\,
      Q => \r_SUBCLK_reg_n_0_[11]\,
      R => '0'
    );
\r_SUBCLK_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[12]_i_1_n_7\,
      Q => \r_SUBCLK_reg_n_0_[12]\,
      R => '0'
    );
\r_SUBCLK_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_SUBCLK_reg[8]_i_1_n_0\,
      CO(3) => \r_SUBCLK_reg[12]_i_1_n_0\,
      CO(2) => \r_SUBCLK_reg[12]_i_1_n_1\,
      CO(1) => \r_SUBCLK_reg[12]_i_1_n_2\,
      CO(0) => \r_SUBCLK_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_SUBCLK_reg[12]_i_1_n_4\,
      O(2) => \r_SUBCLK_reg[12]_i_1_n_5\,
      O(1) => \r_SUBCLK_reg[12]_i_1_n_6\,
      O(0) => \r_SUBCLK_reg[12]_i_1_n_7\,
      S(3) => \r_SUBCLK_reg_n_0_[15]\,
      S(2) => \r_SUBCLK_reg_n_0_[14]\,
      S(1) => \r_SUBCLK_reg_n_0_[13]\,
      S(0) => \r_SUBCLK_reg_n_0_[12]\
    );
\r_SUBCLK_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[12]_i_1_n_6\,
      Q => \r_SUBCLK_reg_n_0_[13]\,
      R => '0'
    );
\r_SUBCLK_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[12]_i_1_n_5\,
      Q => \r_SUBCLK_reg_n_0_[14]\,
      R => '0'
    );
\r_SUBCLK_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[12]_i_1_n_4\,
      Q => \r_SUBCLK_reg_n_0_[15]\,
      R => '0'
    );
\r_SUBCLK_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[16]_i_1_n_7\,
      Q => p_0_in(0),
      R => '0'
    );
\r_SUBCLK_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_SUBCLK_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_SUBCLK_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_SUBCLK_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_SUBCLK_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_SUBCLK_reg[16]_i_1_n_6\,
      O(0) => \r_SUBCLK_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => p_0_in(1 downto 0)
    );
\r_SUBCLK_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[16]_i_1_n_6\,
      Q => p_0_in(1),
      R => '0'
    );
\r_SUBCLK_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[0]_i_1_n_6\,
      Q => \r_SUBCLK_reg_n_0_[1]\,
      R => '0'
    );
\r_SUBCLK_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[0]_i_1_n_5\,
      Q => \r_SUBCLK_reg_n_0_[2]\,
      R => '0'
    );
\r_SUBCLK_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[0]_i_1_n_4\,
      Q => \r_SUBCLK_reg_n_0_[3]\,
      R => '0'
    );
\r_SUBCLK_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[4]_i_1_n_7\,
      Q => \r_SUBCLK_reg_n_0_[4]\,
      R => '0'
    );
\r_SUBCLK_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_SUBCLK_reg[0]_i_1_n_0\,
      CO(3) => \r_SUBCLK_reg[4]_i_1_n_0\,
      CO(2) => \r_SUBCLK_reg[4]_i_1_n_1\,
      CO(1) => \r_SUBCLK_reg[4]_i_1_n_2\,
      CO(0) => \r_SUBCLK_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_SUBCLK_reg[4]_i_1_n_4\,
      O(2) => \r_SUBCLK_reg[4]_i_1_n_5\,
      O(1) => \r_SUBCLK_reg[4]_i_1_n_6\,
      O(0) => \r_SUBCLK_reg[4]_i_1_n_7\,
      S(3) => \r_SUBCLK_reg_n_0_[7]\,
      S(2) => \r_SUBCLK_reg_n_0_[6]\,
      S(1) => \r_SUBCLK_reg_n_0_[5]\,
      S(0) => \r_SUBCLK_reg_n_0_[4]\
    );
\r_SUBCLK_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[4]_i_1_n_6\,
      Q => \r_SUBCLK_reg_n_0_[5]\,
      R => '0'
    );
\r_SUBCLK_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[4]_i_1_n_5\,
      Q => \r_SUBCLK_reg_n_0_[6]\,
      R => '0'
    );
\r_SUBCLK_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[4]_i_1_n_4\,
      Q => \r_SUBCLK_reg_n_0_[7]\,
      R => '0'
    );
\r_SUBCLK_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[8]_i_1_n_7\,
      Q => \r_SUBCLK_reg_n_0_[8]\,
      R => '0'
    );
\r_SUBCLK_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_SUBCLK_reg[4]_i_1_n_0\,
      CO(3) => \r_SUBCLK_reg[8]_i_1_n_0\,
      CO(2) => \r_SUBCLK_reg[8]_i_1_n_1\,
      CO(1) => \r_SUBCLK_reg[8]_i_1_n_2\,
      CO(0) => \r_SUBCLK_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_SUBCLK_reg[8]_i_1_n_4\,
      O(2) => \r_SUBCLK_reg[8]_i_1_n_5\,
      O(1) => \r_SUBCLK_reg[8]_i_1_n_6\,
      O(0) => \r_SUBCLK_reg[8]_i_1_n_7\,
      S(3) => \r_SUBCLK_reg_n_0_[11]\,
      S(2) => \r_SUBCLK_reg_n_0_[10]\,
      S(1) => \r_SUBCLK_reg_n_0_[9]\,
      S(0) => \r_SUBCLK_reg_n_0_[8]\
    );
\r_SUBCLK_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => \r_SUBCLK_reg[8]_i_1_n_6\,
      Q => \r_SUBCLK_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_Digit_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_Digit_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_CLK : in STD_LOGIC;
    o_Out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Anodes : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_ssd_mux_0_0,ssd_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ssd_mux,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_mux
     port map (
      i_CLK => i_CLK,
      i_Digit_1(3 downto 0) => i_Digit_1(3 downto 0),
      i_Digit_2(3 downto 0) => i_Digit_2(3 downto 0),
      i_Digit_3(3 downto 0) => i_Digit_3(3 downto 0),
      i_Digit_4(3 downto 0) => i_Digit_4(3 downto 0),
      o_Anodes(3 downto 0) => o_Anodes(3 downto 0),
      o_Out(3 downto 0) => o_Out(3 downto 0)
    );
end STRUCTURE;
