----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2018 02:10:51 PM
-- Design Name: 
-- Module Name: multiplier_vhdl - Structural
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity multiplier_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           o_Result : out STD_ULOGIC_VECTOR (7 downto 0));
end multiplier_vhdl;

architecture Structural of multiplier_vhdl is
signal w_P: STD_ULOGIC_VECTOR(15 downto 0);
signal w_Interim: std_ulogic_vector(7 downto 0); 
signal w_Internal: STD_ULOGIC_VECTOR(13 downto 0);
begin

w_P(0) <= i_A(0) and i_B(0);
w_P(1) <= i_A(1) and i_B(0);
w_P(2) <= i_A(2) and i_B(0);
w_P(3) <= i_A(3) and i_B(0);
w_P(4) <= i_A(0) and i_B(1);
w_P(5) <= i_A(1) and i_B(1);
w_P(6) <= i_A(2) and i_B(1);
w_P(7) <= i_A(3) and i_B(1);
w_P(8) <= i_A(0) and i_B(2);
w_P(9) <= i_A(1) and i_B(2);
w_P(10) <= i_A(2) and i_B(2);
w_P(11) <= i_A(3) and i_B(2);
w_P(12) <= i_A(0) and i_B(3);
w_P(13) <= i_A(1) and i_B(3);
w_P(14) <= i_A(2) and i_B(3);
w_P(15) <= i_A(3) and i_B(3);


w_Interim(0) <= w_P(0);

HA_00: entity work.HA_vhdl port map(
    i_A => w_P(1),
    i_B => w_P(4),
    o_S => w_Interim(1),
    o_Cout => w_Internal(0)
); 

FA_00: entity work.FA_vhdl port map(
    i_A => w_P(2),
    i_B => w_P(5),
    i_Cin => w_P(8),
    o_S => w_Internal(1),
    o_Cout => w_Internal(2)
);

FA_01: entity work.FA_vhdl port map(
    i_A => w_P(3),
    i_B => w_P(6),
    i_Cin => w_P(9),
    o_S => w_Internal(3),
    o_Cout => w_Internal(4)
);

HA_01: entity work.HA_vhdl port map(
    i_A => w_P(7),
    i_B => w_P(10),
    o_S => w_Internal(5),
    o_Cout => w_Internal(6)
);

HA_10: entity work.HA_vhdl port map(
    i_A => w_Internal(1),
    i_B => w_Internal(0),
    o_S => w_Interim(2),
    o_Cout => w_Internal(7)
); 

FA_10: entity work.FA_vhdl port map(
    i_A => w_Internal(3),
    i_B => w_P(12),
    i_Cin => w_Internal(2),
    o_S => w_Internal(8),
    o_Cout => w_Internal(9)
);

FA_11: entity work.FA_vhdl port map(
    i_A => w_Internal(5),
    i_B => w_P(13),
    i_Cin => w_Internal(4),
    o_S => w_Internal(10),
    o_Cout => w_Internal(11)
);

FA_12: entity work.FA_vhdl port map(
    i_A => w_P(11),
    i_B => w_P(14),
    i_Cin => w_Internal(6),
    o_S => w_Internal(12),
    o_Cout => w_Internal(13)
);

FINAL_ADDER: entity work.rippleCarryAdder_vhdl(Structural) port map(
    i_A(0) => w_Internal(8), --NOTE Port assignment must be contiguous (i.e assign ALL of port A then assign port B, etc.)
    i_A(1) => w_Internal(10),
    i_A(2) => w_Internal(12),   
    i_A(3) => w_Internal(13),
    i_B(0) => w_Internal(7),
    i_B(1) => w_Internal(9),
    i_B(2) => w_Internal(11),
    i_B(3) => w_P(15),
    i_Subtract => '0',
    o_S => w_Interim(6 downto 3),
    o_ERR => w_Interim(7)
) ;

o_Result <= w_Interim;
end Structural;
