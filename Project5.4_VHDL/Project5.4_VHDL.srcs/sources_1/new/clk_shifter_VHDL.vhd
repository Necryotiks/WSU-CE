----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2018 11:28:17 PM
-- Design Name: 
-- Module Name: clk_shifter_VHDL - Behavioral
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

entity clk_shifter_VHDL is
    Port ( clkdiv : in STD_LOGIC;
           rst : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end clk_shifter_VHDL;

architecture Behavioral of clk_shifter_VHDL is
component dff_vhdl port(
clk: in std_logic;
rst: in std_logic;
D: in std_logic;
Q: out std_logic
);
end component;
signal d: std_logic_vector(7 downto 0);

begin

GENSHIFT:for i in 0 to 6 generate
    SHIFTX:dff_vhdl port map(
    clk => clkdiv,
    rst => rst,
    D => d(i),
    Q => d(i+1)
    );
end generate GENSHIFT;
SHIFTOUT:dff_vhdl port map(
clk => clkdiv,
    rst => rst,
    D => d(7),
    Q => d(0)
);
led(3 downto 0) <= d(3 downto 0);
led(6 downto 4) <= d(4 downto 4);
led(9 downto 7) <= d(5 downto 5);
led(12 downto 10) <= d(6 downto 6);
led(15 downto 13) <= d(7 downto 7);

end Behavioral;
