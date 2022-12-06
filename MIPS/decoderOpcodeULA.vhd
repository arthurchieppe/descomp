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
  
  signal case_AND       : std_logic;
  signal case_OR        : std_logic;
  signal case_SOMA      : std_logic;
  signal case_SUBTRAÇÃO : std_logic;
  signal case_SLT       : std_logic; 
  
  begin

case_AND       <= (entrada = LUI) or (entrada = JAL) or (entrada = ANDI)
case_OR        <= (entrada = LW)  or (entrada = ORI)
case_SOMA      <= (entrada = SW)  or (entrada = ADDI)
case_SUBTRAÇÃO <= (entrada = BEQ) or (entrada = BNE)
case_SLT       <= (entrada = JMP) or (entrada = SLTI)

saida <= "0000" when case_AND        else 
         "0001" when case_OR         else 
         "0010" when case_SOMA       else 
         "0110" when case_SUBTRAÇÃO  else  
         "0111" when case_SLT        else 
         "1111";
end architecture;