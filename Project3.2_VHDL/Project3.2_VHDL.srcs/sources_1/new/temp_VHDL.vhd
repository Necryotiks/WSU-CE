----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 08:24:17 AM
-- Design Name: 
-- Module Name: temp_vhdl - Behavioral
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

entity temp_vhdl is
    Port ( SW : in STD_LOGIC_VECTOR (7 downto 0);
           LED : out STD_LOGIC);
end temp_vhdl;

architecture Behavioral of temp_vhdl is

begin
LED <= (SW(7) and not SW(6) and not SW(5) and not SW(4)) or (SW(7) and not SW(6) and not SW(5) and not SW(3)) or
(SW(7) and not SW(6) and not SW(5) and not SW(2) and not SW(1)) or (SW(7) and not SW(6) and not SW(5) and not SW(2) and not SW(0)); 

end Behavioral;
