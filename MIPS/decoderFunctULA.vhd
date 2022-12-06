library ieee;
use ieee.std_logic_1164.all;

entity decoderFunctULA is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderFunctULA is
  constant AND_func : std_logic_vector(5 downto 0)  := "100100";
  constant OR_func  : std_logic_vector(5 downto 0)  := "100101";
  constant ADD_func : std_logic_vector(5 downto 0)  := "100000";
  constant SUB_func : std_logic_vector(5 downto 0)  := "100010";
  constant SLT_func : std_logic_vector(5 downto 0)  := "101010";
  constant JR_func  : std_logic_vector(5 downto 0)  := "001000";

  begin

saida <= "0000" when (entrada = AND_func) or (entrada = JR_func)  else  -- case_AND
         "0001" when entrada = OR_func  else -- case_OR
         "0010" when entrada = ADD_func else -- case_SOMA
         "0110" when entrada = SUB_func else -- case_SUBTRAÇÃO
         "0111" when entrada = SLT_func  else -- case_SLT
         "1111";

end architecture;