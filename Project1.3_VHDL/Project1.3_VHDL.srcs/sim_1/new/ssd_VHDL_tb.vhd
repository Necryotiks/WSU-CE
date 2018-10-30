----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 05:52:21 PM
-- Design Name: 
-- Module Name: ssd_VHDL_tb - Behavioral
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

entity ssd_VHDL_tb is
--  Port ( );
end ssd_VHDL_tb;

architecture NULL_ARCH of ssd_VHDL_tb is
signal r_BTN: std_ulogic_vector(3 downto 0) := (others =>'0');
signal w_ANODE: std_ulogic_vector(3 downto 0) ;
begin
uut:entity work.ssd_VHDL Port Map(
i_BTN => r_BTN,
o_ANODE => w_ANODE,
o_CATHODE => open
);

test:process
begin
    r_BTN <= (0 => '1', others => '0');
    wait for 20 ns;
    r_BTN <= (1 => '1', others => '0');
    wait for 20 ns;
    r_BTN <= (2 => '1', others => '0');
    wait for 20 ns;
    r_BTN <= (3 => '1', others => '0');
wait;
end process test;
end NULL_ARCH;
