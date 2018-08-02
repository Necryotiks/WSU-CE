----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/02/2018 12:12:13 AM
-- Design Name: 
-- Module Name: cmp_bitslice - Structural
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

entity cmp_bitslice is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           LTI : in STD_LOGIC;
           EQI : in STD_LOGIC;
           GTI : in STD_LOGIC;
           LTO : out STD_LOGIC;
           EQO : out STD_LOGIC;
           GTO : out STD_LOGIC);
end cmp_bitslice;

architecture Structural of cmp_bitslice is

begin


end Structural;
