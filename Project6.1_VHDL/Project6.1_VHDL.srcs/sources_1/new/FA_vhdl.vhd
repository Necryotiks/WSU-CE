----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 10:17:38 PM
-- Design Name: 
-- Module Name: Fi_A_vhdl - Behavioral
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

entity FA_vhdl is
    Port ( i_A : in STD_ULOGIC;
           i_B : in STD_ULOGIC;
           i_Cin : in STD_ULOGIC;
           o_S : out STD_ULOGIC;
           o_Cout : out STD_ULOGIC);
end FA_vhdl;

architecture Behavioral of FA_vhdl is

begin
o_S <= i_A xor i_B xor i_Cin;
o_Cout <= (i_A and i_B) or ((i_A xor i_B) and i_Cin);

end Behavioral;
