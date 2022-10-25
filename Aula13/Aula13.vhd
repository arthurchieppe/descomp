library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  generic ( 
		  larguraDados : natural := 32;
		  larguraEnderecos : natural := 32;
		  larguraEndBancoRegs : natural := 5;
		  simulacao : boolean := TRUE
  );
  port   (
    CLOCK_50: in std_logic;
	 OP_ULA: in std_logic;
	 WR_REG3: in std_logic;
	 UC: out  std_logic_vector(5 downto 0);
	 ULA_OUT_req: out std_logic_vector(larguraDados - 1 downto 0);
	 PC_OUT_req: out std_logic_vector(larguraEnderecos - 1 downto 0)
  );
end entity;


architecture arquitetura of Aula13 is
    signal CLK: std_logic;
    signal PC_in: std_logic_vector(larguraEnderecos - 1 downto 0);
    signal PC_out: std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ROM_out: std_logic_vector(larguraEnderecos - 1 downto 0);
    signal ULA_out: std_logic_vector(larguraEnderecos - 1 downto 0);
    signal rs_out: std_logic_vector(larguraEnderecos - 1 downto 0);
    signal rt_out: std_logic_vector(larguraEnderecos - 1 downto 0);

begin
    

CLK <= CLOCK_50;

PC: entity work.registradorGenerico generic map(larguraDados => larguraDados)
		  
    port map (
    CLK => CLK,
    ENABLE => '1',
    RST => '0',
    DIN => PC_in,
    DOUT => PC_out
    );

SOMA_PC: entity work.somaConstante generic map(larguraDados => larguraDados, constante => 4)
    port map (
    entrada => PC_out,
    saida => PC_in
    );

REGS: entity work.bancReg generic map(larguraDados => larguraDados, larguraEndBancoRegs => larguraEndBancoRegs)
		  
    port map (
    clk => CLK,
    enderecoA => ROM_out (25 downto 21),     
    enderecoB => ROM_out (20 downto 16),
    enderecoC => ROM_out (15 downto 11),  
    dadoEscritaC => ULA_out,  
    escreveC => WR_REG3, 
    saidaA => rs_out,  
    saidaB => rt_out
    );
            
ROM: entity work.ROMMIPS generic map(dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
            
    port map (
    Endereco => PC_out, 
    Dado => ROM_out
    );

ULA: entity work.ULASomaSub generic map(larguraDados => larguraDados)
    port map (
    entradaA => rs_out,
    entradaB => rt_out,
    saida => ULA_out,
    seletor => OP_ULA    
    );

PC_OUT_req <= PC_out;
UC <= ROM_out (31 downto 26);
ULA_OUT_req <= ULA_out;

end architecture;