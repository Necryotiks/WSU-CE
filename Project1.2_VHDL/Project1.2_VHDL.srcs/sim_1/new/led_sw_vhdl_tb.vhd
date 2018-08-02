----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/02/2018 12:32:23 AM
-- Design Name: 
-- Module Name: led_sw_vhdl_tb - Behavioral
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

entity led_sw_vhdl_tb is
--  Port ( );
end led_sw_vhdl_tb;

architecture tb of led_sw_vhdl_tb is
signal SW: std_ulogic_vector(7 downto 0) := (others => '0');
signal REV_SW: std_ulogic_vector(7 downto 0) := (others => '0');
signal LED_0: std_ulogic_vector(15 downto 0);
signal LED_1: std_ulogic_vector(15 downto 0);
begin
PART1: entity work.led_sw_vhdl(Part_1) port map(
SW => SW
);

PART2: entity work.led_sw_vhdl(Part_2) port map(
 SW => SW,
 LED => LED_0
);

PART3: entity work.led_sw_vhdl(Part_3) port map(
SW => REV_SW,
LED => LED_1
);

test:process
begin
SW <= (0 => '1', others => '0');

for i in 0 to 7 loop
wait for 20 ns;
SW <= std_ulogic_vector(shift_left(unsigned(SW),1));
end loop;
SW <= (others => '0');
REV_SW <= (0 => '1',others => '0');
for i in 0 to 7 loop
wait for 20 ns;
REV_SW <= std_ulogic_vector(shift_left(unsigned(REV_SW),1));
end loop;
wait for 20 ns;
REV_SW <= (others => '0');
wait;
end process test;
end tb;
