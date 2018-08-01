----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/31/2018 06:54:26 PM
-- Design Name: 
-- Module Name: clkdiv_vhdl - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--ALWAYS DRIVE INPUTS SIGNAL IN TEST BENCH AND CHECK FOR DUPLICATE DRIVERS.
--ALWAYS INITALIZE INPUT SIGNALS.
entity clkdiv_vhdl is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           sw: in std_logic_vector(1 downto 0);
           led : out STD_LOGIC);
end clkdiv_vhdl;

architecture Behavioral of clkdiv_vhdl is
signal din: std_logic_vector (26 downto 0);
signal clkdiv: std_logic_vector (26 downto 0);
constant CLKOUT: integer := 26;
component dff_vhdl port(
clk: in std_logic;
D: in std_logic;
rst: in std_logic;
Q: out std_logic
);
end component;
begin
DFF0: dff_vhdl port map(
clk => clk,
rst => rst,
D => din(0),
Q => clkdiv(0)
);


GEN_DIV:for i in 1 to 26 generate
DIVX:dff_vhdl port map(
clk => clkdiv(i-1),
rst => rst,
D => din(i),
Q => clkdiv(i)
);
end generate GEN_DIV;

din <= not clkdiv;
led <= clkdiv(CLKOUT - to_integer(unsigned(sw)));
end Behavioral;
