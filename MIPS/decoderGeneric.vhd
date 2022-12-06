library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( opCode : in std_logic_vector(5 downto 0);
         funct  : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant tipoR : std_logic_vector(5 downto 0) := "000000";
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
  constant JR   : std_logic_vector(5 downto 0) := "001000";

  begin
  
saida <= "10000001000000" when (opCode = tipoR) and (funct = JR) else
         "00000110010010" when opCode = LW    else
         "00000010000001" when opCode = SW    else
         "00000000001000" when opCode = BEQ   else
         "01000000000000" when opCode = JMP   else
         "00000100110000" when opCode = LUI   else
         "00000110000000" when opCode = ADDI  else
         "00001110000000" when opCode = ANDI  else
         "00001110000000" when opCode = ORI   else
         "00000110000000" when opCode = SLTI  else
         "00000000000100" when opCode = BNE   else
         "01100100100000" when opCode = JAL   else
         "00010101000000" when opCode = tipoR else
         "00000000000000";
end architecture;