----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 01:09:37 AM
-- Design Name: 
-- Module Name: led_sw - Behavioral
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

entity led_sw_vhdl is
 Port (
 i_SW: in std_ulogic_vector(7 downto 0);
 o_LED: out std_ulogic_vector(15 downto 0) 
 );
end led_sw_vhdl;

architecture Part_1 of led_sw_vhdl is
begin
o_LED(15 downto 0) <= (0 => i_SW(0), others => '0');


end Part_1;

architecture Part_2 of led_sw_vhdl is
begin
o_LED(15 downto 13) <= (15 => i_SW(7),14 => i_SW(7),13 => i_SW(7));  
o_LED(12 downto 10) <= (12 => i_SW(6),11 => i_SW(6),10 => i_SW(6));
o_LED(9 downto 7) <= (9 => i_SW(5),8 => i_SW(5),7 => i_SW(5));
o_LED(6 downto 4) <= (6 => i_SW(4),5 => i_SW(4),4 => i_SW(4));
o_LED(3 downto 0) <= i_SW(3 downto 0);
end Part_2;

architecture Part_3 of led_sw_vhdl is
begin
o_LED(15 downto 13) <= (15 => i_SW(0),14 => i_SW(0),13 => i_SW(0));  
o_LED(12 downto 10) <= (12 => i_SW(1),11 => i_SW(1),10 => i_SW(1));
o_LED(9 downto 7) <= (9 => i_SW(2),8 => i_SW(2),7 => i_SW(2));
o_LED(6 downto 4) <= (6 => i_SW(3),5 => i_SW(3),4 => i_SW(3));
o_LED(3 downto 0) <= (0 => i_SW(7),1 => i_SW(6),2 => i_SW(5),3 => i_SW(4));
end Part_3;
