library ieee;
use ieee.std_logic_1164.all;

entity Aula7e8 is
  generic ( 
		  larguraDados : natural := 8;
		  larguraEnderecos : natural := 9;
        largurainstrucao : natural := 13
  );
  port   (
    CLOCK_50,FPGA_RESET : in std_logic
  );
end entity;


architecture arquitetura of Aula7e8 is
	signal CLK, hab_rd, hab_wr: std_logic;
	signal saida_ROM: std_logic_vector (largurainstrucao-1 downto 0);
	signal saida_RAM: std_logic_vector (larguraDados-1 downto 0);
	signal data_out: std_logic_vector (larguraDados-1 downto 0);
	signal data_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal rom_add_out: std_logic_vector (larguraEnderecos-1 downto 0);
	signal saida_decoder: std_logic_vector (larguraDados-1 downto 0);

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
			habilita => saida_decoder(0), 
			re => hab_rd, 
			we => hab_wr, 
			dado_out => saida_RAM
			);

DEC: entity work.decoder3x8
			port map (
			entrada => data_add_out(8 downto 6),
			saida => saida_decoder
			);

end architecture;