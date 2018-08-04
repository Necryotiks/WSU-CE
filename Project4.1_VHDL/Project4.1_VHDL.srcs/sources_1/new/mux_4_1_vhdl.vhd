----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 09:52:23 AM
-- Design Name: 
-- Module Name: mux_4_1_vhdl - Behavioral
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

entity mux_4_1_vhdl is
    Port ( I0 : in STD_LOGIC_VECTOR (1 downto 0);
           I1 : in STD_LOGIC_VECTOR (1 downto 0);
           I2 : in STD_LOGIC_VECTOR (1 downto 0);
           I3 : in STD_LOGIC_VECTOR (1 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (1 downto 0));
end mux_4_1_vhdl;

architecture Behavioral of mux_4_1_vhdl is

begin
process(Sel)
begin
    case Sel is
    when "00" => Y <= I0;
    when "01" => Y <= I1;
    when "10" => Y <= I2;
    when "11" => Y <= I3;
    end case;
end process;
end Behavioral;
