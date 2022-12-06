library ieee;
use ieee.std_logic_1164.all;

entity decoderOpcodeULA is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderOpcodeULA is
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  constant JMP   : std_logic_vector(5 downto 0) := "000010";
  constant LUI   : std_logic_vector(5 downto 0) := "001111";
  constant ADDI  : std_logic_vector(5 downto 0) := "001000";
  constant ANDI  : std_logic_vector(5 downto 0) := "001100";
  constant ORI   : std_logic_vector(5 downto 0) := "001101";
  constant SLTI  : std_logic_vector(5 downto 0) := "001010";
  constant BNE   : std_logic_vector(5 downto 0) := "000101";
  constant JAL   : std_logic_vector(5 downto 0) := "000011";
  
begin

saida <= "0000" when (entrada = LUI) or (entrada = JAL) or (entrada = ANDI)  else -- case_AND
         "0001" when (entrada = LW) or (entrada = ORI)  else   -- case_OR 
         "0010" when (entrada = SW) or (entrada = ADDI) else   -- case_SOMA
         "0110" when (entrada = BEQ) or (entrada = BNE) else   -- case_SUBTRAÇÃO
         "0111" when (entrada = JMP) or (entrada = SLTI)  else -- case_SLT
         "0000";
end architecture;