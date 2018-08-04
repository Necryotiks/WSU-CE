----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 09:52:23 AM
-- Design Name: 
-- Module Name: shifter_vhdl - Behavioral
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

entity shifter_vhdl is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC;
           F : in STD_LOGIC;
           R : in STD_LOGIC;
           En : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end shifter_vhdl;

architecture Behavioral of shifter_vhdl is

begin


end Behavioral;
