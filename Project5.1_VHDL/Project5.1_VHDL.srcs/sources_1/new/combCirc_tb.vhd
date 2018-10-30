----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 10:06:00 PM
-- Design Name: 
-- Module Name: combCirc_tb - Behavioral
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

entity combCirc_tb is
--  Port ( );
end combCirc_tb;

architecture Behavioral of combCirc_tb is
component combCirc_VHDL port(
A: in std_logic;
B: in std_logic;
C: in std_logic;
X: out std_logic
);
end component;
signal A: std_logic := '0';
signal B: std_logic := '0';
signal C: std_logic := '0';
signal X: std_logic := '0';
begin
uut:combCirc_VHDL port map
(
 A => A,
 B => B,
 C => C,
 X => X   
);

test:process
    begin
    for k in 0 to 3 loop
        for i in std_logic range '0' to '1' loop
            A <= i;
            C <= i;
            wait for 5 ns;
            B <= '1';
            wait for 5 ns;
            B <= '0';
            wait for 5 ns;
        end loop;
    end loop;
    wait for 1 us;
    end process test;
end Behavioral;
