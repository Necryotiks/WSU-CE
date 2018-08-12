----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/05/2018 02:38:27 PM
-- Design Name: 
-- Module Name: arith_vhdl_tb - NULL_ARCH
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

entity arith_vhdl_tb is
--  Port ( );
end arith_vhdl_tb;

architecture NULL_ARCH of arith_vhdl_tb is

signal r_A_Cmp : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_Cmp : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_A_Add : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_Add : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_A_Mul : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_Mul : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_A_Sub : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_Sub : STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_A_AddSub: STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_AddSub: STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_A_ALU: STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_B_ALU: STD_ULOGIC_VECTOR (3 downto 0) := (others => '0');
signal r_opCode: STD_ULOGIC_VECTOR (2 downto 0) := (others => '0');
signal w_LTO_Struct : STD_ULOGIC;
signal w_GTO_Struct : STD_ULOGIC;
signal w_EQO_Struct : STD_ULOGIC;
signal w_LTO_Behav : STD_ULOGIC;
signal w_GTO_Behav : STD_ULOGIC;
signal w_EQO_Behav : STD_ULOGIC;
signal w_Cout_Add_Struct: STD_ULOGIC;
signal w_Cout_Add_Behav: STD_ULOGIC;
signal w_S_Add_Struct: STD_ULOGIC_VECTOR(3 downto 0);
signal w_S_Add_Behav: STD_ULOGIC_VECTOR(3 downto 0);
signal w_Mul_Result: STD_ULOGIC_VECTOR(7 downto 0);
signal w_Sub_Result:STD_ULOGIC_VECTOR(3 downto 0);
signal w_AddSub_Result:STD_ULOGIC_VECTOR(3 downto 0);
signal w_ALU_Result:STD_ULOGIC_VECTOR(3 downto 0);
signal w_Bout: STD_ULOGIC;
signal w_ERR: STD_ULOGIC;
begin

comparator_uut_struct: entity work.comparator_vhdl(Structural) port map(
 i_A => r_A_Cmp,
 i_B => r_B_Cmp,
 o_LTO => w_LTO_Struct,
 o_GTO => w_GTO_Struct,
 o_EQO => w_EQO_Struct
);

comparator_uut_behav: entity work.comparator_vhdl(Behavioral) port map(
 i_A => r_A_Cmp,
 i_B => r_B_Cmp,
 o_LTO => w_LTO_Behav,
 o_GTO => w_GTO_Behav,
 o_EQO => w_EQO_Behav
);

adder_uut_struct: entity work.rippleCarryAdder_vhdl(Structural) port map (
 i_A => r_A_Add,
 i_B => r_B_Add,
 i_Subtract => '0',
 o_S => w_S_Add_Struct,
 o_ERR => w_Cout_Add_Struct
);

adder_uut_behav: entity work.rippleCarryAdder_vhdl(Behavioral) port map (
 i_A => r_A_Add,
 i_B => r_B_Add,
 i_Subtract => '0',
 o_S => w_S_Add_Behav,
 o_ERR => w_Cout_Add_Behav
);

multiplier_uut: entity work.multiplier_vhdl port map(
    i_A => r_A_Mul,
    i_B => r_B_Mul,
    o_Result => w_Mul_Result
);

subtractor_uut:entity work.rippleBorrowSubtractor_vhdl port map (
    i_A => r_A_Sub,
    i_B => r_B_Sub,
    o_S => w_Sub_Result,
    o_Bout => w_Bout
);

sub_Adder_uut: entity work.rippleCarryAdder_vhdl port map(
    i_A => r_A_AddSub,
    i_B => r_B_AddSub,
    i_Subtract => '1',
    o_S => w_AddSub_Result,
    o_ERR => w_ERR
);

ALU_uut:entity work.ALU_vhdl port map(
    i_A => r_A_ALU,
    i_B => r_B_ALU,
    opCode => r_opCode,
    o_Result => w_ALU_Result
);
--testcmp: process
--begin
--    for i in 0 to 15 loop
--        for j in 0 to 15 loop
--        assert w_LTO_Struct = '1' report "LTO" severity note;
--        assert w_GTO_Struct = '1' report "GTO" severity note;
--        assert w_EQO_Struct = '1' report "EQO" severity note;
--        r_A <= STD_ULOGIC_VECTOR(to_unsigned(j,4)) after 20 ns;
--        end loop;
--     r_B <= STD_ULOGIC_VECTOR(to_unsigned(i,4)) after 20 ns;
--    end loop;
--wait;
--end process testcmp;

qtestcmp: process --Doesn't test all inputs
begin
wait for 20 ns;
assert (w_EQO_Struct = '1') report "Equal test(Structural) failed." severity failure;
assert (w_EQO_Behav = '1') report "Equal test(Behavioral) failed." severity failure;
r_A_Cmp <= (0 => '1', others => '0') ;
wait for 20 ns;
assert (w_GTO_Struct = '1') report "Greater than test(Structural) failed." severity failure;
assert (w_GTO_Behav = '1') report "Greater than test(Behavioral) failed." severity failure;
r_A_Cmp <= (others => '0'); 
r_B_Cmp <= (0 => '1',others => '0');
wait for 20 ns;
assert (w_LTO_Struct = '1') report "Less than test(Structural) failed." severity failure;
assert (w_LTO_Behav = '1') report "Less than test(Behavioral) failed." severity failure;
wait;
end process qtestcmp;

qtestadd: process
begin
    wait for 100 us; --needed to init circuit.
    r_A_Add <= (0 => '1',others => '0');
    r_B_Add <= (1 => '1',others => '0');
    wait for 20 ns;
    assert ((to_integer(unsigned(w_S_Add_Struct)) = 3) and (w_Cout_Add_Struct = '0')) report "Add test failed(No carry out - Structural)" severity failure;
    assert ((to_integer(unsigned(w_S_Add_Behav)) = 3) and (w_Cout_Add_Behav = '0')) report "Add test failed(No carry out - Behavioral)" severity failure;
    r_A_Add <= (others => '1'); --15 + 1
    r_B_Add <= (0 => '1',others => '0');
    wait for 20 ns;
    assert ((to_integer(unsigned(w_S_Add_Struct)) = 0) and (w_Cout_Add_Struct = '1')) report "Add test failed(Carry out - Structural)" severity failure;
    assert ((to_integer(unsigned(w_S_Add_Behav)) = 0) and (w_Cout_Add_Behav = '1')) report "Add test failed(Carry out - Behavioral)" severity failure;
    wait;

end process qtestadd;

qtestmul: process
begin
    r_A_Mul <= (2 => '1' , others => '0'); --4
    r_B_Mul <= (others => '0'); --0
    wait for 20 ns;
    assert ((to_integer(unsigned(w_Mul_Result)))) = 0 report "Zero test failed." severity failure;
    r_A_Mul <= (2 => '1' , others => '0'); --4
    r_B_Mul <= (0 => '1', 1 => '1',others => '0'); --3
    wait for 20 ns;
    assert ((to_integer(unsigned(w_Mul_Result)))) = 12 report "Mul test failed." severity failure;
    r_A_Mul <= (others => '1'); --15
    r_B_Mul <= (others => '1'); --15
    wait for 20 ns;
    assert ((to_integer(unsigned(w_Mul_Result)))) = 225 report "Square test failed test failed." severity failure;
    wait;
end process qtestmul;

qtestsub: process
begin
    r_A_Sub <= (0 => '1',others => '0');
    r_B_Sub <= (1 => '1',others => '0');
    wait for 20 ns;
    assert ((to_integer(unsigned(w_Sub_Result)) = 15) and (w_Bout = '1')) report "Sub test failed(carry out - Structural)" severity failure;
    wait for 20 ns;
    r_A_Sub <= (others => '1'); --15 - 1
    r_B_Sub <= (0 => '1',others => '0');
    wait for 20 ns;
    assert ((to_integer(unsigned(w_Sub_Result)) = 14) and (w_Bout = '0')) report "Sub test failed(no carry out - Structural)" severity failure;
--    wait for 20 ns;
--    assert ((to_integer(unsigned(w_S_Add_Struct)) = 0) and (w_Cout_Add_Struct = '1')) report "Add test failed(Carry out - Structural)" severity failure;
--    assert ((to_integer(unsigned(w_S_Add_Behav)) = 0) and (w_Cout_Add_Behav = '1')) report "Add test failed(Carry out - Behavioral)" severity failure;
    wait;

end process qtestsub;
qtestaddsub: process
begin
    wait for 100 us; --needed to init circuit.
    r_A_AddSub <= (2 => '1',others => '0'); --4
    r_B_AddSub <= (1 => '1',others => '0'); --2
    wait for 20 ns;
    assert ((to_integer(unsigned(w_AddSub_Result)) = 2) and (w_ERR = '0')) report "AddSub test failed(UNDERFLOW)" severity failure;
    r_A_AddSub <= (1 => '1',others => '0'); --2 - 4
    r_B_AddSub <= (2 => '1',others => '0');
    wait for 20 ns;
    assert ((to_integer(unsigned(w_AddSub_Result)) = 2) and (w_ERR = '1')) report "AddSub test failed(NO UNDERFLOW)" severity failure;
    wait;

end process qtestaddsub;
ALU_test:process
begin
wait for 20 us;
r_A_ALU <= (0 => '0',others => '1');
r_B_ALU <= (0 => '1', others => '0');
r_opCode <= (others => '0');
wait for 100 us;
assert ((to_integer(unsigned(w_ALU_Result)) = 15)) report "ALU add test failed" severity failure;
r_opCode <= (0 => '1',others => '0');
wait for 20 ns;
assert ((to_integer(unsigned(w_ALU_Result)) = 15)) report "ALU inc test failed" severity failure;
r_opCode <= (1 => '1',others => '0');
wait for 20 ns;
assert ((to_integer(unsigned(w_ALU_Result)) = 13)) report "ALU sub test failed" severity failure;
r_A_ALU <= (others => '1');
r_B_ALU <= (0 => '1', 3 => '1',others => '0');
r_opCode <= (0 => '1', 1 => '1',others => '0');
wait for 20 ns;
assert w_ALU_Result = "0110" report "ALU xor test failed" severity failure;
r_opCode <= (2 => '1',others => '0');
wait for 20 ns;
assert w_ALU_Result = "1111" report "ALU or test failed" severity failure;
r_opCode <= (0 => '1', 2 => '1',others => '0');
wait for 20 ns;
assert w_ALU_Result = "1001" report "ALU and test failed" severity failure;
end process ALU_test;
end NULL_ARCH;
