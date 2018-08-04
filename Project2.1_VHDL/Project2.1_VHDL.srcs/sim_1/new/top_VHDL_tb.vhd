----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 06:42:09 PM
-- Design Name: 
-- Module Name: top_VHDL_tb - NULL_ARCH
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

entity top_VHDL_tb is
--  Port ( );
end top_VHDL_tb;

architecture NULL_ARCH of top_VHDL_tb is
signal r_SW: std_ulogic_vector(7 downto 0):= (others => '0');
signal w_LED: std_ulogic_vector(3 downto 0):= (others => '0');
begin
uut: entity work.top_VHDL(SOP) port map(
    i_SW => r_SW,
    o_LED => w_LED
);

SOP_TEST:process
begin
wait for 20 ns;
--Circuit I
r_SW <= (0 => '1', others => '0');
wait for 20 ns; 
assert w_LED(0) = '1' report "Circuit I test failure." severity failure;
wait for 20 ns;
r_SW <= (1 => '1', others => '0');
wait for 20 ns; 
assert w_LED(0) = '1' report "Circuit I test failure." severity failure;
wait for 20 ns;

--Circut II
r_SW <= (others => '0');
wait for 20 ns;
assert w_LED(1) = '1' report "Circuit II test failure." severity failure;
wait for 20 ns;
r_SW <= (2 downto 1 => '1', others => '0');
wait for 20 ns;
assert w_LED(1) = '1' report "Circuit II test failure." severity failure;
wait for 20 ns;
r_SW <= (1 => '1', 3 => '1',others => '0');
wait for 20 ns;
assert w_LED(1) = '1' report "Circuit II test failure." severity failure;
wait for 20 ns;

--Circuit III
r_SW <= (4 => '1', others => '0');
wait for 20 ns;
assert w_LED(2) = '1' report "Circuit III test failure." severity failure;
wait for 20 ns;
r_SW <= (5 downto 4 => '1', others => '0');
wait for 20 ns;
assert w_LED(2) = '1' report "Circuit III test failure." severity failure;
wait for 20 ns;
r_SW <= (6 => '1', others => '0');
wait for 10 ns;
assert w_LED(2) = '1' report "Circuit III test failure." severity failure;
wait for 20 ns;
r_SW <= (7 downto 4 => '1', others => '0');
wait for 20 ns;
assert w_LED(2) = '1' report "Circuit III test failure." severity failure;
wait;
end process SOP_TEST;

end NULL_ARCH;
