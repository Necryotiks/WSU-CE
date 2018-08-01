-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Jul 31 22:29:59 2018
-- Host        : DESKTOP-T6GBLFK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/lauer/WSU-CPTE/Project5.3_VHDL/Project5.3_VHDL.sim/sim_1/synth/func/xsim/clkdiv_tb_vhdl_func_synth.vhd
-- Design      : clkdiv_vhdl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl is
  port (
    clkdiv_0 : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end dff_vhdl;

architecture STRUCTURE of dff_vhdl is
  signal Q_i_1_n_0 : STD_LOGIC;
  signal \^clkdiv_0\ : STD_LOGIC;
begin
  clkdiv_0 <= \^clkdiv_0\;
Q_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_0\,
      O => Q_i_1_n_0
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q_i_1_n_0,
      Q => \^clkdiv_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_0 is
  port (
    clkdiv_10 : out STD_LOGIC;
    clkdiv_9 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_0 : entity is "dff_vhdl";
end dff_vhdl_0;

architecture STRUCTURE of dff_vhdl_0 is
  signal \Q_i_1__9_n_0\ : STD_LOGIC;
  signal \^clkdiv_10\ : STD_LOGIC;
begin
  clkdiv_10 <= \^clkdiv_10\;
\Q_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_10\,
      O => \Q_i_1__9_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_9,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__9_n_0\,
      Q => \^clkdiv_10\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_1 is
  port (
    clkdiv_11 : out STD_LOGIC;
    clkdiv_10 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_1 : entity is "dff_vhdl";
end dff_vhdl_1;

architecture STRUCTURE of dff_vhdl_1 is
  signal \Q_i_1__10_n_0\ : STD_LOGIC;
  signal \^clkdiv_11\ : STD_LOGIC;
begin
  clkdiv_11 <= \^clkdiv_11\;
\Q_i_1__10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_11\,
      O => \Q_i_1__10_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_10,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__10_n_0\,
      Q => \^clkdiv_11\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_10 is
  port (
    clkdiv_1 : out STD_LOGIC;
    clkdiv_0 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_10 : entity is "dff_vhdl";
end dff_vhdl_10;

architecture STRUCTURE of dff_vhdl_10 is
  signal D : STD_LOGIC;
  signal \^clkdiv_1\ : STD_LOGIC;
begin
  clkdiv_1 <= \^clkdiv_1\;
\Q_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_1\,
      O => D
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_0,
      CE => '1',
      CLR => rst_IBUF,
      D => D,
      Q => \^clkdiv_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_11 is
  port (
    clkdiv_20 : out STD_LOGIC;
    clkdiv_19 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_11 : entity is "dff_vhdl";
end dff_vhdl_11;

architecture STRUCTURE of dff_vhdl_11 is
  signal \Q_i_1__19_n_0\ : STD_LOGIC;
  signal \^clkdiv_20\ : STD_LOGIC;
begin
  clkdiv_20 <= \^clkdiv_20\;
\Q_i_1__19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_20\,
      O => \Q_i_1__19_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_19,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__19_n_0\,
      Q => \^clkdiv_20\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_12 is
  port (
    clkdiv_21 : out STD_LOGIC;
    clkdiv_20 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_12 : entity is "dff_vhdl";
end dff_vhdl_12;

architecture STRUCTURE of dff_vhdl_12 is
  signal \Q_i_1__20_n_0\ : STD_LOGIC;
  signal \^clkdiv_21\ : STD_LOGIC;
begin
  clkdiv_21 <= \^clkdiv_21\;
\Q_i_1__20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_21\,
      O => \Q_i_1__20_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_20,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__20_n_0\,
      Q => \^clkdiv_21\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_13 is
  port (
    clkdiv_22 : out STD_LOGIC;
    clkdiv_21 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_13 : entity is "dff_vhdl";
end dff_vhdl_13;

architecture STRUCTURE of dff_vhdl_13 is
  signal \Q_i_1__21_n_0\ : STD_LOGIC;
  signal \^clkdiv_22\ : STD_LOGIC;
begin
  clkdiv_22 <= \^clkdiv_22\;
\Q_i_1__21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_22\,
      O => \Q_i_1__21_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_21,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__21_n_0\,
      Q => \^clkdiv_22\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_14 is
  port (
    clkdiv_23 : out STD_LOGIC;
    clkdiv_22 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_14 : entity is "dff_vhdl";
end dff_vhdl_14;

architecture STRUCTURE of dff_vhdl_14 is
  signal \Q_i_1__22_n_0\ : STD_LOGIC;
  signal \^clkdiv_23\ : STD_LOGIC;
begin
  clkdiv_23 <= \^clkdiv_23\;
\Q_i_1__22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_23\,
      O => \Q_i_1__22_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_22,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__22_n_0\,
      Q => \^clkdiv_23\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_15 is
  port (
    clkdiv_24 : out STD_LOGIC;
    clkdiv_23 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_15 : entity is "dff_vhdl";
end dff_vhdl_15;

architecture STRUCTURE of dff_vhdl_15 is
  signal \Q_i_1__23_n_0\ : STD_LOGIC;
  signal \^clkdiv_24\ : STD_LOGIC;
begin
  clkdiv_24 <= \^clkdiv_24\;
\Q_i_1__23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_24\,
      O => \Q_i_1__23_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_23,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__23_n_0\,
      Q => \^clkdiv_24\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_16 is
  port (
    clkdiv_25 : out STD_LOGIC;
    led_OBUF : out STD_LOGIC;
    clkdiv_24 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    clkdiv_23 : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_16 : entity is "dff_vhdl";
end dff_vhdl_16;

architecture STRUCTURE of dff_vhdl_16 is
  signal \Q_i_1__24_n_0\ : STD_LOGIC;
  signal \^clkdiv_25\ : STD_LOGIC;
begin
  clkdiv_25 <= \^clkdiv_25\;
\Q_i_1__24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_25\,
      O => \Q_i_1__24_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_24,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__24_n_0\,
      Q => \^clkdiv_25\
    );
led_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^clkdiv_25\,
      I1 => Q_reg_0,
      I2 => clkdiv_23,
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(0),
      I5 => clkdiv_24,
      O => led_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_17 is
  port (
    Q_reg_0 : out STD_LOGIC;
    clkdiv_25 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_17 : entity is "dff_vhdl";
end dff_vhdl_17;

architecture STRUCTURE of dff_vhdl_17 is
  signal \Q_i_1__25_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg_0\,
      O => \Q_i_1__25_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_25,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__25_n_0\,
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_18 is
  port (
    clkdiv_2 : out STD_LOGIC;
    clkdiv_1 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_18 : entity is "dff_vhdl";
end dff_vhdl_18;

architecture STRUCTURE of dff_vhdl_18 is
  signal \Q_i_1__1_n_0\ : STD_LOGIC;
  signal \^clkdiv_2\ : STD_LOGIC;
begin
  clkdiv_2 <= \^clkdiv_2\;
\Q_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_2\,
      O => \Q_i_1__1_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_1,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__1_n_0\,
      Q => \^clkdiv_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_19 is
  port (
    clkdiv_3 : out STD_LOGIC;
    clkdiv_2 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_19 : entity is "dff_vhdl";
end dff_vhdl_19;

architecture STRUCTURE of dff_vhdl_19 is
  signal \Q_i_1__2_n_0\ : STD_LOGIC;
  signal \^clkdiv_3\ : STD_LOGIC;
begin
  clkdiv_3 <= \^clkdiv_3\;
\Q_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_3\,
      O => \Q_i_1__2_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_2,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__2_n_0\,
      Q => \^clkdiv_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_2 is
  port (
    clkdiv_12 : out STD_LOGIC;
    clkdiv_11 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_2 : entity is "dff_vhdl";
end dff_vhdl_2;

architecture STRUCTURE of dff_vhdl_2 is
  signal \Q_i_1__11_n_0\ : STD_LOGIC;
  signal \^clkdiv_12\ : STD_LOGIC;
begin
  clkdiv_12 <= \^clkdiv_12\;
\Q_i_1__11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_12\,
      O => \Q_i_1__11_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_11,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__11_n_0\,
      Q => \^clkdiv_12\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_20 is
  port (
    clkdiv_4 : out STD_LOGIC;
    clkdiv_3 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_20 : entity is "dff_vhdl";
end dff_vhdl_20;

architecture STRUCTURE of dff_vhdl_20 is
  signal \Q_i_1__3_n_0\ : STD_LOGIC;
  signal \^clkdiv_4\ : STD_LOGIC;
begin
  clkdiv_4 <= \^clkdiv_4\;
\Q_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_4\,
      O => \Q_i_1__3_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_3,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__3_n_0\,
      Q => \^clkdiv_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_21 is
  port (
    clkdiv_5 : out STD_LOGIC;
    clkdiv_4 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_21 : entity is "dff_vhdl";
end dff_vhdl_21;

architecture STRUCTURE of dff_vhdl_21 is
  signal \Q_i_1__4_n_0\ : STD_LOGIC;
  signal \^clkdiv_5\ : STD_LOGIC;
begin
  clkdiv_5 <= \^clkdiv_5\;
\Q_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_5\,
      O => \Q_i_1__4_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_4,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__4_n_0\,
      Q => \^clkdiv_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_22 is
  port (
    clkdiv_6 : out STD_LOGIC;
    clkdiv_5 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_22 : entity is "dff_vhdl";
end dff_vhdl_22;

architecture STRUCTURE of dff_vhdl_22 is
  signal \Q_i_1__5_n_0\ : STD_LOGIC;
  signal \^clkdiv_6\ : STD_LOGIC;
begin
  clkdiv_6 <= \^clkdiv_6\;
\Q_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_6\,
      O => \Q_i_1__5_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_5,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__5_n_0\,
      Q => \^clkdiv_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_23 is
  port (
    clkdiv_7 : out STD_LOGIC;
    clkdiv_6 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_23 : entity is "dff_vhdl";
end dff_vhdl_23;

architecture STRUCTURE of dff_vhdl_23 is
  signal \Q_i_1__6_n_0\ : STD_LOGIC;
  signal \^clkdiv_7\ : STD_LOGIC;
begin
  clkdiv_7 <= \^clkdiv_7\;
\Q_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_7\,
      O => \Q_i_1__6_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_6,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__6_n_0\,
      Q => \^clkdiv_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_24 is
  port (
    clkdiv_8 : out STD_LOGIC;
    clkdiv_7 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_24 : entity is "dff_vhdl";
end dff_vhdl_24;

architecture STRUCTURE of dff_vhdl_24 is
  signal \Q_i_1__7_n_0\ : STD_LOGIC;
  signal \^clkdiv_8\ : STD_LOGIC;
begin
  clkdiv_8 <= \^clkdiv_8\;
\Q_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_8\,
      O => \Q_i_1__7_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_7,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__7_n_0\,
      Q => \^clkdiv_8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_25 is
  port (
    clkdiv_9 : out STD_LOGIC;
    clkdiv_8 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_25 : entity is "dff_vhdl";
end dff_vhdl_25;

architecture STRUCTURE of dff_vhdl_25 is
  signal \Q_i_1__8_n_0\ : STD_LOGIC;
  signal \^clkdiv_9\ : STD_LOGIC;
begin
  clkdiv_9 <= \^clkdiv_9\;
\Q_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_9\,
      O => \Q_i_1__8_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_8,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__8_n_0\,
      Q => \^clkdiv_9\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_3 is
  port (
    clkdiv_13 : out STD_LOGIC;
    clkdiv_12 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_3 : entity is "dff_vhdl";
end dff_vhdl_3;

architecture STRUCTURE of dff_vhdl_3 is
  signal \Q_i_1__12_n_0\ : STD_LOGIC;
  signal \^clkdiv_13\ : STD_LOGIC;
begin
  clkdiv_13 <= \^clkdiv_13\;
\Q_i_1__12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_13\,
      O => \Q_i_1__12_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_12,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__12_n_0\,
      Q => \^clkdiv_13\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_4 is
  port (
    clkdiv_14 : out STD_LOGIC;
    clkdiv_13 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_4 : entity is "dff_vhdl";
end dff_vhdl_4;

architecture STRUCTURE of dff_vhdl_4 is
  signal \Q_i_1__13_n_0\ : STD_LOGIC;
  signal \^clkdiv_14\ : STD_LOGIC;
begin
  clkdiv_14 <= \^clkdiv_14\;
\Q_i_1__13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_14\,
      O => \Q_i_1__13_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_13,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__13_n_0\,
      Q => \^clkdiv_14\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_5 is
  port (
    clkdiv_15 : out STD_LOGIC;
    clkdiv_14 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_5 : entity is "dff_vhdl";
end dff_vhdl_5;

architecture STRUCTURE of dff_vhdl_5 is
  signal \Q_i_1__14_n_0\ : STD_LOGIC;
  signal \^clkdiv_15\ : STD_LOGIC;
begin
  clkdiv_15 <= \^clkdiv_15\;
\Q_i_1__14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_15\,
      O => \Q_i_1__14_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_14,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__14_n_0\,
      Q => \^clkdiv_15\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_6 is
  port (
    clkdiv_16 : out STD_LOGIC;
    clkdiv_15 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_6 : entity is "dff_vhdl";
end dff_vhdl_6;

architecture STRUCTURE of dff_vhdl_6 is
  signal \Q_i_1__15_n_0\ : STD_LOGIC;
  signal \^clkdiv_16\ : STD_LOGIC;
begin
  clkdiv_16 <= \^clkdiv_16\;
\Q_i_1__15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_16\,
      O => \Q_i_1__15_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_15,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__15_n_0\,
      Q => \^clkdiv_16\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_7 is
  port (
    clkdiv_17 : out STD_LOGIC;
    clkdiv_16 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_7 : entity is "dff_vhdl";
end dff_vhdl_7;

architecture STRUCTURE of dff_vhdl_7 is
  signal \Q_i_1__16_n_0\ : STD_LOGIC;
  signal \^clkdiv_17\ : STD_LOGIC;
begin
  clkdiv_17 <= \^clkdiv_17\;
\Q_i_1__16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_17\,
      O => \Q_i_1__16_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_16,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__16_n_0\,
      Q => \^clkdiv_17\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_8 is
  port (
    clkdiv_18 : out STD_LOGIC;
    clkdiv_17 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_8 : entity is "dff_vhdl";
end dff_vhdl_8;

architecture STRUCTURE of dff_vhdl_8 is
  signal \Q_i_1__17_n_0\ : STD_LOGIC;
  signal \^clkdiv_18\ : STD_LOGIC;
begin
  clkdiv_18 <= \^clkdiv_18\;
\Q_i_1__17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_18\,
      O => \Q_i_1__17_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_17,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__17_n_0\,
      Q => \^clkdiv_18\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dff_vhdl_9 is
  port (
    clkdiv_19 : out STD_LOGIC;
    clkdiv_18 : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dff_vhdl_9 : entity is "dff_vhdl";
end dff_vhdl_9;

architecture STRUCTURE of dff_vhdl_9 is
  signal \Q_i_1__18_n_0\ : STD_LOGIC;
  signal \^clkdiv_19\ : STD_LOGIC;
begin
  clkdiv_19 <= \^clkdiv_19\;
\Q_i_1__18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkdiv_19\,
      O => \Q_i_1__18_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkdiv_18,
      CE => '1',
      CLR => rst_IBUF,
      D => \Q_i_1__18_n_0\,
      Q => \^clkdiv_19\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clkdiv_vhdl is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of clkdiv_vhdl : entity is true;
end clkdiv_vhdl;

architecture STRUCTURE of clkdiv_vhdl is
  signal \GEN_DIV[26].DIVX_n_0\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clkdiv_0 : STD_LOGIC;
  signal clkdiv_1 : STD_LOGIC;
  signal clkdiv_10 : STD_LOGIC;
  signal clkdiv_11 : STD_LOGIC;
  signal clkdiv_12 : STD_LOGIC;
  signal clkdiv_13 : STD_LOGIC;
  signal clkdiv_14 : STD_LOGIC;
  signal clkdiv_15 : STD_LOGIC;
  signal clkdiv_16 : STD_LOGIC;
  signal clkdiv_17 : STD_LOGIC;
  signal clkdiv_18 : STD_LOGIC;
  signal clkdiv_19 : STD_LOGIC;
  signal clkdiv_2 : STD_LOGIC;
  signal clkdiv_20 : STD_LOGIC;
  signal clkdiv_21 : STD_LOGIC;
  signal clkdiv_22 : STD_LOGIC;
  signal clkdiv_23 : STD_LOGIC;
  signal clkdiv_24 : STD_LOGIC;
  signal clkdiv_25 : STD_LOGIC;
  signal clkdiv_3 : STD_LOGIC;
  signal clkdiv_4 : STD_LOGIC;
  signal clkdiv_5 : STD_LOGIC;
  signal clkdiv_6 : STD_LOGIC;
  signal clkdiv_7 : STD_LOGIC;
  signal clkdiv_8 : STD_LOGIC;
  signal clkdiv_9 : STD_LOGIC;
  signal led_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal sw_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
DFF0: entity work.dff_vhdl
     port map (
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      clkdiv_0 => clkdiv_0,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[10].DIVX\: entity work.dff_vhdl_0
     port map (
      clkdiv_10 => clkdiv_10,
      clkdiv_9 => clkdiv_9,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[11].DIVX\: entity work.dff_vhdl_1
     port map (
      clkdiv_10 => clkdiv_10,
      clkdiv_11 => clkdiv_11,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[12].DIVX\: entity work.dff_vhdl_2
     port map (
      clkdiv_11 => clkdiv_11,
      clkdiv_12 => clkdiv_12,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[13].DIVX\: entity work.dff_vhdl_3
     port map (
      clkdiv_12 => clkdiv_12,
      clkdiv_13 => clkdiv_13,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[14].DIVX\: entity work.dff_vhdl_4
     port map (
      clkdiv_13 => clkdiv_13,
      clkdiv_14 => clkdiv_14,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[15].DIVX\: entity work.dff_vhdl_5
     port map (
      clkdiv_14 => clkdiv_14,
      clkdiv_15 => clkdiv_15,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[16].DIVX\: entity work.dff_vhdl_6
     port map (
      clkdiv_15 => clkdiv_15,
      clkdiv_16 => clkdiv_16,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[17].DIVX\: entity work.dff_vhdl_7
     port map (
      clkdiv_16 => clkdiv_16,
      clkdiv_17 => clkdiv_17,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[18].DIVX\: entity work.dff_vhdl_8
     port map (
      clkdiv_17 => clkdiv_17,
      clkdiv_18 => clkdiv_18,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[19].DIVX\: entity work.dff_vhdl_9
     port map (
      clkdiv_18 => clkdiv_18,
      clkdiv_19 => clkdiv_19,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[1].DIVX\: entity work.dff_vhdl_10
     port map (
      clkdiv_0 => clkdiv_0,
      clkdiv_1 => clkdiv_1,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[20].DIVX\: entity work.dff_vhdl_11
     port map (
      clkdiv_19 => clkdiv_19,
      clkdiv_20 => clkdiv_20,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[21].DIVX\: entity work.dff_vhdl_12
     port map (
      clkdiv_20 => clkdiv_20,
      clkdiv_21 => clkdiv_21,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[22].DIVX\: entity work.dff_vhdl_13
     port map (
      clkdiv_21 => clkdiv_21,
      clkdiv_22 => clkdiv_22,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[23].DIVX\: entity work.dff_vhdl_14
     port map (
      clkdiv_22 => clkdiv_22,
      clkdiv_23 => clkdiv_23,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[24].DIVX\: entity work.dff_vhdl_15
     port map (
      clkdiv_23 => clkdiv_23,
      clkdiv_24 => clkdiv_24,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[25].DIVX\: entity work.dff_vhdl_16
     port map (
      Q_reg_0 => \GEN_DIV[26].DIVX_n_0\,
      clkdiv_23 => clkdiv_23,
      clkdiv_24 => clkdiv_24,
      clkdiv_25 => clkdiv_25,
      led_OBUF => led_OBUF,
      rst_IBUF => rst_IBUF,
      sw_IBUF(1 downto 0) => sw_IBUF(1 downto 0)
    );
\GEN_DIV[26].DIVX\: entity work.dff_vhdl_17
     port map (
      Q_reg_0 => \GEN_DIV[26].DIVX_n_0\,
      clkdiv_25 => clkdiv_25,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[2].DIVX\: entity work.dff_vhdl_18
     port map (
      clkdiv_1 => clkdiv_1,
      clkdiv_2 => clkdiv_2,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[3].DIVX\: entity work.dff_vhdl_19
     port map (
      clkdiv_2 => clkdiv_2,
      clkdiv_3 => clkdiv_3,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[4].DIVX\: entity work.dff_vhdl_20
     port map (
      clkdiv_3 => clkdiv_3,
      clkdiv_4 => clkdiv_4,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[5].DIVX\: entity work.dff_vhdl_21
     port map (
      clkdiv_4 => clkdiv_4,
      clkdiv_5 => clkdiv_5,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[6].DIVX\: entity work.dff_vhdl_22
     port map (
      clkdiv_5 => clkdiv_5,
      clkdiv_6 => clkdiv_6,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[7].DIVX\: entity work.dff_vhdl_23
     port map (
      clkdiv_6 => clkdiv_6,
      clkdiv_7 => clkdiv_7,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[8].DIVX\: entity work.dff_vhdl_24
     port map (
      clkdiv_7 => clkdiv_7,
      clkdiv_8 => clkdiv_8,
      rst_IBUF => rst_IBUF
    );
\GEN_DIV[9].DIVX\: entity work.dff_vhdl_25
     port map (
      clkdiv_8 => clkdiv_8,
      clkdiv_9 => clkdiv_9,
      rst_IBUF => rst_IBUF
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF,
      O => led
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(0),
      O => sw_IBUF(0)
    );
\sw_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(1),
      O => sw_IBUF(1)
    );
end STRUCTURE;
