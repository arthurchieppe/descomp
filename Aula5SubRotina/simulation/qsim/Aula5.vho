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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "09/20/2022 10:22:17"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic;
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(11 DOWNTO 0)
	);
END Aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[11]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic;
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \KEY~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \DEC_instrucao|Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DEC_instrucao|Equal4~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|saida~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \DEC_instrucao|saida[4]~2_combout\ : std_logic;
SIGNAL \DEC_instrucao|saida[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|saida[6]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~4_combout\ : std_logic;
SIGNAL \ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|saida[5]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~5_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~1_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \DEC_instrucao|Equal2~0_combout\ : std_logic;
SIGNAL \REG_FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \REG_FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \REG_FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \REG_FLAG|DOUT~q\ : std_logic;
SIGNAL \DEC_instrucao|saida_desvio~0_combout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \DEC_instrucao|Equal0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_instrucao|saida[0]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \REG_FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \REG_FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \REG_FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_saida_desvio~0_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_saida[6]~4_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \DEC_instrucao|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
Palavra_Controle <= ww_Palavra_Controle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\DEC_instrucao|ALT_INV_saida~5_combout\ <= NOT \DEC_instrucao|saida~5_combout\;
\REG_FLAG|ALT_INV_DOUT~1_combout\ <= NOT \REG_FLAG|DOUT~1_combout\;
\ULA1|ALT_INV_Equal0~0_combout\ <= NOT \ULA1|Equal0~0_combout\;
\REG_FLAG|ALT_INV_DOUT~0_combout\ <= NOT \REG_FLAG|DOUT~0_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \REG_RETORNO|DOUT\(8);
\REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \REG_RETORNO|DOUT\(7);
\REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \REG_RETORNO|DOUT\(6);
\REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \REG_RETORNO|DOUT\(5);
\REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \REG_RETORNO|DOUT\(4);
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \REG_RETORNO|DOUT\(3);
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \REG_RETORNO|DOUT\(2);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \REG_RETORNO|DOUT\(1);
\MUX_PC|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \MUX_PC|saida_MUX[4]~0_combout\;
\REG_FLAG|ALT_INV_DOUT~q\ <= NOT \REG_FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \REG_RETORNO|DOUT\(0);
\DEC_instrucao|ALT_INV_Equal4~0_combout\ <= NOT \DEC_instrucao|Equal4~0_combout\;
\DEC_instrucao|ALT_INV_Equal0~0_combout\ <= NOT \DEC_instrucao|Equal0~0_combout\;
\DEC_instrucao|ALT_INV_Equal1~0_combout\ <= NOT \DEC_instrucao|Equal1~0_combout\;
\DEC_instrucao|ALT_INV_saida_desvio~0_combout\ <= NOT \DEC_instrucao|saida_desvio~0_combout\;
\DEC_instrucao|ALT_INV_saida[6]~4_combout\ <= NOT \DEC_instrucao|saida[6]~4_combout\;
\DEC_instrucao|ALT_INV_saida[4]~2_combout\ <= NOT \DEC_instrucao|saida[4]~2_combout\;
\DEC_instrucao|ALT_INV_saida[3]~1_combout\ <= NOT \DEC_instrucao|saida[3]~1_combout\;
\DEC_instrucao|ALT_INV_Equal2~0_combout\ <= NOT \DEC_instrucao|Equal2~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \PC|DOUT[0]~0_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REGA|DOUT[6]~DUPLICATE_q\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;

-- Location: IOOBUF_X89_Y9_N39
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X89_Y9_N56
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X89_Y35_N45
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X89_Y35_N79
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X89_Y8_N56
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X89_Y8_N39
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X89_Y37_N39
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X89_Y37_N5
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X89_Y9_N22
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X89_Y38_N22
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X89_Y36_N39
\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(1));

-- Location: IOOBUF_X89_Y36_N56
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X89_Y6_N39
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X89_Y36_N22
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X89_Y9_N5
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X89_Y35_N96
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X89_Y36_N5
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|saida_desvio~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X89_Y37_N56
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOOBUF_X89_Y8_N22
\Palavra_Controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(9));

-- Location: IOOBUF_X89_Y8_N5
\Palavra_Controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(10));

-- Location: IOOBUF_X89_Y37_N22
\Palavra_Controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_instrucao|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(11));

-- Location: IOIBUF_X89_Y35_N61
\KEY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: CLKCTRL_G10
\KEY~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY~input_o\,
	outclk => \KEY~inputCLKENA0_outclk\);

-- Location: LABCELL_X80_Y22_N6
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X80_Y22_N9
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X80_Y22_N12
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X80_Y22_N13
\REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(4));

-- Location: LABCELL_X81_Y22_N57
\MUX_PC|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[4]~5_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (\MUX_PC|saida_MUX[4]~0_combout\ & ((!\DEC_instrucao|Equal0~0_combout\) # (\REG_RETORNO|DOUT\(4)))) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( (\REG_RETORNO|DOUT\(4) & 
-- (\MUX_PC|saida_MUX[4]~0_combout\ & \DEC_instrucao|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_RETORNO|ALT_INV_DOUT\(4),
	datac => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datad => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX_PC|saida_MUX[4]~5_combout\);

-- Location: FF_X81_Y22_N59
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y22_N15
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X80_Y22_N16
\REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(5));

-- Location: LABCELL_X81_Y22_N42
\MUX_PC|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[5]~6_combout\ = ( \REG_RETORNO|DOUT\(5) & ( (\MUX_PC|saida_MUX[4]~0_combout\ & ((\incrementaPC|Add0~21_sumout\) # (\DEC_instrucao|Equal0~0_combout\))) ) ) # ( !\REG_RETORNO|DOUT\(5) & ( (!\DEC_instrucao|Equal0~0_combout\ & 
-- (\MUX_PC|saida_MUX[4]~0_combout\ & \incrementaPC|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \REG_RETORNO|ALT_INV_DOUT\(5),
	combout => \MUX_PC|saida_MUX[5]~6_combout\);

-- Location: FF_X81_Y22_N44
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y22_N18
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X80_Y22_N20
\REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(6));

-- Location: LABCELL_X81_Y22_N6
\MUX_PC|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[6]~7_combout\ = ( \REG_RETORNO|DOUT\(6) & ( (\MUX_PC|saida_MUX[4]~0_combout\ & ((\DEC_instrucao|Equal0~0_combout\) # (\incrementaPC|Add0~25_sumout\))) ) ) # ( !\REG_RETORNO|DOUT\(6) & ( (\MUX_PC|saida_MUX[4]~0_combout\ & 
-- (\incrementaPC|Add0~25_sumout\ & !\DEC_instrucao|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	dataf => \REG_RETORNO|ALT_INV_DOUT\(6),
	combout => \MUX_PC|saida_MUX[6]~7_combout\);

-- Location: FF_X81_Y22_N8
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y22_N21
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X80_Y22_N23
\REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(7));

-- Location: LABCELL_X81_Y22_N45
\MUX_PC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[7]~8_combout\ = ( \MUX_PC|saida_MUX[4]~0_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (\incrementaPC|Add0~29_sumout\)) # (\DEC_instrucao|Equal0~0_combout\ & ((\REG_RETORNO|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \REG_RETORNO|ALT_INV_DOUT\(7),
	dataf => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	combout => \MUX_PC|saida_MUX[7]~8_combout\);

-- Location: FF_X81_Y22_N47
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y22_N3
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X81_Y22_N9
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & ((!\PC|DOUT[0]~DUPLICATE_q\) 
-- # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101111010101011010111111111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X82_Y22_N10
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X82_Y22_N8
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X82_Y22_N12
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X81_Y22_N36
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT\(2) & (\PC|DOUT\(3) & \PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(3) $ 
-- (((!\PC|DOUT[0]~DUPLICATE_q\) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X81_Y22_N24
\DEC_instrucao|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|Equal1~0_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_instrucao|Equal1~0_combout\);

-- Location: FF_X80_Y22_N10
\REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(3));

-- Location: MLABCELL_X82_Y22_N15
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT\(2) & (!\PC|DOUT\(1) & \PC|DOUT\(3))) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & !\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X81_Y22_N52
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y22_N24
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~11_combout\) # (\PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: MLABCELL_X82_Y22_N45
\MUX_PC|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[3]~4_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (\MUX_PC|saida_MUX[4]~0_combout\ & ((\incrementaPC|Add0~13_sumout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(3))))) ) ) # ( 
-- !\ROM1|memROM~12_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & ((!\MUX_PC|saida_MUX[4]~0_combout\) # ((\incrementaPC|Add0~13_sumout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110101111100011011010111100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(3),
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \MUX_PC|saida_MUX[3]~4_combout\);

-- Location: FF_X82_Y22_N47
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X81_Y22_N18
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X83_Y22_N57
\DEC_instrucao|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|Equal4~0_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_instrucao|Equal4~0_combout\);

-- Location: LABCELL_X83_Y22_N39
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: FF_X81_Y22_N58
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X81_Y22_N43
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X81_Y22_N46
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X81_Y22_N0
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: LABCELL_X81_Y22_N21
\DEC_instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida~5_combout\ = ( \ROM1|memROM~1_combout\ ) # ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~4_combout\) # ((!\PC|DOUT[0]~0_combout\) # (\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_instrucao|saida~5_combout\);

-- Location: MLABCELL_X82_Y22_N36
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & !\PC|DOUT\(0))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & ((\PC|DOUT\(0)))) # (\PC|DOUT\(3) & (\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X82_Y22_N18
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X82_Y22_N54
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) & \PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~7_combout\);

-- Location: MLABCELL_X82_Y22_N57
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X82_Y22_N33
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(3)))) # (\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000101101011110000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: MLABCELL_X82_Y22_N42
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~9_combout\ & !\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X85_Y22_N24
\DEC_instrucao|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida[4]~2_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_instrucao|saida[4]~2_combout\);

-- Location: LABCELL_X85_Y22_N48
\DEC_instrucao|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida[3]~1_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_instrucao|saida[3]~1_combout\);

-- Location: LABCELL_X85_Y22_N6
\ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~0_combout\ = ( \DEC_instrucao|saida[3]~1_combout\ & ( !\DEC_instrucao|saida[4]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	dataf => \DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	combout => \ULA1|Equal0~0_combout\);

-- Location: LABCELL_X81_Y22_N15
\DEC_instrucao|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida[6]~4_combout\ = ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~3_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_instrucao|saida[6]~4_combout\);

-- Location: LABCELL_X83_Y22_N0
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~0_combout\) # (\PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X85_Y22_N12
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~9_combout\ ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X83_Y22_N42
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~3_combout\ ) ) # ( !\ROM1|memROM~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X83_Y22_N6
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X84_Y22_N0
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: MLABCELL_X84_Y22_N3
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~154_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~154_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X85_Y22_N9
\ULA1|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~154_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((\ROM1|memROM~6_combout\)))) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~17_sumout\ & ( 
-- (!\ULA1|Equal0~0_combout\ & ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~154_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((\ROM1|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000001011111001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~154_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[0]~4_combout\);

-- Location: LABCELL_X85_Y22_N0
\ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal1~0_combout\ = ( \DEC_instrucao|saida[3]~1_combout\ ) # ( !\DEC_instrucao|saida[3]~1_combout\ & ( \DEC_instrucao|saida[4]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	dataf => \DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	combout => \ULA1|Equal1~0_combout\);

-- Location: LABCELL_X81_Y22_N33
\DEC_instrucao|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida[5]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( (\PC|DOUT[0]~0_combout\ & (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (\PC|DOUT[0]~0_combout\ & 
-- (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101010000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DEC_instrucao|saida[5]~3_combout\);

-- Location: FF_X84_Y22_N32
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[0]~4_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: MLABCELL_X84_Y22_N30
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~154_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((\ROM1|memROM~16_combout\)))) ) + ( !VCC ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(0) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~154_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((\ROM1|memROM~16_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	cin => GND,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: FF_X84_Y22_N31
\REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[0]~4_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y22_N30
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~13_combout\ & ( (\PC|DOUT[0]~0_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: MLABCELL_X82_Y22_N21
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|process_0~0_combout\ & ( (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X82_Y22_N32
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: MLABCELL_X82_Y22_N0
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~10_combout\ & ( (\RAM1|ram~17_q\ & \ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~17_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X83_Y22_N15
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: MLABCELL_X84_Y22_N6
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~156_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((\ROM1|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~156_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((\ROM1|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X83_Y22_N9
\ULA1|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & ((\RAM1|ram~156_combout\))) # (\DEC_instrucao|saida[6]~4_combout\ & (\ROM1|memROM~8_combout\))) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~21_sumout\ & ( 
-- (!\ULA1|Equal0~0_combout\ & ((!\DEC_instrucao|saida[6]~4_combout\ & ((\RAM1|ram~156_combout\))) # (\DEC_instrucao|saida[6]~4_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101000000111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~156_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[1]~5_combout\);

-- Location: FF_X84_Y22_N35
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[1]~5_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: MLABCELL_X84_Y22_N33
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(1) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~156_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~17_combout\)))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(1) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~156_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~17_combout\)))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: FF_X84_Y22_N34
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[1]~5_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X82_Y22_N29
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X82_Y22_N27
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X83_Y22_N45
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: MLABCELL_X84_Y22_N36
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(2) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~158_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~18_combout\)))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(2) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~158_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~18_combout\)))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \REGA|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: MLABCELL_X84_Y22_N9
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~158_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((\ROM1|memROM~18_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\DEC_instrucao|saida[6]~4_combout\ & (((!\RAM1|ram~158_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (((\ROM1|memROM~18_combout\)) # (\PC|DOUT\(8)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X83_Y22_N3
\ULA1|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~158_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((\ROM1|memROM~10_combout\)))) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~25_sumout\ & ( 
-- (!\ULA1|Equal0~0_combout\ & ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~158_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((\ROM1|memROM~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000001011111001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~158_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[2]~6_combout\);

-- Location: FF_X84_Y22_N37
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[2]~6_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X82_Y22_N38
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X82_Y22_N48
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~10_combout\ & ( (\ROM1|memROM~12_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X83_Y22_N33
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: MLABCELL_X84_Y22_N12
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\DEC_instrucao|saida~5_combout\ & ((!\ROM1|memROM~14_combout\ & (!\RAM1|ram~160_combout\)) # (\ROM1|memROM~14_combout\ & ((\ROM1|memROM~12_combout\))))) # (\DEC_instrucao|saida~5_combout\ & (((!\RAM1|ram~160_combout\)))) ) 
-- + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( (!\DEC_instrucao|saida~5_combout\ & ((!\ROM1|memROM~14_combout\ & (!\RAM1|ram~160_combout\)) # (\ROM1|memROM~14_combout\ & ((\ROM1|memROM~12_combout\))))) # (\DEC_instrucao|saida~5_combout\ & (((!\RAM1|ram~160_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

-- Location: LABCELL_X85_Y22_N15
\ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~160_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((!\ROM1|memROM~12_combout\)))) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~29_sumout\ & 
-- ( (!\ULA1|Equal0~0_combout\ & ((!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~160_combout\)) # (\DEC_instrucao|saida[6]~4_combout\ & ((!\ROM1|memROM~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000010011000000100001111111001110110111111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[3]~7_combout\);

-- Location: FF_X84_Y22_N41
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[3]~7_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: MLABCELL_X82_Y22_N30
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~11_combout\ ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: MLABCELL_X84_Y22_N39
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~160_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~19_combout\)))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( \REGA|DOUT\(3) ) + ( (!\DEC_instrucao|saida[6]~4_combout\ & (((\RAM1|ram~160_combout\)))) # (\DEC_instrucao|saida[6]~4_combout\ & (!\PC|DOUT\(8) & ((!\ROM1|memROM~19_combout\)))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~19_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

-- Location: FF_X84_Y22_N40
\REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[3]~7_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X82_Y22_N2
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: MLABCELL_X82_Y22_N39
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X83_Y22_N36
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~159_combout\ & ( (\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: MLABCELL_X84_Y22_N15
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\RAM1|ram~146_combout\) # ((!\DEC_instrucao|saida~5_combout\ & \ROM1|memROM~14_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~30\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\RAM1|ram~146_combout\) # ((!\DEC_instrucao|saida~5_combout\ & \ROM1|memROM~14_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: MLABCELL_X84_Y22_N57
\ULA1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & \RAM1|ram~146_combout\)) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~1_sumout\ & ( (!\ULA1|Equal0~0_combout\ & (!\DEC_instrucao|saida[6]~4_combout\ & 
-- \RAM1|ram~146_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal0~0_combout\,
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[4]~0_combout\);

-- Location: FF_X84_Y22_N44
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[4]~0_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: MLABCELL_X84_Y22_N42
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (\RAM1|ram~146_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(4) ) + ( (\RAM1|ram~146_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: FF_X84_Y22_N43
\REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[4]~0_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X82_Y22_N26
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: MLABCELL_X82_Y22_N3
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X83_Y22_N18
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: MLABCELL_X84_Y22_N18
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\RAM1|ram~148_combout\) # ((!\DEC_instrucao|saida~5_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~15_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\RAM1|ram~148_combout\) # ((!\DEC_instrucao|saida~5_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~15_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X85_Y22_N42
\ULA1|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( ((\RAM1|ram~148_combout\ & !\DEC_instrucao|saida[6]~4_combout\)) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~5_sumout\ & ( (!\ULA1|Equal0~0_combout\ & (\RAM1|ram~148_combout\ & 
-- !\DEC_instrucao|saida[6]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[5]~1_combout\);

-- Location: FF_X84_Y22_N47
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[5]~1_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X83_Y22_N53
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X83_Y22_N51
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X83_Y22_N27
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~147_combout\ & ( (\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: MLABCELL_X84_Y22_N45
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (\RAM1|ram~148_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REGA|DOUT\(5) ) + ( (\RAM1|ram~148_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: FF_X84_Y22_N46
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[5]~1_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: MLABCELL_X84_Y22_N48
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (\RAM1|ram~150_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REGA|DOUT\(6) ) + ( (\RAM1|ram~150_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X85_Y22_N3
\ULA1|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & \RAM1|ram~150_combout\)) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~9_sumout\ & ( (!\DEC_instrucao|saida[6]~4_combout\ & (!\ULA1|Equal0~0_combout\ & 
-- \RAM1|ram~150_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[6]~2_combout\);

-- Location: FF_X84_Y22_N49
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[6]~2_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X83_Y22_N26
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X83_Y22_N24
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~10_combout\ & ( (\ROM1|memROM~12_combout\ & \RAM1|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X83_Y22_N12
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~149_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X84_Y22_N50
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[6]~2_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y22_N21
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\RAM1|ram~150_combout\) # ((!\DEC_instrucao|saida~5_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~15_combout\)))) ) + ( \REGA|DOUT[6]~DUPLICATE_q\ ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\RAM1|ram~150_combout\) # ((!\DEC_instrucao|saida~5_combout\ & ((\PC|DOUT[8]~DUPLICATE_q\) # (\ROM1|memROM~15_combout\)))) ) + ( \REGA|DOUT[6]~DUPLICATE_q\ ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X85_Y22_N36
\DEC_instrucao|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|Equal2~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \DEC_instrucao|Equal2~0_combout\);

-- Location: LABCELL_X85_Y22_N45
\REG_FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG|DOUT~0_combout\ = ( \REG_FLAG|DOUT~q\ & ( !\DEC_instrucao|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal2~0_combout\,
	dataf => \REG_FLAG|ALT_INV_DOUT~q\,
	combout => \REG_FLAG|DOUT~0_combout\);

-- Location: MLABCELL_X84_Y22_N51
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (\RAM1|ram~152_combout\ & (((!\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\)) # (\DEC_instrucao|saida~5_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\);

-- Location: MLABCELL_X84_Y22_N54
\ULA1|saida[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( ((!\DEC_instrucao|saida[6]~4_combout\ & \RAM1|ram~152_combout\)) # (\ULA1|Equal0~0_combout\) ) ) # ( !\ULA1|Add1~13_sumout\ & ( (!\DEC_instrucao|saida[6]~4_combout\ & (\RAM1|ram~152_combout\ & 
-- !\ULA1|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	datad => \ULA1|ALT_INV_Equal0~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[7]~3_combout\);

-- Location: FF_X84_Y22_N53
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[7]~3_combout\,
	sload => \ULA1|Equal1~0_combout\,
	ena => \DEC_instrucao|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X83_Y22_N23
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X83_Y22_N30
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~6_combout\ & ( (\RAM1|ram~24_q\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X83_Y22_N21
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( (\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: MLABCELL_X84_Y22_N24
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\RAM1|ram~152_combout\) # ((!\DEC_instrucao|saida~5_combout\ & ((\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_saida~5_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\);

-- Location: LABCELL_X85_Y22_N54
\REG_FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG|DOUT~1_combout\ = ( !\ULA1|Add1~29_sumout\ & ( !\ULA1|Add1~25_sumout\ & ( (\DEC_instrucao|Equal2~0_combout\ & (\ULA1|Equal0~0_combout\ & (!\ULA1|Add1~21_sumout\ & !\ULA1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal2~0_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~21_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \REG_FLAG|DOUT~1_combout\);

-- Location: LABCELL_X85_Y22_N30
\REG_FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_FLAG|DOUT~2_combout\ = ( \REG_FLAG|DOUT~1_combout\ & ( \ULA1|Add1~5_sumout\ & ( \REG_FLAG|DOUT~0_combout\ ) ) ) # ( !\REG_FLAG|DOUT~1_combout\ & ( \ULA1|Add1~5_sumout\ & ( \REG_FLAG|DOUT~0_combout\ ) ) ) # ( \REG_FLAG|DOUT~1_combout\ & ( 
-- !\ULA1|Add1~5_sumout\ & ( ((!\ULA1|Add1~9_sumout\ & (!\ULA1|Add1~13_sumout\ & !\ULA1|Add1~1_sumout\))) # (\REG_FLAG|DOUT~0_combout\) ) ) ) # ( !\REG_FLAG|DOUT~1_combout\ & ( !\ULA1|Add1~5_sumout\ & ( \REG_FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~9_sumout\,
	datab => \REG_FLAG|ALT_INV_DOUT~0_combout\,
	datac => \ULA1|ALT_INV_Add1~13_sumout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	datae => \REG_FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \REG_FLAG|DOUT~2_combout\);

-- Location: FF_X85_Y22_N31
\REG_FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \REG_FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_FLAG|DOUT~q\);

-- Location: LABCELL_X85_Y22_N18
\DEC_instrucao|saida_desvio~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida_desvio~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~3_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DEC_instrucao|saida_desvio~0_combout\);

-- Location: LABCELL_X83_Y22_N48
\MUX_PC|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[4]~0_combout\ = ( \DEC_instrucao|saida_desvio~0_combout\ & ( (!\DEC_instrucao|Equal4~0_combout\ & (!\REG_FLAG|DOUT~q\ & !\DEC_instrucao|Equal1~0_combout\)) ) ) # ( !\DEC_instrucao|saida_desvio~0_combout\ & ( 
-- (!\DEC_instrucao|Equal4~0_combout\ & !\DEC_instrucao|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DEC_instrucao|ALT_INV_Equal4~0_combout\,
	datac => \REG_FLAG|ALT_INV_DOUT~q\,
	datad => \DEC_instrucao|ALT_INV_Equal1~0_combout\,
	dataf => \DEC_instrucao|ALT_INV_saida_desvio~0_combout\,
	combout => \MUX_PC|saida_MUX[4]~0_combout\);

-- Location: LABCELL_X80_Y22_N0
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X80_Y22_N3
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X80_Y22_N5
\REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(1));

-- Location: MLABCELL_X82_Y22_N6
\MUX_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[1]~2_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & ((!\MUX_PC|saida_MUX[4]~0_combout\) # ((\incrementaPC|Add0~5_sumout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(1))))) ) ) # ( 
-- !\ROM1|memROM~8_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (\MUX_PC|saida_MUX[4]~0_combout\ & ((\incrementaPC|Add0~5_sumout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \REG_RETORNO|ALT_INV_DOUT\(1),
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \MUX_PC|saida_MUX[1]~2_combout\);

-- Location: FF_X82_Y22_N7
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X80_Y22_N7
\REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(2));

-- Location: MLABCELL_X82_Y22_N51
\MUX_PC|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[2]~3_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (((\MUX_PC|saida_MUX[4]~0_combout\) # (\ROM1|memROM~10_combout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (\REG_RETORNO|DOUT\(2))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (((\ROM1|memROM~10_combout\ & !\MUX_PC|saida_MUX[4]~0_combout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (\REG_RETORNO|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001100000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_RETORNO|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datad => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX_PC|saida_MUX[2]~3_combout\);

-- Location: FF_X82_Y22_N53
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X81_Y22_N54
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011000011001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X80_Y22_N24
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X80_Y22_N25
\REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(8));

-- Location: LABCELL_X81_Y22_N51
\MUX_PC|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[8]~9_combout\ = ( \PC|DOUT[0]~0_combout\ & ( \REG_RETORNO|DOUT\(8) & ( ((!\MUX_PC|saida_MUX[4]~0_combout\ & (\ROM1|memROM~13_combout\)) # (\MUX_PC|saida_MUX[4]~0_combout\ & ((\incrementaPC|Add0~33_sumout\)))) # 
-- (\DEC_instrucao|Equal0~0_combout\) ) ) ) # ( !\PC|DOUT[0]~0_combout\ & ( \REG_RETORNO|DOUT\(8) & ( ((\MUX_PC|saida_MUX[4]~0_combout\ & \incrementaPC|Add0~33_sumout\)) # (\DEC_instrucao|Equal0~0_combout\) ) ) ) # ( \PC|DOUT[0]~0_combout\ & ( 
-- !\REG_RETORNO|DOUT\(8) & ( (!\DEC_instrucao|Equal0~0_combout\ & ((!\MUX_PC|saida_MUX[4]~0_combout\ & (\ROM1|memROM~13_combout\)) # (\MUX_PC|saida_MUX[4]~0_combout\ & ((\incrementaPC|Add0~33_sumout\))))) ) ) ) # ( !\PC|DOUT[0]~0_combout\ & ( 
-- !\REG_RETORNO|DOUT\(8) & ( (!\DEC_instrucao|Equal0~0_combout\ & (\MUX_PC|saida_MUX[4]~0_combout\ & \incrementaPC|Add0~33_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010001000000010101001010101010111110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \REG_RETORNO|ALT_INV_DOUT\(8),
	combout => \MUX_PC|saida_MUX[8]~9_combout\);

-- Location: FF_X81_Y22_N53
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X81_Y22_N27
\DEC_instrucao|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|Equal0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC_instrucao|Equal0~0_combout\);

-- Location: FF_X80_Y22_N1
\REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DEC_instrucao|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RETORNO|DOUT\(0));

-- Location: MLABCELL_X82_Y22_N9
\MUX_PC|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[0]~1_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & ((!\MUX_PC|saida_MUX[4]~0_combout\) # ((\incrementaPC|Add0~1_sumout\)))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(0))))) ) ) # ( 
-- !\ROM1|memROM~6_combout\ & ( (!\DEC_instrucao|Equal0~0_combout\ & (\MUX_PC|saida_MUX[4]~0_combout\ & (\incrementaPC|Add0~1_sumout\))) # (\DEC_instrucao|Equal0~0_combout\ & (((\REG_RETORNO|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_instrucao|ALT_INV_Equal0~0_combout\,
	datab => \MUX_PC|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \REG_RETORNO|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \MUX_PC|saida_MUX[0]~1_combout\);

-- Location: FF_X82_Y22_N11
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X81_Y22_N7
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X81_Y22_N39
\DEC_instrucao|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_instrucao|saida[0]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~1_combout\ & \PC|DOUT[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DEC_instrucao|saida[0]~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X40_Y53_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


