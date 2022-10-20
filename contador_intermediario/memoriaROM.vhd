	library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

	constant NOP  : std_logic_vector(14 downto 0) := "000000000000000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant LDI  : std_logic_vector(3 downto 0) := "0100";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
   constant JSR  : std_logic_vector(3 downto 0) := "1001";
   constant RET  : std_logic_vector(3 downto 0) := "1010";
	
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
  
tmp(0) := x"4" & "00" & std_logic_vector(to_unsigned(5, addrWidth));	-- LDI %R0 $10
tmp(1) := x"5" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- STA %R0 @0
tmp(2) := x"4" & "01" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDI %R1 $5
tmp(3) := x"C" & "01" & std_logic_vector(to_unsigned(0, addrWidth));	-- CLT %R1 @0
tmp(4) := x"0" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- NOP
tmp(5) := x"D" & "00" & std_logic_vector(to_unsigned(20, addrWidth));	-- JLT @20
tmp(6) := x"0" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- NOP
tmp(7) := x"6" & "00" & std_logic_vector(to_unsigned(30, addrWidth));	-- JMP @30












--       tmp(0)     := LDI & "00" & std_logic_vector(to_unsigned(0, addrWidth));
--       tmp(1)     := STA & "00" & std_logic_vector(to_unsigned(0, addrWidth));
--       tmp(2)     := STA & "00" & std_logic_vector(to_unsigned(2, addrWidth));
--       tmp(3)     := LDI  & "00" & std_logic_vector(to_unsigned(1, addrWidth));
--       tmp(4)     := STA & "00" & std_logic_vector(to_unsigned(1, addrWidth));
--       tmp(5)     := NOP;
--       tmp(6)     := LDA & "00" & std_logic_vector(to_unsigned(352, addrWidth));
--       
--       tmp(7)     := CEQ & "00" & std_logic_vector(to_unsigned(0, addrWidth));
--       tmp(8)     := JEQ & "00" & std_logic_vector(to_unsigned(11, addrWidth));
--       tmp(9)    := JSR & "00" & std_logic_vector(to_unsigned(32, addrWidth));
--       tmp(10)    := NOP;
--       tmp(11)    := JMP & "00" & std_logic_vector(to_unsigned(5, addrWidth));
--
--       tmp(32)    := STA & "00" & std_logic_vector(to_unsigned(511, addrWidth));
--       tmp(33)    := LDA & "00" & std_logic_vector(to_unsigned(2, addrWidth));
--       tmp(34)    := SOMA & "00" & std_logic_vector(to_unsigned(1, addrWidth));
--       tmp(35)    := STA & "00" & std_logic_vector(to_unsigned(2, addrWidth));
----       tmp(36)    := STA  & std_logic_vector(to_unsigned(258, addrWidth));
--		tmp(36) := STA & "00" & std_logic_vector(to_unsigned(258, addrWidth));
--		tmp(37)     := STA & "00" & std_logic_vector(to_unsigned(288, addrWidth));
--       tmp(38)    := RET & "00" & std_logic_vector(to_unsigned(0, addrWidth));
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;