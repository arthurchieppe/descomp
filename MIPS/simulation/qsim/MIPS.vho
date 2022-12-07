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

-- DATE "12/07/2022 09:32:21"

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

ENTITY 	MIPS IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET_N : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	T0 : OUT std_logic_vector(31 DOWNTO 0);
	rsouta : OUT std_logic_vector(31 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MIPS;

ARCHITECTURE structure OF MIPS IS
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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_T0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rsouta : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \T0[0]~output_o\ : std_logic;
SIGNAL \T0[1]~output_o\ : std_logic;
SIGNAL \T0[2]~output_o\ : std_logic;
SIGNAL \T0[3]~output_o\ : std_logic;
SIGNAL \T0[4]~output_o\ : std_logic;
SIGNAL \T0[5]~output_o\ : std_logic;
SIGNAL \T0[6]~output_o\ : std_logic;
SIGNAL \T0[7]~output_o\ : std_logic;
SIGNAL \T0[8]~output_o\ : std_logic;
SIGNAL \T0[9]~output_o\ : std_logic;
SIGNAL \T0[10]~output_o\ : std_logic;
SIGNAL \T0[11]~output_o\ : std_logic;
SIGNAL \T0[12]~output_o\ : std_logic;
SIGNAL \T0[13]~output_o\ : std_logic;
SIGNAL \T0[14]~output_o\ : std_logic;
SIGNAL \T0[15]~output_o\ : std_logic;
SIGNAL \T0[16]~output_o\ : std_logic;
SIGNAL \T0[17]~output_o\ : std_logic;
SIGNAL \T0[18]~output_o\ : std_logic;
SIGNAL \T0[19]~output_o\ : std_logic;
SIGNAL \T0[20]~output_o\ : std_logic;
SIGNAL \T0[21]~output_o\ : std_logic;
SIGNAL \T0[22]~output_o\ : std_logic;
SIGNAL \T0[23]~output_o\ : std_logic;
SIGNAL \T0[24]~output_o\ : std_logic;
SIGNAL \T0[25]~output_o\ : std_logic;
SIGNAL \T0[26]~output_o\ : std_logic;
SIGNAL \T0[27]~output_o\ : std_logic;
SIGNAL \T0[28]~output_o\ : std_logic;
SIGNAL \T0[29]~output_o\ : std_logic;
SIGNAL \T0[30]~output_o\ : std_logic;
SIGNAL \T0[31]~output_o\ : std_logic;
SIGNAL \rsouta[0]~output_o\ : std_logic;
SIGNAL \rsouta[1]~output_o\ : std_logic;
SIGNAL \rsouta[2]~output_o\ : std_logic;
SIGNAL \rsouta[3]~output_o\ : std_logic;
SIGNAL \rsouta[4]~output_o\ : std_logic;
SIGNAL \rsouta[5]~output_o\ : std_logic;
SIGNAL \rsouta[6]~output_o\ : std_logic;
SIGNAL \rsouta[7]~output_o\ : std_logic;
SIGNAL \rsouta[8]~output_o\ : std_logic;
SIGNAL \rsouta[9]~output_o\ : std_logic;
SIGNAL \rsouta[10]~output_o\ : std_logic;
SIGNAL \rsouta[11]~output_o\ : std_logic;
SIGNAL \rsouta[12]~output_o\ : std_logic;
SIGNAL \rsouta[13]~output_o\ : std_logic;
SIGNAL \rsouta[14]~output_o\ : std_logic;
SIGNAL \rsouta[15]~output_o\ : std_logic;
SIGNAL \rsouta[16]~output_o\ : std_logic;
SIGNAL \rsouta[17]~output_o\ : std_logic;
SIGNAL \rsouta[18]~output_o\ : std_logic;
SIGNAL \rsouta[19]~output_o\ : std_logic;
SIGNAL \rsouta[20]~output_o\ : std_logic;
SIGNAL \rsouta[21]~output_o\ : std_logic;
SIGNAL \rsouta[22]~output_o\ : std_logic;
SIGNAL \rsouta[23]~output_o\ : std_logic;
SIGNAL \rsouta[24]~output_o\ : std_logic;
SIGNAL \rsouta[25]~output_o\ : std_logic;
SIGNAL \rsouta[26]~output_o\ : std_logic;
SIGNAL \rsouta[27]~output_o\ : std_logic;
SIGNAL \rsouta[28]~output_o\ : std_logic;
SIGNAL \rsouta[29]~output_o\ : std_logic;
SIGNAL \rsouta[30]~output_o\ : std_logic;
SIGNAL \rsouta[31]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \SOMA_PC|Add0~21_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~22\ : std_logic;
SIGNAL \SOMA_PC|Add0~17_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~18\ : std_logic;
SIGNAL \SOMA_PC|Add0~13_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~14\ : std_logic;
SIGNAL \SOMA_PC|Add0~9_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~10\ : std_logic;
SIGNAL \SOMA_PC|Add0~5_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~6\ : std_logic;
SIGNAL \SOMA_PC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ULA|ula_and[24]~24_combout\ : std_logic;
SIGNAL \REGS|registrador~350_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~2\ : std_logic;
SIGNAL \SOMA_PC|Add0~57_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~58\ : std_logic;
SIGNAL \SOMA_PC|Add0~69_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~70\ : std_logic;
SIGNAL \SOMA_PC|Add0~65_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~66\ : std_logic;
SIGNAL \SOMA_PC|Add0~61_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~62\ : std_logic;
SIGNAL \SOMA_PC|Add0~73_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~74\ : std_logic;
SIGNAL \SOMA_PC|Add0~85_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~86\ : std_logic;
SIGNAL \SOMA_PC|Add0~81_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~82\ : std_logic;
SIGNAL \SOMA_PC|Add0~77_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~78\ : std_logic;
SIGNAL \SOMA_PC|Add0~89_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~90\ : std_logic;
SIGNAL \SOMA_PC|Add0~101_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~102\ : std_logic;
SIGNAL \SOMA_PC|Add0~97_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~98\ : std_logic;
SIGNAL \SOMA_PC|Add0~93_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~94\ : std_logic;
SIGNAL \SOMA_PC|Add0~105_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~106\ : std_logic;
SIGNAL \SOMA_PC|Add0~117_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~118\ : std_logic;
SIGNAL \SOMA_PC|Add0~113_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~114\ : std_logic;
SIGNAL \SOMA_PC|Add0~109_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~110\ : std_logic;
SIGNAL \SOMA_PC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[24]~0_combout\ : std_logic;
SIGNAL \ULA|ula_and[25]~25_combout\ : std_logic;
SIGNAL \REGS|registrador~351_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~26\ : std_logic;
SIGNAL \SOMA_PC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[25]~1_combout\ : std_logic;
SIGNAL \ULA|ula_and[26]~26_combout\ : std_logic;
SIGNAL \REGS|registrador~352_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~30\ : std_logic;
SIGNAL \SOMA_PC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[26]~2_combout\ : std_logic;
SIGNAL \ULA|ula_and[27]~27_combout\ : std_logic;
SIGNAL \REGS|registrador~353_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~34\ : std_logic;
SIGNAL \SOMA_PC|Add0~37_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[27]~3_combout\ : std_logic;
SIGNAL \ULA|ula_and[28]~28_combout\ : std_logic;
SIGNAL \REGS|registrador~354_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~38\ : std_logic;
SIGNAL \SOMA_PC|Add0~41_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[28]~4_combout\ : std_logic;
SIGNAL \ULA|ula_and[29]~29_combout\ : std_logic;
SIGNAL \REGS|registrador~355_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~42\ : std_logic;
SIGNAL \SOMA_PC|Add0~45_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[29]~5_combout\ : std_logic;
SIGNAL \ULA|ula_and[30]~30_combout\ : std_logic;
SIGNAL \REGS|registrador~356_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~46\ : std_logic;
SIGNAL \SOMA_PC|Add0~49_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[30]~6_combout\ : std_logic;
SIGNAL \ULA|ula_and[31]~31_combout\ : std_logic;
SIGNAL \REGS|registrador~357_q\ : std_logic;
SIGNAL \SOMA_PC|Add0~50\ : std_logic;
SIGNAL \SOMA_PC|Add0~53_sumout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[31]~7_combout\ : std_logic;
SIGNAL \ULA|ula_and[0]~0_combout\ : std_logic;
SIGNAL \REGS|registrador~326_q\ : std_logic;
SIGNAL \REGS|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ULA|ula_and[1]~1_combout\ : std_logic;
SIGNAL \REGS|registrador~1062_combout\ : std_logic;
SIGNAL \REGS|registrador~327_q\ : std_logic;
SIGNAL \REGS|saidaB[1]~1_combout\ : std_logic;
SIGNAL \ULA|ula_and[2]~2_combout\ : std_logic;
SIGNAL \REGS|registrador~328_q\ : std_logic;
SIGNAL \REGS|saidaB[2]~2_combout\ : std_logic;
SIGNAL \ULA|ula_and[3]~3_combout\ : std_logic;
SIGNAL \REGS|registrador~1063_combout\ : std_logic;
SIGNAL \REGS|registrador~329_q\ : std_logic;
SIGNAL \REGS|saidaB[3]~3_combout\ : std_logic;
SIGNAL \ULA|ula_and[4]~4_combout\ : std_logic;
SIGNAL \REGS|registrador~1064_combout\ : std_logic;
SIGNAL \REGS|registrador~330_q\ : std_logic;
SIGNAL \REGS|saidaB[4]~4_combout\ : std_logic;
SIGNAL \ULA|ula_and[5]~5_combout\ : std_logic;
SIGNAL \REGS|registrador~331_q\ : std_logic;
SIGNAL \REGS|saidaB[5]~5_combout\ : std_logic;
SIGNAL \ULA|ula_and[6]~6_combout\ : std_logic;
SIGNAL \REGS|registrador~332_q\ : std_logic;
SIGNAL \REGS|saidaB[6]~6_combout\ : std_logic;
SIGNAL \ULA|ula_and[7]~7_combout\ : std_logic;
SIGNAL \REGS|registrador~333_q\ : std_logic;
SIGNAL \REGS|saidaB[7]~7_combout\ : std_logic;
SIGNAL \ULA|ula_and[8]~8_combout\ : std_logic;
SIGNAL \REGS|registrador~1065_combout\ : std_logic;
SIGNAL \REGS|registrador~334_q\ : std_logic;
SIGNAL \REGS|saidaB[8]~8_combout\ : std_logic;
SIGNAL \ULA|ula_and[9]~9_combout\ : std_logic;
SIGNAL \REGS|registrador~335_q\ : std_logic;
SIGNAL \REGS|saidaB[9]~9_combout\ : std_logic;
SIGNAL \ULA|ula_and[10]~10_combout\ : std_logic;
SIGNAL \REGS|registrador~336_q\ : std_logic;
SIGNAL \REGS|saidaB[10]~10_combout\ : std_logic;
SIGNAL \ULA|ula_and[11]~11_combout\ : std_logic;
SIGNAL \REGS|registrador~337_q\ : std_logic;
SIGNAL \REGS|saidaB[11]~11_combout\ : std_logic;
SIGNAL \ULA|ula_and[12]~12_combout\ : std_logic;
SIGNAL \REGS|registrador~1066_combout\ : std_logic;
SIGNAL \REGS|registrador~338_q\ : std_logic;
SIGNAL \REGS|saidaB[12]~12_combout\ : std_logic;
SIGNAL \ULA|ula_and[13]~13_combout\ : std_logic;
SIGNAL \REGS|registrador~339_q\ : std_logic;
SIGNAL \REGS|saidaB[13]~13_combout\ : std_logic;
SIGNAL \ULA|ula_and[14]~14_combout\ : std_logic;
SIGNAL \REGS|registrador~340_q\ : std_logic;
SIGNAL \REGS|saidaB[14]~14_combout\ : std_logic;
SIGNAL \ULA|ula_and[15]~15_combout\ : std_logic;
SIGNAL \REGS|registrador~341_q\ : std_logic;
SIGNAL \REGS|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ULA|ula_and[16]~16_combout\ : std_logic;
SIGNAL \REGS|registrador~1067_combout\ : std_logic;
SIGNAL \REGS|registrador~342_q\ : std_logic;
SIGNAL \REGS|saidaB[16]~16_combout\ : std_logic;
SIGNAL \ULA|ula_and[17]~17_combout\ : std_logic;
SIGNAL \REGS|registrador~343_q\ : std_logic;
SIGNAL \REGS|saidaB[17]~17_combout\ : std_logic;
SIGNAL \ULA|ula_and[18]~18_combout\ : std_logic;
SIGNAL \REGS|registrador~344_q\ : std_logic;
SIGNAL \REGS|saidaB[18]~18_combout\ : std_logic;
SIGNAL \ULA|ula_and[19]~19_combout\ : std_logic;
SIGNAL \REGS|registrador~345_q\ : std_logic;
SIGNAL \REGS|saidaB[19]~19_combout\ : std_logic;
SIGNAL \ULA|ula_and[20]~20_combout\ : std_logic;
SIGNAL \REGS|registrador~1068_combout\ : std_logic;
SIGNAL \REGS|registrador~346_q\ : std_logic;
SIGNAL \REGS|saidaB[20]~20_combout\ : std_logic;
SIGNAL \ULA|ula_and[21]~21_combout\ : std_logic;
SIGNAL \REGS|registrador~347_q\ : std_logic;
SIGNAL \REGS|saidaB[21]~21_combout\ : std_logic;
SIGNAL \ULA|ula_and[22]~22_combout\ : std_logic;
SIGNAL \REGS|registrador~348_q\ : std_logic;
SIGNAL \REGS|saidaB[22]~22_combout\ : std_logic;
SIGNAL \ULA|ula_and[23]~23_combout\ : std_logic;
SIGNAL \REGS|registrador~349_q\ : std_logic;
SIGNAL \REGS|saidaB[23]~23_combout\ : std_logic;
SIGNAL \REGS|saidaB[24]~24_combout\ : std_logic;
SIGNAL \REGS|saidaB[25]~25_combout\ : std_logic;
SIGNAL \REGS|saidaB[26]~26_combout\ : std_logic;
SIGNAL \REGS|saidaB[27]~27_combout\ : std_logic;
SIGNAL \REGS|saidaB[28]~28_combout\ : std_logic;
SIGNAL \REGS|saidaB[29]~29_combout\ : std_logic;
SIGNAL \REGS|saidaB[30]~30_combout\ : std_logic;
SIGNAL \REGS|saidaB[31]~31_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \COMP_HEX0|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[4]~14_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \COMP_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[11]~15_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[8]~18_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \COMP_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[15]~19_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \COMP_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \COMP_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \COMP_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA|ALT_INV_ula_and[8]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[7]~7_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[4]~4_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[3]~3_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[2]~2_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[1]~1_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[0]~0_combout\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~349_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~348_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~347_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~346_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~345_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~344_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~343_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~342_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~341_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~340_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~339_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~338_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~337_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~336_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~335_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~334_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~333_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~332_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~331_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~330_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~329_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~328_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~327_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~326_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \REGS|ALT_INV_registrador~357_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~356_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~355_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~354_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~353_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~352_q\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~351_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REGS|ALT_INV_registrador~350_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \COMP_HEX0|ALT_INV_rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \COMP_HEX0|ALT_INV_rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[0]~10_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[23]~23_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[20]~20_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[19]~19_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[16]~16_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[15]~15_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[12]~12_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_ula_and[11]~11_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
T0 <= ww_T0;
rsouta <= ww_rsouta;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA|ALT_INV_ula_and[8]~8_combout\ <= NOT \ULA|ula_and[8]~8_combout\;
\ULA|ALT_INV_ula_and[7]~7_combout\ <= NOT \ULA|ula_and[7]~7_combout\;
\ULA|ALT_INV_ula_and[4]~4_combout\ <= NOT \ULA|ula_and[4]~4_combout\;
\ULA|ALT_INV_ula_and[3]~3_combout\ <= NOT \ULA|ula_and[3]~3_combout\;
\ULA|ALT_INV_ula_and[2]~2_combout\ <= NOT \ULA|ula_and[2]~2_combout\;
\ULA|ALT_INV_ula_and[1]~1_combout\ <= NOT \ULA|ula_and[1]~1_combout\;
\ULA|ALT_INV_ula_and[0]~0_combout\ <= NOT \ULA|ula_and[0]~0_combout\;
\REGS|ALT_INV_registrador~349_q\ <= NOT \REGS|registrador~349_q\;
\REGS|ALT_INV_registrador~348_q\ <= NOT \REGS|registrador~348_q\;
\REGS|ALT_INV_registrador~347_q\ <= NOT \REGS|registrador~347_q\;
\REGS|ALT_INV_registrador~346_q\ <= NOT \REGS|registrador~346_q\;
\REGS|ALT_INV_registrador~345_q\ <= NOT \REGS|registrador~345_q\;
\REGS|ALT_INV_registrador~344_q\ <= NOT \REGS|registrador~344_q\;
\REGS|ALT_INV_registrador~343_q\ <= NOT \REGS|registrador~343_q\;
\REGS|ALT_INV_registrador~342_q\ <= NOT \REGS|registrador~342_q\;
\REGS|ALT_INV_registrador~341_q\ <= NOT \REGS|registrador~341_q\;
\REGS|ALT_INV_registrador~340_q\ <= NOT \REGS|registrador~340_q\;
\REGS|ALT_INV_registrador~339_q\ <= NOT \REGS|registrador~339_q\;
\REGS|ALT_INV_registrador~338_q\ <= NOT \REGS|registrador~338_q\;
\REGS|ALT_INV_registrador~337_q\ <= NOT \REGS|registrador~337_q\;
\REGS|ALT_INV_registrador~336_q\ <= NOT \REGS|registrador~336_q\;
\REGS|ALT_INV_registrador~335_q\ <= NOT \REGS|registrador~335_q\;
\REGS|ALT_INV_registrador~334_q\ <= NOT \REGS|registrador~334_q\;
\REGS|ALT_INV_registrador~333_q\ <= NOT \REGS|registrador~333_q\;
\REGS|ALT_INV_registrador~332_q\ <= NOT \REGS|registrador~332_q\;
\REGS|ALT_INV_registrador~331_q\ <= NOT \REGS|registrador~331_q\;
\REGS|ALT_INV_registrador~330_q\ <= NOT \REGS|registrador~330_q\;
\REGS|ALT_INV_registrador~329_q\ <= NOT \REGS|registrador~329_q\;
\REGS|ALT_INV_registrador~328_q\ <= NOT \REGS|registrador~328_q\;
\REGS|ALT_INV_registrador~327_q\ <= NOT \REGS|registrador~327_q\;
\REGS|ALT_INV_registrador~326_q\ <= NOT \REGS|registrador~326_q\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\REGS|ALT_INV_registrador~357_q\ <= NOT \REGS|registrador~357_q\;
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\REGS|ALT_INV_registrador~356_q\ <= NOT \REGS|registrador~356_q\;
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\REGS|ALT_INV_registrador~355_q\ <= NOT \REGS|registrador~355_q\;
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\REGS|ALT_INV_registrador~354_q\ <= NOT \REGS|registrador~354_q\;
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\REGS|ALT_INV_registrador~353_q\ <= NOT \REGS|registrador~353_q\;
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\REGS|ALT_INV_registrador~352_q\ <= NOT \REGS|registrador~352_q\;
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\REGS|ALT_INV_registrador~351_q\ <= NOT \REGS|registrador~351_q\;
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\REGS|ALT_INV_registrador~350_q\ <= NOT \REGS|registrador~350_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[20]~30_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[21]~29_combout\;
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[22]~28_combout\;
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[23]~27_combout\;
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[16]~26_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[17]~25_combout\;
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[18]~24_combout\;
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[19]~23_combout\;
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[12]~22_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[13]~21_combout\;
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[14]~20_combout\;
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[15]~19_combout\;
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[8]~18_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[9]~17_combout\;
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[10]~16_combout\;
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[11]~15_combout\;
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[4]~14_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[5]~13_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[6]~12_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[7]~11_combout\;
\COMP_HEX0|ALT_INV_rascSaida7seg[2]~3_combout\ <= NOT \COMP_HEX0|rascSaida7seg[2]~3_combout\;
\COMP_HEX0|ALT_INV_rascSaida7seg[1]~2_combout\ <= NOT \COMP_HEX0|rascSaida7seg[1]~2_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[0]~10_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[0]~10_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[3]~9_combout\;
\MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\ <= NOT \MUX_HEX_LEDS|saida_MUX[2]~8_combout\;
\ULA|ALT_INV_ula_and[23]~23_combout\ <= NOT \ULA|ula_and[23]~23_combout\;
\ULA|ALT_INV_ula_and[20]~20_combout\ <= NOT \ULA|ula_and[20]~20_combout\;
\ULA|ALT_INV_ula_and[19]~19_combout\ <= NOT \ULA|ula_and[19]~19_combout\;
\ULA|ALT_INV_ula_and[16]~16_combout\ <= NOT \ULA|ula_and[16]~16_combout\;
\ULA|ALT_INV_ula_and[15]~15_combout\ <= NOT \ULA|ula_and[15]~15_combout\;
\ULA|ALT_INV_ula_and[12]~12_combout\ <= NOT \ULA|ula_and[12]~12_combout\;
\ULA|ALT_INV_ula_and[11]~11_combout\ <= NOT \ULA|ula_and[11]~11_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[24]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[25]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[26]~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[27]~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[28]~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[29]~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[30]~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_HEX_LEDS|saida_MUX[31]~7_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

\T0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \T0[0]~output_o\);

\T0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \T0[1]~output_o\);

\T0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \T0[2]~output_o\);

\T0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \T0[3]~output_o\);

\T0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \T0[4]~output_o\);

\T0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \T0[5]~output_o\);

\T0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \T0[6]~output_o\);

\T0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \T0[7]~output_o\);

\T0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \T0[8]~output_o\);

\T0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \T0[9]~output_o\);

\T0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \T0[10]~output_o\);

\T0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \T0[11]~output_o\);

\T0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \T0[12]~output_o\);

\T0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \T0[13]~output_o\);

\T0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \T0[14]~output_o\);

\T0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \T0[15]~output_o\);

\T0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \T0[16]~output_o\);

\T0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \T0[17]~output_o\);

\T0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \T0[18]~output_o\);

\T0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \T0[19]~output_o\);

\T0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \T0[20]~output_o\);

\T0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \T0[21]~output_o\);

\T0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \T0[22]~output_o\);

\T0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \T0[23]~output_o\);

\T0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \T0[24]~output_o\);

\T0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \T0[25]~output_o\);

\T0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \T0[26]~output_o\);

\T0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \T0[27]~output_o\);

\T0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \T0[28]~output_o\);

\T0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \T0[29]~output_o\);

\T0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \T0[30]~output_o\);

\T0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGS|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \T0[31]~output_o\);

\rsouta[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[0]~0_combout\,
	devoe => ww_devoe,
	o => \rsouta[0]~output_o\);

\rsouta[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[1]~1_combout\,
	devoe => ww_devoe,
	o => \rsouta[1]~output_o\);

\rsouta[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[2]~2_combout\,
	devoe => ww_devoe,
	o => \rsouta[2]~output_o\);

\rsouta[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[3]~3_combout\,
	devoe => ww_devoe,
	o => \rsouta[3]~output_o\);

\rsouta[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_ula_and[4]~4_combout\,
	devoe => ww_devoe,
	o => \rsouta[4]~output_o\);

\rsouta[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[5]~5_combout\,
	devoe => ww_devoe,
	o => \rsouta[5]~output_o\);

\rsouta[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[6]~6_combout\,
	devoe => ww_devoe,
	o => \rsouta[6]~output_o\);

\rsouta[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[7]~7_combout\,
	devoe => ww_devoe,
	o => \rsouta[7]~output_o\);

\rsouta[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_ula_and[8]~8_combout\,
	devoe => ww_devoe,
	o => \rsouta[8]~output_o\);

\rsouta[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[9]~9_combout\,
	devoe => ww_devoe,
	o => \rsouta[9]~output_o\);

\rsouta[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[10]~10_combout\,
	devoe => ww_devoe,
	o => \rsouta[10]~output_o\);

\rsouta[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[11]~11_combout\,
	devoe => ww_devoe,
	o => \rsouta[11]~output_o\);

\rsouta[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_ula_and[12]~12_combout\,
	devoe => ww_devoe,
	o => \rsouta[12]~output_o\);

\rsouta[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[13]~13_combout\,
	devoe => ww_devoe,
	o => \rsouta[13]~output_o\);

\rsouta[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[14]~14_combout\,
	devoe => ww_devoe,
	o => \rsouta[14]~output_o\);

\rsouta[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[15]~15_combout\,
	devoe => ww_devoe,
	o => \rsouta[15]~output_o\);

\rsouta[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_ula_and[16]~16_combout\,
	devoe => ww_devoe,
	o => \rsouta[16]~output_o\);

\rsouta[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[17]~17_combout\,
	devoe => ww_devoe,
	o => \rsouta[17]~output_o\);

\rsouta[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[18]~18_combout\,
	devoe => ww_devoe,
	o => \rsouta[18]~output_o\);

\rsouta[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[19]~19_combout\,
	devoe => ww_devoe,
	o => \rsouta[19]~output_o\);

\rsouta[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_ula_and[20]~20_combout\,
	devoe => ww_devoe,
	o => \rsouta[20]~output_o\);

\rsouta[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[21]~21_combout\,
	devoe => ww_devoe,
	o => \rsouta[21]~output_o\);

\rsouta[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[22]~22_combout\,
	devoe => ww_devoe,
	o => \rsouta[22]~output_o\);

\rsouta[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[23]~23_combout\,
	devoe => ww_devoe,
	o => \rsouta[23]~output_o\);

\rsouta[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[24]~24_combout\,
	devoe => ww_devoe,
	o => \rsouta[24]~output_o\);

\rsouta[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[25]~25_combout\,
	devoe => ww_devoe,
	o => \rsouta[25]~output_o\);

\rsouta[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[26]~26_combout\,
	devoe => ww_devoe,
	o => \rsouta[26]~output_o\);

\rsouta[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[27]~27_combout\,
	devoe => ww_devoe,
	o => \rsouta[27]~output_o\);

\rsouta[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[28]~28_combout\,
	devoe => ww_devoe,
	o => \rsouta[28]~output_o\);

\rsouta[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[29]~29_combout\,
	devoe => ww_devoe,
	o => \rsouta[29]~output_o\);

\rsouta[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[30]~30_combout\,
	devoe => ww_devoe,
	o => \rsouta[30]~output_o\);

\rsouta[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ula_and[31]~31_combout\,
	devoe => ww_devoe,
	o => \rsouta[31]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|ALT_INV_rascSaida7seg[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[5]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX0|rascSaida7seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

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

\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\gravar:detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

\SOMA_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~21_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \SOMA_PC|Add0~22\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \SOMA_PC|Add0~21_sumout\,
	cout => \SOMA_PC|Add0~22\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOMA_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~17_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMA_PC|Add0~22\ ))
-- \SOMA_PC|Add0~18\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \SOMA_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \SOMA_PC|Add0~22\,
	sumout => \SOMA_PC|Add0~17_sumout\,
	cout => \SOMA_PC|Add0~18\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\SOMA_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMA_PC|Add0~18\ ))
-- \SOMA_PC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMA_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMA_PC|Add0~18\,
	sumout => \SOMA_PC|Add0~13_sumout\,
	cout => \SOMA_PC|Add0~14\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOMA_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMA_PC|Add0~14\ ))
-- \SOMA_PC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMA_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMA_PC|Add0~14\,
	sumout => \SOMA_PC|Add0~9_sumout\,
	cout => \SOMA_PC|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOMA_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMA_PC|Add0~10\ ))
-- \SOMA_PC|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMA_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMA_PC|Add0~10\,
	sumout => \SOMA_PC|Add0~5_sumout\,
	cout => \SOMA_PC|Add0~6\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOMA_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMA_PC|Add0~6\ ))
-- \SOMA_PC|Add0~2\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMA_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMA_PC|Add0~6\,
	sumout => \SOMA_PC|Add0~1_sumout\,
	cout => \SOMA_PC|Add0~2\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(3) & ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

\ULA|ula_and[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[24]~24_combout\ = (!\REGS|registrador~350_q\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|ALT_INV_registrador~350_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ULA|ula_and[24]~24_combout\);

\REGS|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[24]~24_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~350_q\);

\SOMA_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~57_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMA_PC|Add0~2\ ))
-- \SOMA_PC|Add0~58\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMA_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOMA_PC|Add0~2\,
	sumout => \SOMA_PC|Add0~57_sumout\,
	cout => \SOMA_PC|Add0~58\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\SOMA_PC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~69_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMA_PC|Add0~58\ ))
-- \SOMA_PC|Add0~70\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMA_PC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \SOMA_PC|Add0~58\,
	sumout => \SOMA_PC|Add0~69_sumout\,
	cout => \SOMA_PC|Add0~70\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\SOMA_PC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~65_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMA_PC|Add0~70\ ))
-- \SOMA_PC|Add0~66\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMA_PC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \SOMA_PC|Add0~70\,
	sumout => \SOMA_PC|Add0~65_sumout\,
	cout => \SOMA_PC|Add0~66\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\SOMA_PC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~61_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMA_PC|Add0~66\ ))
-- \SOMA_PC|Add0~62\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMA_PC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \SOMA_PC|Add0~66\,
	sumout => \SOMA_PC|Add0~61_sumout\,
	cout => \SOMA_PC|Add0~62\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\SOMA_PC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~73_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMA_PC|Add0~62\ ))
-- \SOMA_PC|Add0~74\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMA_PC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \SOMA_PC|Add0~62\,
	sumout => \SOMA_PC|Add0~73_sumout\,
	cout => \SOMA_PC|Add0~74\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\SOMA_PC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~85_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMA_PC|Add0~74\ ))
-- \SOMA_PC|Add0~86\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMA_PC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \SOMA_PC|Add0~74\,
	sumout => \SOMA_PC|Add0~85_sumout\,
	cout => \SOMA_PC|Add0~86\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\SOMA_PC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~81_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMA_PC|Add0~86\ ))
-- \SOMA_PC|Add0~82\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMA_PC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \SOMA_PC|Add0~86\,
	sumout => \SOMA_PC|Add0~81_sumout\,
	cout => \SOMA_PC|Add0~82\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\SOMA_PC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~77_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMA_PC|Add0~82\ ))
-- \SOMA_PC|Add0~78\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMA_PC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \SOMA_PC|Add0~82\,
	sumout => \SOMA_PC|Add0~77_sumout\,
	cout => \SOMA_PC|Add0~78\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\SOMA_PC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~89_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMA_PC|Add0~78\ ))
-- \SOMA_PC|Add0~90\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMA_PC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \SOMA_PC|Add0~78\,
	sumout => \SOMA_PC|Add0~89_sumout\,
	cout => \SOMA_PC|Add0~90\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\SOMA_PC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~101_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMA_PC|Add0~90\ ))
-- \SOMA_PC|Add0~102\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMA_PC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \SOMA_PC|Add0~90\,
	sumout => \SOMA_PC|Add0~101_sumout\,
	cout => \SOMA_PC|Add0~102\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\SOMA_PC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~97_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMA_PC|Add0~102\ ))
-- \SOMA_PC|Add0~98\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMA_PC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \SOMA_PC|Add0~102\,
	sumout => \SOMA_PC|Add0~97_sumout\,
	cout => \SOMA_PC|Add0~98\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\SOMA_PC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~93_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMA_PC|Add0~98\ ))
-- \SOMA_PC|Add0~94\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMA_PC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \SOMA_PC|Add0~98\,
	sumout => \SOMA_PC|Add0~93_sumout\,
	cout => \SOMA_PC|Add0~94\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\SOMA_PC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~105_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMA_PC|Add0~94\ ))
-- \SOMA_PC|Add0~106\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMA_PC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \SOMA_PC|Add0~94\,
	sumout => \SOMA_PC|Add0~105_sumout\,
	cout => \SOMA_PC|Add0~106\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\SOMA_PC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~117_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMA_PC|Add0~106\ ))
-- \SOMA_PC|Add0~118\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMA_PC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \SOMA_PC|Add0~106\,
	sumout => \SOMA_PC|Add0~117_sumout\,
	cout => \SOMA_PC|Add0~118\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\SOMA_PC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~113_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMA_PC|Add0~118\ ))
-- \SOMA_PC|Add0~114\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMA_PC|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \SOMA_PC|Add0~118\,
	sumout => \SOMA_PC|Add0~113_sumout\,
	cout => \SOMA_PC|Add0~114\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\SOMA_PC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~109_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMA_PC|Add0~114\ ))
-- \SOMA_PC|Add0~110\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMA_PC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \SOMA_PC|Add0~114\,
	sumout => \SOMA_PC|Add0~109_sumout\,
	cout => \SOMA_PC|Add0~110\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\SOMA_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~25_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMA_PC|Add0~110\ ))
-- \SOMA_PC|Add0~26\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMA_PC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \SOMA_PC|Add0~110\,
	sumout => \SOMA_PC|Add0~25_sumout\,
	cout => \SOMA_PC|Add0~26\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\MUX_HEX_LEDS|saida_MUX[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[24]~0_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(24))))) # (\SW[0]~input_o\ & (!\REGS|registrador~350_q\ & (\ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \REGS|ALT_INV_registrador~350_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT\(24),
	combout => \MUX_HEX_LEDS|saida_MUX[24]~0_combout\);

\ULA|ula_and[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[25]~25_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~351_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~351_q\,
	combout => \ULA|ula_and[25]~25_combout\);

\REGS|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[25]~25_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~351_q\);

\SOMA_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~29_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMA_PC|Add0~26\ ))
-- \SOMA_PC|Add0~30\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMA_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \SOMA_PC|Add0~26\,
	sumout => \SOMA_PC|Add0~29_sumout\,
	cout => \SOMA_PC|Add0~30\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\MUX_HEX_LEDS|saida_MUX[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[25]~1_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(25))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~351_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~351_q\,
	datad => \PC|ALT_INV_DOUT\(25),
	combout => \MUX_HEX_LEDS|saida_MUX[25]~1_combout\);

\ULA|ula_and[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[26]~26_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~352_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~352_q\,
	combout => \ULA|ula_and[26]~26_combout\);

\REGS|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[26]~26_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~352_q\);

\SOMA_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~33_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMA_PC|Add0~30\ ))
-- \SOMA_PC|Add0~34\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMA_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \SOMA_PC|Add0~30\,
	sumout => \SOMA_PC|Add0~33_sumout\,
	cout => \SOMA_PC|Add0~34\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\MUX_HEX_LEDS|saida_MUX[26]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[26]~2_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(26))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~352_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~352_q\,
	datad => \PC|ALT_INV_DOUT\(26),
	combout => \MUX_HEX_LEDS|saida_MUX[26]~2_combout\);

\ULA|ula_and[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[27]~27_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~353_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~353_q\,
	combout => \ULA|ula_and[27]~27_combout\);

\REGS|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[27]~27_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~353_q\);

\SOMA_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~37_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMA_PC|Add0~34\ ))
-- \SOMA_PC|Add0~38\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMA_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \SOMA_PC|Add0~34\,
	sumout => \SOMA_PC|Add0~37_sumout\,
	cout => \SOMA_PC|Add0~38\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\MUX_HEX_LEDS|saida_MUX[27]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[27]~3_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(27))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~353_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~353_q\,
	datad => \PC|ALT_INV_DOUT\(27),
	combout => \MUX_HEX_LEDS|saida_MUX[27]~3_combout\);

\ULA|ula_and[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[28]~28_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~354_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~354_q\,
	combout => \ULA|ula_and[28]~28_combout\);

\REGS|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[28]~28_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~354_q\);

\SOMA_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~41_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMA_PC|Add0~38\ ))
-- \SOMA_PC|Add0~42\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMA_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \SOMA_PC|Add0~38\,
	sumout => \SOMA_PC|Add0~41_sumout\,
	cout => \SOMA_PC|Add0~42\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\MUX_HEX_LEDS|saida_MUX[28]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[28]~4_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(28))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~354_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~354_q\,
	datad => \PC|ALT_INV_DOUT\(28),
	combout => \MUX_HEX_LEDS|saida_MUX[28]~4_combout\);

\ULA|ula_and[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[29]~29_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~355_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~355_q\,
	combout => \ULA|ula_and[29]~29_combout\);

\REGS|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[29]~29_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~355_q\);

\SOMA_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~45_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMA_PC|Add0~42\ ))
-- \SOMA_PC|Add0~46\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMA_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \SOMA_PC|Add0~42\,
	sumout => \SOMA_PC|Add0~45_sumout\,
	cout => \SOMA_PC|Add0~46\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\MUX_HEX_LEDS|saida_MUX[29]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[29]~5_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(29))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~355_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~355_q\,
	datad => \PC|ALT_INV_DOUT\(29),
	combout => \MUX_HEX_LEDS|saida_MUX[29]~5_combout\);

\ULA|ula_and[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[30]~30_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~356_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~356_q\,
	combout => \ULA|ula_and[30]~30_combout\);

\REGS|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[30]~30_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~356_q\);

\SOMA_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~49_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMA_PC|Add0~46\ ))
-- \SOMA_PC|Add0~50\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMA_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \SOMA_PC|Add0~46\,
	sumout => \SOMA_PC|Add0~49_sumout\,
	cout => \SOMA_PC|Add0~50\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\MUX_HEX_LEDS|saida_MUX[30]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[30]~6_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(30))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~356_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~356_q\,
	datad => \PC|ALT_INV_DOUT\(30),
	combout => \MUX_HEX_LEDS|saida_MUX[30]~6_combout\);

\ULA|ula_and[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[31]~31_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~357_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~357_q\,
	combout => \ULA|ula_and[31]~31_combout\);

\REGS|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[31]~31_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~357_q\);

\SOMA_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~53_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \SOMA_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \SOMA_PC|Add0~50\,
	sumout => \SOMA_PC|Add0~53_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \SOMA_PC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\MUX_HEX_LEDS|saida_MUX[31]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[31]~7_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(31))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~357_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~357_q\,
	datad => \PC|ALT_INV_DOUT\(31),
	combout => \MUX_HEX_LEDS|saida_MUX[31]~7_combout\);

\ULA|ula_and[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[0]~0_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~326_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~326_q\,
	combout => \ULA|ula_and[0]~0_combout\);

\REGS|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[0]~0_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~326_q\);

\REGS|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[0]~0_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~326_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~326_q\,
	combout => \REGS|saidaB[0]~0_combout\);

\ULA|ula_and[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[1]~1_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~327_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~327_q\,
	combout => \ULA|ula_and[1]~1_combout\);

\REGS|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1062_combout\ = !\ULA|ula_and[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[1]~1_combout\,
	combout => \REGS|registrador~1062_combout\);

\REGS|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1062_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~327_q\);

\REGS|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[1]~1_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~327_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~327_q\,
	combout => \REGS|saidaB[1]~1_combout\);

\ULA|ula_and[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[2]~2_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~328_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~328_q\,
	combout => \ULA|ula_and[2]~2_combout\);

\REGS|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[2]~2_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~328_q\);

\REGS|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[2]~2_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~328_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~328_q\,
	combout => \REGS|saidaB[2]~2_combout\);

\ULA|ula_and[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[3]~3_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~329_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~329_q\,
	combout => \ULA|ula_and[3]~3_combout\);

\REGS|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1063_combout\ = !\ULA|ula_and[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[3]~3_combout\,
	combout => \REGS|registrador~1063_combout\);

\REGS|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1063_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~329_q\);

\REGS|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[3]~3_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~329_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~329_q\,
	combout => \REGS|saidaB[3]~3_combout\);

\ULA|ula_and[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[4]~4_combout\ = (!\ROM|memROM~0_combout\) # (\REGS|registrador~330_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~330_q\,
	combout => \ULA|ula_and[4]~4_combout\);

\REGS|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1064_combout\ = !\ULA|ula_and[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[4]~4_combout\,
	combout => \REGS|registrador~1064_combout\);

\REGS|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1064_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~330_q\);

\REGS|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[4]~4_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~330_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~330_q\,
	combout => \REGS|saidaB[4]~4_combout\);

\ULA|ula_and[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[5]~5_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~331_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~331_q\,
	combout => \ULA|ula_and[5]~5_combout\);

\REGS|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[5]~5_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~331_q\);

\REGS|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[5]~5_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~331_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~331_q\,
	combout => \REGS|saidaB[5]~5_combout\);

\ULA|ula_and[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[6]~6_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~332_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~332_q\,
	combout => \ULA|ula_and[6]~6_combout\);

\REGS|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[6]~6_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~332_q\);

\REGS|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[6]~6_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~332_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~332_q\,
	combout => \REGS|saidaB[6]~6_combout\);

\ULA|ula_and[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[7]~7_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~333_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~333_q\,
	combout => \ULA|ula_and[7]~7_combout\);

\REGS|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[7]~7_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~333_q\);

\REGS|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[7]~7_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~333_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~333_q\,
	combout => \REGS|saidaB[7]~7_combout\);

\ULA|ula_and[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[8]~8_combout\ = (!\ROM|memROM~0_combout\) # (\REGS|registrador~334_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~334_q\,
	combout => \ULA|ula_and[8]~8_combout\);

\REGS|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1065_combout\ = !\ULA|ula_and[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[8]~8_combout\,
	combout => \REGS|registrador~1065_combout\);

\REGS|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1065_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~334_q\);

\REGS|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[8]~8_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~334_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~334_q\,
	combout => \REGS|saidaB[8]~8_combout\);

\ULA|ula_and[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[9]~9_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~335_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~335_q\,
	combout => \ULA|ula_and[9]~9_combout\);

\REGS|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[9]~9_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~335_q\);

\REGS|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[9]~9_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~335_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~335_q\,
	combout => \REGS|saidaB[9]~9_combout\);

\ULA|ula_and[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[10]~10_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~336_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~336_q\,
	combout => \ULA|ula_and[10]~10_combout\);

\REGS|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[10]~10_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~336_q\);

\REGS|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[10]~10_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~336_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~336_q\,
	combout => \REGS|saidaB[10]~10_combout\);

\ULA|ula_and[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[11]~11_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~337_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~337_q\,
	combout => \ULA|ula_and[11]~11_combout\);

\REGS|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[11]~11_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~337_q\);

\REGS|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[11]~11_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~337_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~337_q\,
	combout => \REGS|saidaB[11]~11_combout\);

\ULA|ula_and[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[12]~12_combout\ = (!\ROM|memROM~0_combout\) # (\REGS|registrador~338_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~338_q\,
	combout => \ULA|ula_and[12]~12_combout\);

\REGS|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1066_combout\ = !\ULA|ula_and[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[12]~12_combout\,
	combout => \REGS|registrador~1066_combout\);

\REGS|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1066_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~338_q\);

\REGS|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[12]~12_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~338_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~338_q\,
	combout => \REGS|saidaB[12]~12_combout\);

\ULA|ula_and[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[13]~13_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~339_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~339_q\,
	combout => \ULA|ula_and[13]~13_combout\);

\REGS|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[13]~13_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~339_q\);

\REGS|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[13]~13_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~339_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~339_q\,
	combout => \REGS|saidaB[13]~13_combout\);

\ULA|ula_and[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[14]~14_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~340_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~340_q\,
	combout => \ULA|ula_and[14]~14_combout\);

\REGS|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[14]~14_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~340_q\);

\REGS|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[14]~14_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~340_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~340_q\,
	combout => \REGS|saidaB[14]~14_combout\);

\ULA|ula_and[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[15]~15_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~341_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~341_q\,
	combout => \ULA|ula_and[15]~15_combout\);

\REGS|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[15]~15_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~341_q\);

\REGS|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[15]~15_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~341_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~341_q\,
	combout => \REGS|saidaB[15]~15_combout\);

\ULA|ula_and[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[16]~16_combout\ = (!\ROM|memROM~0_combout\) # (\REGS|registrador~342_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~342_q\,
	combout => \ULA|ula_and[16]~16_combout\);

\REGS|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1067_combout\ = !\ULA|ula_and[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[16]~16_combout\,
	combout => \REGS|registrador~1067_combout\);

\REGS|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1067_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~342_q\);

\REGS|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[16]~16_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~342_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~342_q\,
	combout => \REGS|saidaB[16]~16_combout\);

\ULA|ula_and[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[17]~17_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~343_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~343_q\,
	combout => \ULA|ula_and[17]~17_combout\);

\REGS|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[17]~17_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~343_q\);

\REGS|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[17]~17_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~343_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~343_q\,
	combout => \REGS|saidaB[17]~17_combout\);

\ULA|ula_and[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[18]~18_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~344_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~344_q\,
	combout => \ULA|ula_and[18]~18_combout\);

\REGS|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[18]~18_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~344_q\);

\REGS|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[18]~18_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~344_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~344_q\,
	combout => \REGS|saidaB[18]~18_combout\);

\ULA|ula_and[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[19]~19_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~345_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~345_q\,
	combout => \ULA|ula_and[19]~19_combout\);

\REGS|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[19]~19_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~345_q\);

\REGS|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[19]~19_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~345_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~345_q\,
	combout => \REGS|saidaB[19]~19_combout\);

\ULA|ula_and[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[20]~20_combout\ = (!\ROM|memROM~0_combout\) # (\REGS|registrador~346_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~346_q\,
	combout => \ULA|ula_and[20]~20_combout\);

\REGS|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|registrador~1068_combout\ = !\ULA|ula_and[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[20]~20_combout\,
	combout => \REGS|registrador~1068_combout\);

\REGS|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REGS|registrador~1068_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~346_q\);

\REGS|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[20]~20_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~346_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~346_q\,
	combout => \REGS|saidaB[20]~20_combout\);

\ULA|ula_and[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[21]~21_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~347_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~347_q\,
	combout => \ULA|ula_and[21]~21_combout\);

\REGS|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[21]~21_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~347_q\);

\REGS|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[21]~21_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~347_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~347_q\,
	combout => \REGS|saidaB[21]~21_combout\);

\ULA|ula_and[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[22]~22_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~348_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~348_q\,
	combout => \ULA|ula_and[22]~22_combout\);

\REGS|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[22]~22_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~348_q\);

\REGS|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[22]~22_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~348_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~348_q\,
	combout => \REGS|saidaB[22]~22_combout\);

\ULA|ula_and[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ula_and[23]~23_combout\ = (\ROM|memROM~0_combout\ & !\REGS|registrador~349_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~349_q\,
	combout => \ULA|ula_and[23]~23_combout\);

\REGS|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \ULA|ula_and[23]~23_combout\,
	ena => \ROM|memROM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGS|registrador~349_q\);

\REGS|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[23]~23_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~349_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~349_q\,
	combout => \REGS|saidaB[23]~23_combout\);

\REGS|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[24]~24_combout\ = (\REGS|registrador~350_q\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGS|ALT_INV_registrador~350_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	combout => \REGS|saidaB[24]~24_combout\);

\REGS|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[25]~25_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~351_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~351_q\,
	combout => \REGS|saidaB[25]~25_combout\);

\REGS|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[26]~26_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~352_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~352_q\,
	combout => \REGS|saidaB[26]~26_combout\);

\REGS|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[27]~27_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~353_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~353_q\,
	combout => \REGS|saidaB[27]~27_combout\);

\REGS|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[28]~28_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~354_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~354_q\,
	combout => \REGS|saidaB[28]~28_combout\);

\REGS|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[29]~29_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~355_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~355_q\,
	combout => \REGS|saidaB[29]~29_combout\);

\REGS|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[30]~30_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~356_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~356_q\,
	combout => \REGS|saidaB[30]~30_combout\);

\REGS|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \REGS|saidaB[31]~31_combout\ = (\ROM|memROM~0_combout\ & \REGS|registrador~357_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \REGS|ALT_INV_registrador~357_q\,
	combout => \REGS|saidaB[31]~31_combout\);

\MUX_HEX_LEDS|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[2]~8_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(2))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & !\REGS|registrador~328_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~328_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[2]~8_combout\);

\COMP_HEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[0]~0_combout\ = ( \SW[0]~input_o\ & ( \MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & ( (!\ULA|ula_and[1]~1_combout\ & (!\ULA|ula_and[0]~0_combout\ $ (\ULA|ula_and[3]~3_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- \MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & ( !\PC|DOUT\(3) ) ) ) # ( \SW[0]~input_o\ & ( !\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & ( (\ULA|ula_and[0]~0_combout\ & (!\ULA|ula_and[3]~3_combout\ $ (\ULA|ula_and[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000001000111110000111100001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[0]~0_combout\,
	datab => \ULA|ALT_INV_ula_and[3]~3_combout\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ULA|ALT_INV_ula_and[1]~1_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	combout => \COMP_HEX0|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[3]~9_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(3))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & \REGS|registrador~329_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010011100100010001001110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~329_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[3]~9_combout\);

\COMP_HEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[1]~1_combout\ = ( \MUX_HEX_LEDS|saida_MUX[3]~9_combout\ & ( (!\SW[0]~input_o\ & (((\MUX_HEX_LEDS|saida_MUX[2]~8_combout\)))) # (\SW[0]~input_o\ & ((!\ULA|ula_and[0]~0_combout\ & ((\MUX_HEX_LEDS|saida_MUX[2]~8_combout\))) # 
-- (\ULA|ula_and[0]~0_combout\ & (\ULA|ula_and[1]~1_combout\)))) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[3]~9_combout\ & ( (\SW[0]~input_o\ & (\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & (!\ULA|ula_and[0]~0_combout\ $ (!\ULA|ula_and[1]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000011110111100000000000101000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[0]~0_combout\,
	datac => \ULA|ALT_INV_ula_and[1]~1_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\,
	combout => \COMP_HEX0|rascSaida7seg[1]~1_combout\);

\MUX_HEX_LEDS|saida_MUX[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[0]~10_combout\ = (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & !\REGS|registrador~326_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~326_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[0]~10_combout\);

\COMP_HEX0|rascSaida7seg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[1]~2_combout\ = (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & \REGS|registrador~327_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~327_q\,
	combout => \COMP_HEX0|rascSaida7seg[1]~2_combout\);

\COMP_HEX0|rascSaida7seg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[2]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & (((!\COMP_HEX0|rascSaida7seg[1]~2_combout\) # (\MUX_HEX_LEDS|saida_MUX[3]~9_combout\)) # (\MUX_HEX_LEDS|saida_MUX[0]~10_combout\))) # (\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ 
-- & ((!\MUX_HEX_LEDS|saida_MUX[3]~9_combout\) # ((\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ & !\COMP_HEX0|rascSaida7seg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011110111010111101111011101011110111101110101111011110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[0]~10_combout\,
	datac => \COMP_HEX0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\,
	combout => \COMP_HEX0|rascSaida7seg[2]~3_combout\);

\COMP_HEX0|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[3]~4_combout\ = (!\COMP_HEX0|rascSaida7seg[1]~2_combout\ & (!\MUX_HEX_LEDS|saida_MUX[3]~9_combout\ & (!\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[2]~8_combout\)))) # (\COMP_HEX0|rascSaida7seg[1]~2_combout\ 
-- & ((!\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ & (!\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & \MUX_HEX_LEDS|saida_MUX[3]~9_combout\)) # (\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ & (\MUX_HEX_LEDS|saida_MUX[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[0]~10_combout\,
	datab => \COMP_HEX0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\,
	combout => \COMP_HEX0|rascSaida7seg[3]~4_combout\);

\COMP_HEX0|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[4]~5_combout\ = ( \ULA|ula_and[0]~0_combout\ & ( \SW[0]~input_o\ & ( (!\MUX_HEX_LEDS|saida_MUX[3]~9_combout\) # ((!\ULA|ula_and[2]~2_combout\ & !\ULA|ula_and[1]~1_combout\)) ) ) ) # ( !\ULA|ula_and[0]~0_combout\ & ( 
-- \SW[0]~input_o\ & ( (\ULA|ula_and[2]~2_combout\ & (!\ULA|ula_and[1]~1_combout\ & !\MUX_HEX_LEDS|saida_MUX[3]~9_combout\)) ) ) ) # ( \ULA|ula_and[0]~0_combout\ & ( !\SW[0]~input_o\ & ( (\PC|DOUT\(2) & !\MUX_HEX_LEDS|saida_MUX[3]~9_combout\) ) ) ) # ( 
-- !\ULA|ula_and[0]~0_combout\ & ( !\SW[0]~input_o\ & ( (\PC|DOUT\(2) & !\MUX_HEX_LEDS|saida_MUX[3]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000001010000000000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[2]~2_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \ULA|ALT_INV_ula_and[1]~1_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\,
	datae => \ULA|ALT_INV_ula_and[0]~0_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \COMP_HEX0|rascSaida7seg[4]~5_combout\);

\COMP_HEX0|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[5]~6_combout\ = ( \MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & ( (\ULA|ula_and[0]~0_combout\ & (\SW[0]~input_o\ & (!\ULA|ula_and[1]~1_combout\ $ (!\ULA|ula_and[3]~3_combout\)))) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ & ( 
-- (\SW[0]~input_o\ & (!\ULA|ula_and[3]~3_combout\ & ((\ULA|ula_and[1]~1_combout\) # (\ULA|ula_and[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[0]~0_combout\,
	datab => \ULA|ALT_INV_ula_and[1]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ALT_INV_ula_and[3]~3_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	combout => \COMP_HEX0|rascSaida7seg[5]~6_combout\);

\COMP_HEX0|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX0|rascSaida7seg[6]~7_combout\ = (!\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ & (!\COMP_HEX0|rascSaida7seg[1]~2_combout\ & (!\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ $ (\MUX_HEX_LEDS|saida_MUX[3]~9_combout\)))) # (\MUX_HEX_LEDS|saida_MUX[0]~10_combout\ & 
-- (!\MUX_HEX_LEDS|saida_MUX[3]~9_combout\ & (!\MUX_HEX_LEDS|saida_MUX[2]~8_combout\ $ (\COMP_HEX0|rascSaida7seg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000101000000101000010100000010100001010000001010000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[2]~8_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[0]~10_combout\,
	datac => \COMP_HEX0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[3]~9_combout\,
	combout => \COMP_HEX0|rascSaida7seg[6]~7_combout\);

\MUX_HEX_LEDS|saida_MUX[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[7]~11_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(7))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & !\REGS|registrador~333_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~333_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[7]~11_combout\);

\MUX_HEX_LEDS|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(6))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & !\REGS|registrador~332_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~332_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[6]~12_combout\);

\MUX_HEX_LEDS|saida_MUX[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(5))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & !\REGS|registrador~331_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~331_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[5]~13_combout\);

\COMP_HEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[4]~4_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[4]~4_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000110001010011101000000000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[4]~4_combout\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	combout => \COMP_HEX1|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[4]~14_combout\ = (!\SW[0]~input_o\ & (\PC|DOUT\(4))) # (\SW[0]~input_o\ & (((\ROM|memROM~0_combout\ & !\REGS|registrador~330_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111001000100010011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \REGS|ALT_INV_registrador~330_q\,
	combout => \MUX_HEX_LEDS|saida_MUX[4]~14_combout\);

\COMP_HEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[1]~1_combout\ = (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & (\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & (!\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\)))) # (\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ 
-- & ((!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & (\MUX_HEX_LEDS|saida_MUX[6]~12_combout\)) # (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & ((\MUX_HEX_LEDS|saida_MUX[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\,
	combout => \COMP_HEX1|rascSaida7seg[1]~1_combout\);

\COMP_HEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & (!\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & (\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & !\MUX_HEX_LEDS|saida_MUX[4]~14_combout\))) # (\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\) # (\MUX_HEX_LEDS|saida_MUX[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\,
	combout => \COMP_HEX1|rascSaida7seg[2]~2_combout\);

\COMP_HEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[3]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & (!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[6]~12_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & (!\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & \MUX_HEX_LEDS|saida_MUX[7]~11_combout\)) # (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	combout => \COMP_HEX1|rascSaida7seg[3]~3_combout\);

\COMP_HEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[4]~4_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[4]~4_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( 
-- !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(4)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101010101010101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_ula_and[4]~4_combout\,
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	combout => \COMP_HEX1|rascSaida7seg[4]~4_combout\);

\COMP_HEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[7]~7_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( \MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[7]~7_combout\)) ) ) ) # ( 
-- \MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(7)))) # (\SW[0]~input_o\ & (\ULA|ula_and[7]~7_combout\)))) ) ) ) # ( 
-- !\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(7)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[7]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[7]~7_combout\,
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	combout => \COMP_HEX1|rascSaida7seg[5]~5_combout\);

\COMP_HEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX1|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ & (!\MUX_HEX_LEDS|saida_MUX[5]~13_combout\ & (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ $ (\MUX_HEX_LEDS|saida_MUX[6]~12_combout\)))) # (\MUX_HEX_LEDS|saida_MUX[4]~14_combout\ 
-- & (!\MUX_HEX_LEDS|saida_MUX[7]~11_combout\ & (!\MUX_HEX_LEDS|saida_MUX[6]~12_combout\ $ (\MUX_HEX_LEDS|saida_MUX[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[7]~11_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[6]~12_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[5]~13_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[4]~14_combout\,
	combout => \COMP_HEX1|rascSaida7seg[6]~6_combout\);

\MUX_HEX_LEDS|saida_MUX[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[11]~15_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(11))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~337_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~337_q\,
	datad => \PC|ALT_INV_DOUT\(11),
	combout => \MUX_HEX_LEDS|saida_MUX[11]~15_combout\);

\MUX_HEX_LEDS|saida_MUX[10]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(10))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~336_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~336_q\,
	datad => \PC|ALT_INV_DOUT\(10),
	combout => \MUX_HEX_LEDS|saida_MUX[10]~16_combout\);

\MUX_HEX_LEDS|saida_MUX[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(9))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~335_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~335_q\,
	datad => \PC|ALT_INV_DOUT\(9),
	combout => \MUX_HEX_LEDS|saida_MUX[9]~17_combout\);

\COMP_HEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[8]~8_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[8]~8_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[8]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000110001010011101000000000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[8]~8_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	combout => \COMP_HEX2|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[8]~18_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(8))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~334_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~334_q\,
	datad => \PC|ALT_INV_DOUT\(8),
	combout => \MUX_HEX_LEDS|saida_MUX[8]~18_combout\);

\COMP_HEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[1]~1_combout\ = (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & (\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & (!\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & (\MUX_HEX_LEDS|saida_MUX[10]~16_combout\)) # (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & ((\MUX_HEX_LEDS|saida_MUX[9]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\,
	combout => \COMP_HEX2|rascSaida7seg[1]~1_combout\);

\COMP_HEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & (!\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & (\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & !\MUX_HEX_LEDS|saida_MUX[8]~18_combout\))) # 
-- (\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & (\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\) # (\MUX_HEX_LEDS|saida_MUX[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\,
	combout => \COMP_HEX2|rascSaida7seg[2]~2_combout\);

\COMP_HEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[3]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & (!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[10]~16_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & (!\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & \MUX_HEX_LEDS|saida_MUX[11]~15_combout\)) # (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	combout => \COMP_HEX2|rascSaida7seg[3]~3_combout\);

\COMP_HEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[8]~8_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[8]~8_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( 
-- !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(8)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[8]~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101010101010101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_ula_and[8]~8_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	combout => \COMP_HEX2|rascSaida7seg[4]~4_combout\);

\COMP_HEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(11)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[11]~11_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( \MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(11)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[11]~11_combout\)) ) ) ) # ( 
-- \MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(11)))) # (\SW[0]~input_o\ & (\ULA|ula_and[11]~11_combout\)))) ) ) ) # ( 
-- !\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(11)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[11]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[11]~11_combout\,
	datac => \PC|ALT_INV_DOUT\(11),
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	combout => \COMP_HEX2|rascSaida7seg[5]~5_combout\);

\COMP_HEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX2|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & (!\MUX_HEX_LEDS|saida_MUX[9]~17_combout\ & (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ $ (\MUX_HEX_LEDS|saida_MUX[10]~16_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[8]~18_combout\ & (!\MUX_HEX_LEDS|saida_MUX[11]~15_combout\ & (!\MUX_HEX_LEDS|saida_MUX[10]~16_combout\ $ (\MUX_HEX_LEDS|saida_MUX[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[11]~15_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[10]~16_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[9]~17_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[8]~18_combout\,
	combout => \COMP_HEX2|rascSaida7seg[6]~6_combout\);

\MUX_HEX_LEDS|saida_MUX[15]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[15]~19_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(15))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~341_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~341_q\,
	datad => \PC|ALT_INV_DOUT\(15),
	combout => \MUX_HEX_LEDS|saida_MUX[15]~19_combout\);

\MUX_HEX_LEDS|saida_MUX[14]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(14))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~340_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~340_q\,
	datad => \PC|ALT_INV_DOUT\(14),
	combout => \MUX_HEX_LEDS|saida_MUX[14]~20_combout\);

\MUX_HEX_LEDS|saida_MUX[13]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(13))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~339_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~339_q\,
	datad => \PC|ALT_INV_DOUT\(13),
	combout => \MUX_HEX_LEDS|saida_MUX[13]~21_combout\);

\COMP_HEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[12]~12_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[12]~12_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[12]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000110001010011101000000000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[12]~12_combout\,
	datab => \PC|ALT_INV_DOUT\(12),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	combout => \COMP_HEX3|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[12]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[12]~22_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(12))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~338_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~338_q\,
	datad => \PC|ALT_INV_DOUT\(12),
	combout => \MUX_HEX_LEDS|saida_MUX[12]~22_combout\);

\COMP_HEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[1]~1_combout\ = (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & (\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & (!\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & (\MUX_HEX_LEDS|saida_MUX[14]~20_combout\)) # (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & ((\MUX_HEX_LEDS|saida_MUX[13]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \COMP_HEX3|rascSaida7seg[1]~1_combout\);

\COMP_HEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & (!\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & (\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & !\MUX_HEX_LEDS|saida_MUX[12]~22_combout\))) # 
-- (\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & (\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\) # (\MUX_HEX_LEDS|saida_MUX[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \COMP_HEX3|rascSaida7seg[2]~2_combout\);

\COMP_HEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[3]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & (!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[14]~20_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & (!\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & \MUX_HEX_LEDS|saida_MUX[15]~19_combout\)) # (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	combout => \COMP_HEX3|rascSaida7seg[3]~3_combout\);

\COMP_HEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[12]~12_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[12]~12_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( 
-- !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(12)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[12]~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101010101010101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_ula_and[12]~12_combout\,
	datad => \PC|ALT_INV_DOUT\(12),
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	combout => \COMP_HEX3|rascSaida7seg[4]~4_combout\);

\COMP_HEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(15)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[15]~15_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( \MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(15)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[15]~15_combout\)) ) ) ) # ( 
-- \MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(15)))) # (\SW[0]~input_o\ & (\ULA|ula_and[15]~15_combout\)))) ) ) ) # ( 
-- !\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(15)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[15]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[15]~15_combout\,
	datac => \PC|ALT_INV_DOUT\(15),
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	combout => \COMP_HEX3|rascSaida7seg[5]~5_combout\);

\COMP_HEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX3|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & (!\MUX_HEX_LEDS|saida_MUX[13]~21_combout\ & (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ $ (\MUX_HEX_LEDS|saida_MUX[14]~20_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[12]~22_combout\ & (!\MUX_HEX_LEDS|saida_MUX[15]~19_combout\ & (!\MUX_HEX_LEDS|saida_MUX[14]~20_combout\ $ (\MUX_HEX_LEDS|saida_MUX[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[15]~19_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[14]~20_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[13]~21_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[12]~22_combout\,
	combout => \COMP_HEX3|rascSaida7seg[6]~6_combout\);

\MUX_HEX_LEDS|saida_MUX[19]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[19]~23_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(19))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~345_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~345_q\,
	datad => \PC|ALT_INV_DOUT\(19),
	combout => \MUX_HEX_LEDS|saida_MUX[19]~23_combout\);

\MUX_HEX_LEDS|saida_MUX[18]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(18))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~344_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~344_q\,
	datad => \PC|ALT_INV_DOUT\(18),
	combout => \MUX_HEX_LEDS|saida_MUX[18]~24_combout\);

\MUX_HEX_LEDS|saida_MUX[17]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(17))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~343_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~343_q\,
	datad => \PC|ALT_INV_DOUT\(17),
	combout => \MUX_HEX_LEDS|saida_MUX[17]~25_combout\);

\COMP_HEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[16]~16_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[16]~16_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[16]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000110001010011101000000000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[16]~16_combout\,
	datab => \PC|ALT_INV_DOUT\(16),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	combout => \COMP_HEX4|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[16]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[16]~26_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(16))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~342_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~342_q\,
	datad => \PC|ALT_INV_DOUT\(16),
	combout => \MUX_HEX_LEDS|saida_MUX[16]~26_combout\);

\COMP_HEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[1]~1_combout\ = (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & (\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & (!\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & (\MUX_HEX_LEDS|saida_MUX[18]~24_combout\)) # (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & ((\MUX_HEX_LEDS|saida_MUX[17]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\,
	combout => \COMP_HEX4|rascSaida7seg[1]~1_combout\);

\COMP_HEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & (!\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & (\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & !\MUX_HEX_LEDS|saida_MUX[16]~26_combout\))) # 
-- (\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & (\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\) # (\MUX_HEX_LEDS|saida_MUX[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\,
	combout => \COMP_HEX4|rascSaida7seg[2]~2_combout\);

\COMP_HEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[3]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & (!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[18]~24_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & (!\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & \MUX_HEX_LEDS|saida_MUX[19]~23_combout\)) # (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[18]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	combout => \COMP_HEX4|rascSaida7seg[3]~3_combout\);

\COMP_HEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[16]~16_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[16]~16_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( 
-- !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(16)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[16]~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101010101010101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_ula_and[16]~16_combout\,
	datad => \PC|ALT_INV_DOUT\(16),
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	combout => \COMP_HEX4|rascSaida7seg[4]~4_combout\);

\COMP_HEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[19]~19_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( \MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[19]~19_combout\)) ) ) ) # ( 
-- \MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(19)))) # (\SW[0]~input_o\ & (\ULA|ula_and[19]~19_combout\)))) ) ) ) # ( 
-- !\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[19]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[19]~19_combout\,
	datac => \PC|ALT_INV_DOUT\(19),
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	combout => \COMP_HEX4|rascSaida7seg[5]~5_combout\);

\COMP_HEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX4|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & (!\MUX_HEX_LEDS|saida_MUX[17]~25_combout\ & (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ $ (\MUX_HEX_LEDS|saida_MUX[18]~24_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[16]~26_combout\ & (!\MUX_HEX_LEDS|saida_MUX[19]~23_combout\ & (!\MUX_HEX_LEDS|saida_MUX[18]~24_combout\ $ (\MUX_HEX_LEDS|saida_MUX[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[19]~23_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[18]~24_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[17]~25_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[16]~26_combout\,
	combout => \COMP_HEX4|rascSaida7seg[6]~6_combout\);

\MUX_HEX_LEDS|saida_MUX[23]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[23]~27_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(23))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~349_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~349_q\,
	datad => \PC|ALT_INV_DOUT\(23),
	combout => \MUX_HEX_LEDS|saida_MUX[23]~27_combout\);

\MUX_HEX_LEDS|saida_MUX[22]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(22))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~348_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~348_q\,
	datad => \PC|ALT_INV_DOUT\(22),
	combout => \MUX_HEX_LEDS|saida_MUX[22]~28_combout\);

\MUX_HEX_LEDS|saida_MUX[21]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(21))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~347_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~347_q\,
	datad => \PC|ALT_INV_DOUT\(21),
	combout => \MUX_HEX_LEDS|saida_MUX[21]~29_combout\);

\COMP_HEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[0]~0_combout\ = ( !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[20]~20_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ $ (((!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[20]~20_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[20]~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000000000110001010011101000000000001110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_ula_and[20]~20_combout\,
	datab => \PC|ALT_INV_DOUT\(20),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	combout => \COMP_HEX5|rascSaida7seg[0]~0_combout\);

\MUX_HEX_LEDS|saida_MUX[20]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_HEX_LEDS|saida_MUX[20]~30_combout\ = (!\SW[0]~input_o\ & (((\PC|DOUT\(20))))) # (\SW[0]~input_o\ & (\ROM|memROM~0_combout\ & (!\REGS|registrador~346_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010000101110100001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \REGS|ALT_INV_registrador~346_q\,
	datad => \PC|ALT_INV_DOUT\(20),
	combout => \MUX_HEX_LEDS|saida_MUX[20]~30_combout\);

\COMP_HEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[1]~1_combout\ = (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & (\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & (!\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & (\MUX_HEX_LEDS|saida_MUX[22]~28_combout\)) # (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & ((\MUX_HEX_LEDS|saida_MUX[21]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100101000100110010010100010011001001010001001100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \COMP_HEX5|rascSaida7seg[1]~1_combout\);

\COMP_HEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[2]~2_combout\ = (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & (!\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & (\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & !\MUX_HEX_LEDS|saida_MUX[20]~30_combout\))) # 
-- (\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & (\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\) # (\MUX_HEX_LEDS|saida_MUX[21]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \COMP_HEX5|rascSaida7seg[2]~2_combout\);

\COMP_HEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[3]~3_combout\ = (!\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & (!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ $ (!\MUX_HEX_LEDS|saida_MUX[22]~28_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ((!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & (!\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & \MUX_HEX_LEDS|saida_MUX[23]~27_combout\)) # (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & 
-- (\MUX_HEX_LEDS|saida_MUX[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	combout => \COMP_HEX5|rascSaida7seg[3]~3_combout\);

\COMP_HEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[4]~4_combout\ = ( \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[20]~20_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[20]~20_combout\)))) ) ) ) # ( \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( 
-- !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (!\SW[0]~input_o\ & ((\PC|DOUT\(20)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[20]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100101010101010101000100000101010000010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ALT_INV_ula_and[20]~20_combout\,
	datad => \PC|ALT_INV_DOUT\(20),
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	combout => \COMP_HEX5|rascSaida7seg[4]~4_combout\);

\COMP_HEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[5]~5_combout\ = ( \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(23)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ula_and[23]~23_combout\)))) ) ) ) # ( !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( \MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (!\SW[0]~input_o\ & ((!\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[23]~23_combout\)) ) ) ) # ( 
-- \MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & ((!\SW[0]~input_o\ & ((\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (\ULA|ula_and[23]~23_combout\)))) ) ) ) # ( 
-- !\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ & ( !\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & ( (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & ((!\SW[0]~input_o\ & ((!\PC|DOUT\(23)))) # (\SW[0]~input_o\ & (!\ULA|ula_and[23]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000000001101111100100111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ALT_INV_ula_and[23]~23_combout\,
	datac => \PC|ALT_INV_DOUT\(23),
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\,
	datae => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	dataf => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	combout => \COMP_HEX5|rascSaida7seg[5]~5_combout\);

\COMP_HEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_HEX5|rascSaida7seg[6]~6_combout\ = (!\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & (!\MUX_HEX_LEDS|saida_MUX[21]~29_combout\ & (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ $ (\MUX_HEX_LEDS|saida_MUX[22]~28_combout\)))) # 
-- (\MUX_HEX_LEDS|saida_MUX[20]~30_combout\ & (!\MUX_HEX_LEDS|saida_MUX[23]~27_combout\ & (!\MUX_HEX_LEDS|saida_MUX[22]~28_combout\ $ (\MUX_HEX_LEDS|saida_MUX[21]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000010100100001000001010010000100000101001000010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_HEX_LEDS|ALT_INV_saida_MUX[23]~27_combout\,
	datab => \MUX_HEX_LEDS|ALT_INV_saida_MUX[22]~28_combout\,
	datac => \MUX_HEX_LEDS|ALT_INV_saida_MUX[21]~29_combout\,
	datad => \MUX_HEX_LEDS|ALT_INV_saida_MUX[20]~30_combout\,
	combout => \COMP_HEX5|rascSaida7seg[6]~6_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_T0(0) <= \T0[0]~output_o\;

ww_T0(1) <= \T0[1]~output_o\;

ww_T0(2) <= \T0[2]~output_o\;

ww_T0(3) <= \T0[3]~output_o\;

ww_T0(4) <= \T0[4]~output_o\;

ww_T0(5) <= \T0[5]~output_o\;

ww_T0(6) <= \T0[6]~output_o\;

ww_T0(7) <= \T0[7]~output_o\;

ww_T0(8) <= \T0[8]~output_o\;

ww_T0(9) <= \T0[9]~output_o\;

ww_T0(10) <= \T0[10]~output_o\;

ww_T0(11) <= \T0[11]~output_o\;

ww_T0(12) <= \T0[12]~output_o\;

ww_T0(13) <= \T0[13]~output_o\;

ww_T0(14) <= \T0[14]~output_o\;

ww_T0(15) <= \T0[15]~output_o\;

ww_T0(16) <= \T0[16]~output_o\;

ww_T0(17) <= \T0[17]~output_o\;

ww_T0(18) <= \T0[18]~output_o\;

ww_T0(19) <= \T0[19]~output_o\;

ww_T0(20) <= \T0[20]~output_o\;

ww_T0(21) <= \T0[21]~output_o\;

ww_T0(22) <= \T0[22]~output_o\;

ww_T0(23) <= \T0[23]~output_o\;

ww_T0(24) <= \T0[24]~output_o\;

ww_T0(25) <= \T0[25]~output_o\;

ww_T0(26) <= \T0[26]~output_o\;

ww_T0(27) <= \T0[27]~output_o\;

ww_T0(28) <= \T0[28]~output_o\;

ww_T0(29) <= \T0[29]~output_o\;

ww_T0(30) <= \T0[30]~output_o\;

ww_T0(31) <= \T0[31]~output_o\;

ww_rsouta(0) <= \rsouta[0]~output_o\;

ww_rsouta(1) <= \rsouta[1]~output_o\;

ww_rsouta(2) <= \rsouta[2]~output_o\;

ww_rsouta(3) <= \rsouta[3]~output_o\;

ww_rsouta(4) <= \rsouta[4]~output_o\;

ww_rsouta(5) <= \rsouta[5]~output_o\;

ww_rsouta(6) <= \rsouta[6]~output_o\;

ww_rsouta(7) <= \rsouta[7]~output_o\;

ww_rsouta(8) <= \rsouta[8]~output_o\;

ww_rsouta(9) <= \rsouta[9]~output_o\;

ww_rsouta(10) <= \rsouta[10]~output_o\;

ww_rsouta(11) <= \rsouta[11]~output_o\;

ww_rsouta(12) <= \rsouta[12]~output_o\;

ww_rsouta(13) <= \rsouta[13]~output_o\;

ww_rsouta(14) <= \rsouta[14]~output_o\;

ww_rsouta(15) <= \rsouta[15]~output_o\;

ww_rsouta(16) <= \rsouta[16]~output_o\;

ww_rsouta(17) <= \rsouta[17]~output_o\;

ww_rsouta(18) <= \rsouta[18]~output_o\;

ww_rsouta(19) <= \rsouta[19]~output_o\;

ww_rsouta(20) <= \rsouta[20]~output_o\;

ww_rsouta(21) <= \rsouta[21]~output_o\;

ww_rsouta(22) <= \rsouta[22]~output_o\;

ww_rsouta(23) <= \rsouta[23]~output_o\;

ww_rsouta(24) <= \rsouta[24]~output_o\;

ww_rsouta(25) <= \rsouta[25]~output_o\;

ww_rsouta(26) <= \rsouta[26]~output_o\;

ww_rsouta(27) <= \rsouta[27]~output_o\;

ww_rsouta(28) <= \rsouta[28]~output_o\;

ww_rsouta(29) <= \rsouta[29]~output_o\;

ww_rsouta(30) <= \rsouta[30]~output_o\;

ww_rsouta(31) <= \rsouta[31]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


