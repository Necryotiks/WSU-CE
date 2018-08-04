----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/02/2018 01:10:44 AM
-- Design Name: 
-- Module Name: led_sw_instantiation - NULL
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

entity led_sw_instantiation is
    Port ( i_SW : in STD_ULOGIC_VECTOR (7 downto 0);
           o_LED : out STD_ULOGIC_VECTOR (15 downto 0));
end led_sw_instantiation;

architecture NULL_ARCH of led_sw_instantiation is

begin

FORWARD:entity work.led_sw_vhdl(Part_2) port map(
i_SW => i_SW,
o_LED => o_LED
);

--BACKWARD:entity work.led_sw_vhdl(Part_3) port map(
--i_SW => i_SW,
--o_LED => o_LED
--); 


end NULL_ARCH;
