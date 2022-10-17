library IEEE;
use ieee.std_logic_1164.ALL;

entity keyDebounce is 
	port (
		CLK : in std_logic;
		key_in: in std_logic;
		hab_key: in std_logic;
		clear_read: in std_logic;
		key_out: out std_logic_vector(7 downto 0)
	);
end entity;

architecture comportamento of keyDebounce is 

	signal saida_edge_detector: std_logic;
	signal saida_ff: std_logic;

begin
	KEY: entity work.edgeDetector(bordaSubida)
			port map (
			clk => CLK,
			entrada => key_in,
			saida => saida_edge_detector
			);
			
FF0: entity work.flipFlopGenerico
			port map(CLK => saida_edge_detector, DIN => '1', ENABLE => '1',  RST => clear_read, DOUT => saida_ff);

	buff : entity work.buffer_3_state_8portas
		port map (
			entrada => "0000000" & saida_Ff,
			habilita => hab_key,
			saida => key_out
		);
end architecture;