library ieee;
use ieee.std_logic_1164.all;

entity Aula7e8 is
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
  );
  port   (
    CLOCK_50,FPGA_RESET : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
		
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
    LEDR: out std_logic_vector(8 downto 0);
  );
end entity;


architecture arquitetura of Aula7e8 is
	signal CLK : std_logic;
begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY), saida => CLK);


end architecture;