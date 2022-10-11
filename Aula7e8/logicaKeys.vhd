library ieee;
use ieee.std_logic_1164.all;

entity logicaKeys is
  port (
		CLK : in std_logic;
		key0, key1, key2, key3, FPGA_reset : in std_logic;
		hab_rd, hab_rst511 : in std_logic;
		decoder_enderecos : in std_logic_vector (4 downto 0);
		decoder_bloco : in std_logic;
--		saida : out std_logic_vector (7 downto 0);
		key1Out, key2Out, key3Out, keyFPGAResetOut: out std_logic;
		key0Out: out std_logic_vector(7 downto 0);
		data_add_out5 : in std_logic
  );
end entity;

architecture comportamento of logicaKeys is
  
  signal saidaKey0: std_logic;
  signal saidaKey1: std_logic;
  signal saidaKey2: std_logic;
  signal saidaKey3: std_logic;
  signal saidaFPGAReset: std_logic;

  signal saida_deb: std_logic;
  signal saida_ff: std_logic;
  
 begin 
 
 BUFF0_0 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => saida_ff,
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(0)
        );

    BUFF0_1 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(1)
        );

    BUFF0_2 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(2)
        );

    BUFF0_3 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(3)
        );

    BUFF0_4 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(4)
        );

    BUFF0_5 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(5)
        );

    BUFF0_6 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(6)
        );

    BUFF0_7 : ENTITY work.buffer_3_state_1portas
        PORT MAP(
            entrada => '0',
            habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco,
            saida => key0Out(7)
        );
 
 KEY_1: entity work.buffer_3_state_1portas
			port map (
			entrada => key1,
			saida => key1Out,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(1) and decoder_bloco
			);

KEY_2: entity work.buffer_3_state_1portas
			port map (
			entrada => key2,
			saida => key2Out,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(2) and decoder_bloco
			);
			
KEY_3: entity work.buffer_3_state_1portas
			port map (
			entrada => key3,
			saida => key3Out,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(3) and decoder_bloco
			);
			
			
FPGARESET: entity work.buffer_3_state_1portas
			port map (
			entrada => FPGA_reset,
			saida => keyFPGAResetOut,
			habilita => data_add_out5 and hab_rd and decoder_enderecos(4) and decoder_bloco
			);

--KEY_0: entity work.buffer_3_state_1portas
--			port map (
--			entrada => saida_ff,
--			saida => saidaKey0,
--			habilita => data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco
--			);

DEB: entity work.edgeDetector(bordaSubida)
			port map (
			clk => CLK,
			entrada => key0,
			saida => saida_deb
			);
			
FF: entity work.flipFlopGenerico
			port map(CLK => saida_deb, DIN => '1', ENABLE => '1',  RST => hab_rst511, DOUT => saida_ff);


--saida(0) <= saidaKey1;
--saida(0) <= saidaKey2;
--saida(0) <= saidaKey3;
--saida(0) <= saidaFPGAReset;
--saida(7 downto 1) <= "ZZZZZZZ" when ((data_add_out5 and hab_rd and decoder_enderecos(0) and decoder_bloco) = '0') else "0000000";

end architecture;
