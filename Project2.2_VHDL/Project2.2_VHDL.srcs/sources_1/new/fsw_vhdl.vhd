----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 06:48:09 AM
-- Design Name: 
-- Module Name: fSW_vhdl - Behavioral
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

entity fsw_vhdl is
    Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC);
end fSW_vhdl;

architecture Behavioral of fsw_vhdl is
begin

LED <= (not SW(3) and not SW(2) and not SW(1) and SW(0)) or --0001
    (not SW(3) and not SW(2) and SW(1) and not SW(0)) or --0010
    (not SW(3) and SW(2) and not SW(1) and not SW(0)) or --0100
    (not SW(3) and SW(2) and SW(1) and SW(0))   or --0111
    (SW(3) and not SW(2) and not SW(1) and not SW(0)) or --1000
    (SW(3) and not SW(2) and SW(1) and SW(0))   or --1011
    (SW(3) and SW(2) and not SW(1) and SW(0))   or --1101
    (SW(3) and SW(2) and SW(1) and not SW(0));    --1110

end Behavioral;
