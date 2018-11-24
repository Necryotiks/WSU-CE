-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 14:03:43 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_RTM_FSM_0_0_stub.vhdl
-- Design      : Reaction_Time_Averager_RTM_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_CLK1KHZ : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_CVAL : in STD_LOGIC_VECTOR ( 12 downto 0 );
    i_Start : in STD_LOGIC;
    i_Terminate : in STD_LOGIC;
    i_React : in STD_LOGIC;
    o_Ready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_SWEN : out STD_LOGIC;
    o_ACC_EN : out STD_LOGIC;
    o_DONE : out STD_LOGIC;
    o_T_NUM : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_SRST : out STD_LOGIC;
    o_TRIAL_NUM : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_CEN : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_CLK1KHZ,i_RST,i_CVAL[12:0],i_Start,i_Terminate,i_React,o_Ready[1:0],o_SWEN,o_ACC_EN,o_DONE,o_T_NUM[2:0],o_SRST,o_TRIAL_NUM[2:0],o_CEN";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "RTM_FSM,Vivado 2018.2";
begin
end;
