library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MIPS is
  generic ( 
		  larguraDados        : natural := 32;
		  larguraEnderecos    : natural := 32;
		  larguraEndBancoRegs : natural := 5;
          simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50     : in std_logic;
    FPGA_RESET_N     : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR         : out std_logic_vector(9 downto 0);
    T0: out std_logic_vector(31 downto 0);
    rsouta: out std_logic_vector(31 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;

architecture arquitetura of MIPS is
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
    signal saidaMuxZeroBEQ        : std_logic;
    signal saidaMux_rtIme         : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMux_ULAmem        : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMux_rtrd          : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal saidaMux_jump          : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaMux_jr            : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal saidaRAM               : std_logic_vector(larguraDados - 1 downto 0);
    signal saidaDecoderInstrucoes : std_logic_vector(13 downto 0);
    signal operacaoULA            : std_logic_vector(3 downto 0);
    signal zeroFlag               : std_logic;

    signal Rs                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rt                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Rd                 : std_logic_vector(larguraEndBancoRegs - 1 downto 0);
    signal Imediato           : std_logic_vector(15 downto 0);
    signal OpCode             : std_logic_vector(5 downto 0);

    -- Unidade Controle FD
    signal habWR_RAM          : std_logic;
    signal habRD_RAM          : std_logic;
    signal BEQ                : std_logic;
    signal BNE                : std_logic;
    signal seletor_MUX_ULAMem : std_logic_vector(1 downto 0);
    signal tipoR              : std_logic;
    signal seletor_MUX_RtImed : std_logic;
    signal habWR_REG3         : std_logic;
    signal ORI_ANDI           : std_logic;
    signal seletor_MUX_Rt_Rd  : std_logic_vector(1 downto 0);
    signal seletor_MUX_JMP    : std_logic;
    signal seletor_MUX_JR     : std_logic;
    signal seletor_MUX_BEQ    : std_logic;
    
    signal LUI_instruction    : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ImediatoShift      : std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ShiftJump          : std_logic_vector(larguraEnderecos - 1 downto 0);
    
    -- HEX Leds
    signal seletor_MUX_HEX    : std_logic;
    signal saidaMux_hex       : std_logic_vector(larguraEnderecos - 1 downto 0);

begin

Rs                 <= ROM_out (25 downto 21);
Rt                 <= ROM_out (20 downto 16);
Rd                 <= ROM_out (15 downto 11);
Imediato           <= ROM_out (15 downto  0);
OpCode             <= ROM_out (31 downto 26);

habWR_RAM          <= saidaDecoderInstrucoes(0);
habRD_RAM          <= saidaDecoderInstrucoes(1);
BNE                <= saidaDecoderInstrucoes(2);
BEQ                <= saidaDecoderInstrucoes(3);
seletor_MUX_ULAMem <= saidaDecoderInstrucoes(5 downto 4);
tipoR              <= saidaDecoderInstrucoes(6);
seletor_MUX_RtImed <= saidaDecoderInstrucoes(7);
habWR_REG3         <= saidaDecoderInstrucoes(8);
ORI_ANDI           <= saidaDecoderInstrucoes(9);
seletor_MUX_Rt_Rd  <= saidaDecoderInstrucoes(11 downto 10);
seletor_MUX_JMP    <= saidaDecoderInstrucoes(12);
seletor_MUX_JR     <= saidaDecoderInstrucoes(13);

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


PC: entity work.registradorGenerico generic map(larguraDados => larguraDados)
    port map (
    CLK    => CLK,
    ENABLE => '1',
    RST    => '0',
    DIN    => saidaMux_jr,
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

seletor_MUX_BEQ <= saidaMuxZeroBEQ and (BNE or BEQ);
MUX_BEQ: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => PC_in,
    entradaB_MUX => PC_in_imediato,
    seletor_MUX  => seletor_MUX_BEQ,
    saida_MUX    => saidaMuxBEQ
    );
	 
-- MUX_ZERO_BEQ
saidaMuxZeroBEQ <= zeroFlag when BEQ = '1' else not zeroFlag;
    
LUI_instruction (31 downto 16) <= Imediato;
LUI_instruction (15 downto 0)  <= "0000000000000000";
MUX_ULA: entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => ULA_out,
    entradaB_MUX => saidaRAM,
    entradaC_MUX => PC_in,
    entradaD_MUX => LUI_instruction,
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

MUX_RT_RD: entity work.muxGenerico4x1 generic map (larguraDados => larguraEndBancoRegs)
    port map(
    entradaA_MUX => Rt,
    entradaB_MUX => Rd,
    entradaC_MUX => "11111",
    entradaD_MUX => "00000",
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

MUX_JR: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => saidaMux_jump,
    entradaB_MUX => rs_out,
    seletor_MUX  => seletor_MUX_JR,
    saida_MUX    => saidaMux_jr
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

ULA: entity work.ULAMIPS generic map(larguraDados => larguraDados)
    port map (
    entradaA => rs_out,
    entradaB => saidaMux_rtIme,
    saida    => ULA_out,
    zeroFlag => zeroFlag,
    decoder  => operacaoULA    
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
    opCode => OpCode,
    funct => Imediato (5 downto 0),
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
    estendeSinal_OUT => EstendeImediato,
    seletor          => ORI_ANDI
    );


seletor_MUX_HEX <= SW(0);
MUX_HEX_LEDS: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
    port map(
    entradaA_MUX => PC_out,
    entradaB_MUX => ULA_out,
    seletor_MUX  => seletor_MUX_HEX,
    saida_MUX    => saidaMux_hex
    );
COMP_HEX0: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(3 downto 0),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX0
    );
COMP_HEX1: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(7 downto 4),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX1
    );
COMP_HEX2: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(11 downto 8),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX2
    );
COMP_HEX3: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(15 downto 12),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX3
    );
COMP_HEX4: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(19 downto 16),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX4
    );
COMP_HEX5: entity work.conversorHex7Seg 
    port map(
    dadoHex   => saidaMux_hex(23 downto 20),
    apaga     => '0',
    negativo  => '0',
    overFlow  => '0',
    saida7seg => HEX5
    );

LEDR (3 downto 0) <= saidaMux_hex(27 downto 24);
LEDR (7 downto 4) <= saidaMux_hex(31 downto 28);
LEDR (9 downto 8) <= "00";
T0 <= saidaMux_rtIme;
rsouta <= ULA_out;

end architecture;