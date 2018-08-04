----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 09:07:03 PM
-- Design Name: 
-- Module Name: comparator_vhdl - Structural
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

entity comparator_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           o_LTO : out STD_ULOGIC;
           o_GTO : out STD_ULOGIC;
           o_EQO : out STD_ULOGIC);
end comparator_vhdl;

architecture Structural of comparator_vhdl is
signal w_LT_int: STD_ULOGIC_VECTOR(3 downto 0);
signal w_GT_int: STD_ULOGIC_VECTOR(3 downto 0);
signal w_EQ_int: STD_ULOGIC_VECTOR(3 downto 0);
begin

CMP_IN: entity work.cmp_bitslice port map(
    i_A => i_A(0),
    i_B => i_B(0),
    i_LTI => '0',
    i_EQI => '1',
    i_GTI => '0',
    o_LTO => w_LT_int(0),
    o_EQO => w_EQ_int(0),
    o_GTO => w_GT_int(0)
);
CMP_GEN:for i in 1 to 3 generate
    CMPX: entity work.cmp_bitslice port map(
    i_A => i_A(i),
    i_B => i_B(i),
    i_LTI => w_LT_int(i - 1),
    i_EQI => w_EQ_int(i - 1),
    i_GTI => w_GT_int(i - 1),
    o_LTO => w_LT_int(i),
    o_EQO => w_EQ_int(i),
    o_GTO => w_GT_int(i)
    );
end generate CMP_GEN;
o_LTO <= w_LT_int(3);
o_EQO <= w_EQ_int(3);
o_GTO <= w_GT_int(3);
end Structural;

architecture Behavioral of comparator_vhdl is
begin
    o_LTO <= '1' when i_A < i_B else '0';   
    o_EQO <= '1' when i_A = i_B else '0';
    o_GTO <= '1' when i_A > i_B else '0';
end Behavioral;