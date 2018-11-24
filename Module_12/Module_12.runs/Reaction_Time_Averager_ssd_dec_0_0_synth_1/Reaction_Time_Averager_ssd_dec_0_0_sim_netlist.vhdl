-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:11:19 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_ssd_dec_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_ssd_dec_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec is
  port (
    o_Cathodes : out STD_LOGIC_VECTOR ( 6 downto 0 );
    i_Num : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec is
  signal r_Cathodes : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Cathodes[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Cathodes[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Cathodes[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Cathodes[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_Cathodes[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Cathodes[5]_i_1\ : label is "soft_lutpair2";
begin
\r_Cathodes[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(2),
      I2 => i_Num(0),
      I3 => i_Num(1),
      O => r_Cathodes(0)
    );
\r_Cathodes[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(2),
      I2 => i_Num(1),
      I3 => i_Num(0),
      O => r_Cathodes(1)
    );
\r_Cathodes[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(0),
      I2 => i_Num(1),
      I3 => i_Num(2),
      O => r_Cathodes(2)
    );
\r_Cathodes[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(2),
      I2 => i_Num(0),
      I3 => i_Num(1),
      O => r_Cathodes(3)
    );
\r_Cathodes[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(1),
      I2 => i_Num(2),
      I3 => i_Num(0),
      O => r_Cathodes(4)
    );
\r_Cathodes[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(2),
      I2 => i_Num(0),
      I3 => i_Num(1),
      O => r_Cathodes(5)
    );
\r_Cathodes[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => i_Num(3),
      I1 => i_Num(0),
      I2 => i_Num(2),
      I3 => i_Num(1),
      O => r_Cathodes(6)
    );
\r_Cathodes_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(0),
      Q => o_Cathodes(0),
      R => '0'
    );
\r_Cathodes_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(1),
      Q => o_Cathodes(1),
      R => '0'
    );
\r_Cathodes_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(2),
      Q => o_Cathodes(2),
      R => '0'
    );
\r_Cathodes_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(3),
      Q => o_Cathodes(3),
      R => '0'
    );
\r_Cathodes_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(4),
      Q => o_Cathodes(4),
      R => '0'
    );
\r_Cathodes_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(5),
      Q => o_Cathodes(5),
      R => '0'
    );
\r_Cathodes_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_CLK,
      CE => '1',
      D => r_Cathodes(6),
      Q => o_Cathodes(6),
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
    i_Num : in STD_LOGIC_VECTOR ( 3 downto 0 );
    o_Cathodes : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_ssd_dec_0_0,ssd_dec,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ssd_dec,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_CLK : signal is "xilinx.com:signal:clock:1.0 i_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_CLK : signal is "XIL_INTERFACENAME i_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Reaction_Time_Averager_i_CLK";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssd_dec
     port map (
      i_CLK => i_CLK,
      i_Num(3 downto 0) => i_Num(3 downto 0),
      o_Cathodes(6 downto 0) => o_Cathodes(6 downto 0)
    );
end STRUCTURE;
