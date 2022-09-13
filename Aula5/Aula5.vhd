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
--    SW: in std_logic_vector(larguraEnderecos - 1 downto 0);
   PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal saida_dados_RAM : std_logic_vector (larguraDados-1 downto 0);
--  signal imediato : std_logic_vector (larguraDados-1 downto 0);
  signal saida_MUX : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos - 1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos - 1 downto 0);
--  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
--  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Instrucao : std_logic_vector(12 downto 0);
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_dados_RAM,
                 entradaB_MUX =>  Instrucao(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => saida_MUX);
-- MUX JMP
MUX_JMP :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Instrucao(8 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => saida_MUX);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => saida_MUX, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => larguraEnderecos)
          port map (Endereco => Endereco, Dado => Instrucao);

			 
decoderGeneric :  entity work.decoderGeneric
        port map( entrada => Instrucao(12 downto 9),
                 saida => Sinais_Controle);

-- Instanciando RAM:
memoriaRAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
          port map (addr => Instrucao( 8 downto 0),habilita => Instrucao(8), we => habEscritaMEM, re => habLeituraMEM, dado_in => REG1_ULA_A, dado_out => saida_dados_RAM, clk => CLK);

selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 DOWNTO 2);
habLeituraMEM <= Sinais_Controle(1);
habEscritaMEM <= Sinais_Controle(0);
			 

-- I/O
--imediato <= SW(3 downto 0);
--saida_dados_RAM <= SW(9 downto 6);

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7 downto 0) <= REG1_ULA_A;

PC_OUT <= Endereco;



end architecture;