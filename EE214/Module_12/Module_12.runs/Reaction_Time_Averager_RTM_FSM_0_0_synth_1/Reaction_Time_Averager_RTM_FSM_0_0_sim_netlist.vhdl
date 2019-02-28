-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Nov 23 14:03:43 2018
-- Host        : LAPTOP-QC2AS776 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Reaction_Time_Averager_RTM_FSM_0_0_sim_netlist.vhdl
-- Design      : Reaction_Time_Averager_RTM_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_Ready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_ACC_EN : out STD_LOGIC;
    o_DONE : out STD_LOGIC;
    o_SRST : out STD_LOGIC;
    o_CEN : out STD_LOGIC;
    i_CVAL : in STD_LOGIC_VECTOR ( 12 downto 0 );
    i_CLK1KHZ : in STD_LOGIC;
    i_RST : in STD_LOGIC;
    i_Start : in STD_LOGIC;
    i_Terminate : in STD_LOGIC;
    i_React : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM is
  signal \FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal r_COUNTER : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of r_COUNTER : signal is "yes";
  signal \r_COUNTER[0]_i_2_n_0\ : STD_LOGIC;
  signal r_COUNTER_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \r_COUNTER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_COUNTER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_COUNTER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_COUNTER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_COUNTER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_DONE : STD_LOGIC;
  attribute RTL_KEEP of r_DONE : signal is "yes";
  signal r_HOLD_COUNT : STD_LOGIC;
  attribute RTL_KEEP of r_HOLD_COUNT : signal is "yes";
  signal \r_HOLD_COUNT[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_HOLD_COUNT_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_NEXT_STATE1_carry__0_n_3\ : STD_LOGIC;
  signal \r_NEXT_STATE1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal r_NEXT_STATE1_carry_i_1_n_0 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_i_2_n_0 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_i_3_n_0 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_i_4_n_0 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_n_0 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_n_1 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_n_2 : STD_LOGIC;
  signal r_NEXT_STATE1_carry_n_3 : STD_LOGIC;
  signal r_Ready : STD_LOGIC;
  attribute RTL_KEEP of r_Ready : signal is "yes";
  signal r_SWEN : STD_LOGIC;
  attribute RTL_KEEP of r_SWEN : signal is "yes";
  signal r_TRIAL_COUNT : STD_LOGIC;
  attribute RTL_KEEP of r_TRIAL_COUNT : signal is "yes";
  signal \NLW_r_COUNTER_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_COUNTER_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_r_NEXT_STATE1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_NEXT_STATE1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_NEXT_STATE1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_r_CURRENT_STATE[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_r_CURRENT_STATE[4]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[0]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[1]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[2]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[3]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[4]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_CURRENT_STATE_reg[5]\ : label is "s_COUNTDOWN:000010,s_SW_RUNNING:000100,s_SW_STOPPED:001000,s_GET_COUNTER:000001,s_HOLD:010000,s_COLLECTION_COMPLETE:100000";
  attribute KEEP of \FSM_onehot_r_CURRENT_STATE_reg[5]\ : label is "yes";
  attribute SOFT_HLUTNM of \r_HOLD_COUNT[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_HOLD_COUNT[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_HOLD_COUNT[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_HOLD_COUNT[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_TRIAL_COUNT[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_TRIAL_COUNT[2]_i_1\ : label is "soft_lutpair3";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_onehot_r_CURRENT_STATE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => i_Start,
      I1 => \FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0\,
      I2 => r_Ready,
      I3 => \FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0\,
      I4 => r_TRIAL_COUNT,
      O => \FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => i_Terminate,
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FSM_onehot_r_CURRENT_STATE[0]_i_2_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => i_Start,
      I1 => r_Ready,
      I2 => \r_NEXT_STATE1_carry__0_n_3\,
      I3 => r_COUNTER,
      O => \FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \r_NEXT_STATE1_carry__0_n_3\,
      I1 => r_COUNTER,
      I2 => i_React,
      I3 => r_SWEN,
      O => \FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_SWEN,
      I1 => i_React,
      O => \FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8FFF8"
    )
        port map (
      I0 => \FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0\,
      I1 => r_TRIAL_COUNT,
      I2 => \FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0\,
      I3 => r_HOLD_COUNT,
      I4 => \FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0\,
      O => \FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \FSM_onehot_r_CURRENT_STATE[4]_i_2_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000200020"
    )
        port map (
      I0 => r_Ready,
      I1 => i_Start,
      I2 => i_Terminate,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \FSM_onehot_r_CURRENT_STATE[4]_i_3_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => r_DONE,
      I1 => \FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0\,
      I2 => r_HOLD_COUNT,
      O => \FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0\
    );
\FSM_onehot_r_CURRENT_STATE[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(5),
      I1 => \r_HOLD_COUNT_reg__0\(4),
      I2 => \r_HOLD_COUNT_reg__0\(1),
      I3 => \r_HOLD_COUNT_reg__0\(0),
      I4 => \r_HOLD_COUNT_reg__0\(3),
      I5 => \r_HOLD_COUNT_reg__0\(2),
      O => \FSM_onehot_r_CURRENT_STATE[5]_i_2_n_0\
    );
\FSM_onehot_r_CURRENT_STATE_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => \FSM_onehot_r_CURRENT_STATE[0]_i_1_n_0\,
      PRE => i_RST,
      Q => r_Ready
    );
\FSM_onehot_r_CURRENT_STATE_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => \FSM_onehot_r_CURRENT_STATE[1]_i_1_n_0\,
      Q => r_COUNTER
    );
\FSM_onehot_r_CURRENT_STATE_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => \FSM_onehot_r_CURRENT_STATE[2]_i_1_n_0\,
      Q => r_SWEN
    );
\FSM_onehot_r_CURRENT_STATE_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => \FSM_onehot_r_CURRENT_STATE[3]_i_1_n_0\,
      Q => r_TRIAL_COUNT
    );
\FSM_onehot_r_CURRENT_STATE_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => \FSM_onehot_r_CURRENT_STATE[4]_i_1_n_0\,
      Q => r_HOLD_COUNT
    );
\FSM_onehot_r_CURRENT_STATE_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => \FSM_onehot_r_CURRENT_STATE[5]_i_1_n_0\,
      Q => r_DONE
    );
r_ACC_EN_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      CLR => i_RST,
      D => r_TRIAL_COUNT,
      Q => o_ACC_EN
    );
r_CEN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => r_Ready,
      Q => o_CEN,
      R => '0'
    );
\r_COUNTER[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_COUNTER_reg(0),
      O => \r_COUNTER[0]_i_2_n_0\
    );
\r_COUNTER_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[0]_i_1_n_7\,
      Q => r_COUNTER_reg(0),
      R => '0'
    );
\r_COUNTER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_COUNTER_reg[0]_i_1_n_0\,
      CO(2) => \r_COUNTER_reg[0]_i_1_n_1\,
      CO(1) => \r_COUNTER_reg[0]_i_1_n_2\,
      CO(0) => \r_COUNTER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_COUNTER_reg[0]_i_1_n_4\,
      O(2) => \r_COUNTER_reg[0]_i_1_n_5\,
      O(1) => \r_COUNTER_reg[0]_i_1_n_6\,
      O(0) => \r_COUNTER_reg[0]_i_1_n_7\,
      S(3 downto 1) => r_COUNTER_reg(3 downto 1),
      S(0) => \r_COUNTER[0]_i_2_n_0\
    );
\r_COUNTER_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[8]_i_1_n_5\,
      Q => r_COUNTER_reg(10),
      R => '0'
    );
\r_COUNTER_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[8]_i_1_n_4\,
      Q => r_COUNTER_reg(11),
      R => '0'
    );
\r_COUNTER_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[12]_i_1_n_7\,
      Q => r_COUNTER_reg(12),
      R => '0'
    );
\r_COUNTER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_COUNTER_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_COUNTER_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_COUNTER_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_COUNTER_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => r_COUNTER_reg(12)
    );
\r_COUNTER_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[0]_i_1_n_6\,
      Q => r_COUNTER_reg(1),
      R => '0'
    );
\r_COUNTER_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[0]_i_1_n_5\,
      Q => r_COUNTER_reg(2),
      R => '0'
    );
\r_COUNTER_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[0]_i_1_n_4\,
      Q => r_COUNTER_reg(3),
      R => '0'
    );
\r_COUNTER_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[4]_i_1_n_7\,
      Q => r_COUNTER_reg(4),
      R => '0'
    );
\r_COUNTER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_COUNTER_reg[0]_i_1_n_0\,
      CO(3) => \r_COUNTER_reg[4]_i_1_n_0\,
      CO(2) => \r_COUNTER_reg[4]_i_1_n_1\,
      CO(1) => \r_COUNTER_reg[4]_i_1_n_2\,
      CO(0) => \r_COUNTER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_COUNTER_reg[4]_i_1_n_4\,
      O(2) => \r_COUNTER_reg[4]_i_1_n_5\,
      O(1) => \r_COUNTER_reg[4]_i_1_n_6\,
      O(0) => \r_COUNTER_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_COUNTER_reg(7 downto 4)
    );
\r_COUNTER_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[4]_i_1_n_6\,
      Q => r_COUNTER_reg(5),
      R => '0'
    );
\r_COUNTER_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[4]_i_1_n_5\,
      Q => r_COUNTER_reg(6),
      R => '0'
    );
\r_COUNTER_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[4]_i_1_n_4\,
      Q => r_COUNTER_reg(7),
      R => '0'
    );
\r_COUNTER_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[8]_i_1_n_7\,
      Q => r_COUNTER_reg(8),
      R => '0'
    );
\r_COUNTER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_COUNTER_reg[4]_i_1_n_0\,
      CO(3) => \r_COUNTER_reg[8]_i_1_n_0\,
      CO(2) => \r_COUNTER_reg[8]_i_1_n_1\,
      CO(1) => \r_COUNTER_reg[8]_i_1_n_2\,
      CO(0) => \r_COUNTER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_COUNTER_reg[8]_i_1_n_4\,
      O(2) => \r_COUNTER_reg[8]_i_1_n_5\,
      O(1) => \r_COUNTER_reg[8]_i_1_n_6\,
      O(0) => \r_COUNTER_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_COUNTER_reg(11 downto 8)
    );
\r_COUNTER_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_COUNTER,
      D => \r_COUNTER_reg[8]_i_1_n_6\,
      Q => r_COUNTER_reg(9),
      R => '0'
    );
r_DONE_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => '0',
      Q => o_DONE,
      S => r_DONE
    );
\r_HOLD_COUNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\r_HOLD_COUNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(0),
      I1 => \r_HOLD_COUNT_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\r_HOLD_COUNT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(0),
      I1 => \r_HOLD_COUNT_reg__0\(1),
      I2 => \r_HOLD_COUNT_reg__0\(2),
      O => \r_HOLD_COUNT[2]_i_1_n_0\
    );
\r_HOLD_COUNT[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(1),
      I1 => \r_HOLD_COUNT_reg__0\(0),
      I2 => \r_HOLD_COUNT_reg__0\(2),
      I3 => \r_HOLD_COUNT_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\r_HOLD_COUNT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(2),
      I1 => \r_HOLD_COUNT_reg__0\(0),
      I2 => \r_HOLD_COUNT_reg__0\(1),
      I3 => \r_HOLD_COUNT_reg__0\(3),
      I4 => \r_HOLD_COUNT_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\r_HOLD_COUNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_HOLD_COUNT_reg__0\(3),
      I1 => \r_HOLD_COUNT_reg__0\(1),
      I2 => \r_HOLD_COUNT_reg__0\(0),
      I3 => \r_HOLD_COUNT_reg__0\(2),
      I4 => \r_HOLD_COUNT_reg__0\(4),
      I5 => \r_HOLD_COUNT_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\r_HOLD_COUNT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \p_0_in__0\(0),
      Q => \r_HOLD_COUNT_reg__0\(0),
      R => i_RST
    );
\r_HOLD_COUNT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \p_0_in__0\(1),
      Q => \r_HOLD_COUNT_reg__0\(1),
      R => i_RST
    );
\r_HOLD_COUNT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \r_HOLD_COUNT[2]_i_1_n_0\,
      Q => \r_HOLD_COUNT_reg__0\(2),
      R => i_RST
    );
\r_HOLD_COUNT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \p_0_in__0\(3),
      Q => \r_HOLD_COUNT_reg__0\(3),
      R => i_RST
    );
\r_HOLD_COUNT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \p_0_in__0\(4),
      Q => \r_HOLD_COUNT_reg__0\(4),
      R => i_RST
    );
\r_HOLD_COUNT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_HOLD_COUNT,
      D => \p_0_in__0\(5),
      Q => \r_HOLD_COUNT_reg__0\(5),
      R => i_RST
    );
r_NEXT_STATE1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_NEXT_STATE1_carry_n_0,
      CO(2) => r_NEXT_STATE1_carry_n_1,
      CO(1) => r_NEXT_STATE1_carry_n_2,
      CO(0) => r_NEXT_STATE1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_r_NEXT_STATE1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_NEXT_STATE1_carry_i_1_n_0,
      S(2) => r_NEXT_STATE1_carry_i_2_n_0,
      S(1) => r_NEXT_STATE1_carry_i_3_n_0,
      S(0) => r_NEXT_STATE1_carry_i_4_n_0
    );
\r_NEXT_STATE1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_NEXT_STATE1_carry_n_0,
      CO(3 downto 1) => \NLW_r_NEXT_STATE1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_NEXT_STATE1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_NEXT_STATE1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \r_NEXT_STATE1_carry_i_1__0_n_0\
    );
r_NEXT_STATE1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_COUNTER_reg(9),
      I1 => i_CVAL(9),
      I2 => i_CVAL(11),
      I3 => r_COUNTER_reg(11),
      I4 => i_CVAL(10),
      I5 => r_COUNTER_reg(10),
      O => r_NEXT_STATE1_carry_i_1_n_0
    );
\r_NEXT_STATE1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_CVAL(12),
      I1 => r_COUNTER_reg(12),
      O => \r_NEXT_STATE1_carry_i_1__0_n_0\
    );
r_NEXT_STATE1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_COUNTER_reg(6),
      I1 => i_CVAL(6),
      I2 => i_CVAL(8),
      I3 => r_COUNTER_reg(8),
      I4 => i_CVAL(7),
      I5 => r_COUNTER_reg(7),
      O => r_NEXT_STATE1_carry_i_2_n_0
    );
r_NEXT_STATE1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_COUNTER_reg(3),
      I1 => i_CVAL(3),
      I2 => i_CVAL(5),
      I3 => r_COUNTER_reg(5),
      I4 => i_CVAL(4),
      I5 => r_COUNTER_reg(4),
      O => r_NEXT_STATE1_carry_i_3_n_0
    );
r_NEXT_STATE1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_COUNTER_reg(0),
      I1 => i_CVAL(0),
      I2 => i_CVAL(2),
      I3 => r_COUNTER_reg(2),
      I4 => i_CVAL(1),
      I5 => r_COUNTER_reg(1),
      O => r_NEXT_STATE1_carry_i_4_n_0
    );
\r_Ready_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => r_Ready,
      Q => o_Ready(0),
      S => r_SWEN
    );
\r_Ready_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => '0',
      Q => o_Ready(1),
      S => r_SWEN
    );
r_SRST_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => '1',
      D => '0',
      Q => o_SRST,
      S => r_COUNTER
    );
\r_TRIAL_COUNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\r_TRIAL_COUNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => p_0_in(1)
    );
\r_TRIAL_COUNT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => p_0_in(2)
    );
\r_TRIAL_COUNT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_TRIAL_COUNT,
      CLR => i_RST,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\r_TRIAL_COUNT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_TRIAL_COUNT,
      CLR => i_RST,
      D => p_0_in(1),
      Q => \^q\(1)
    );
\r_TRIAL_COUNT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_CLK1KHZ,
      CE => r_TRIAL_COUNT,
      CLR => i_RST,
      D => p_0_in(2),
      Q => \^q\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Reaction_Time_Averager_RTM_FSM_0_0,RTM_FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RTM_FSM,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^o_ready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o_swen\ : STD_LOGIC;
  signal \^o_t_num\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_RST : signal is "xilinx.com:signal:reset:1.0 i_RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_RST : signal is "XIL_INTERFACENAME i_RST, POLARITY ACTIVE_LOW";
begin
  o_Ready(1) <= \^o_swen\;
  o_Ready(0) <= \^o_ready\(0);
  o_SWEN <= \^o_swen\;
  o_TRIAL_NUM(2 downto 0) <= \^o_t_num\(2 downto 0);
  o_T_NUM(2 downto 0) <= \^o_t_num\(2 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RTM_FSM
     port map (
      Q(2 downto 0) => \^o_t_num\(2 downto 0),
      i_CLK1KHZ => i_CLK1KHZ,
      i_CVAL(12 downto 0) => i_CVAL(12 downto 0),
      i_RST => i_RST,
      i_React => i_React,
      i_Start => i_Start,
      i_Terminate => i_Terminate,
      o_ACC_EN => o_ACC_EN,
      o_CEN => o_CEN,
      o_DONE => o_DONE,
      o_Ready(1) => \^o_swen\,
      o_Ready(0) => \^o_ready\(0),
      o_SRST => o_SRST
    );
end STRUCTURE;
