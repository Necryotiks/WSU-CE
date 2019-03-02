----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2018 09:39:35 PM
-- Design Name: 
-- Module Name: cordic - Behavioral
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
use IEEE.FIXED_PKG.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cordic is
generic(INPUT_BIT_WIDTH : positive := 16);
  Port (
  i_CLK: IN STD_ULOGIC;
  i_RST: IN STD_ULOGIC;
  i_EN: IN STD_ULOGIC;
  i_NUMERATOR: IN STD_LOGIC_VECTOR(INPUT_BIT_WIDTH downto 0);
  i_DENOMINATOR: IN STD_LOGIC_VECTOR(INPUT_BIT_WIDTH downto 0);
  o_RESULT: OUT STD_LOGIC_VECTOR(2*INPUT_BIT_WIDTH-1  downto 0)
       );


end cordic;

architecture Behavioral of cordic is
type CORDIC is array(31 downto 0) of ufixed(INPUT_BIT_WIDTH downto 0);
signal r_NUM: ufixed(INPUT_BIT_WIDTH downto -7) := (others => '0');
signal r_DEN: ufixed(INPUT_BIT_WIDTH downto -7) := (others => '0');
signal r_RES: ufixed(INPUT_BIT_WIDTH+8 downto -7) := (others => '0');
signal w_CLK: STD_ULOGIC := '0';
signal w_RST: STD_ULOGIC := '0';
signal w_EN: STD_ULOGIC := '0';
signal w_NUMERATOR: STD_LOGIC_VECTOR(INPUT_BIT_WIDTH downto 0) := (others => '0');
signal w_DENOMINATOR: STD_LOGIC_VECTOR(INPUT_BIT_WIDTH downto 0) := (others => '0');
signal X_VECTOR:CORDIC;
signal Y_VECTOR:CORDIC;
signal Z_VECTOR:CORDIC;
--ATAN table here.

begin

	w_CLK <= i_CLK;
	w_RST <= i_RST;
	w_EN <= i_EN;
	w_NUMERATOR <= i_NUMERATOR;
	w_DENOMINATOR <= i_DENOMINATOR;
	divison:process(w_CLK,w_NUMERATOR,w_DENOMINATOR,w_EN,w_RST)
	begin
		if(rising_edge(w_RST)) then
			r_NUM <= (others => '0');
			r_DEN <= (others => '0');
			r_RES <= (others => '0');
		elsif(rising_edge(w_CLK) and w_EN = '1') then
			--PUT THINGS HERE
		elsif(rising_edge(w_CLK) and w_EN = '0') then 
			r_NUM <= to_ufixed(w_NUMERATOR,INPUT_BIT_WIDTH,-7);
			r_DEN <= to_ufixed(w_DENOMINATOR,INPUT_BIT_WIDTH,-7);
			r_RES <= r_RES;
		else
	        r_NUM <= (others => '0');
			r_DEN <= (others => '0');
			r_RES <= (others => '0');	  
	    end if;
	end process;
	o_RESULT <= to_std_logic_vector(r_RES);
end Behavioral;
