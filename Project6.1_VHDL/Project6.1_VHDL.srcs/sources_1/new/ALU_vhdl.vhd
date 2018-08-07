----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2018 10:15:30 PM
-- Design Name: 
-- Module Name: ALU_vhdl - Behavioral
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

entity ALU_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           opCode : in STD_ULOGIC_VECTOR (2 downto 0);
           o_Result : out STD_ULOGIC_VECTOR (3 downto 0));
end ALU_vhdl;

architecture Behavioral of ALU_vhdl is

begin
process(opCode)
begin
ALU:case opCode is

    when "000" => o_Result <= std_ulogic_vector(unsigned(i_A) + unsigned(i_B));
    when "001" => o_Result <= std_ulogic_vector(unsigned(i_A) + 1);
    when "010" => o_Result <= std_ulogic_vector(unsigned(i_A) - unsigned(i_B));
    when "011" => o_Result <= i_A xor i_B;
    when "100" => o_Result <= i_A or i_B;
    when "101" => o_Result <= i_A and i_B;
    when others => o_Result <= "0000";
end case ALU;
end process;
end Behavioral;
