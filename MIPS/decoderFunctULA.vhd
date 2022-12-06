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

case_AND       <= (entrada = AND_func) or (entrada = JR_func)
case_OR        <= (entrada = OR_func)  
case_SOMA      <= (entrada = ADD_func) 
case_SUBTRAÇÃO <= (entrada = SUB_func) 
case_SLT       <= (entrada = SLT_func) 

saida <= "0000" when case_AND        else 
         "0001" when case_OR         else 
         "0010" when case_SOMA       else 
         "0110" when case_SUBTRAÇÃO  else  
         "0111" when case_SLT        else 
         "1111";

end architecture;