----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/02/2018 12:12:13 AM
-- Design Name: 
-- Module Name: cmp_bitslice - Behavioral
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

entity cmp_bitslice is
    Port ( i_A : in STD_ULOGIC;
           i_B : in STD_ULOGIC;
           i_LTI : in STD_ULOGIC;
           i_EQI : in STD_ULOGIC;
           i_GTI : in STD_ULOGIC;
           o_LTO : out STD_ULOGIC;
           o_EQO : out STD_ULOGIC;
           o_GTO : out STD_ULOGIC);
end cmp_bitslice;

architecture Behavioral of cmp_bitslice is

begin
o_GTO <= (i_A and not i_B) or ((i_A xnor i_B) and i_GTI);
o_EQO <= (i_A xnor i_B) and i_EQI;
o_LTO <= (not i_A and i_B) or ((i_A xnor i_B ) and i_LTI);

end Behavioral;
