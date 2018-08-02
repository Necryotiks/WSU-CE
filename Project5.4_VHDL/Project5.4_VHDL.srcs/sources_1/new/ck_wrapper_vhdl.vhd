----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2018 09:12:30 PM
-- Design Name: 
-- Module Name: ck_wrapper_vhdl - Behavioral
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

entity ck_wrapper_vhdl is
    Port ( SW : in STD_ULOGIC_VECTOR (1 downto 0);
           CLK : in STD_ULOGIC;
           RST : in STD_ULOGIC;
           LED : out STD_ULOGIC_VECTOR (15 downto 0));
end ck_wrapper_vhdl;

architecture Behavioral of ck_wrapper_vhdl is
component clkdiv_vhdl port(
  clk : in STD_ULOGIC;
  rst : in STD_ULOGIC;
  sw: in std_ulogic_vector(1 downto 0);
  led : out STD_ULOGIC
);
end component;
component clk_shifter_VHDL port(
clkdiv: in std_ulogic;
rst: in std_ulogic;
led: out std_ulogic_vector(15 downto 0)
);
end component;
signal cwire: std_ulogic;
begin
cd2:clkdiv_vhdl port map(
clk => CLK,
rst => RST,
sw => SW,
led => cwire
);

cs2:clk_shifter_VHDL port map(
clkdiv => cwire,
rst => rst,
led => LED
);
end Behavioral;
