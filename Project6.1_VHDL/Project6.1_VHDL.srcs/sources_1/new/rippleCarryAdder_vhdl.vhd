----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 10:29:43 PM
-- Design Name: 
-- Module Name: rippleCarryAdder_vhdl - Structura
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

entity rippleCarryAdder_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           o_S : out STD_ULOGIC_VECTOR (3 downto 0);
           o_Cout : out STD_ULOGIC);
end rippleCarryAdder_vhdl;

architecture Structural of rippleCarryAdder_vhdl is
signal w_Carry: STD_ULOGIC_VECTOR(3 downto 0);
begin
HA: entity work.HA_vhdl Port map(
    i_A => i_A(0),
    i_B => i_B(0),
    o_S => o_S(0),
    o_Cout => w_Carry(0)
);
FA_GEN: for i in 1 to 3 generate
FA_ADD: entity work.FA_vhdl port map
(
    i_A => i_A(i),
    i_B => i_B(i),
    i_Cin => w_Carry(i - 1),
    o_S => o_S(i),
    o_Cout => w_Carry(i)
);
end generate FA_GEN;
o_Cout <= w_Carry(3);
end Structural;

architecture Behavioral of rippleCarryAdder_vhdl is

begin
end Behavioral;