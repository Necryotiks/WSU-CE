----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 05:18:21 AM
-- Design Name: 
-- Module Name: top_VHDL - SOP
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

entity top_VHDL is
    Port ( i_SW: in std_ulogic_vector(7 downto 0);
           o_LED: out std_ulogic_vector(3 downto 0)
           );
end top_VHDL;
architecture SOP of top_VHDL is
begin
--SOP
o_LED(0) <= (i_SW(1) and not i_SW(0)) or (not i_SW(1) and i_SW(0)); --Circuit I

o_LED(1) <= (not i_SW(3) and not i_SW(2) and not i_SW(1))  --Circuit II
            or (not i_SW(3) and i_SW(2) and i_SW(1)) 
            or (i_SW(3) and not i_SW(2) and i_SW(1));
            
o_LED(2) <= (not i_SW(7) and not i_SW(6) and not i_SW(5) and  i_SW(4)) --Circuit III
            or (not i_SW(7) and not i_SW(6) and i_SW(5) and i_SW(4)) 
            or (not i_SW(7) and i_SW(6) and not i_SW(5) and not i_SW(4)) 
            or (i_SW(7) and i_SW(6) and i_SW(5) and i_SW(4));
            
o_LED(3) <= ( not i_SW(6) and  not i_SW(5) and  not i_SW(4) and i_SW(3))  --Circuit IV
            or ( not i_SW(6) and i_SW(5) and  not i_SW(4) and  not i_SW(3)) 
            or (i_SW(6) and i_SW(5) and  not i_SW(4) and not i_SW(3)) 
            or (i_SW(6) and i_SW(5) and i_SW(4) and not i_SW(3)) 
            or(i_SW(6) and not i_SW(5) and not i_SW(4) and i_SW(3)) 
            or (not i_SW(6) and i_SW(5) and i_SW(4) and not i_SW(3)) 
            or (i_SW(6) and not i_SW(5) and i_SW(4) and i_SW(3)) 
            or (not i_SW(6) and not i_SW(5) and i_SW(4) and i_SW(3));
            
end SOP;
architecture POS of top_VHDL is
begin
--POS
o_LED(0) <= (i_SW(1) or i_SW(0)) and (not i_SW(1) or not i_SW(0)); --Circuit I

o_LED(1) <= (i_SW(3) or i_SW(2) or not i_SW(1)) --Circuit II
    and (i_SW(3) or not i_SW(2) or i_SW(1)) 
    and (not i_SW(3) or i_SW(2) or i_SW(1)) 
    and (not i_SW(3) or not i_SW(2) or i_SW(1) ) 
    and (not i_SW(3) or not i_SW(2) or not i_SW(1));
    
o_LED(2) <= (i_SW(7) or i_SW(6) or i_SW(5) or i_SW(4)) and  --Circuit III
        (i_SW(7) or i_SW(6) or not i_SW(5) or i_SW(4)) and
        (i_SW(7) or not i_SW(6) or i_SW(5) or not i_SW(4)) and 
        (i_SW(7) or not i_SW(6) or not i_SW(5) or i_SW(4)) and
        (i_SW(7) or not i_SW(6) or not i_SW(5) or not i_SW(4)) and 
        (not i_SW(7) or i_SW(6) or i_SW(5) or i_SW(4)) and
        (not i_SW(7) or i_SW(6) or i_SW(5) or not i_SW(4)) and 
        (not i_SW(7) or i_SW(6) or not i_SW(5) or i_SW(4)) and
        (not i_SW(7) or i_SW(6) or not i_SW(5) or not i_SW(4)) and 
        (not i_SW(7) or not i_SW(6) or i_SW(5) or i_SW(4)) and
        (not i_SW(7) or not i_SW(6) or i_SW(5) or not i_SW(4)) and 
        (not i_SW(7) or not i_SW(6) or not i_SW(5) or i_SW(4));    
        
o_LED(3) <= (i_SW(6) or i_SW(5) or i_SW(4) or i_SW(3)) and --Circuit IV
            (i_SW(6) or i_SW(5) or not i_SW(4) or i_SW(3)) and
            (not i_SW(6) or i_SW(5) or i_SW(4) or i_SW(3)) and
            (not i_SW(6) or not i_SW(5) or not i_SW(4) or not i_SW(3)) and
            (not i_SW(6) or i_SW(5) or not i_SW(4) or i_SW(3)) and
            (i_SW(6) or not i_SW(5) or not i_SW(4) or not i_SW(3)) and
            (i_SW(6) or not i_SW(5) or i_SW(4) or not i_SW(3)) and
            (not i_SW(6) or not i_SW(5) or i_SW(4) or not i_SW(3));
end POS;
