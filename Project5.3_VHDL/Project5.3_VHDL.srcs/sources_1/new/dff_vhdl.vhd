----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2018 06:40:28 PM
-- Design Name: 
-- Module Name: dff_vhdl - Behavioral
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

entity dff_vhdl is
    Port ( D : in STD_ULOGIC ;
           clk : in STD_ULOGIC ;
           rst : in STD_ULOGIC ;
           Q : out STD_ULOGIC );
end dff_vhdl;

architecture Behavioral of dff_vhdl is

begin

flip_flop:process(clk,rst)
begin
     if rst = '1' then
        Q <= '0';
     elsif rising_edge(clk) then
        Q <= D;
    end if;
end process flip_flop;
end Behavioral;
