library ieee;
use ieee.std_logic_1164.all;

entity decoderGenericULA is
  port (
    opCode   : in  std_logic_vector(5 downto 0);
    funct    : in  std_logic_vector(5 downto 0);
    tipoR    : in  std_logic;
    ULActrl  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderGenericULA is
  signal DECfunct  : std_logic_vector(3 downto 0);
  signal DECopcod  : std_logic_vector(3 downto 0);

  begin

decoderOpcode :  entity work.decoderOpcodeULA
  port map(
  entrada => OpCode,
  saida   => DECopcod
  );

decoderFunct :  entity work.decoderFunctULA
  port map(
  entrada => funct,
  saida   => DECfunct
  );

ULActrl <= DECfunct when tipoR = '1' else DECopcod;

end architecture;