library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  generic ( 
		  larguraDados : natural := 8;
		  larguraEnderecos : natural := 9;
        larguraInstrucao : natural := 15;
		  larguraEndBancoRegs : natural := 2;
		  simulacao : boolean := TRUE
  );
  port   (
    CLOCK_50:in std_logic;
	 KEY: in  std_logic_vector(3 downto 0);
	 FPGA_RESET_N : in std_logic;
	 LEDR : out std_logic_vector(larguraEnderecos downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
	 SW: in std_logic_vector(9 downto 0)
--	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0) 
  );
end entity;


architecture arquitetura of relogio is
	signal saidaBaseTempo: std_logic;
	signal CLK, hab_rd, hab_wr: std_logic;
	signal saida_ROM: std_logic_vector (larguraInstrucao-1 downto 0);
	signal Data_IN: std_logic_vector (larguraDados-1 downto 0);
	signal data_out: std_logic_vector (larguraDados-1 downto 0);
	signal data_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal rom_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal saida_decoder_blocos: std_logic_vector (larguraDados-1 downto 0);
	signal saida_decoder_enderecos: std_logic_vector (larguraDados-1 downto 0);
	signal saida_led: std_logic_vector (9 downto 0);
	signal saidaSW8: std_logic_vector (larguraDados-1 downto 0);
begin

gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU: entity work.CPU generic map(larguraDados => larguraDados, 
			larguraEnderecos => larguraEnderecos, larguraInstrucao => larguraInstrucao)
		  
		  port map (
		  CLOCK_50 => CLK,
          Instruction_IN => saida_ROM,
		  Data_IN => Data_IN,
 		  Data_OUT => data_out,
		  Rd => hab_rd, 
		  Wr => hab_wr,
		  Data_Address => data_add_out, 
		  ROM_Adrress => rom_add_out
		  );

ROM: entity work.memoriaROM generic map (dataWidth => larguraInstrucao, addrWidth =>larguraEnderecos)
		  port map (Endereco => rom_add_out, Dado => saida_ROM);

RAM: entity work.memoriaRAM
         port map (
			addr => data_add_out(5 downto 0), 
			clk => CLK, 
			dado_in => data_out, 
			habilita => saida_decoder_blocos(0), 
			re => hab_rd, 
			we => hab_wr, 
			dado_out => Data_IN
			);

DEC_Blocos: entity work.decoder3x8
			port map (
			entrada => data_add_out(8 downto 6),
			saida => saida_decoder_blocos
			);

DEC_Enderecos: entity work.decoder3x8
			port map (
			entrada => data_add_out(2 downto 0),
			saida => saida_decoder_enderecos
			);
			
logica_LED: entity work.ledComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out,
		   dec_bloco => saida_decoder_blocos(4),
			habilita_led => not data_add_out(5),
		   dec_ende => saida_decoder_enderecos(2 downto 0),
	 	   saida_led => saida_led
			);

comp_HEX0: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(0),
	 	   saida_7seg => HEX0
			);
			
comp_HEX1: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(1),
	 	   saida_7seg => HEX1
			);

comp_HEX2: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(2),
	 	   saida_7seg => HEX2
			);
			
comp_HEX3: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(3),
	 	   saida_7seg => HEX3
			);
			
			
comp_HEX4: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(4),
	 	   saida_7seg => HEX4
			);
			
comp_HEX5: entity work.hexComponent
			port map(
		   CLK => CLK,
		   wr => hab_wr,
		   Data_OUT => data_out(3 downto 0),
		   dec_bloco => saida_decoder_blocos(4),
			habilita_hex => data_add_out(5),
		   dec_ende => saida_decoder_enderecos(5),
	 	   saida_7seg => HEX5
			);
			
switch8entradas: entity work.buffer_3_state_8portas
			port map (
			entrada => SW(larguraDados-1 downto 0),
			saida => Data_IN,
			habilita => (not data_add_out(5)) and hab_rd and saida_decoder_enderecos(0) and saida_decoder_blocos(5)
			);
			
switch8: entity work.buffer_3_state_1portas
			generic map (larguraDados => larguraDados)
			port map (
			entrada => SW(8),
			saida => saidaSW8,
			habilita => (not data_add_out(5)) and hab_rd and saida_decoder_enderecos(1) and saida_decoder_blocos(5)
			);
			
switch9: entity work.buffer_3_state_1portas
			generic map (larguraDados => larguraDados)
			port map (
			entrada => SW(9),
			saida => Data_IN,
			habilita => (not data_add_out(5)) and hab_rd and saida_decoder_enderecos(2) and saida_decoder_blocos(5)
			);
			
logicaKeys: entity work.logicaKeys
			generic map (larguraDados => larguraDados)
			port map(
			CLK => CLK, 
			key0 => KEY(0),
			key1 => KEY(1),
			key2 => KEY(2),
			key3 => KEY(3),
			FPGA_reset => FPGA_RESET_N,
			hab_rd => hab_rd,
			hab_wr =>hab_wr,
			address => data_add_out,  
			decoder_enderecos => saida_decoder_enderecos(larguraDados-1 downto 0),
			decoder_bloco => saida_decoder_blocos(5),
			decoder_bloco_reset => saida_decoder_blocos(7),
			key2Out => Data_IN,
			key3Out => Data_IN,
			keyFPGAResetOut => Data_IN,
			key0Out => Data_IN,
			key1Out => Data_IN,

			data_add_out5 => data_add_out(5)
			);


interfaceBaseTempo1Seg : entity work.divisorGenerico_e_Interface generic map (divisorTopLevel => 25000000, larguraDados => larguraDados)
              port map (clk => CLK,
              habilitaLeitura => data_add_out(5) and hab_rd and saida_decoder_enderecos(5) and saida_decoder_blocos(5) and (not saidaSW8(0)),
              limpaLeitura => hab_wr and data_add_out(0) and data_add_out(1) and data_add_out(2) and data_add_out(3) and data_add_out(4) and data_add_out(5) and data_add_out(6) and data_add_out(7) and data_add_out(8), 
              leituraUmSegundo => Data_IN
				  );

interfaceBaseTempoAcel : entity work.divisorGenerico_e_Interface generic map (divisorTopLevel => 5000, larguraDados => larguraDados)
              port map (clk => CLK,
              habilitaLeitura => data_add_out(5) and hab_rd and saida_decoder_enderecos(5) and saida_decoder_blocos(5) and saidaSW8(0),
              limpaLeitura => hab_wr and data_add_out(0) and data_add_out(1) and data_add_out(2) and data_add_out(3) and data_add_out(4) and data_add_out(5) and data_add_out(6) and data_add_out(7) and data_add_out(8),
              leituraUmSegundo => Data_IN
				  );
			

LEDR <= saida_led;
--PC_OUT <= rom_add_out;

end architecture;