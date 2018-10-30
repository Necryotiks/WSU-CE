----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 09:49:53 PM
-- Design Name: 
-- Module Name: combCirc_VHDL - Behavioral
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

entity combCirc_VHDL is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           X : out STD_LOGIC);
end combCirc_VHDL;

architecture Behavioral of combCirc_VHDL is
signal N1: std_logic;
signal N2: std_logic;
signal N3: std_logic;
begin
N1 <= A and B;
N2 <= not B;
N3 <= N2 and C;
X <= N1 or N3;
--I cant introducs a glitch using wait statements. VHDL doesnt allow assignment delays.
end Behavioral;
