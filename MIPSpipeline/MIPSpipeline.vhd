library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MIPSpipeline is
  generic ( 
		  larguraDadosEnde    : natural := 32;
		  larguraEndBancoRegs : natural := 5;
          simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50     : in std_logic;
    FPGA_RESET_N     : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR         : out std_logic_vector(9 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;

architecture arquitetura of MIPSpipeline is
    
    -- ### SINAIS GERADOS EM IF ###
    signal PC_oumux_PC_out : std_logic_vector(larguraDadosEnde - 1 downto 0);
    signal PC_out          : std_logic_vector(larguraDadosEnde - 1 downto 0);
    signal PCsoma4_out     : std_logic_vector(larguraDadosEnde - 1 downto 0);
    signal ROM_out         : std_logic_vector(larguraDadosEnde - 1 downto 0);
    
    -- ### SINAIS GERADOS EM ID ###
    signal rs_out                 : std_logic_vector(larguraDadosEnde - 1 downto 0);
    signal rt_out                 : std_logic_vector(larguraDadosEnde - 1 downto 0);
    
    -- saida Rom
    signal Rs                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rt                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rd                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Imediato           : std_logic_vector(15 downto 0);
    signal OpCode             : std_logic_vector(5 downto 0);

begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

Rs                 <= -- TODO ROM_out (25 downto 21);
Rt                 <= -- TODO ROM_out (20 downto 16);
Rd                 <= -- TODO ROM_out (15 downto 11);
Imediato           <= -- TODO ROM_out (15 downto  0);
OpCode             <= -- TODO ROM_out (31 downto 26);



-- ### IF ###
MUX_PC: entity work.muxGenerico2x1 generic map (larguraDados => larguraDadosEnde)
port map(
    entradaA_MUX => PCsoma4_out,
    entradaB_MUX => --  TODO,
    seletor_MUX  => -- TODO,
    saida_MUX    => mux_PC_out
    );
    
    PC: entity work.registradorGenerico generic map(larguraDados => larguraDadosEnde)
    port map (
        CLK    => CLK,
        ENABLE => '1',
        RST    => '0',
        DIN    => PCsoma4_out,
        DOUT   => PC_out
        );
        
SOMA_PC: entity work.somaConstante generic map(larguraDados => larguraDadosEnde, constante => 4)
port map (
    entrada => PC_out,
    saida   => PCsoma4_out
    );
    
    ROM: entity work.ROMMIPS generic map(dataWidth => larguraDadosEnde, addrWidth => larguraDadosEnde, memoryAddrWidth => 6)   
    port map (
        Endereco => PC_out, 
        Dado     => ROM_out
        );


-- ### ID ###
REGS: entity work.bancReg generic map(larguraDados => larguraDadosEnde, larguraEndBancoRegs => larguraEndBancoRegs)
port map (
    clk          => CLK,
    enderecoA    => Rs,     
    enderecoB    => Rt,
    enderecoC    => -- TODO,  
    dadoEscritaC => -- TODO,  
    escreveC     => -- TODO, 
    saidaA       => rs_out,  
    saidaB       => rt_out
    );
    
    -- ImediatoShift <= EstendeImediato (29 downto 0) & "00"; 
    
-- ### EX ###

end architecture;