library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity somaULA is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in std_logic_vector((larguraDados-1) downto 0);
      inverteB          :  in std_logic;
      overflow          :  out std_logic;
      saida             :  out std_logic_vector((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somaULA is
    signal Cout : std_logic_vector((larguraDados-1) downto 0);
begin

saida(0) <= (entradaA(0) xor entradaB(0)) xor inverteB;
Cout(0) <= ((entradaA(0) xor entradaB(0)) and inverteB) or (entradaA(0) and entradaB(0));

somaBits : for i in 1 to larguraDados - 1 generate
    saida(i) <= (entradaA(i) xor entradaB(i)) xor Cout(i-1);
    Cout(i) <= ((entradaA(i) xor entradaB(i)) and Cout(i-1)) or (entradaA(i) and entradaB(i));
end generate;

overflow <= Cout(larguraDados-1) xor Cout(larguraDados-2);

end architecture;