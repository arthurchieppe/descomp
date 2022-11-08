-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/07/2022 22:21:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula14
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula14_vhd_vec_tst IS
END Aula14_vhd_vec_tst;
ARCHITECTURE Aula14_arch OF Aula14_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL ENTRADA_RAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL IMEDIATO_TOP : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL OPCODE_TOP : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL RS_END_TOP : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_OUT_TOP : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RT_END_TOP : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_OUT_TOP : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SAIDA_RAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_OUT_TOP : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula14
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	ENTRADA_RAM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	IMEDIATO_TOP : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	OPCODE_TOP : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	RS_END_TOP : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_OUT_TOP : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	RT_END_TOP : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_OUT_TOP : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	SAIDA_RAM : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_OUT_TOP : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula14
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	ENTRADA_RAM => ENTRADA_RAM,
	IMEDIATO_TOP => IMEDIATO_TOP,
	LEDR => LEDR,
	OPCODE_TOP => OPCODE_TOP,
	RS_END_TOP => RS_END_TOP,
	RS_OUT_TOP => RS_OUT_TOP,
	RT_END_TOP => RT_END_TOP,
	RT_OUT_TOP => RT_OUT_TOP,
	SAIDA_RAM => SAIDA_RAM,
	ULA_OUT_TOP => ULA_OUT_TOP
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 240000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
END Aula14_arch;
