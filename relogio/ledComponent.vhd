library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ledComponent is
  generic   (
	 larguraDados : natural := 8
  );
  port   (
	  CLK: in std_logic;
	  wr: in std_logic;
	  Data_OUT: in std_logic_vector(larguraDados - 1 downto 0);
	  dec_bloco: in std_logic;
	  habilita_led: in std_logic;
	  dec_ende: in std_logic_vector(2 downto 0);
	  saida_led: out std_logic_vector(9 downto 0)
  );
end entity;


architecture arch_name of ledComponent is
	signal saida_led9: std_logic;
	signal saida_led8: std_logic;
	signal saida_led0to7: std_logic_vector(larguraDados - 1 downto 0);

	signal hab9 : std_logic;
	signal hab8 : std_logic;
	signal hab0to7 : std_logic;

begin

hab9    <= (habilita_led and wr and dec_bloco and dec_ende(2));
hab8    <= (habilita_led and wr and dec_bloco and dec_ende(1));
hab0to7 <= (habilita_led and wr and dec_bloco and dec_ende(0));

LED9: entity work.flipFlopGenerico
   	  port map (CLK => CLK, DIN => Data_OUT(0), ENABLE => hab9,  RST => '0', DOUT => saida_led9);

LED8: entity work.flipFlopGenerico
   	  port map (CLK => CLK, DIN => Data_OUT(0), ENABLE => hab8,  RST => '0', DOUT => saida_led8);

LED0to7: entity work.registradorGenerico generic map (larguraDados => larguraDados)
   	  port map (CLK => CLK, DIN => Data_OUT, ENABLE => hab0to7,  RST => '0', DOUT => saida_led0to7);

saida_led(9)          <= saida_led9;
saida_led(8)          <= saida_led8;
saida_led(7 downto 0) <= saida_led0to7;

end architecture;