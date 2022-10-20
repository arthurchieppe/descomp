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
  
  
tmp(0) := x"4" & "01" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R1 $1         	#Setup 
tmp(1) := x"5" & "01" & std_logic_vector(to_unsigned(1, addrWidth));	-- STA %R1 @1
tmp(2) := x"4" & "01" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDI %R1 $10         	#Setup 
tmp(3) := x"5" & "01" & std_logic_vector(to_unsigned(30, addrWidth));	-- STA %R1 @30         	#Posicao fixa = 10
tmp(4) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0       
tmp(5) := x"5" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- STA %R0 @0
tmp(6) := x"5" & "00" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R0 @10
tmp(7) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(8) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(9) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(10) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(11) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(12) := x"5" & "00" & std_logic_vector(to_unsigned(510, addrWidth));	-- STA %R0 @510
tmp(13) := x"5" & "00" & std_logic_vector(to_unsigned(511, addrWidth));	-- STA %R0 @511
tmp(14) := x"4" & "11" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDI %R3 $10        	#Registrador fixo de 10 no setup
tmp(15) := x"4" & "10" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R2 $0        	#Registrador das unidades
tmp(16) := x"1" & "01" & std_logic_vector(to_unsigned(352, addrWidth));	-- LDA %R1 @352    
tmp(17) := x"8" & "01" & std_logic_vector(to_unsigned(0, addrWidth));	-- CEQ %R1 @0
tmp(18) := x"7" & "00" & std_logic_vector(to_unsigned(24, addrWidth));	-- JEQ @CONTINUA
tmp(19) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(20) := x"5" & "00" & std_logic_vector(to_unsigned(511, addrWidth));	-- STA %R0 @511
tmp(21) := x"1" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDA %R2 @10
tmp(22) := x"2" & "10" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R2 @1
tmp(23) := x"5" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R2 @10
tmp(24) := x"1" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDA %R2 @10
tmp(25) := x"C" & "10" & std_logic_vector(to_unsigned(30, addrWidth));	-- CLT %R2 @30
tmp(26) := x"D" & "00" & std_logic_vector(to_unsigned(28, addrWidth));	-- JLT @SALVA_HEX  	#Se for menor que 10 salva no hex, caso contrario chama subrotina de overflow
tmp(27) := x"9" & "00" & std_logic_vector(to_unsigned(31, addrWidth));	-- JSR @OVERFLOW
tmp(28) := x"1" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDA %R2 @10
tmp(29) := x"5" & "10" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R2 @288
tmp(30) := x"6" & "00" & std_logic_vector(to_unsigned(16, addrWidth));	-- JMP @LOOP
tmp(31) := x"4" & "01" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDI %R1 $10
tmp(32) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(33) := x"5" & "00" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R0 @10
tmp(34) := x"5" & "00" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R0 @288
tmp(35) := x"1" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- LDA %R0 @11 	#HEX1
tmp(36) := x"2" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R0 @1
tmp(37) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(38) := x"8" & "01" & std_logic_vector(to_unsigned(11, addrWidth));	-- CEQ %R1 @11
tmp(39) := x"7" & "00" & std_logic_vector(to_unsigned(42, addrWidth));	-- JEQ @HEX2
tmp(40) := x"5" & "00" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R0 @289
tmp(41) := x"6" & "00" & std_logic_vector(to_unsigned(86, addrWidth));	-- JMP @RETURN
tmp(42) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(43) := x"5" & "00" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R0 @289
tmp(44) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(45) := x"1" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- LDA %R0 @12
tmp(46) := x"2" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R0 @1
tmp(47) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(48) := x"8" & "01" & std_logic_vector(to_unsigned(12, addrWidth));	-- CEQ %R1 @12
tmp(49) := x"7" & "00" & std_logic_vector(to_unsigned(52, addrWidth));	-- JEQ @HEX3
tmp(50) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(51) := x"6" & "00" & std_logic_vector(to_unsigned(86, addrWidth));	-- JMP @RETURN
tmp(52) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(53) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(54) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(55) := x"1" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- LDA %R0 @13
tmp(56) := x"2" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R0 @1
tmp(57) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(58) := x"8" & "01" & std_logic_vector(to_unsigned(13, addrWidth));	-- CEQ %R1 @13
tmp(59) := x"7" & "00" & std_logic_vector(to_unsigned(62, addrWidth));	-- JEQ @HEX4
tmp(60) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(61) := x"6" & "00" & std_logic_vector(to_unsigned(86, addrWidth));	-- JMP @RETURN
tmp(62) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(63) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(64) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(65) := x"1" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- LDA %R0 @14
tmp(66) := x"2" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R0 @1
tmp(67) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(68) := x"8" & "01" & std_logic_vector(to_unsigned(14, addrWidth));	-- CEQ %R1 @14
tmp(69) := x"7" & "00" & std_logic_vector(to_unsigned(72, addrWidth));	-- JEQ @HEX5
tmp(70) := x"5" & "00" & std_logic_vector(to_unsigned(295, addrWidth));	-- STA %R0 @295
tmp(71) := x"6" & "00" & std_logic_vector(to_unsigned(86, addrWidth));	-- JMP @RETURN
tmp(72) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(73) := x"5" & "00" & std_logic_vector(to_unsigned(292, addrWidth));	-- STA %R0 @292
tmp(74) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(75) := x"1" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- LDA %R0 @15
tmp(76) := x"2" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- SOMA %R0 @1
tmp(77) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(78) := x"8" & "01" & std_logic_vector(to_unsigned(15, addrWidth));	-- CEQ %R1 @15 	# Adicionar JEQ para overflow de 999999
tmp(79) := x"7" & "00" & std_logic_vector(to_unsigned(81, addrWidth));	-- JEQ @ATINGIU_LIMITE
tmp(80) := x"6" & "00" & std_logic_vector(to_unsigned(86, addrWidth));	-- JMP @RETURN
tmp(81) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(82) := x"5" & "00" & std_logic_vector(to_unsigned(293, addrWidth));	-- STA %R0 @293
tmp(83) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(84) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(85) := x"5" & "00" & std_logic_vector(to_unsigned(257, addrWidth));	-- STA %R0 @257
tmp(86) := x"A" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- RET






		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;