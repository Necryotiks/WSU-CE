-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 13:13:33 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_EXTRA_THICC_MUX_0_0_stub.vhdl
-- Design      : Reaction_Time_Averager_EXTRA_THICC_MUX_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_SW_Digit_1[3:0],i_SW_Digit_2[3:0],i_SW_Digit_3[3:0],i_SW_Digit_4[3:0],i_T_Digit_1[3:0],i_T_Digit_2[3:0],i_T_Digit_3[3:0],i_T_Digit_4[3:0],i_Sel,i_CLK,o_Digit_1[3:0],o_Digit_2[3:0],o_Digit_3[3:0],o_Digit_4[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "EXTRA_THICC_MUX,Vivado 2018.2";
begin
end;
