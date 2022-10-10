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

	constant NOP  : std_logic_vector(4 downto 0) := "00000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(4 downto 0) := "00100";
	constant LDI  : std_logic_vector(4 downto 0) := "01000";
	constant SUB  : std_logic_vector(4 downto 0) := "00110";
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
   constant JSR  : std_logic_vector(3 downto 0) := "1001";
   constant RET  : std_logic_vector(4 downto 0) := "10100";
	
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
--		  tmp(0)    := LDI  & '0' & x"01";
--        tmp(1)    := STA  & '1' & x"00";
--        tmp(2)    := SOMA & '0' & x"00";
--        tmp(3)    := STA  & '1' & x"00";
--		  tmp(4)    := SOMA & '0' & x"00";
--        tmp(5)    := STA  & '1' & x"01";
--		  tmp(6)    := SOMA & '0' & x"00";
--        tmp(7)    := STA  & '1' & x"02";
--		  tmp(8)    := SOMA & '0' & x"00";
--        tmp(9)    := STA  & '1' & x"03";
--		  tmp(10)   := SOMA & '0' & x"00";
--        tmp(11)   := STA  & '1' & x"04";
--		  tmp(12)   := JMP  & '0' & x"02";
		  
		  tmp(0)    := LDI  & x"01";
--												conv_std_logic_vector(SOME_INTEGER, 4);
--        tmp(1)    := STA  & x"000";
		  tmp(1)    := STA  & std_logic_vector(to_unsigned(0, addrWidth));
        tmp(2)    := SOMA & x"00";
        tmp(3)    := STA  & std_logic_vector(to_unsigned(1, addrWidth));
		  tmp(4)    := LDA  & std_logic_vector(to_unsigned(0, addrWidth));
        tmp(5)    := STA  & std_logic_vector(to_unsigned(257, addrWidth));
		  tmp(6)    := STA  & std_logic_vector(to_unsigned(258, addrWidth));
        tmp(7)    := LDI  & x"55";
		  tmp(8)    := STA  & std_logic_vector(to_unsigned(256, addrWidth));
        tmp(9)    := LDI  & x"AA";
		  tmp(10)   := STA  & std_logic_vector(to_unsigned(256, addrWidth));
		  tmp(11)   := JMP  & std_logic_vector(to_unsigned(11, addrWidth));
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;