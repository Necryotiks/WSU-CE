----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 09:52:23 AM
-- Design Name: 
-- Module Name: encoder_vhdl - Behavioral
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

entity encoder_vhdl is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Ein : in STD_LOGIC;
           Y : in STD_LOGIC_VECTOR (1 downto 0);
           GS : in STD_LOGIC;
           Eout : in STD_LOGIC);
end encoder_vhdl;

architecture Behavioral of encoder_vhdl is

begin


end Behavioral;
