library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  port ( entrada : in std_logic_vector(5 downto 0);
         JR_ins  : in std_logic;
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

  begin
saida <= "00010101000000" when entrada = tipoR else
         "00000110010010" when entrada = LW    else
         "00000010000001" when entrada = SW    else
         "00000000001000" when entrada = BEQ   else
         "01000000000000" when entrada = JMP   else
         "00000100110000" when entrada = LUI   else
         "00000110000000" when entrada = ADDI  else
         "00001110000000" when entrada = ANDI  else
         "00001110000000" when entrada = ORI   else
         "00001110000000" when entrada = SLTI  else
         "00000000000100" when entrada = BNE   else
         "01100100100000" when entrada = JAL   else
         "10010101000000" when (entrada = tipoR) and (JR_ins = '1') else
         "00000000000000";
end architecture;