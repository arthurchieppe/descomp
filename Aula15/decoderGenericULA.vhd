library ieee;
use ieee.std_logic_1164.all;

entity decoderGenericULA is
  port (
    opCode   : in  std_logic_vector(5 downto 0);
    funct    : in  std_logic_vector(5 downto 0);
    tipoR    : in  std_logic;
    ULActrl  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderGenericULA is
  constant LW  : std_logic_vector(5 downto 0)  := "100011";
  constant SW  : std_logic_vector(5 downto 0)  := "101011";
  constant BEQ : std_logic_vector(5 downto 0)  := "000100";

  constant AND_func : std_logic_vector(5 downto 0)  := "100100";
  constant OR_func  : std_logic_vector(5 downto 0)  := "100101";
  constant ADD_func : std_logic_vector(5 downto 0)  := "100000";
  constant SUB_func : std_logic_vector(5 downto 0)  := "100010";
  constant SLT_func : std_logic_vector(5 downto 0)  := "101010";

  signal case_LW  : std_logic;
  signal case_SW  : std_logic;
  signal case_BEQ : std_logic;

  signal case_AND : std_logic;
  signal case_OR  : std_logic;
  signal case_ADD : std_logic;
  signal case_SUB : std_logic;
  signal case_SLT : std_logic;

  begin

-- AND	R	E lógico   '000'
-- OR	  R	OU lógico  '001'
-- LW   I Soma       '010'
-- SW   I Soma       '010'
-- ADD	R	Soma       '010'
-- SUB	R	Subtração  '110'
-- BEQ  I Sub        '110'
-- SLT	R	SLT        '111'

case_LW  <= '1' when opCode = LW else '0';
case_SW  <= '1' when opCode = SW else '0';
case_BEQ <= '1' when opCode = BEQ else '0';

case_AND <= '1' when funct = AND_func else '0';
case_OR  <= '1' when funct = OR_func else '0';
case_ADD <= '1' when funct = ADD_func else '0';
case_SUB <= '1' when funct = SUB_func else '0';
case_SLT <= '1' when funct = SLT_func else '0';

-- case_LW  <= (opCode = LW) and (not tipoR);
-- case_SW  <= (opCode = SW) and (not tipoR);
-- case_SW  <= (opCode = BEQ) and (not tipoR);

-- case_AND <= (funct = AND_func) and tipoR;
-- case_OR  <= (funct = OR_func) and tipoR;
-- case_ADD <= (funct = ADD_func) and tipoR;
-- case_SUB <= (funct = SUB_func) and tipoR;
-- case_SLT <= (funct = SLT_func) and tipoR;

ULActrl <= "0000" when (case_AND and tipoR) else
           "0001" when (case_OR and tipoR) else
           "0010" when (case_LW and not tipoR) or (case_SW and not tipoR) or (case_ADD and tipoR) else
           "0110" when (case_SUB and tipoR) or (case_BEQ and not tipoR) else
           "0111" when (case_SLT and tipoR) else
           "0101";

end architecture;