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
 SW: in std_ulogic_vector(7 downto 0);
 LED: out std_ulogic_vector(15 downto 0) 
 );
end led_sw_vhdl;

architecture Part_1 of led_sw_vhdl is
begin
LED(15 downto 0) <= (0 => SW(0), others => '0');


end Part_1;

architecture Part_2 of led_sw_vhdl is
begin
LED(15 downto 13) <= (15 => SW(7),14 => SW(7),13 => SW(7));  
LED(12 downto 10) <= (12 => SW(6),11 => SW(6),10 => SW(6));
LED(9 downto 7) <= (9 => SW(5),8 => SW(5),7 => SW(5));
LED(6 downto 4) <= (6 => SW(4),5 => SW(4),4 => SW(4));
LED(3 downto 0) <= SW(3 downto 0);
end Part_2;

architecture Part_3 of led_sw_vhdl is
begin
LED(15 downto 13) <= (15 => SW(0),14 => SW(0),13 => SW(0));  
LED(12 downto 10) <= (12 => SW(1),11 => SW(1),10 => SW(1));
LED(9 downto 7) <= (9 => SW(2),8 => SW(2),7 => SW(2));
LED(6 downto 4) <= (6 => SW(3),5 => SW(3),4 => SW(3));
LED(3 downto 0) <= (0 => SW(7),1 => SW(6),2 => SW(5),3 => SW(4));
end Part_3;
