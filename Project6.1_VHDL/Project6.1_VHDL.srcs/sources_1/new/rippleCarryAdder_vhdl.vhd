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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rippleCarryAdder_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           i_Subtract: in STD_ULOGIC;
           o_S : out STD_ULOGIC_VECTOR (3 downto 0);
           o_ERR : out STD_ULOGIC);
end rippleCarryAdder_vhdl;

architecture Structural of rippleCarryAdder_vhdl is
signal w_Carry: STD_ULOGIC_VECTOR(3 downto 0);
signal w_Result: STD_ULOGIC_VECTOR(3 downto 0); -- DONT DRIVE COMPONENT OUTPUTS STRAIGHT TO A PORT. USE HANDSHAKE SIGNAL.
component HA_vhdl port(
    i_A: in STD_ULOGIC;
    i_B: in STD_ULOGIC;
    o_S: out STD_ULOGIC;
    o_Cout: out STD_ULOGIC
);
end component;

component FA_vhdl port(
    i_A: in STD_ULOGIC;
    i_B: in STD_ULOGIC;
    i_Cin: in STD_ULOGIC;
    o_S: out STD_ULOGIC;
    o_Cout : out STD_ULOGIC
);
end component;
begin
HA: HA_vhdl Port map(
    i_A => i_A(0),
    i_B => i_B(0),
    o_S => w_Result(0),
    o_Cout => w_Carry(0)
);
FA_GEN: for i in 1 to 3 generate
    FA_ADD: FA_vhdl port map
    (
        i_A => i_A(i),
        i_B => i_B(i),
        i_Cin => w_Carry(i - 1),
        o_S => w_Result(i),
        o_Cout => w_Carry(i)
    );
end generate FA_GEN;
o_S <= w_Result;
o_ERR <= w_Carry(3);

end Structural;

architecture Behavioral of rippleCarryAdder_vhdl is
signal w_Result: STD_ULOGIC_VECTOR(4 downto 0) := (others => '0');
begin
add:process(i_Subtract,i_A,i_B)
begin
    if i_Subtract = '0' then
        w_Result(4 downto 0) <= std_ulogic_vector(resize(unsigned(i_A), w_Result'length) + resize(unsigned(i_B), w_Result'length)) ; --to_unsigned does NOT work for std_logic types. Cast using unsigned. 
    else
        w_Result(4 downto 0) <= std_ulogic_vector(resize(unsigned(i_A), w_Result'length) - resize(unsigned(i_B), w_Result'length)) ; --to_unsigned does NOT work for std_logic types. Cast using unsigned. a
        if (i_B > i_A) then
            w_Result(4) <= '1';
        end if;  
    end if;
    o_S <= w_Result(3 downto 0); --resize to allow for carry out bit
    o_ERR <= w_Result(4);
end process add; 
end Behavioral;