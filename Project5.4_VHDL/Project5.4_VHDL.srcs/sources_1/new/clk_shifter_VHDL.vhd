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

--DONT HAVE MULTIPLE DIVERS ON SINGLE OUTPUT
--DONT LOOP WIRE BACK ON CONSTRUCT, USE RESET LOGIC.
--STD_ULOGIC DOESNT ACCEPT MULTIPLE DRIVERS. HELPS WITH DEBUGGING.

entity clk_shifter_VHDL is
    Port ( clkdiv : in STD_ULOGIC;
           rst : in STD_ULOGIC;
           fun_sw: in STD_ULOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end clk_shifter_VHDL;

architecture Behavioral of clk_shifter_VHDL is
component dff_vhdl port(
clk: in std_ulogic;
rst: in std_ulogic;
D: in std_ulogic;
Q: out std_ulogic
);
end component;
signal d: std_logic_vector(7 downto 0) := (0 => '1',others => '0'); --one extra bit to account for dummy dff needed to sync the circuit.
signal e: std_ulogic;
signal OUTPUT: std_ulogic := '0';
begin

reset:process(clkdiv,rst,OUTPUT,fun_sw)
begin
     if falling_edge(rst) or OUTPUT = '1' then
        d(0) <= '1';  
     elsif rst = '1' then
        d(0) <= '1'; --keep led(0) on.
     else
        d(0) <= '0'; --keep one led on at a time
     end if; 
     if fun_sw = '1' then 
     e <= '1';
     end if;  
end process reset;

--reset:process(clkdiv,rst,OUTPUT,fun_sw)
--begin
--     if (falling_edge(rst) )  and fun_sw = '0' then
--            d(0) <= 'H';
--            led(0) <= d(0);
--     elsif  (OUTPUT = 'H' or OUTPUT = '1') and fun_sw = '0' then
--            led <=  (0 => 'H', others => '0');
--     elsif rst = '1' or falling_edge(fun_sw) then
--        led <= (0 => 'H', others => 'L');
--        d(0) <= 'H'; --keep led(0) on.
--     elsif fun_sw = '1' then
--        if rising_edge(clkdiv) then
--            led <= (0 => '1',2 => '1', 6 downto 4 => '1', 12 downto 10 => '1',others => '0');
--        elsif falling_edge(clkdiv) then
--            led <= (1 => '1',3 => '1', 9 downto 7 => '1', 15 downto 13 => '1',others => '0');
--        else
--            led <= (others => 'L');
--        end if;
--     else
--        d(0) <= 'L'; --keep one led on at a time
--        led(3 downto 0) <= d(3 downto 0);
--        led(6 downto 4) <= (others => d(4));
--        led(9 downto 7) <= (others => d(5));
--        led(12 downto 10) <= (others => d(6));
--        led(15 downto 13) <= (others => d(7));
--     end if;   
--end process reset;

--SHIFTIN:dff_vhdl port map(
--clk => clkdiv,
--rst => rst,
--D => d(0),
--Q => d(1)
--);
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
    Q => OUTPUT --Flag to signal reset.
);
led(3 downto 0) <= d(3 downto 0);
led(6 downto 4) <= (others => d(4));
led(9 downto 7) <= (others => d(5));
led(12 downto 10) <= (others => d(6));
led(15 downto 13) <= (others => d(7));
      

end Behavioral;
