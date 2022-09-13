library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic;
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Palavra_Controle: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is
	
	signal CLK : std_logic;
	signal saida_ULA1 : std_logic_vector (larguraDados-1 downto 0);
	signal saida_REGA : std_logic_vector (larguraDados-1 downto 0);
	
	signal saida_ROM: std_logic_vector(12 downto 0);
	signal saida_PC: std_logic_vector(larguraDados downto 0);

	signal saida_RAM: std_logic_vector(larguraDados-1 downto 0);
	
	signal saida_incrementaPC: std_logic_vector(larguraDados downto 0);
	
	signal saida_DEC_instrucao: std_logic_vector (6 downto 0);
	signal saida_MUX: std_logic_vector (larguraDados - 1 downto 0);
	
	signal saida_MUXProxPC: std_logic_vector (larguraDados downto 0);
	
	signal saida_ULA: std_logic_vector (larguraDados - 1 downto 0);
	
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY), saida => CLK);
end generate;

REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
			port map (CLK => CLK, DIN => saida_ULA, ENABLE => saida_DEC_instrucao(4),  RST => '0', DOUT => saida_REGA);

ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => larguraEnderecos)
          port map (Endereco => saida_PC, Dado => saida_ROM);

RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => saida_ROM(7 downto 0), clk => CLK, dado_in => saida_REGA, habilita => saida_ROM(8), re => saida_DEC_instrucao(1), we => saida_DEC_instrucao(0), dado_out => saida_RAM);
	 
incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
						port map( entrada => saida_PC, saida => saida_incrementaPC);
		  
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
				port map( entradaA_MUX => saida_RAM, entradaB_MUX =>  saida_ROM(7 downto 0), seletor_MUX => saida_DEC_instrucao(5), saida_MUX => saida_MUX);
			 
MUXProxPC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecos)
					port map( entradaA_MUX => saida_incrementaPC, entradaB_MUX =>  saida_ROM(8 downto 0), seletor_MUX => saida_DEC_instrucao(6), saida_MUX => saida_MUXProxPC);
				
DEC_instrucao :  entity work.decoderGeneric
        port map( entrada => saida_ROM(12 downto 9), saida => saida_DEC_instrucao);	
		
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => saida_REGA, entradaB => saida_MUX, seletor => saida_DEC_instrucao(3 downto 2), saida => saida_ULA);

PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (CLK => CLK, DIN => saida_MUXProxPC, ENABLE => '1',  RST => '0', DOUT => saida_PC);	 

PC_OUT <= saida_PC;
Palavra_Controle <= saida_Dec_instrucao;

end architecture;