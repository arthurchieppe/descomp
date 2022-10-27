		library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada : in std_logic_vector(3 downto 0);
			flagzero    : in std_logic;
			flagless    : in std_logic;
         saida : out std_logic_vector(11 downto 0);
			saida_desvio: out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
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
  constant JNE  : std_logic_vector(3 downto 0) := "1011";
  constant CLT  : std_logic_vector(3 downto 0) := "1100";
  constant JLT  : std_logic_vector(3 downto 0) := "1101";
  constant ADDI  : std_logic_vector(3 downto 0) := "1110";

  begin
  
saida <= "000000000000" when entrada = NOP else
         "000000110010" when entrada = LDA else
         "000000100010" when entrada = SOMA else
         "000000101010" when entrada = SUB else
         "000001110000" when entrada = LDI else
			"000000000001" when entrada = STA else
			"010000000000" when entrada = JMP else
			"000010000000" when entrada = JEQ else
			"000000001110" when entrada = CEQ else
			"100100000000" when entrada = JSR else
			"001000000000" when entrada = RET else
			"000010000000" when entrada = JNE else
			"000000001110" when entrada = CLT else
			"000010000000" when entrada = JLT else
			"000001100000" when entrada = ADDI else
         "000000000000";  

saida_desvio <= "01" when entrada = JMP or (flagzero = '1' and entrada = JEQ) or (flagzero = '0' and entrada = JNE) or 
						(flagless = '1' and entrada = JLT) or entrada = JSR else
					 "10" when entrada = RET else
					 "00";

end architecture;