library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Aula14 is
  generic ( 
		  larguraDados        : natural := 32;
		  larguraEnderecos    : natural := 32;
		  larguraEndBancoRegs : natural := 5
  );
  port   (
    CLOCK_50 : in std_logic;
    RD_OUT   : out std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    ULA_OUT_TOP  : out std_logic_vector(larguraDados - 1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
    ENTRADA_RAM: out std_logic_vector(larguraDados - 1 downto 0);
    SAIDA_RAM: out std_logic_vector(larguraDados - 1 downto 0);
    SW: in std_logic_vector(9 downto 0);
  );
end entity;

architecture arquitetura of Aula14 is
    signal CLK                    : std_logic;
    signal PC_in                  : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal PC_out                 : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal PC_in_imediato         : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ROM_out                : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ULA_out                : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal rs_out                 : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal rt_out                 : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal EstendeImediato        : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMuxBEQ            : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaRAM               : std_logic_vector(larguraDados - 1 downto 0);
    signal saidaDecoderInstrucoes : std_logic_vector(4 downto 0);

    signal Rs              : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rt              : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rd              : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Imediato        : std_logic_vector(15 downto 0);
    signal OpCode          : std_logic_vector(5 downto 0);
    signal habWR_RAM       : std_logic;
    signal habRD_RAM       : std_logic;
    signal operacaoULA     : std_logic;
    signal habWR_REG3      : std_logic;
    signal BEQ             : std_logic;
    signal seletor_MUX_BEQ : std_logic;
    signal ImediatoShift   : std_logic_vector(larguraEnderecos - 1 downto 0);

begin

Rs          <= ROM_out (25 downto 21);
Rt          <= ROM_out (20 downto 16);
Rd          <= ROM_out (15 downto 11);
Imediato    <= ROM_out (15 downto  0);
OpCode      <= ROM_out (31 downto 26);
habWR_RAM   <= saidaDecoderInstrucoes(0);
habRD_RAM   <= saidaDecoderInstrucoes(1);
BEQ         <= saidaDecoderInstrucoes(2);
operacaoULA <= saidaDecoderInstrucoes(3);
habWR_REG3  <= saidaDecoderInstrucoes(4);


CLK <= CLOCK_50;

PC: entity work.registradorGenerico generic map(larguraDados => larguraDados)
    port map (
    CLK    => CLK,
    ENABLE => '1',
    RST    => '0',
    DIN    => saidaMuxBEQ,
    DOUT   => PC_out
    );

SOMA_PC: entity work.somaConstante generic map(larguraDados => larguraDados, constante => 4)
    port map (
    entrada => PC_out,
    saida   => PC_in
    );

ImediatoShift <= EstendeImediato (29 downto 0) & "00"; 

SOMA_PC_IMEDIATO :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( 
        entradaA => PC_in, 
        entradaB =>  ImediatoShift, 
        saida => PC_in_imediato
        );

seletor_MUX_BEQ <= '1' when (BEQ = '1' and (ULA_out = "00000000000000000000000000000000"))
    else '0';
MUX_BEQ: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => PC_in,
    entradaB_MUX => PC_in_imediato,
    seletor_MUX  => seletor_MUX_BEQ,
    saida_MUX    => saidaMuxBEQ
    );

REGS: entity work.bancReg generic map(larguraDados => larguraDados, larguraEndBancoRegs => larguraEndBancoRegs)
    port map (
    clk          => CLK,
    enderecoA    => Rs,     
    enderecoB    => Rt,
    enderecoC    => Rt,  
    dadoEscritaC => saidaRAM,  
    escreveC     => habWR_REG3, 
    saidaA       => rs_out,  
    saidaB       => rt_out
    );
            
ROM: entity work.ROMMIPS generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)   
    port map (
    Endereco => PC_out, 
    Dado     => ROM_out
    );

ULA: entity work.ULASomaSub generic map(larguraDados => larguraDados)
    port map (
    entradaA => rs_out,
    entradaB => EstendeImediato,
    saida    => ULA_out,
    seletor  => operacaoULA    
    );

RAM: entity work.RAMMIPS generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)   
    port map (
    clk      => CLK,
    Endereco => ULA_out, 
    Dado_IN  => rt_out,
    Dado_out => saidaRAM,
    we       => habWR_RAM,
    re       => habRD_RAM,
    habilita => '1'
    );

decoderInstrucoes :  entity work.decoderGeneric
    port map(
    entrada => OpCode,
    saida   => saidaDecoderInstrucoes
    );

EstendeSinal : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraEnderecos)
    port map (
    estendeSinal_IN  => Imediato, 
    estendeSinal_OUT =>  EstendeImediato
    );

RD_OUT <= Rd;
LEDR <= PC_out(9 downto 0);
ULA_OUT_TOP <= ULA_out(31 downto 0);
ENTRADA_RAM <= rt_out;

end architecture;