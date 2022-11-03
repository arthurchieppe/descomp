library IEEE;
use ieee.std_logic_1164.all;

entity buffer_3_state_1portas is
generic (larguraDados : natural := 8);
    port(
        entrada  : in std_logic;
        habilita : in std_logic;
        saida    : out std_logic_vector(larguraDados-1 downto 0)
		  );
end entity;

architecture comportamento of buffer_3_state_1portas is
begin
    -- A saida esta ativa quando o habilita = 1.
    saida <= "ZZZZZZZZ" when (habilita = '0') else "0000000" & entrada;
end architecture;