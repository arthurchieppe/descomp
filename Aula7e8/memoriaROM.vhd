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

	constant NOP  : std_logic_vector(12 downto 0) := "0000000000000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant LDI  : std_logic_vector(4 downto 0) := "01000";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
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

        tmp(0)     := LDI  & x"00";
       tmp(1)     := STA  & std_logic_vector(to_unsigned(0, addrWidth));
       tmp(2)     := STA  & std_logic_vector(to_unsigned(2, addrWidth));
       tmp(3)     := LDI  & x"01";
       tmp(4)     := STA  & std_logic_vector(to_unsigned(1, addrWidth));
       tmp(5)     := NOP;
       tmp(6)     := LDA  & std_logic_vector(to_unsigned(352, addrWidth));
       tmp(7)     := STA  & std_logic_vector(to_unsigned(288, addrWidth));
       tmp(8)     := CEQ  & std_logic_vector(to_unsigned(0, addrWidth));
       tmp(9)     := JEQ  & std_logic_vector(to_unsigned(11, addrWidth));
       tmp(10)    := JSR  & std_logic_vector(to_unsigned(32, addrWidth));
       tmp(11)    := NOP;
       tmp(12)    := JMP  & std_logic_vector(to_unsigned(5, addrWidth));

       tmp(32)    := STA  & std_logic_vector(to_unsigned(511, addrWidth));
       tmp(33)    := LDA  & std_logic_vector(to_unsigned(2, addrWidth));
       tmp(34)    := SOMA & std_logic_vector(to_unsigned(1, addrWidth));
       tmp(35)    := STA  & std_logic_vector(to_unsigned(2, addrWidth));
--       tmp(36)    := STA  & std_logic_vector(to_unsigned(258, addrWidth));
		tmp(36) := STA & std_logic_vector(to_unsigned(289, addrWidth));
		tmp(37) := STA & std_logic_vector(to_unsigned(258, addrWidth));
       tmp(38)    := RET  & x"00";

		-- tmp(0)     := LDA  & std_logic_vector(to_unsigned(320, addrWidth));
        -- tmp(1)     := STA  & std_logic_vector(to_unsigned(288, addrWidth));
        -- tmp(2)     := LDA  & std_logic_vector(to_unsigned(321, addrWidth));
        -- tmp(3)     := STA  & std_logic_vector(to_unsigned(289, addrWidth));
        -- tmp(4)     := LDA  & std_logic_vector(to_unsigned(322, addrWidth));
        -- tmp(5)     := STA  & std_logic_vector(to_unsigned(290, addrWidth));
        -- tmp(6)     := LDA  & std_logic_vector(to_unsigned(352, addrWidth));
        -- tmp(7)     := STA  & std_logic_vector(to_unsigned(291, addrWidth));
        -- tmp(8)     := LDA  & std_logic_vector(to_unsigned(353, addrWidth));
        -- tmp(9)     := STA  & std_logic_vector(to_unsigned(292, addrWidth));
        -- tmp(10)    := LDA  & std_logic_vector(to_unsigned(354, addrWidth));
        -- tmp(11)    := STA  & std_logic_vector(to_unsigned(293, addrWidth));
        -- tmp(12)    := LDA  & std_logic_vector(to_unsigned(355, addrWidth));
        -- tmp(13)    := STA  & std_logic_vector(to_unsigned(257, addrWidth));
        -- tmp(14)    := LDA  & std_logic_vector(to_unsigned(356, addrWidth));
        -- tmp(15)    := STA  & std_logic_vector(to_unsigned(258, addrWidth));
        -- tmp(16)    := JMP  & std_logic_vector(to_unsigned(0, addrWidth));
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;