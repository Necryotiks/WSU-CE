----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 11:03:59 PM
-- Design Name: 
-- Module Name: latch_testbench - Behavioral
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

entity latch_testbench is
--  Port ( );
end latch_testbench;

architecture Behavioral of latch_testbench is
component sr_nand_latch port(
S: in std_logic;
R: in std_logic;
Q: out std_logic;
QN: out std_logic
);
end component;
component sr_nor_latch port(
S: in std_logic;
R: in std_logic;
Q: out std_logic;
QN: out std_logic
);
end component;
--TEST LATER.
signal S1: std_logic := '1';
signal R1: std_logic := '1';
signal Q1: std_logic;
signal QN1: std_logic;
signal S2: std_logic := '1';
signal R2: std_logic := '1';
signal Q2: std_logic;
signal QN2: std_logic;
signal S3: std_logic := '1';
signal R3: std_logic := '1';
signal Q3: std_logic;
signal QN3: std_logic;
begin

uut1:sr_nand_latch port map(
S => S1,
R => R1,
Q => Q1,
QN => QN1
);

test1:process
begin
    wait for 100 ns;
    S1 <= '0';
    wait for 100 ns;
    S1 <= '1';
    wait for 100 ns;
    R1 <= '0';
    wait for 100 ns;
    R1 <= '1';
    wait for 100 ns;
    S1 <= '0';
    R1 <= '0';
    wait for 100 ns;
    S1 <= '1';
    R1 <= '1';
    wait for 100 ns; 
    S1 <= '0';
    R1 <= '0';
   wait for 100 ns;
end process test1;
end Behavioral;
