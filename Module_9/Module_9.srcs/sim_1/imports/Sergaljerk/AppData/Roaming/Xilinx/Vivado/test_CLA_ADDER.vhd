library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_CLA_ADDER is 
end test_CLA_ADDER;


architecture TB of test_CLA_ADDER is

component CLA_ADDER is
port (
  an_0 : out STD_LOGIC_VECTOR (3 downto 0);
  cathode_0 : out STD_LOGIC_VECTOR (6 downto 0);
  i_CLK : in STD_LOGIC;
  i_A_0 : in STD_LOGIC_VECTOR (3 downto 0);
  i_B_0 : in STD_LOGIC_VECTOR (3 downto 0);
  o_Cout_0 : out STD_LOGIC
);
end component CLA_ADDER;

signal an_0 : STD_LOGIC_VECTOR (3 downto 0);
signal cathode_0 : STD_LOGIC_VECTOR (6 downto 0);
signal i_CLK : STD_LOGIC;
signal i_A_0 : STD_LOGIC_VECTOR (3 downto 0);
signal i_B_0 : STD_LOGIC_VECTOR (3 downto 0);
signal o_Cout_0 : STD_LOGIC;
begin

DUT: component CLA_ADDER port map (
  an_0 => an_0,
  cathode_0 => cathode_0,
  i_CLK => i_CLK,
  i_A_0 => i_A_0,
  i_B_0 => i_B_0,
  o_Cout_0 => o_Cout_0
);

process
begin
  i_CLK <= '0';
  wait for 5.0 ns;
  i_CLK <= '1';
  wait for 5.0 ns;
end process;

process
begin
 i_A_0 <= "0000";
 i_B_0 <= "0000";
 wait for 100 ns;
 i_A_0 <= "0001";
 i_B_0 <= "0001";
 wait for 100 ns;
  i_A_0 <= "1111";
  i_B_0 <= "0001";
 wait;
end process;
end TB;

