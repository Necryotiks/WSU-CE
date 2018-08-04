----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 08:29:40 AM
-- Design Name: 
-- Module Name: temp_vhdl_testbench - Behavioral
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity temp_vhdl_testbench is
end temp_vhdl_testbench;

architecture Behavioral of temp_vhdl_testbench is
component temp_vhdl
port(
SW: in std_logic_vector(7 downto 0);
LED: out std_logic
);
end component;
signal SW: std_logic_vector(7 downto 0) := (others => '0');
signal LED: std_logic := '0';
signal inc: std_logic_vector(7 downto 0) := (others => '0');
begin

uut:temp_vhdl port map(
SW => SW,
LED => LED
);

test:process
begin
    for i in 0 to 255 loop
    wait for 5 ns;
    SW <= std_logic_vector(unsigned(inc) + i);
    end loop test; --dont forget this part.
 
wait for 1ns;
end process;
end Behavioral;
