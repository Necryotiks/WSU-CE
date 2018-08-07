----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2018 10:17:38 PM
-- Design Name: 
-- Module Name: FS_vhdl - Behavioral
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

entity FS_vhdl is
    Port ( i_A : in STD_ULOGIC;
           i_B : in STD_ULOGIC;
           i_Bin : in STD_ULOGIC;
           o_S : out STD_ULOGIC;
           o_Bout : out STD_ULOGIC);
end FS_vhdl;

architecture Behavioral of FS_vhdl is

begin
o_S <= i_A xor i_B xor i_Bin;
o_Bout <= (not i_A and i_B) or (not (i_A xor i_B) and i_Bin);

end Behavioral;
