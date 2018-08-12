----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2018 10:29:43 PM
-- Design Name: 
-- Module Name: rippleCarryAdder_vhdl - Structura
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

entity rippleBorrowSubtractor_vhdl is
    Port ( i_A : in STD_ULOGIC_VECTOR (3 downto 0);
           i_B : in STD_ULOGIC_VECTOR (3 downto 0);
           o_S : out STD_ULOGIC_VECTOR (3 downto 0);
           o_Bout : out STD_ULOGIC);
end rippleBorrowSubtractor_vhdl;

architecture Structural of rippleBorrowSubtractor_vhdl is
signal w_Borrow: STD_ULOGIC_VECTOR(3 downto 0);
signal w_Result: STD_ULOGIC_VECTOR(3 downto 0); -- DONT DRIVE COMPONENT OUTPUTS STRAIGHT TO A PORT. USE HANDSHAKE SIGNAL.
component HS_vhdl port(
    i_A: in STD_ULOGIC;
    i_B: in STD_ULOGIC;
    o_S: out STD_ULOGIC;
    o_Bout: out STD_ULOGIC
);
end component;

component FS_vhdl port(
    i_A: in STD_ULOGIC;
    i_B: in STD_ULOGIC;
    i_Bin: in STD_ULOGIC;
    o_S: out STD_ULOGIC;
    o_Bout : out STD_ULOGIC
);
end component;
begin
HA: HS_vhdl Port map(
    i_A => i_A(0),
    i_B => i_B(0),
    o_S => w_Result(0),
    o_Bout => w_Borrow(0)
);
FA_GEN: for i in 1 to 3 generate
    FA_SUB: FS_vhdl port map
    (
        i_A => i_A(i),
        i_B => i_B(i),
        i_Bin => w_Borrow(i - 1),
        o_S => w_Result(i),
        o_Bout => w_Borrow(i)
    );
end generate FA_GEN;
o_S <= w_Result;
o_Bout <= w_Borrow(3);

end Structural;
