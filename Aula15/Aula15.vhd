library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Aula15 is
  generic ( 
		  larguraDados        : natural := 32;
		  larguraEnderecos    : natural := 32;
		  larguraEndBancoRegs : natural := 5
  );
  port   (
    CLOCK_50     : in std_logic;
    RS_END_TOP   : out std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    RT_END_TOP   : out std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    RS_OUT_TOP   : out std_logic_vector(larguraDados - 1 downto 0);
    RT_OUT_TOP   : out std_logic_vector(larguraDados - 1 downto 0);
    ULA_OUT_TOP  : out std_logic_vector(larguraDados - 1 downto 0);
    LEDR         : out std_logic_vector(9 downto 0);
    OPCODE_TOP   : out std_logic_vector(5 downto 0);
    ENTRADA_RAM  : out std_logic_vector(larguraDados - 1 downto 0);
    SAIDA_RAM    : out std_logic_vector(larguraDados - 1 downto 0);
    IMEDIATO_TOP : out std_logic_vector(15 downto 0)
  );
end entity;

architecture arquitetura of Aula15 is
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
    signal saidaMux_rtIme         : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMux_ULAmem        : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMux_rtrd          : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal saidaMux_jump          : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaRAM               : std_logic_vector(larguraDados - 1 downto 0);
    signal saidaDecoderInstrucoes : std_logic_vector(8 downto 0);
    signal operacaoULA            : std_logic_vector(3 downto 0);

    signal Rs                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rt                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rd                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Imediato           : std_logic_vector(15 downto 0);
    signal OpCode             : std_logic_vector(5 downto 0);

    -- Unidade Controle FD
    signal habWR_RAM          : std_logic;
    signal habRD_RAM          : std_logic;
    signal BEQ                : std_logic;
    signal seletor_MUX_ULAMem : std_logic;
    signal tipoR              : std_logic;
    signal seletor_MUX_RtImed : std_logic;
    signal habWR_REG3         : std_logic;
    signal seletor_MUX_Rt_Rd  : std_logic;
    signal seletor_MUX_JMP    : std_logic;
    
    signal seletor_MUX_BEQ    : std_logic;
    signal ImediatoShift      : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ShiftJump          : std_logic_vector(larguraEnderecos - 1 downto 0);

begin

Rs                 <= ROM_out (25 downto 21);
Rt                 <= ROM_out (20 downto 16);
Rd                 <= ROM_out (15 downto 11);
Imediato           <= ROM_out (15 downto  0);
OpCode             <= ROM_out (31 downto 26);

habWR_RAM          <= saidaDecoderInstrucoes(0);
habRD_RAM          <= saidaDecoderInstrucoes(1);
BEQ                <= saidaDecoderInstrucoes(2);
seletor_MUX_ULAMem <= saidaDecoderInstrucoes(3);
tipoR              <= saidaDecoderInstrucoes(4);
seletor_MUX_RtImed <= saidaDecoderInstrucoes(5);
habWR_REG3         <= saidaDecoderInstrucoes(6);
seletor_MUX_Rt_Rd  <= saidaDecoderInstrucoes(7);
seletor_MUX_JMP    <= saidaDecoderInstrucoes(8);


CLK <= CLOCK_50;

PC: entity work.registradorGenerico generic map(larguraDados => larguraDados)
    port map (
    CLK    => CLK,
    ENABLE => '1',
    RST    => '0',
    DIN    => saidaMux_jump,
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
    
MUX_ULA: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => ULA_out,
    entradaB_MUX => saidaRAM,
    seletor_MUX  => seletor_MUX_ULAMem,
    saida_MUX    => saidaMux_ULAmem
    );
    
MUX_RT_IME: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => rt_out,
    entradaB_MUX => EstendeImediato,
    seletor_MUX  => seletor_MUX_RtImed,
    saida_MUX    => saidaMux_rtIme
    );

MUX_RT_RD: entity work.muxGenerico2x1 generic map (larguraDados => larguraEndBancoRegs)
    port map(
    entradaA_MUX => Rt,
    entradaB_MUX => Rd,
    seletor_MUX  => seletor_MUX_Rt_Rd,
    saida_MUX    => saidaMux_rtrd
    );

ShiftJump <= PC_in (31 downto 28) &  ROM_out (25 downto 0) & "00";
MUX_JMP: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => saidaMuxBEQ,
    entradaB_MUX => ShiftJump,
    seletor_MUX  => seletor_MUX_JMP,
    saida_MUX    => saidaMux_jump
    );

REGS: entity work.bancReg generic map(larguraDados => larguraDados, larguraEndBancoRegs => larguraEndBancoRegs)
    port map (
    clk          => CLK,
    enderecoA    => Rs,     
    enderecoB    => Rt,
    enderecoC    => saidaMux_rtrd,  
    dadoEscritaC => saidaMux_ULAmem,  
    escreveC     => habWR_REG3, 
    saidaA       => rs_out,  
    saidaB       => rt_out
    );
            
ROM: entity work.ROMMIPS generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)   
    port map (
    Endereco => PC_out, 
    Dado     => ROM_out
    );

-- ULA: entity work.ULASomaSub generic map(larguraDados => larguraDados)
--     port map (
--     entradaA => rs_out,
--     entradaB => saidaMux_rtIme,
--     saida    => ULA_out,
--     seletor  => operacaoULA    
--     );

-- TESTE ENQUANTO NAO TEMOS ULA PRONTA
ULA_out <= "00000000000000000000000000000000";

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

decoderULA :  entity work.decoderGenericULA
    port map(
    opCode   => opCode,
    funct    => Imediato (5 downto 0), 
    tipoR    => tipoR,
    ULActrl  => operacaoULA
    );

EstendeSinal : entity work.estendeSinalGenerico generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraEnderecos)
    port map (
    estendeSinal_IN  => Imediato, 
    estendeSinal_OUT =>  EstendeImediato
    );

RS_END_TOP  <= Rs;
RT_END_TOP  <= Rt;    
RS_OUT_TOP  <= rs_out;
RT_OUT_TOP  <= rt_out;
LEDR        <= PC_out(9 downto 0);
ULA_OUT_TOP <= ULA_out(31 downto 0);
ENTRADA_RAM <= rt_out;
SAIDA_RAM   <= saidaRAM;
OPCODE_TOP  <= opcode;
IMEDIATO_TOP <= Imediato;

end architecture;