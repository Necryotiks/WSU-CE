----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 05:18:21 AM
-- Design Name: 
<<<<<<< HEAD
-- Module Name: top_VHDL - SOP
=======
-- Module Name: top_VHDL - Behavioral
>>>>>>> master
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
<<<<<<< HEAD
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
    
o_LED(2) <= (i_SW(7) or i_SW(6) or i_SW(5) or i_SW(4)) --Circuit III
and (i_SW(7) or i_SW(6) or not i_SW(5) or i_SW(4)) 
and (i_SW(7) or not i_SW(6) or i_SW(5) or not i_SW(4)) 
and (i_SW(7) or not i_SW(6) or not i_SW(5) or i_SW(4)) 
and (i_SW(7) or not i_SW(6) or not i_SW(5) or not i_SW(4)) 
and (not i_SW(7) or i_SW(6) or i_SW(5) or i_SW(4)) 
and (not i_SW(7) or i_SW(6) or i_SW(5) or not i_SW(4)) 
and (not i_SW(7) or i_SW(6) or not i_SW(5) or i_SW(4)) 
and (not i_SW(7) or i_SW(6) or not i_SW(5) or not i_SW(4)) 
and (not i_SW(7) or not i_SW(6) or i_SW(5) or i_SW(4)) 
and (not i_SW(7) or not i_SW(6) or i_SW(5) or not i_SW(4)) 
and (not i_SW(7) or not i_SW(6) or not i_SW(5) or i_SW(4));    
        
o_LED(3) <= (i_SW(6) or i_SW(5) or i_SW(4) or i_SW(3)) and --Circuit IV
            (i_SW(6) or i_SW(5) or not i_SW(4) or i_SW(3)) and
            (not i_SW(6) or i_SW(5) or i_SW(4) or i_SW(3)) and
            (not i_SW(6) or not i_SW(5) or not i_SW(4) or not i_SW(3)) and
            (not i_SW(6) or i_SW(5) or not i_SW(4) or i_SW(3)) and
            (i_SW(6) or not i_SW(5) or not i_SW(4) or not i_SW(3)) and
            (i_SW(6) or not i_SW(5) or i_SW(4) or not i_SW(3)) and
            (not i_SW(6) or not i_SW(5) or i_SW(4) or not i_SW(3));
end POS;
=======
    Port ( SW: in std_logic_vector(7 downto 0);
           LED: out std_logic_vector(3 downto 0)
           );
end top_VHDL;
architecture Behavioral of top_VHDL is
begin
----SOP
--LED(0) <= (SW(1) and not SW(0)) or (not SW(1) and SW(0)); --Circuit I

--LED(1) <= (not SW(3) and not SW(2) and not SW(1))  --Circuit II
--            or (not SW(3) and SW(2) and SW(1)) 
--            or (SW(3) and not SW(2) and SW(1));
            
--LED(2) <= (not SW(7) and not SW(6) and not SW(5) and  SW(4)) --Circuit III
--            or (not SW(7) and not SW(6) and SW(5) and SW(4)) 
--            or (not SW(7) and SW(6) and not SW(5) and not SW(4)) 
--            or (SW(7) and SW(6) and SW(5) and SW(4));
            
--LED(3) <= ( not SW(6) and  not SW(5) and  not SW(4) and SW(3))  --Circuit IV
--            or ( not SW(6) and SW(5) and  not SW(4) and  not SW(3)) 
--            or (SW(6) and SW(5) and  not SW(4) and not SW(3)) 
--            or (SW(6) and SW(5) and SW(4) and not SW(3)) 
--            or(SW(6) and not SW(5) and not SW(4) and SW(3)) 
--            or (not SW(6) and SW(5) and SW(4) and not SW(3)) 
--            or (SW(6) and not SW(5) and SW(4) and SW(3)) 
--            or (not SW(6) and not SW(5) and SW(4) and SW(3));
            
--POS
LED(0) <= (SW(1) or SW(0)) and (not SW(1) or not SW(0)); --Circuit I

LED(1) <= (SW(3) or SW(2) or not SW(1)) --Circuit II
    and (SW(3) or not SW(2) or SW(1)) 
    and (not SW(3) or SW(2) or SW(1)) 
    and (not SW(3) or not SW(2) or SW(1) ) 
    and (not SW(3) or not SW(2) or not SW(1));
    
LED(2) <= (SW(7) or SW(6) or SW(5) or SW(4)) and  --Circuit III
        (SW(7) or SW(6) or not SW(5) or SW(4)) and
        (SW(7) or not SW(6) or SW(5) or not SW(4)) and 
        (SW(7) or not SW(6) or not SW(5) or SW(4)) and
        (SW(7) or not SW(6) or not SW(5) or not SW(4)) and 
        (not SW(7) or SW(6) or SW(5) or SW(4)) and
        (not SW(7) or SW(6) or SW(5) or not SW(4)) and 
        (not SW(7) or SW(6) or not SW(5) or SW(4)) and
        (not SW(7) or SW(6) or not SW(5) or not SW(4)) and 
        (not SW(7) or not SW(6) or SW(5) or SW(4)) and
        (not SW(7) or not SW(6) or SW(5) or not SW(4)) and 
        (not SW(7) or not SW(6) or not SW(5) or SW(4));    
        
LED(3) <= (SW(6) or SW(5) or SW(4) or SW(3)) and --Circuit IV
            (SW(6) or SW(5) or not SW(4) or SW(3)) and
            (not SW(6) or SW(5) or SW(4) or SW(3)) and
            (not SW(6) or not SW(5) or not SW(4) or not SW(3)) and
            (not SW(6) or SW(5) or not SW(4) or SW(3)) and
            (SW(6) or not SW(5) or not SW(4) or not SW(3)) and
            (SW(6) or not SW(5) or SW(4) or not SW(3)) and
            (not SW(6) or not SW(5) or SW(4) or not SW(3));
end Behavioral;
>>>>>>> master
