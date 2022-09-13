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
	 Palavra_Controle: out std_logic_vector(8 downto 0);
	 EntradaB_ULA: out std_logic_vector(7 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0)
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
	signal saida_DEC_instrucao: std_logic_vector (8 downto 0);
	signal saida_MUXDado_ULA: std_logic_vector (larguraDados - 1 downto 0);
	signal saida_MUXProxPC: std_logic_vector (larguraDados downto 0);
	signal saida_ULA: std_logic_vector (larguraDados - 1 downto 0);
	signal flagzero: std_logic;
	signal saida_flip_flop: std_logic;
	signal saida_logica_desvio: std_logic;
	
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
			port map (CLK => CLK, DIN => saida_ULA, ENABLE => saida_DEC_instrucao(5),  RST => '0', DOUT => saida_REGA);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => saida_REGA, entradaB => saida_MUXDado_ULA, seletor => saida_DEC_instrucao(4 downto 3), saida => saida_ULA, flagzero => flagzero);

FlagZero : entity work.flipflopGenerico
				port map (CLK => clk, DIN => flagzero, ENABLE => saida_DEC_instrucao(2), RST => '0', DOUT => saida_flip_flop);

-- LogicaDesvio1:

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
						port map( entrada => saida_PC, saida => saida_incrementaPC);
		
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => larguraEnderecos)
          port map (Endereco => saida_PC, Dado => saida_ROM);

RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => saida_ROM(7 downto 0), clk => CLK, dado_in => saida_REGA, habilita => saida_ROM(8), re => saida_DEC_instrucao(1), we => saida_DEC_instrucao(0), dado_out => saida_RAM);

DEC_instrucao :  entity work.decoderGeneric
        port map( entrada => saida_ROM(12 downto 9), saida => saida_DEC_instrucao);	
		   
MUXProxPC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecos)
					port map( entradaA_MUX => saida_incrementaPC, entradaB_MUX =>  saida_ROM(8 downto 0), seletor_MUX => saida_logica_desvio, saida_MUX => saida_MUXProxPC);

MUXDado_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
						port map( entradaA_MUX => saida_RAM, entradaB_MUX =>  saida_ROM(7 downto 0), seletor_MUX => saida_DEC_instrucao(6), saida_MUX => saida_MUXDado_ULA);
				
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (CLK => CLK, DIN => saida_MUXProxPC, ENABLE => '1',  RST => '0', DOUT => saida_PC);	 

PC_OUT <= saida_PC;
Palavra_Controle <= saida_Dec_instrucao;
EntradaB_ULA <= saida_MUXDado_ULA;
LEDR (7 downto 0) <= Saida_ULA;
LEDR (9 downto 8) <= saida_DEC_instrucao(4 downto 3);


end architecture;