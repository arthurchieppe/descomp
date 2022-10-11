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

-- DATE "10/10/2022 20:42:46"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	Aula7e8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula7e8;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula7e8 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~0_combout\ : std_logic;
SIGNAL \comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~1_combout\ : std_logic;
SIGNAL \comp_HEX1|REG|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~2_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~3_combout\ : std_logic;
SIGNAL \comp_HEX3|REG|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~4_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC_Enderecos|Equal7~5_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comp_HEX3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comp_HEX2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \comp_HEX5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX3|REG|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX1|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX1|REG|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\comp_HEX5|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX5|REG|DOUT\(2);
\comp_HEX5|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX5|REG|DOUT\(1);
\comp_HEX5|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX5|REG|DOUT\(3);
\comp_HEX5|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX5|REG|DOUT\(0);
\comp_HEX4|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX4|REG|DOUT\(2);
\comp_HEX4|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX4|REG|DOUT\(1);
\comp_HEX4|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX4|REG|DOUT\(3);
\comp_HEX4|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX4|REG|DOUT\(0);
\comp_HEX3|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX3|REG|DOUT\(2);
\comp_HEX3|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX3|REG|DOUT\(1);
\comp_HEX3|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX3|REG|DOUT\(3);
\comp_HEX3|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX3|REG|DOUT\(0);
\comp_HEX2|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX2|REG|DOUT\(2);
\comp_HEX2|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX2|REG|DOUT\(1);
\comp_HEX2|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX2|REG|DOUT\(3);
\comp_HEX2|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX2|REG|DOUT\(0);
\comp_HEX1|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX1|REG|DOUT\(2);
\comp_HEX1|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX1|REG|DOUT\(1);
\comp_HEX1|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX1|REG|DOUT\(3);
\comp_HEX1|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX1|REG|DOUT\(0);
\comp_HEX0|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX0|REG|DOUT\(2);
\comp_HEX0|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX0|REG|DOUT\(1);
\comp_HEX0|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX0|REG|DOUT\(3);
\comp_HEX0|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX0|REG|DOUT\(0);
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\;
\comp_HEX3|REG|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \comp_HEX3|REG|DOUT[1]~DUPLICATE_q\;
\comp_HEX1|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \comp_HEX1|REG|DOUT[3]~DUPLICATE_q\;
\comp_HEX1|REG|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \comp_HEX1|REG|DOUT[0]~DUPLICATE_q\;
\comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \comp_HEX0|REG|DOUT[3]~DUPLICATE_q\;
\comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \comp_HEX0|REG|DOUT[0]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[2]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\CPU|DEC_instrucao|ALT_INV_saida~0_combout\ <= NOT \CPU|DEC_instrucao|saida~0_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DEC_instrucao|Equal10~0_combout\;

-- Location: IOOBUF_X8_Y45_N93
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X33_Y0_N76
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X46_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X34_Y45_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y45_N53
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X22_Y45_N53
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X52_Y0_N53
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X33_Y0_N93
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X50_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X12_Y0_N36
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X33_Y0_N59
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X16_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X10_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X11_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X12_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X12_Y0_N2
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X23_Y0_N42
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X23_Y0_N76
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X23_Y0_N59
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X16_Y0_N59
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X22_Y0_N2
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X19_Y0_N36
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X18_Y0_N19
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X25_Y0_N19
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X19_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X18_Y0_N36
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X24_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X24_Y0_N2
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X24_Y0_N36
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X22_Y0_N19
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X12_Y0_N53
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X14_Y0_N53
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X14_Y0_N2
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X18_Y0_N2
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X14_Y0_N36
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X0_Y18_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X11_Y0_N36
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X11_Y0_N53
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X10_Y0_N42
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X0_Y18_N79
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X11_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X19_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X10_Y0_N59
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X14_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X18_Y0_N53
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N36
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X24_Y0_N53
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X25_Y0_N2
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X23_Y0_N93
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X22_Y0_N53
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X19_Y0_N19
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X8_Y45_N59
\HEX6[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(0));

-- Location: IOOBUF_X36_Y0_N19
\HEX6[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(1));

-- Location: IOOBUF_X0_Y19_N22
\HEX6[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(2));

-- Location: IOOBUF_X54_Y20_N22
\HEX6[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(3));

-- Location: IOOBUF_X46_Y0_N36
\HEX6[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(4));

-- Location: IOOBUF_X46_Y0_N19
\HEX6[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(5));

-- Location: IOOBUF_X0_Y19_N5
\HEX6[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX6(6));

-- Location: IOIBUF_X16_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N41
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X17_Y2_N42
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X17_Y2_N44
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X17_Y2_N15
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X14_Y3_N0
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X16_Y3_N0
\CPU|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X16_Y4_N0
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y3_N1
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X17_Y3_N0
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT[3]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101010101001101010011010100110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~12_combout\);

-- Location: FF_X16_Y3_N38
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X16_Y3_N18
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X16_Y3_N39
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

-- Location: FF_X16_Y3_N35
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X16_Y3_N27
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(0) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT[3]~DUPLICATE_q\) # (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X17_Y3_N48
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X16_Y3_N57
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X17_Y3_N51
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~8_combout\ & ( \ROM|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: FF_X16_Y2_N55
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N31
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X17_Y3_N9
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[7]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT[6]~DUPLICATE_q\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~8_combout\);

-- Location: MLABCELL_X18_Y3_N15
\CPU|DEC_instrucao|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~2_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~12_combout\ & \ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal10~2_combout\);

-- Location: FF_X16_Y3_N5
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: FF_X16_Y3_N23
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X16_Y3_N8
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X16_Y3_N12
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X16_Y3_N24
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X16_Y3_N45
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X16_Y3_N17
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X16_Y3_N51
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X16_Y3_N42
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X16_Y3_N2
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N3
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X16_Y3_N15
\CPU|PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~feeder_combout\ = \CPU|incrementaPC|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|PC|DOUT[1]~feeder_combout\);

-- Location: FF_X16_Y3_N16
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N6
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X16_Y3_N33
\CPU|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~feeder_combout\ = \CPU|incrementaPC|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X16_Y3_N34
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N9
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X16_Y3_N36
\CPU|PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[3]~feeder_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|PC|DOUT[3]~feeder_combout\);

-- Location: FF_X16_Y3_N37
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N12
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X16_Y3_N6
\CPU|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~feeder_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|PC|DOUT[4]~feeder_combout\);

-- Location: FF_X16_Y3_N7
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N15
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X16_Y3_N30
\CPU|PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~feeder_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|PC|DOUT[5]~feeder_combout\);

-- Location: FF_X16_Y3_N32
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N18
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X16_Y3_N3
\CPU|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~feeder_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X16_Y3_N4
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N21
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: LABCELL_X16_Y3_N21
\CPU|PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|PC|DOUT[7]~feeder_combout\);

-- Location: FF_X16_Y3_N22
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N24
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X16_Y2_N54
\CPU|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[8]~feeder_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X16_Y2_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X17_Y3_N42
\CPU|DEC_instrucao|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~0_combout\ = ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal10~0_combout\);

-- Location: LABCELL_X17_Y3_N54
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \ROM|memROM~5_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X17_Y3_N12
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~8_combout\ & (!\ROM|memROM~12_combout\ & !\ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X16_Y3_N9
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~4_combout\ & ( (\RAM|process_0~0_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X16_Y3_N50
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X16_Y3_N48
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~2_combout\ & \RAM|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X17_Y3_N18
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~533_combout\ & ( (!\ROM|memROM~6_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: MLABCELL_X18_Y3_N30
\CPU|DEC_instrucao|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~0_combout\ = ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~12_combout\ $ (\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|saida~0_combout\);

-- Location: MLABCELL_X18_Y3_N57
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X17_Y3_N21
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X17_Y3_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~528_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~528_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X18_Y3_N6
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|DEC_instrucao|Equal10~0_combout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DEC_instrucao|saida~0_combout\) # (\ROM|memROM~2_combout\) ) ) ) # ( !\CPU|DEC_instrucao|Equal10~0_combout\ & ( \CPU|ULA1|Add0~1_sumout\ & ( 
-- (!\CPU|DEC_instrucao|saida~0_combout\) # (\RAM|ram~528_combout\) ) ) ) # ( \CPU|DEC_instrucao|Equal10~0_combout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( (\CPU|DEC_instrucao|saida~0_combout\ & \ROM|memROM~2_combout\) ) ) ) # ( 
-- !\CPU|DEC_instrucao|Equal10~0_combout\ & ( !\CPU|ULA1|Add0~1_sumout\ & ( (\CPU|DEC_instrucao|saida~0_combout\ & \RAM|ram~528_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000001010000010110101010111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N27
\CPU|DEC_instrucao|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~1_combout\ = ( \ROM|memROM~8_combout\ & ( (!\ROM|memROM~11_combout\) # ((!\ROM|memROM~12_combout\) # (!\ROM|memROM~10_combout\)) ) ) # ( !\ROM|memROM~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal10~1_combout\);

-- Location: MLABCELL_X18_Y3_N18
\CPU|DEC_instrucao|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~1_combout\ = ( \ROM|memROM~8_combout\ & ( !\ROM|memROM~12_combout\ $ (((\ROM|memROM~10_combout\) # (\ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|saida~1_combout\);

-- Location: FF_X18_Y3_N4
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[0]~feeder_combout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N36
\CPU|ULA1|Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~18_cout\);

-- Location: MLABCELL_X18_Y3_N39
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~528_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\ROM|memROM~13_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~18_cout\ 
-- ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~528_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\ROM|memROM~13_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~528_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~18_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: MLABCELL_X18_Y3_N3
\CPU|REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[0]~feeder_combout\ = ( \CPU|ULA1|Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|REGA|DOUT[0]~feeder_combout\);

-- Location: FF_X18_Y3_N5
\CPU|REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[0]~feeder_combout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N56
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X16_Y3_N54
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & \RAM|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X17_Y3_N45
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \RAM|ram~527_combout\ & ( (!\ROM|memROM~6_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: LABCELL_X17_Y3_N33
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~532_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~532_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: MLABCELL_X18_Y3_N0
\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \CPU|DEC_instrucao|saida~0_combout\ & ( (!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~532_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~4_combout\)) ) ) # ( 
-- !\CPU|DEC_instrucao|saida~0_combout\ & ( \CPU|ULA1|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida~0_combout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

-- Location: FF_X18_Y3_N35
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[1]~feeder_combout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: MLABCELL_X18_Y3_N42
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~532_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~532_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X18_Y3_N33
\CPU|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[1]~feeder_combout\ = ( \CPU|ULA1|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|REGA|DOUT[1]~feeder_combout\);

-- Location: FF_X18_Y3_N34
\CPU|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[1]~feeder_combout\,
	asdata => \CPU|ULA1|saida[1]~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X17_Y3_N17
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X17_Y3_N15
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~6_combout\ & \RAM|ram~16_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~16_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: LABCELL_X17_Y3_N3
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~531_combout\ & ( (!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X17_Y3_N36
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( 
-- \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X17_Y3_N57
\CPU|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~3_combout\ = ( \RAM|ram~534_combout\ & ( (!\CPU|DEC_instrucao|saida~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) # (\CPU|DEC_instrucao|saida~0_combout\ & (((!\CPU|DEC_instrucao|Equal10~0_combout\)) # (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\RAM|ram~534_combout\ & ( (!\CPU|DEC_instrucao|saida~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) # (\CPU|DEC_instrucao|saida~0_combout\ & (\ROM|memROM~6_combout\ & (\CPU|DEC_instrucao|Equal10~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100110001111111010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \CPU|ULA1|saida[2]~3_combout\);

-- Location: FF_X17_Y3_N7
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X18_Y3_N45
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\ROM|memROM~15_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|Equal10~0_combout\ & (((!\ROM|memROM~15_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X17_Y3_N6
\CPU|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[2]~feeder_combout\ = ( \CPU|ULA1|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|REGA|DOUT[2]~feeder_combout\);

-- Location: FF_X17_Y3_N8
\CPU|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~3_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y2_N9
\DEC_Enderecos|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~0_combout\ = ( \ROM|memROM~9_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~0_combout\);

-- Location: FF_X16_Y2_N1
\comp_HEX0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(2));

-- Location: FF_X16_Y2_N19
\comp_HEX0|REG|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X16_Y2_N11
\comp_HEX0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(1));

-- Location: FF_X17_Y3_N1
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~535_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X18_Y3_N24
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~18_q\ & !\ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~18_q\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: MLABCELL_X18_Y3_N21
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~529_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: MLABCELL_X18_Y3_N48
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\RAM|ram~530_combout\) # (\CPU|DEC_instrucao|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~5_sumout\);

-- Location: LABCELL_X17_Y3_N24
\CPU|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[3]~feeder_combout\ = ( \CPU|ULA1|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X17_Y3_N26
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: LABCELL_X17_Y3_N39
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|Equal10~0_combout\ & \RAM|ram~530_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~5_sumout\);

-- Location: LABCELL_X17_Y3_N27
\CPU|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~1_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( (!\CPU|DEC_instrucao|saida~0_combout\) # ((!\CPU|DEC_instrucao|Equal10~0_combout\ & \RAM|ram~530_combout\)) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( (\CPU|DEC_instrucao|saida~0_combout\ & 
-- (!\CPU|DEC_instrucao|Equal10~0_combout\ & \RAM|ram~530_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|saida[3]~1_combout\);

-- Location: FF_X17_Y3_N25
\CPU|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~1_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X16_Y2_N7
\comp_HEX0|REG|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y2_N57
\comp_HEX0|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX0|REG|DOUT\(2) & (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & (!\comp_HEX0|REG|DOUT\(1) $ (\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\)))) # (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(1) & 
-- (!\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ $ (\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010010011000000001001001100000000100100110000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: FF_X16_Y2_N20
\comp_HEX0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(0));

-- Location: LABCELL_X16_Y2_N30
\comp_HEX0|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX0|REG|DOUT\(1) & (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(0) $ (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\)))) # (\comp_HEX0|REG|DOUT\(1) & ((!\comp_HEX0|REG|DOUT\(0) & 
-- (\comp_HEX0|REG|DOUT\(2))) # (\comp_HEX0|REG|DOUT\(0) & ((\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001100010100010100110001010001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: FF_X16_Y2_N8
\comp_HEX0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(3));

-- Location: LABCELL_X16_Y2_N33
\comp_HEX0|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & ( (\comp_HEX0|REG|DOUT\(2) & (\comp_HEX0|REG|DOUT\(1) & \comp_HEX0|REG|DOUT\(3))) ) ) # ( !\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & ( (!\comp_HEX0|REG|DOUT\(2) & 
-- (\comp_HEX0|REG|DOUT\(1) & !\comp_HEX0|REG|DOUT\(3))) # (\comp_HEX0|REG|DOUT\(2) & ((\comp_HEX0|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X16_Y2_N15
\comp_HEX0|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX0|REG|DOUT\(1) & ( (!\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & (\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & !\comp_HEX0|REG|DOUT\(2))) # (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & 
-- ((\comp_HEX0|REG|DOUT\(2)))) ) ) # ( !\comp_HEX0|REG|DOUT\(1) & ( (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & (!\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ $ (!\comp_HEX0|REG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X16_Y2_N21
\comp_HEX0|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & ( (!\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(1) & \comp_HEX0|REG|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & ( 
-- ((\comp_HEX0|REG|DOUT\(2) & !\comp_HEX0|REG|DOUT\(1))) # (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000010000000100001001111010011110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y2_N24
\comp_HEX0|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX0|REG|DOUT\(2) & ( (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ $ (!\comp_HEX0|REG|DOUT\(1)))) ) ) # ( !\comp_HEX0|REG|DOUT\(2) & ( 
-- (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & ((\comp_HEX0|REG|DOUT\(1)) # (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000101000001010001001100010011000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datae => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y2_N30
\comp_HEX0|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX0|REG|DOUT\(2) & ( (!\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & (\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & !\comp_HEX0|REG|DOUT\(1))) # (\comp_HEX0|REG|DOUT[0]~DUPLICATE_q\ & 
-- (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & \comp_HEX0|REG|DOUT\(1))) ) ) # ( !\comp_HEX0|REG|DOUT\(2) & ( (!\comp_HEX0|REG|DOUT[3]~DUPLICATE_q\ & !\comp_HEX0|REG|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001001000010010011000000110000000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \comp_HEX0|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datae => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X17_Y2_N54
\DEC_Enderecos|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~1_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~1_combout\);

-- Location: FF_X17_Y2_N5
\comp_HEX1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(2));

-- Location: FF_X17_Y2_N17
\comp_HEX1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(1));

-- Location: FF_X17_Y2_N49
\comp_HEX1|REG|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X17_Y2_N1
\comp_HEX1|REG|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y2_N48
\comp_HEX1|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\ = ( \comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ & ( (\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\ & (!\comp_HEX1|REG|DOUT\(2) $ (!\comp_HEX1|REG|DOUT\(1)))) ) ) # ( !\comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(2) $ (!\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \comp_HEX1|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: FF_X17_Y2_N2
\comp_HEX1|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(3));

-- Location: FF_X17_Y2_N50
\comp_HEX1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(0));

-- Location: LABCELL_X17_Y2_N24
\comp_HEX1|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(2) & !\comp_HEX1|REG|DOUT\(1))) # (\comp_HEX1|REG|DOUT\(3) & ((\comp_HEX1|REG|DOUT\(1)))) ) ) # ( !\comp_HEX1|REG|DOUT\(0) & 
-- ( (\comp_HEX1|REG|DOUT\(2) & ((\comp_HEX1|REG|DOUT\(1)) # (\comp_HEX1|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y2_N6
\comp_HEX1|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ & ( (\comp_HEX1|REG|DOUT\(2) & ((!\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\) # (\comp_HEX1|REG|DOUT\(1)))) ) ) # ( !\comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ & ( 
-- (\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\ & !\comp_HEX1|REG|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datab => \comp_HEX1|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX1|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X17_Y2_N18
\comp_HEX1|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(2) & (!\comp_HEX1|REG|DOUT\(3) & !\comp_HEX1|REG|DOUT\(1))) # (\comp_HEX1|REG|DOUT\(2) & ((\comp_HEX1|REG|DOUT\(1)))) ) ) # ( !\comp_HEX1|REG|DOUT\(0) 
-- & ( (!\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(2) & !\comp_HEX1|REG|DOUT\(1))) # (\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(2) & \comp_HEX1|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X17_Y2_N21
\comp_HEX1|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(3)) # ((!\comp_HEX1|REG|DOUT\(2) & !\comp_HEX1|REG|DOUT\(1))) ) ) # ( !\comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(2) 
-- & !\comp_HEX1|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y2_N9
\comp_HEX1|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX1|REG|DOUT\(2) & ( (\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\ & (!\comp_HEX1|REG|DOUT\(1) $ (!\comp_HEX1|REG|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\comp_HEX1|REG|DOUT\(2) & ( 
-- (!\comp_HEX1|REG|DOUT[3]~DUPLICATE_q\ & ((\comp_HEX1|REG|DOUT[0]~DUPLICATE_q\) # (\comp_HEX1|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datab => \comp_HEX1|REG|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \comp_HEX1|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X17_Y2_N12
\comp_HEX1|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(1) $ (\comp_HEX1|REG|DOUT\(2)))) ) ) # ( !\comp_HEX1|REG|DOUT\(0) & ( (!\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(3) 
-- $ (\comp_HEX1|REG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X17_Y2_N51
\DEC_Enderecos|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~2_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~2_combout\);

-- Location: FF_X18_Y2_N2
\comp_HEX2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(0));

-- Location: FF_X18_Y2_N8
\comp_HEX2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(1));

-- Location: FF_X18_Y2_N20
\comp_HEX2|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(3));

-- Location: FF_X18_Y2_N22
\comp_HEX2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(2));

-- Location: MLABCELL_X18_Y2_N12
\comp_HEX2|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\ = ( \comp_HEX2|REG|DOUT\(2) & ( (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(0) $ (\comp_HEX2|REG|DOUT\(3)))) ) ) # ( !\comp_HEX2|REG|DOUT\(2) & ( (\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(1) 
-- $ (\comp_HEX2|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	dataf => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X18_Y2_N51
\comp_HEX2|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX2|REG|DOUT\(1) & ( (!\comp_HEX2|REG|DOUT\(0) & ((\comp_HEX2|REG|DOUT\(2)))) # (\comp_HEX2|REG|DOUT\(0) & (\comp_HEX2|REG|DOUT\(3))) ) ) # ( !\comp_HEX2|REG|DOUT\(1) & ( (\comp_HEX2|REG|DOUT\(2) 
-- & (!\comp_HEX2|REG|DOUT\(3) $ (!\comp_HEX2|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y2_N30
\comp_HEX2|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX2|REG|DOUT\(0) & ( (\comp_HEX2|REG|DOUT\(2) & (\comp_HEX2|REG|DOUT\(3) & \comp_HEX2|REG|DOUT\(1))) ) ) # ( !\comp_HEX2|REG|DOUT\(0) & ( (!\comp_HEX2|REG|DOUT\(2) & (!\comp_HEX2|REG|DOUT\(3) & 
-- \comp_HEX2|REG|DOUT\(1))) # (\comp_HEX2|REG|DOUT\(2) & (\comp_HEX2|REG|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000000000001100000011110000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datae => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y2_N36
\comp_HEX2|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX2|REG|DOUT\(2) & ( (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(3) & !\comp_HEX2|REG|DOUT\(0))) # (\comp_HEX2|REG|DOUT\(1) & ((\comp_HEX2|REG|DOUT\(0)))) ) ) # ( !\comp_HEX2|REG|DOUT\(2) 
-- & ( (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(3) & \comp_HEX2|REG|DOUT\(0))) # (\comp_HEX2|REG|DOUT\(1) & (\comp_HEX2|REG|DOUT\(3) & !\comp_HEX2|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y2_N39
\comp_HEX2|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX2|REG|DOUT\(2) & ( (!\comp_HEX2|REG|DOUT\(3) & ((!\comp_HEX2|REG|DOUT\(1)) # (\comp_HEX2|REG|DOUT\(0)))) ) ) # ( !\comp_HEX2|REG|DOUT\(2) & ( (\comp_HEX2|REG|DOUT\(0) & 
-- ((!\comp_HEX2|REG|DOUT\(3)) # (!\comp_HEX2|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y2_N18
\comp_HEX2|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX2|REG|DOUT\(3) & ( (\comp_HEX2|REG|DOUT\(2) & (\comp_HEX2|REG|DOUT\(0) & !\comp_HEX2|REG|DOUT\(1))) ) ) # ( !\comp_HEX2|REG|DOUT\(3) & ( (!\comp_HEX2|REG|DOUT\(2) & ((\comp_HEX2|REG|DOUT\(1)) # 
-- (\comp_HEX2|REG|DOUT\(0)))) # (\comp_HEX2|REG|DOUT\(2) & (\comp_HEX2|REG|DOUT\(0) & \comp_HEX2|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000000110000000000001100110011110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datae => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y2_N15
\comp_HEX2|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX2|REG|DOUT\(3) & ( (!\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(1) & \comp_HEX2|REG|DOUT\(2))) ) ) # ( !\comp_HEX2|REG|DOUT\(3) & ( (!\comp_HEX2|REG|DOUT\(1) & 
-- ((!\comp_HEX2|REG|DOUT\(2)))) # (\comp_HEX2|REG|DOUT\(1) & (\comp_HEX2|REG|DOUT\(0) & \comp_HEX2|REG|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000001110000011100000100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X17_Y2_N39
\DEC_Enderecos|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~3_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~3_combout\);

-- Location: FF_X17_Y2_N56
\comp_HEX3|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(3));

-- Location: FF_X17_Y2_N41
\comp_HEX3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(2));

-- Location: FF_X17_Y2_N58
\comp_HEX3|REG|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X17_Y2_N37
\comp_HEX3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(0));

-- Location: LABCELL_X16_Y2_N42
\comp_HEX3|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\ = ( \comp_HEX3|REG|DOUT\(0) & ( (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(2) & !\comp_HEX3|REG|DOUT[1]~DUPLICATE_q\)) # (\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(2) $ 
-- (!\comp_HEX3|REG|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\comp_HEX3|REG|DOUT\(0) & ( (!\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(2) & !\comp_HEX3|REG|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX3|REG|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: FF_X17_Y2_N59
\comp_HEX3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(1));

-- Location: LABCELL_X17_Y2_N33
\comp_HEX3|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX3|REG|DOUT\(2) & ( (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(1) $ (!\comp_HEX3|REG|DOUT\(0)))) # (\comp_HEX3|REG|DOUT\(3) & ((!\comp_HEX3|REG|DOUT\(0)) # (\comp_HEX3|REG|DOUT\(1)))) ) 
-- ) # ( !\comp_HEX3|REG|DOUT\(2) & ( (\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(1) & \comp_HEX3|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X17_Y2_N6
\comp_HEX3|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX3|REG|DOUT\(2) & ( (\comp_HEX3|REG|DOUT\(3) & ((!\comp_HEX3|REG|DOUT\(0)) # (\comp_HEX3|REG|DOUT\(1)))) ) ) # ( !\comp_HEX3|REG|DOUT\(2) & ( (!\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(1) 
-- & !\comp_HEX3|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X17_Y2_N9
\comp_HEX3|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX3|REG|DOUT\(2) & ( (!\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(3) & !\comp_HEX3|REG|DOUT\(0))) # (\comp_HEX3|REG|DOUT\(1) & ((\comp_HEX3|REG|DOUT\(0)))) ) ) # ( !\comp_HEX3|REG|DOUT\(2) 
-- & ( (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(1) & \comp_HEX3|REG|DOUT\(0))) # (\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(1) & !\comp_HEX3|REG|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X17_Y2_N27
\comp_HEX3|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX3|REG|DOUT\(2) & ( (!\comp_HEX3|REG|DOUT\(3) & ((!\comp_HEX3|REG|DOUT\(1)) # (\comp_HEX3|REG|DOUT\(0)))) ) ) # ( !\comp_HEX3|REG|DOUT\(2) & ( (\comp_HEX3|REG|DOUT\(0) & 
-- ((!\comp_HEX3|REG|DOUT\(3)) # (!\comp_HEX3|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X17_Y2_N30
\comp_HEX3|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX3|REG|DOUT\(2) & ( (\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(1) $ (!\comp_HEX3|REG|DOUT\(3)))) ) ) # ( !\comp_HEX3|REG|DOUT\(2) & ( (!\comp_HEX3|REG|DOUT\(3) & 
-- ((\comp_HEX3|REG|DOUT\(0)) # (\comp_HEX3|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X16_Y2_N45
\comp_HEX3|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX3|REG|DOUT\(0) & ( (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(2) $ (\comp_HEX3|REG|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\comp_HEX3|REG|DOUT\(0) & ( (!\comp_HEX3|REG|DOUT[1]~DUPLICATE_q\ & 
-- (!\comp_HEX3|REG|DOUT\(2) $ (\comp_HEX3|REG|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000010001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX3|REG|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X16_Y2_N3
\DEC_Enderecos|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~4_combout\ = ( \ROM|memROM~9_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~4_combout\);

-- Location: FF_X16_Y2_N53
\comp_HEX4|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(3));

-- Location: FF_X16_Y2_N41
\comp_HEX4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(1));

-- Location: FF_X16_Y2_N38
\comp_HEX4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(2));

-- Location: FF_X16_Y2_N35
\comp_HEX4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(0));

-- Location: LABCELL_X16_Y2_N27
\comp_HEX4|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\ = ( \comp_HEX4|REG|DOUT\(0) & ( (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(1) & !\comp_HEX4|REG|DOUT\(2))) # (\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(1) $ (!\comp_HEX4|REG|DOUT\(2)))) ) ) # 
-- ( !\comp_HEX4|REG|DOUT\(0) & ( (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(1) & \comp_HEX4|REG|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X16_Y2_N12
\comp_HEX4|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX4|REG|DOUT\(0) & ( (!\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(3) & \comp_HEX4|REG|DOUT\(2))) # (\comp_HEX4|REG|DOUT\(1) & (\comp_HEX4|REG|DOUT\(3))) ) ) # ( !\comp_HEX4|REG|DOUT\(0) & ( 
-- (\comp_HEX4|REG|DOUT\(2) & ((\comp_HEX4|REG|DOUT\(3)) # (\comp_HEX4|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000011110000110000001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X16_Y2_N24
\comp_HEX4|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(0) & !\comp_HEX4|REG|DOUT\(2)))) # (\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(2) & ((!\comp_HEX4|REG|DOUT\(0)) # 
-- (\comp_HEX4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001010001001000000101000100100000010100010010000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X16_Y2_N48
\comp_HEX4|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX4|REG|DOUT\(1) & ( (!\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(2) & \comp_HEX4|REG|DOUT\(3))) # (\comp_HEX4|REG|DOUT\(0) & (\comp_HEX4|REG|DOUT\(2))) ) ) # ( !\comp_HEX4|REG|DOUT\(1) & ( 
-- (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(0) $ (!\comp_HEX4|REG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	dataf => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X16_Y2_N51
\comp_HEX4|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX4|REG|DOUT\(1) & ((!\comp_HEX4|REG|DOUT\(2) & (\comp_HEX4|REG|DOUT\(0))) # (\comp_HEX4|REG|DOUT\(2) & ((!\comp_HEX4|REG|DOUT\(3)))))) # (\comp_HEX4|REG|DOUT\(1) & (\comp_HEX4|REG|DOUT\(0) & 
-- ((!\comp_HEX4|REG|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101000000011101010100000001110101010000000111010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X16_Y2_N39
\comp_HEX4|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX4|REG|DOUT\(0) & ( !\comp_HEX4|REG|DOUT\(3) $ (((\comp_HEX4|REG|DOUT\(2) & !\comp_HEX4|REG|DOUT\(1)))) ) ) # ( !\comp_HEX4|REG|DOUT\(0) & ( (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(2) 
-- & \comp_HEX4|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X16_Y2_N36
\comp_HEX4|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX4|REG|DOUT\(1) & ( (!\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(0) & \comp_HEX4|REG|DOUT\(2))) ) ) # ( !\comp_HEX4|REG|DOUT\(1) & ( (!\comp_HEX4|REG|DOUT\(3) & 
-- ((!\comp_HEX4|REG|DOUT\(2)))) # (\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(0) & \comp_HEX4|REG|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	dataf => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X17_Y2_N3
\DEC_Enderecos|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Enderecos|Equal7~5_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~2_combout\ & \ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \DEC_Enderecos|Equal7~5_combout\);

-- Location: FF_X18_Y2_N26
\comp_HEX5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(2));

-- Location: FF_X18_Y2_N34
\comp_HEX5|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(3));

-- Location: FF_X18_Y2_N44
\comp_HEX5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(0));

-- Location: FF_X18_Y2_N29
\comp_HEX5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(1));

-- Location: MLABCELL_X18_Y2_N45
\comp_HEX5|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX5|REG|DOUT\(2) & (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(3) $ (\comp_HEX5|REG|DOUT\(1))))) # (\comp_HEX5|REG|DOUT\(2) & (!\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(3) $ 
-- (\comp_HEX5|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000010010010010000001001001001000000100100100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: FF_X18_Y2_N35
\comp_HEX5|REG|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DEC_Enderecos|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y2_N54
\comp_HEX5|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & ( (!\comp_HEX5|REG|DOUT\(0) & (\comp_HEX5|REG|DOUT\(2))) # (\comp_HEX5|REG|DOUT\(0) & ((\comp_HEX5|REG|DOUT\(1)))) ) ) # ( !\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & ( 
-- (\comp_HEX5|REG|DOUT\(2) & (!\comp_HEX5|REG|DOUT\(0) $ (!\comp_HEX5|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X18_Y2_N57
\comp_HEX5|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & ( (\comp_HEX5|REG|DOUT\(2) & ((!\comp_HEX5|REG|DOUT\(0)) # (\comp_HEX5|REG|DOUT\(1)))) ) ) # ( !\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & ( (!\comp_HEX5|REG|DOUT\(2) & 
-- (!\comp_HEX5|REG|DOUT\(0) & \comp_HEX5|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X18_Y2_N3
\comp_HEX5|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX5|REG|DOUT\(1) & ( (!\comp_HEX5|REG|DOUT\(2) & (!\comp_HEX5|REG|DOUT\(0) & \comp_HEX5|REG|DOUT[3]~DUPLICATE_q\)) # (\comp_HEX5|REG|DOUT\(2) & (\comp_HEX5|REG|DOUT\(0))) ) ) # ( 
-- !\comp_HEX5|REG|DOUT\(1) & ( (!\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & (!\comp_HEX5|REG|DOUT\(2) $ (!\comp_HEX5|REG|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000000100011001100101100110000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X18_Y2_N27
\comp_HEX5|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX5|REG|DOUT\(2) & ( (!\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & ((!\comp_HEX5|REG|DOUT\(1)) # (\comp_HEX5|REG|DOUT\(0)))) ) ) # ( !\comp_HEX5|REG|DOUT\(2) & ( (\comp_HEX5|REG|DOUT\(0) & 
-- ((!\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\) # (!\comp_HEX5|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X18_Y2_N42
\comp_HEX5|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX5|REG|DOUT\(2) & ( (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(3) $ (!\comp_HEX5|REG|DOUT\(1)))) ) ) # ( !\comp_HEX5|REG|DOUT\(2) & ( (!\comp_HEX5|REG|DOUT\(3) & 
-- ((\comp_HEX5|REG|DOUT\(0)) # (\comp_HEX5|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	dataf => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X18_Y2_N24
\comp_HEX5|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ $ (\comp_HEX5|REG|DOUT\(2))))) # (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT[3]~DUPLICATE_q\ & 
-- (!\comp_HEX5|REG|DOUT\(1) $ (\comp_HEX5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000010101000000100001010100000010000101010000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X54_Y19_N4
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N41
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X54_Y20_N4
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


