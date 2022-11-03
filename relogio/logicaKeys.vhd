library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logicaKeys is
	generic (larguraDados : natural := 8; larguraEnderecos: natural := 9);
  port (
		CLK : in std_logic;
		key0, key1, key2, key3, FPGA_reset : in std_logic;
		hab_rd, hab_wr : in std_logic;
		decoder_enderecos : in std_logic_vector (larguraDados-1 downto 0);
		decoder_bloco : in std_logic;
		decoder_bloco_reset: in std_logic;
--		saida : out std_logic_vector (7 downto 0);
		address: in std_logic_vector(larguraEnderecos-1 downto 0);
		key0Out, key1Out, key2Out, key3Out, keyFPGAResetOut: out std_logic_vector(7 downto 0);
		data_add_out5 : in std_logic
  );
end entity;

architecture comportamento of logicaKeys is
  
 begin 
 
KEY_0: entity work.keyDebounce
			port map (
			clk => CLK,
			key_in => key0,
			hab_key => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
			clear_read => hab_wr and decoder_bloco_reset and decoder_enderecos(7),
			key_out => key0Out
			);

KEY_1: entity work.keyDebounce
			port map (
			clk => CLK,
			key_in => key1,
			hab_key => data_add_out5 and hab_rd and decoder_enderecos(1) and decoder_bloco,
			clear_read => hab_wr and decoder_bloco_reset and decoder_enderecos(6),
			key_out => key1Out
			);

KEY_2: entity work.buffer_3_state_1portas
			generic map (larguraDados => larguraDados)
			port map (
			entrada => key2,
			saida => key2Out,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(2) and decoder_bloco
			);
			
KEY_3: entity work.buffer_3_state_1portas
			generic map (larguraDados => larguraDados)
			port map (
			entrada => key3,
			saida => key3Out,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(3) and decoder_bloco
			);
			
			
FPGARESET: entity work.buffer_3_state_1portas
			generic map (larguraDados => larguraDados)
			port map (
			entrada => FPGA_reset,
			saida => keyFPGAResetOut,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(4) and decoder_bloco
			);


end architecture;
