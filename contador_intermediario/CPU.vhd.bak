library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  generic ( 
		  larguraDados : natural := 8;
		  larguraEnderecos : natural := 9;
        largurainstrucao : natural := 13
  );
  port   (
	 CLOCK_50: in std_logic;
	 Instruction_IN: in std_logic_vector(largurainstrucao - 1 downto 0);
	 Data_IN: in std_logic_vector(larguraDados - 1 downto 0);
	
	 Data_OUT: out std_logic_vector(larguraDados - 1 downto 0);
	 Rd, Wr: out std_logic;
	 Data_Address: out std_logic_vector(larguraEnderecos - 1 downto 0);
	 ROM_Adrress: out std_logic_vector(larguraEnderecos - 1 downto 0)
);
end entity;


architecture arquitetura of CPU is

	signal saida_MUX_EntradaB_ULA : std_logic_vector (larguraDados-1 downto 0);
	signal flag_igual: std_logic;
	signal saida_DEC_instrucao : std_logic_vector (11 downto 0);
	signal saida_desvio: std_logic_vector(1 downto 0);
	signal saida_flag: std_logic;
	signal saida_REGA : std_logic_vector (larguraDados-1 downto 0);
	signal saida_ULA: std_logic_vector (larguraDados - 1 downto 0);	
	signal saida_incrementaPC: std_logic_vector(larguraDados downto 0);
	signal saida_reg_retorno: std_logic_vector(larguraDados downto 0);
	signal saida_MUX_PC: std_logic_vector (larguraDados downto 0);
	signal saida_PC: std_logic_vector(larguraDados downto 0);
	
begin

MUX_EntradaB_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map( entradaA_MUX => Data_IN, entradaB_MUX =>  Instruction_IN(7 downto 0), seletor_MUX => saida_DEC_instrucao(6), saida_MUX => saida_MUX_EntradaB_ULA);

DEC_instrucao :  entity work.decoderGeneric
        port map( entrada => Instruction_IN(12 downto 9), flag => flag_igual, saida => saida_DEC_instrucao, saida_desvio => saida_desvio);	

REG_FLAG: entity work.flipFlopGenerico
   	  port map (CLK => CLOCK_50, DIN => saida_flag, ENABLE => saida_DEC_instrucao(2),  RST => '0', DOUT => flag_igual);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
        port map (entradaA => saida_REGA, entradaB => saida_MUX_EntradaB_ULA, seletor => saida_DEC_instrucao(4 downto 3), saida => saida_ULA, flagzero => saida_flag);
		  
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
			port map (CLK => CLOCK_50, DIN => saida_ULA, ENABLE => saida_DEC_instrucao(5),  RST => '0', DOUT => saida_REGA);

MUX_PC :  entity work.muxGenericoNx1  generic map (larguraDados => larguraEnderecos)
			port map(entrada0_MUX => saida_incrementaPC,
						entrada1_MUX => Instruction_IN(8 downto 0),
						entrada2_MUX => saida_reg_retorno,
						entrada3_MUX => "000000000",
						seletor_MUX => saida_desvio, 
						saida_MUX => saida_MUX_PC);
						
REG_RETORNO: entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
			port map (CLK => CLOCK_50, DIN => saida_incrementaPC, ENABLE => saida_DEC_instrucao(11),  RST => '0', DOUT => saida_reg_retorno);

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
			port map( entrada => saida_PC, saida => saida_incrementaPC);
			
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (CLK => CLOCK_50, DIN => saida_MUX_PC, ENABLE => '1',  RST => '0', DOUT => saida_PC);
		
		
			
Data_OUT <= saida_REGA;
Rd <= saida_DEC_instrucao(1); 
Wr <= saida_DEC_instrucao(0);
Data_Address <= Instruction_IN(8 downto 0);
ROM_Adrress <= saida_PC;
 
end architecture;