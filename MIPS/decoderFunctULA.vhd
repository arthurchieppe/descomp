library ieee;
use ieee.std_logic_1164.all;

entity decoderFunctULA is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoderFunctULA is
  constant AND_func : std_logic_vector(5 downto 0)  := "100100";
  constant OR_func  : std_logic_vector(5 downto 0)  := "100101";
  constant NOR_func : std_logic_vector(5 downto 0)  := "100111";
  constant ADD_func : std_logic_vector(5 downto 0)  := "100000";
  constant SUB_func : std_logic_vector(5 downto 0)  := "100010";
  constant SLT_func : std_logic_vector(5 downto 0)  := "101010";
  constant JR_func  : std_logic_vector(5 downto 0)  := "001000";
  constant SLL_func : std_logic_vector(5 downto 0)  := "000000";
  constant SRL_func : std_logic_vector(5 downto 0)  := "000010";

  begin

saida <= "000000" when (entrada = AND_func) or (entrada = JR_func)  else  -- case_AND
         "000001" when entrada = OR_func  else -- case_OR
         "000010" when entrada = ADD_func else -- case_SOMA
         "000110" when entrada = SUB_func else -- case_SUBTRAÇÃO
         "000111" when entrada = SLT_func  else -- case_SLT
         "001100" when entrada = NOR_func  else -- NOR
         "010000" when entrada = SLL_func  else -- SLL
         "100000" when entrada = SRL_func  else -- SRL
         "000000";

end architecture;