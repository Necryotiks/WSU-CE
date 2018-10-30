----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2018 07:13:11 PM
-- Design Name: 
-- Module Name: clkdiv_tb_vhdl - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clkdiv_tb_vhdl is
--  Port ( );
end clkdiv_tb_vhdl;

architecture Behavioral of clkdiv_tb_vhdl is
signal clk:  std_logic := '0';
signal rst:  std_logic := '0';
signal led:  std_logic;
signal sw: std_logic_vector(1 downto 0):= (others => '0');
component clkdiv_vhdl port(
clk: in std_logic;
rst: in std_logic;
sw: in std_logic_vector(1 downto 0);
led: out std_logic
);
end component;

begin
uut:clkdiv_vhdl port map(
clk => clk,
rst => rst,
led => led,
sw => sw
);



test:process 
begin
clk <= '0';
sw <= (others => '0');
rst <= '1';
wait for 10 ns;
rst <= '1';
clk <= '1';
wait for 100 ns;
rst <= '0';
for i in 0 to 100 loop
    wait for 20 ns;
    clk <= not clk;
end loop;
wait;
end process test;

end Behavioral;
