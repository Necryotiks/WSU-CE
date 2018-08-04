----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 07:00:31 AM
-- Design Name: 
-- Module Name: majority_of_five_vhdl - Behavioral
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

entity majority_of_five_vhdl is
    Port ( SW : in STD_LOGIC_VECTOR (4 downto 0);
           LED : out STD_LOGIC);
end majority_of_five_vhdl;

architecture Behavioral of majority_of_five_vhdl is
begin
  --SOP
     LED <= (SW(0) and SW(1) and SW(2)) or --ABC
                 (SW(0) and SW(1) and SW(3)) or --ABD
                 (SW(0) and SW(2) and SW(3)) or --ACD
                 (SW(1) and SW(2) and SW(3)) or --BCD
                 (SW(0) and SW(1) and SW(4)) or --ABE
                 (SW(0) and SW(3) and SW(4)) or --ADE
                 (SW(0) and SW(2) and SW(4)) or --ACE
                 (SW(1) and SW(2) and SW(4)) or --BCE
                 (SW(2) and SW(3) and SW(4)) or  --CDE
                 (SW(1) and SW(3) and SW(4));  --BDE
--   //POS
--    LED = (SW(4) or SW(1) or SW(0)) and ABE
--   (SW(4) or SW(3) or SW(2)) and              CDE
--   (SW(4) or SW(2) or SW(1)) and              BCE
--   (SW(4) or SW(3) or ~SW(2) or SW(0)) and     A~CDE
--   (SW(4) or SW(2) or SW(1) or ~SW(0)) and     ~ABCE
--   (SW(4) or SW(3) or SW(1) or ~SW(0)) and     ~ABDE
--   (SW(2) or SW(1) or SW(0)) and              ABC
--   (SW(3) or SW(2) or SW(0)) and              ACD
--   (SW(3) or SW(1) or SW(0)) and              ABD
--   (SW(3) or SW(2) or SW(1) or ~SW(0));      ~ABCD

end Behavioral;
