
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULAMIPS is
    generic (
        larguraDados : NATURAL := 32
    );
    port (
        entradaA : in std_logic_vector((larguraDados - 1) downto 0);
        entradaB : in std_logic_vector((larguraDados - 1) downto 0);
        decoder  : in std_logic_vector(3 downto 0);
        saida    : out std_logic_vector((larguraDados - 1) downto 0);
        zeroFlag : out std_logic;
    );
end entity;

architecture comportamento OF ULAMIPS is
    signal B_mux   : std_logic_vector((larguraDados - 1) downto 0);
    signal A_mux   : std_logic_vector((larguraDados - 1) downto 0);
    
    signal ula_and  : std_logic_vector((larguraDados - 1) downto 0);
    signal ula_or   : std_logic_vector((larguraDados - 1) downto 0);
    signal ula_slt  : std_logic_vector((larguraDados - 1) downto 0);
    signal somaSub  : std_logic_vector((larguraDados - 1) downto 0);
    signal overflow : std_logic;
    
    signal seletor : std_logic_vector(1 downto 0);
begin

B_mux <= entradaB when decoder(2) = '0' else (not entradaB);
A_mux <= entradaA when decoder(3) = '0' else (not entradaA);

ula_and <= B_mux and A_mux;
ula_or <= B_mux or A_mux;
ula_slt <= "0000000000000000000000000000000" & (somaSub(larguraDados - 1) xor overflow);

seletor <= decoder (1 downto 0);

FULLADDER : entity work.somaULA
    generic map(larguraDados => larguraDados)
    port map(
    entradaA => B_mux,
    entradaB => A_mux,
    inverteB => decoder(2),
    inverteA => decoder(3),
    saida    => somaSub,
    overflow => overflow
    );

saida <= ula_and when seletor = "00" else
         ula_or  when seletor = "01" else
         somaSub when seletor = "10" else
         ula_slt;

zeroFlag <= '1' when (somaSub = "00000000000000000000000000000000") else '0';
          
end architecture;