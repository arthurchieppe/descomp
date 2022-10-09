library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  generic ( 
		  larguraDados : natural := 8;
        larguraEnderecos : natural := 12;
  );
  port   (
	 Instruction_IN: in std_logic_vector(larguraEnderecos downto 0);
	 Data_IN: in std_logic_vector(larguraDados downto 0);
	
	 Data_OUT: out std_logic_vector(larguraDados downto 0);
	 Data_Address: out std_logic_vector(larguraDados downto 0);
	 Control: out std_logic_vector(4 downto 0);
	 ROM_Adrress: out std_logic_vector(larguraDados downto 0);
);
end entity;


architecture arquitetura of CPU is
	signal saida_ROM: std_logic_vector(larguraEnderecos downto 0);
	signal saida_RAM: std_logic_vector(larguraDados - 1 downto 0);
	signal saida_decodificador: std_logic_vector(larguraDados - 1 downto 0);
begin

ROM : entity work.memoriaROM
			port map (endereco => ROM_Adrress, dado => saida_ROM);

RAM : entity work.memoriaRAM
			port map (addr => Data_Address(5 downto 0), we => control(0), re => control(1), habilita => saida_decodificador(0), dado_in => data_OUT, dado_out => saida_RAM;

        addr     : in std_logic_vector(addrWidth-1 downto 0);
        we, re   : in std_logic;
        habilita : in std_logic;
        clk      : in std_logic;
        dado_in  : in std_logic_vector(dataWidth-1 downto 0);
        dado_out : out std_logic_vector(dataWidth-1 downto 0)
		  
Decoder : entity work.decoder3x8
			port map (entrada => Data_Address(8 downto 6), saida => saida_decodificador)
		  
end architecture;