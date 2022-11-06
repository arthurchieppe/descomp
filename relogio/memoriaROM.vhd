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
  
tmp(0) := x"4" & "01" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R1 $1         		#Setup 
tmp(1) := x"5" & "01" & std_logic_vector(to_unsigned(1, addrWidth));	-- STA %R1 @1          
tmp(2) := x"4" & "01" & std_logic_vector(to_unsigned(10, addrWidth));	-- LDI %R1 $10     
tmp(3) := x"5" & "01" & std_logic_vector(to_unsigned(30, addrWidth));	-- STA %R1 @30         	#Posicao de memória fixa = 10
tmp(4) := x"4" & "01" & std_logic_vector(to_unsigned(2, addrWidth));	-- LDI %R1 $2         	#Posicao de memoria fixa = 2
tmp(5) := x"5" & "01" & std_logic_vector(to_unsigned(2, addrWidth));	-- STA %R1 @2  
tmp(6) := x"4" & "01" & std_logic_vector(to_unsigned(4, addrWidth));	-- LDI %R1 $4         	#Posicao de memoria fixa = 4
tmp(7) := x"5" & "01" & std_logic_vector(to_unsigned(4, addrWidth));	-- STA %R1 @4
tmp(8) := x"4" & "01" & std_logic_vector(to_unsigned(6, addrWidth));	-- LDI %R1 $6         	#Posicao de memoria fixa = 6
tmp(9) := x"5" & "01" & std_logic_vector(to_unsigned(6, addrWidth));	-- STA %R1 @6  
tmp(10) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0       
tmp(11) := x"5" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- STA %R0 @0
tmp(12) := x"5" & "00" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R0 @10
tmp(13) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(14) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(15) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(16) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(17) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(18) := x"5" & "00" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R0 @288
tmp(19) := x"5" & "00" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R0 @289
tmp(20) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290    
tmp(21) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(22) := x"5" & "00" & std_logic_vector(to_unsigned(292, addrWidth));	-- STA %R0 @292
tmp(23) := x"5" & "00" & std_logic_vector(to_unsigned(293, addrWidth));	-- STA %R0 @293
tmp(24) := x"5" & "00" & std_logic_vector(to_unsigned(510, addrWidth));	-- STA %R0 @510
tmp(25) := x"5" & "00" & std_logic_vector(to_unsigned(511, addrWidth));	-- STA %R0 @511
tmp(26) := x"5" & "00" & std_logic_vector(to_unsigned(257, addrWidth));	-- STA %R0 @257
tmp(27) := x"5" & "00" & std_logic_vector(to_unsigned(506, addrWidth));	-- STA %R0 @506        	#Se foi apertado, incrementa
tmp(28) := x"5" & "00" & std_logic_vector(to_unsigned(505, addrWidth));	-- STA %R0 @505
tmp(29) := x"4" & "10" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R2 $0        		#Registrador das unidades
tmp(30) := x"1" & "01" & std_logic_vector(to_unsigned(356, addrWidth));	-- LDA %R1 @356        	#Checa botao de reset
tmp(31) := x"8" & "01" & std_logic_vector(to_unsigned(0, addrWidth));	-- CEQ %R1 @0
tmp(32) := x"7" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- JEQ @0              	#Se botao for pressionado vai para o inicio do programa
tmp(33) := x"1" & "01" & std_logic_vector(to_unsigned(352, addrWidth));	-- LDA %R1 @352           	#CHECA SE USUARIO QUER MUDAR HORARIO
tmp(34) := x"8" & "01" & std_logic_vector(to_unsigned(0, addrWidth));	-- CEQ %R1 @0
tmp(35) := x"7" & "00" & std_logic_vector(to_unsigned(37, addrWidth));	-- JEQ @CHECA_INCREMENTO
tmp(36) := x"9" & "00" & std_logic_vector(to_unsigned(110, addrWidth));	-- JSR @ACERTA_HORARIO
tmp(37) := x"1" & "01" & std_logic_vector(to_unsigned(357, addrWidth));	-- LDA %R1 @357    		#Checa pro botao de incremento
tmp(38) := x"8" & "01" & std_logic_vector(to_unsigned(0, addrWidth));	-- CEQ %R1 @0
tmp(39) := x"7" & "00" & std_logic_vector(to_unsigned(45, addrWidth));	-- JEQ @CONTINUA         	#Se nao foi apertado vai para continua
tmp(40) := x"6" & "00" & std_logic_vector(to_unsigned(41, addrWidth));	-- JMP @INCREMENTA
tmp(41) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1          	#Se foi apertado, incrementa
tmp(42) := x"5" & "00" & std_logic_vector(to_unsigned(511, addrWidth));	-- STA %R0 @511        
tmp(43) := x"E" & "10" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R2 $1
tmp(44) := x"5" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R2 @10
tmp(45) := x"C" & "10" & std_logic_vector(to_unsigned(30, addrWidth));	-- CLT %R2 @30
tmp(46) := x"D" & "00" & std_logic_vector(to_unsigned(48, addrWidth));	-- JLT @SALVA_HEX  		#Se for menor que 10 salva no hex, caso contrario chama subrotina de overflow
tmp(47) := x"9" & "00" & std_logic_vector(to_unsigned(50, addrWidth));	-- JSR @OVERFLOW
tmp(48) := x"5" & "10" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R2 @288
tmp(49) := x"6" & "00" & std_logic_vector(to_unsigned(30, addrWidth));	-- JMP @LOOP
tmp(50) := x"4" & "10" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R2 $0
tmp(51) := x"5" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R2 @10
tmp(52) := x"5" & "10" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R2 @288
tmp(53) := x"1" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- LDA %R0 @11 		#Incrementa HEX1 e checa se é menor que 10, se for menor sai da subrotina
tmp(54) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(55) := x"8" & "00" & std_logic_vector(to_unsigned(6, addrWidth));	-- CEQ %R0 @6
tmp(56) := x"7" & "00" & std_logic_vector(to_unsigned(60, addrWidth));	-- JEQ @HEX2
tmp(57) := x"5" & "00" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R0 @289
tmp(58) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(59) := x"6" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JMP @RETURN
tmp(60) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(61) := x"5" & "00" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R0 @289
tmp(62) := x"5" & "00" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R0 @11
tmp(63) := x"1" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- LDA %R0 @12
tmp(64) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(65) := x"8" & "00" & std_logic_vector(to_unsigned(30, addrWidth));	-- CEQ %R0 @30
tmp(66) := x"7" & "00" & std_logic_vector(to_unsigned(70, addrWidth));	-- JEQ @HEX3
tmp(67) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(68) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(69) := x"6" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JMP @RETURN
tmp(70) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(71) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(72) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(73) := x"1" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- LDA %R0 @13
tmp(74) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(75) := x"8" & "00" & std_logic_vector(to_unsigned(6, addrWidth));	-- CEQ %R0 @6
tmp(76) := x"7" & "00" & std_logic_vector(to_unsigned(80, addrWidth));	-- JEQ @HEX4
tmp(77) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(78) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(79) := x"6" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JMP @RETURN
tmp(80) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(81) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(82) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(83) := x"1" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- LDA %R0 @14
tmp(84) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(85) := x"8" & "00" & std_logic_vector(to_unsigned(30, addrWidth));	-- CEQ %R0 @30
tmp(86) := x"7" & "00" & std_logic_vector(to_unsigned(96, addrWidth));	-- JEQ @HEX5
tmp(87) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(88) := x"5" & "00" & std_logic_vector(to_unsigned(292, addrWidth));	-- STA %R0 @292
tmp(89) := x"8" & "00" & std_logic_vector(to_unsigned(4, addrWidth));	-- CEQ %R0 @4
tmp(90) := x"7" & "00" & std_logic_vector(to_unsigned(92, addrWidth));	-- JEQ @ATINGIU_4
tmp(91) := x"6" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JMP @RETURN
tmp(92) := x"1" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- LDA %R0 @15             	#Ao HEX5 chegar em 2, checa se hex4 esta abaixo de 4
tmp(93) := x"8" & "00" & std_logic_vector(to_unsigned(2, addrWidth));	-- CEQ %R0 @2
tmp(94) := x"B" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JNE @RETURN
tmp(95) := x"6" & "00" & std_logic_vector(to_unsigned(104, addrWidth));	-- JMP @LIMPA
tmp(96) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(97) := x"5" & "00" & std_logic_vector(to_unsigned(292, addrWidth));	-- STA %R0 @292
tmp(98) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(99) := x"1" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- LDA %R0 @15
tmp(100) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(101) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(102) := x"5" & "00" & std_logic_vector(to_unsigned(293, addrWidth));	-- STA %R0 @293
tmp(103) := x"6" & "00" & std_logic_vector(to_unsigned(109, addrWidth));	-- JMP @RETURN
tmp(104) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(105) := x"5" & "00" & std_logic_vector(to_unsigned(293, addrWidth));	-- STA %R0 @293
tmp(106) := x"5" & "00" & std_logic_vector(to_unsigned(15, addrWidth));	-- STA %R0 @15
tmp(107) := x"5" & "00" & std_logic_vector(to_unsigned(292, addrWidth));	-- STA %R0 @292
tmp(108) := x"5" & "00" & std_logic_vector(to_unsigned(14, addrWidth));	-- STA %R0 @14
tmp(109) := x"A" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- RET 
tmp(110) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(111) := x"5" & "00" & std_logic_vector(to_unsigned(510, addrWidth));	-- STA %R0 @510        	#LIMPA KEY0
tmp(112) := x"5" & "00" & std_logic_vector(to_unsigned(256, addrWidth));	-- STA %R0 @256
tmp(113) := x"5" & "10" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R2 @288
tmp(114) := x"5" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R2 @10
tmp(115) := x"1" & "00" & std_logic_vector(to_unsigned(353, addrWidth));	-- LDA %R0 @353           
tmp(116) := x"8" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- CEQ %R0 @1
tmp(117) := x"7" & "00" & std_logic_vector(to_unsigned(122, addrWidth));	-- JEQ @INCREMENTA_SEGUNDOS
tmp(118) := x"1" & "00" & std_logic_vector(to_unsigned(352, addrWidth));	-- LDA %R0 @352 
tmp(119) := x"8" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- CEQ %R0 @1
tmp(120) := x"7" & "00" & std_logic_vector(to_unsigned(140, addrWidth));	-- JEQ @SETUP_MINUTOS          
tmp(121) := x"6" & "00" & std_logic_vector(to_unsigned(113, addrWidth));	-- JMP @LOOP_SEGUNDOS
tmp(122) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(123) := x"5" & "00" & std_logic_vector(to_unsigned(509, addrWidth));	-- STA %R0 @509
tmp(124) := x"E" & "10" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R2 $1
tmp(125) := x"C" & "10" & std_logic_vector(to_unsigned(30, addrWidth));	-- CLT %R2 @30
tmp(126) := x"D" & "00" & std_logic_vector(to_unsigned(113, addrWidth));	-- JLT @LOOP_SEGUNDOS
tmp(127) := x"4" & "10" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R2 $0
tmp(128) := x"1" & "11" & std_logic_vector(to_unsigned(11, addrWidth));	-- LDA %R3 @11
tmp(129) := x"E" & "11" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R3 $1
tmp(130) := x"C" & "11" & std_logic_vector(to_unsigned(6, addrWidth));	-- CLT %R3 @6
tmp(131) := x"5" & "11" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R3 @289
tmp(132) := x"5" & "11" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R3 @11
tmp(133) := x"D" & "00" & std_logic_vector(to_unsigned(113, addrWidth));	-- JLT @LOOP_SEGUNDOS
tmp(134) := x"4" & "10" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R2 $0
tmp(135) := x"5" & "10" & std_logic_vector(to_unsigned(288, addrWidth));	-- STA %R2 @288
tmp(136) := x"5" & "10" & std_logic_vector(to_unsigned(10, addrWidth));	-- STA %R2 @10
tmp(137) := x"5" & "10" & std_logic_vector(to_unsigned(289, addrWidth));	-- STA %R2 @289
tmp(138) := x"5" & "10" & std_logic_vector(to_unsigned(11, addrWidth));	-- STA %R2 @11
tmp(139) := x"6" & "00" & std_logic_vector(to_unsigned(113, addrWidth));	-- JMP @LOOP_SEGUNDOS
tmp(140) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(141) := x"5" & "00" & std_logic_vector(to_unsigned(510, addrWidth));	-- STA %R0 @510        	#LIMPA KEY0
tmp(142) := x"4" & "00" & std_logic_vector(to_unsigned(2, addrWidth));	-- LDI %R0 $2
tmp(143) := x"5" & "00" & std_logic_vector(to_unsigned(256, addrWidth));	-- STA %R0 @256
tmp(144) := x"6" & "00" & std_logic_vector(to_unsigned(145, addrWidth));	-- JMP @LOOP_MINUTOS
tmp(145) := x"1" & "00" & std_logic_vector(to_unsigned(353, addrWidth));	-- LDA %R0 @353           
tmp(146) := x"8" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- CEQ %R0 @1
tmp(147) := x"7" & "00" & std_logic_vector(to_unsigned(152, addrWidth));	-- JEQ @INCREMENTA_MINUTOS
tmp(148) := x"1" & "00" & std_logic_vector(to_unsigned(352, addrWidth));	-- LDA %R0 @352 
tmp(149) := x"8" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- CEQ %R0 @1
tmp(150) := x"7" & "00" & std_logic_vector(to_unsigned(175, addrWidth));	-- JEQ @RETURN_HORARIO 
tmp(151) := x"6" & "00" & std_logic_vector(to_unsigned(145, addrWidth));	-- JMP @LOOP_MINUTOS
tmp(152) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(153) := x"5" & "00" & std_logic_vector(to_unsigned(509, addrWidth));	-- STA %R0 @509
tmp(154) := x"1" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- LDA %R0 @12
tmp(155) := x"E" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R0 $1
tmp(156) := x"C" & "00" & std_logic_vector(to_unsigned(30, addrWidth));	-- CLT %R0 @30
tmp(157) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(158) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(159) := x"D" & "00" & std_logic_vector(to_unsigned(145, addrWidth));	-- JLT @LOOP_MINUTOS
tmp(160) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(161) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(162) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(163) := x"1" & "11" & std_logic_vector(to_unsigned(13, addrWidth));	-- LDA %R3 @13
tmp(164) := x"E" & "11" & std_logic_vector(to_unsigned(1, addrWidth));	-- ADDI %R3 $1
tmp(165) := x"C" & "11" & std_logic_vector(to_unsigned(6, addrWidth));	-- CLT %R3 @6
tmp(166) := x"5" & "11" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R3 @291
tmp(167) := x"5" & "11" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R3 @13
tmp(168) := x"D" & "00" & std_logic_vector(to_unsigned(145, addrWidth));	-- JLT @LOOP_MINUTOS
tmp(169) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(170) := x"5" & "00" & std_logic_vector(to_unsigned(290, addrWidth));	-- STA %R0 @290
tmp(171) := x"5" & "00" & std_logic_vector(to_unsigned(12, addrWidth));	-- STA %R0 @12
tmp(172) := x"5" & "00" & std_logic_vector(to_unsigned(291, addrWidth));	-- STA %R0 @291
tmp(173) := x"5" & "00" & std_logic_vector(to_unsigned(13, addrWidth));	-- STA %R0 @13
tmp(174) := x"6" & "00" & std_logic_vector(to_unsigned(145, addrWidth));	-- JMP @LOOP_MINUTOS
tmp(175) := x"4" & "00" & std_logic_vector(to_unsigned(1, addrWidth));	-- LDI %R0 $1
tmp(176) := x"5" & "00" & std_logic_vector(to_unsigned(510, addrWidth));	-- STA %R0 @510 
tmp(177) := x"4" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- LDI %R0 $0
tmp(178) := x"5" & "00" & std_logic_vector(to_unsigned(256, addrWidth));	-- STA %R0 @256
tmp(179) := x"A" & "00" & std_logic_vector(to_unsigned(0, addrWidth));	-- RET












    
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;