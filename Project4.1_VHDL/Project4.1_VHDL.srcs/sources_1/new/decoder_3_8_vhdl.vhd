----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 09:52:23 AM
-- Design Name: 
-- Module Name: decoder_3_8_vhdl - Behavioral
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

entity decoder_3_8_vhdl is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end decoder_3_8_vhdl;

architecture Behavioral of decoder_3_8_vhdl is

begin
process(I)
begin
    case I is
    when "000" => Y <= "00000001";
    when "001" => Y <= "00000010";
    when "010" => Y <= "00000100";
    when "011" => Y <= "00001000";
    when "100" => Y <= "00010000";
    when "101" => Y <= "00100000";
    when "110" => Y <= "01000000";
    when "111" => Y <= "10000000";
    end case;
end process;

end Behavioral;
