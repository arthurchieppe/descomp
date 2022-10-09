library ieee;
use ieee.std_logic_1164.all;

entity Aula7e8 is
  generic ( 
		  larguraDados : natural := 8;
		  larguraEnderecos : natural := 9;
        largurainstrucao : natural := 13
  );
  port   (
    CLOCK_50,FPGA_RESET : in std_logic;
	 LEDR : out std_logic_vector (larguraEnderecos downto 0)
	 
  );
end entity;


architecture arquitetura of Aula7e8 is
	signal CLK, hab_rd, hab_wr: std_logic;
	signal saida_ROM: std_logic_vector (largurainstrucao-1 downto 0);
	signal saida_RAM: std_logic_vector (larguraDados-1 downto 0);
	signal data_out: std_logic_vector (larguraDados-1 downto 0);
	signal data_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal rom_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal saida_decoder_blocos: std_logic_vector (larguraDados-1 downto 0);
	signal saida_decoder_enderecos: std_logic_vector (larguraDados-1 downto 0);
	signal saida_led: std_logic_vector (9 downto 0);

begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not FPGA_RESET), saida => CLK);

CPU: entity work.CPU 
		  port map (
		  CLOCK_50 => CLK,
		  FPGA_RESET => FPGA_RESET,
        Instruction_IN => saida_ROM,
		  Data_IN => saida_RAM,
 		  Data_OUT => data_out,
		  Rd => hab_rd, 
		  Wr => hab_wr,
		  Data_Address => data_add_out, 
		  ROM_Adrress => rom_add_out
		  );

ROM: entity work.memoriaROM
		  port map (Endereco => rom_add_out, Dado => saida_ROM);

RAM: entity work.memoriaRAM
         port map (
			addr => data_add_out(5 downto 0), 
			clk => CLK, 
			dado_in => data_out, 
			habilita => saida_decoder_blocos(0), 
			re => hab_rd, 
			we => hab_wr, 
			dado_out => saida_RAM
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
		   dec_ende => saida_decoder_enderecos(2 downto 0),
	 	   saida_led => saida_led
			);

LEDR <= saida_led;

end architecture;