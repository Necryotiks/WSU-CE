----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 10:51:35 PM
-- Design Name: 
-- Module Name: d_latch - Behavioral
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

entity d_latch is
    Port ( D : in STD_LOGIC;
           G : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end d_latch;

architecture Behavioral of d_latch is
signal S: std_logic;
signal R: std_logic;
signal Q_INTERNAL: std_logic;
signal QN_INTERNAL: std_logic;
begin
S <= not(G and D);
R <= not(not D and G);
Q_INTERNAL <= not S or not QN_INTERNAL;
QN_INTERNAL <= not(Q_INTERNAL and R);
Q <= Q_INTERNAL;
QN <= QN_INTERNAL;

end Behavioral;
