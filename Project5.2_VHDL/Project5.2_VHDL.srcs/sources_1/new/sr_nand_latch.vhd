----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 10:51:35 PM
-- Design Name: 
-- Module Name: sr_nand_latch - Behavioral
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

entity sr_nand_latch is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end sr_nand_latch;

architecture Behavioral of sr_nand_latch is
signal Q_INTERNAL: std_logic;
signal QN_INTERNAL: std_logic;
begin
Q_INTERNAL <= not S or not QN_INTERNAL;
QN_INTERNAL <= not(R and Q_INTERNAL);
Q <= Q_INTERNAL;
QN <= QN_INTERNAL;

end Behavioral;

--FATAL_ERROR: Iteration limit 10000 is reached. Possible zero delay oscillation detected where simulation time can not advance. .
--Time: 600 ns  Iteration: 10000