library ieee;
use ieee.std_logic_1164.all;

entity LogicaDesvio is
  port ( entrada_flag : in std_logic;
			entrada_dec  : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of LogicaDesvio is

  constant JMP  : std_logic_vector(3 downto 0) := "0001";
  constant JEQ  : std_logic_vector(3 downto 0) := "0010";
  constant JSR  : std_logic_vector(3 downto 0) := "1000";
  constant RET  : std_logic_vector(3 downto 0) := "1000";

  begin
saida <= "0000000" when entrada = NOP else
         "0011010" when entrada = LDA else
         "0010010" when entrada = SOMA else
         "0010110" when entrada = SUB else
         "0111000" when entrada = LDI else
			"0001001" when entrada = STA else
			"1000000" when entrada = JMP else
			"1000000" when entrada = JEQ else
			"1000000" when entrada = CEQ else
         "0000000";  -- NOP para os entradas Indefinidas
end architecture;