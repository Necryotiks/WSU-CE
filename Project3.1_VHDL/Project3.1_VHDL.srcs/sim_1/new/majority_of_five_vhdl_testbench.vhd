----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 07:09:41 AM
-- Design Name: 
-- Module Name: majority_of_five_vhdl_testbench - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity majority_of_five_vhdl_testbench is
end majority_of_five_vhdl_testbench;

architecture Behavioral of majority_of_five_vhdl_testbench is
component majority_of_five_vhdl
port(
SW: in std_logic_vector(4 downto 0);
LED: out std_logic
);
end component;
signal SW: std_logic_vector(4 downto 0) := (others => '0');
signal LED: std_logic := '0';
signal inc: std_logic_vector(4 downto 0) := (others => '0'); --count variable NOTE: increment variable must match input width.
begin

uut:majority_of_five_vhdl port map
(
    SW => SW,
    LED => LED
);

test:process
    begin 
    for i in 0 to 31 loop  
        wait for 5ns;
        SW <= std_logic_vector(unsigned(inc) + i); --std_logic_vector's value is transient.
    end loop;
    wait for 1ns;
end process;

end Behavioral;
