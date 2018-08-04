----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 06:35:28 PM
-- Design Name: 
-- Module Name: top_VHDL_instantiation - NULL_ARCH
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

entity top_VHDL_instantiation is
    Port ( i_SW : in STD_ULOGIC_VECTOR (7 downto 0);
           o_LED : out STD_ULOGIC_VECTOR (3 downto 0));
end top_VHDL_instantiation;

architecture NULL_ARCH of top_VHDL_instantiation is

begin
SOP: entity work.top_VHDL(SOP) Port Map(
i_SW => i_SW,
o_LED => o_LED
);

--POS: entity work.top_VHDL(POS) Port Map(
--i_SW => i_SW,
--o_LED => o_LED
--);

end NULL_ARCH;
