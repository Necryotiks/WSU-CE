----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2018 05:48:08 PM
-- Design Name: 
-- Module Name: shifter_tb_vhdl - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shifter_tb_vhdl is
--  Port ( );
end shifter_tb_vhdl;

architecture Behavioral of shifter_tb_vhdl is
component clk_shifter_VHDL port(
clkdiv: in std_ulogic;
rst: in std_ulogic;
led: out std_ulogic_vector(15 downto 0)
);
end component;
signal clkdiv: std_ulogic := '0';
signal rst: std_ulogic := '1';
signal led: std_ulogic_vector(15 downto 0);
begin

uut:clk_shifter_VHDL port map (
clkdiv => clkdiv,
rst => rst,
led => led
);

test:process
begin
wait for 10 ns;
rst <= '0';
for i in 0 to 255 loop
wait for 20 ns;
clkdiv <= not clkdiv;
if i > 32 then
    rst <= '1';
end if;
end loop;
wait;
end process test;

end Behavioral;
