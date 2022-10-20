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

-- DATE "10/20/2022 12:49:00"

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

ENTITY 	contador_intermediario IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0)
	);
END contador_intermediario;

ARCHITECTURE structure OF contador_intermediario IS
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
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
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
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[3]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[3]~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~5_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~2_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~4_combout\ : std_logic;
SIGNAL \RAM|ram~280_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~281_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~271_combout\ : std_logic;
SIGNAL \RAM|ram~272_combout\ : std_logic;
SIGNAL \RAM|ram~282_combout\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~283_combout\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~273_combout\ : std_logic;
SIGNAL \RAM|ram~274_combout\ : std_logic;
SIGNAL \RAM|ram~284_combout\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~285_combout\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~275_combout\ : std_logic;
SIGNAL \RAM|ram~276_combout\ : std_logic;
SIGNAL \RAM|ram~286_combout\ : std_logic;
SIGNAL \RAM|ram~262_q\ : std_logic;
SIGNAL \RAM|ram~287_combout\ : std_logic;
SIGNAL \RAM|ram~230_q\ : std_logic;
SIGNAL \RAM|ram~277_combout\ : std_logic;
SIGNAL \RAM|ram~278_combout\ : std_logic;
SIGNAL \RAM|ram~279_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~288_combout\ : std_logic;
SIGNAL \RAM|ram~289_combout\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~290_combout\ : std_logic;
SIGNAL \RAM|ram~291_combout\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~292_combout\ : std_logic;
SIGNAL \RAM|ram~293_combout\ : std_logic;
SIGNAL \RAM|ram~261_q\ : std_logic;
SIGNAL \RAM|ram~229_q\ : std_logic;
SIGNAL \RAM|ram~294_combout\ : std_logic;
SIGNAL \RAM|ram~295_combout\ : std_logic;
SIGNAL \RAM|ram~296_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~297_combout\ : std_logic;
SIGNAL \RAM|ram~298_combout\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~299_combout\ : std_logic;
SIGNAL \RAM|ram~300_combout\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~301_combout\ : std_logic;
SIGNAL \RAM|ram~302_combout\ : std_logic;
SIGNAL \RAM|ram~260_q\ : std_logic;
SIGNAL \RAM|ram~228_q\ : std_logic;
SIGNAL \RAM|ram~303_combout\ : std_logic;
SIGNAL \RAM|ram~304_combout\ : std_logic;
SIGNAL \RAM|ram~305_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[1]~4_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~306_combout\ : std_logic;
SIGNAL \RAM|ram~307_combout\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~308_combout\ : std_logic;
SIGNAL \RAM|ram~309_combout\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \RAM|ram~310_combout\ : std_logic;
SIGNAL \RAM|ram~311_combout\ : std_logic;
SIGNAL \RAM|ram~259_q\ : std_logic;
SIGNAL \RAM|ram~227_q\ : std_logic;
SIGNAL \RAM|ram~312_combout\ : std_logic;
SIGNAL \RAM|ram~313_combout\ : std_logic;
SIGNAL \RAM|ram~314_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~315_combout\ : std_logic;
SIGNAL \RAM|ram~316_combout\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~317_combout\ : std_logic;
SIGNAL \RAM|ram~318_combout\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~319_combout\ : std_logic;
SIGNAL \RAM|ram~320_combout\ : std_logic;
SIGNAL \RAM|ram~258_q\ : std_logic;
SIGNAL \RAM|ram~226_q\ : std_logic;
SIGNAL \RAM|ram~321_combout\ : std_logic;
SIGNAL \RAM|ram~322_combout\ : std_logic;
SIGNAL \RAM|ram~323_combout\ : std_logic;
SIGNAL \Data_IN[3]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \RAM|ram~257_q\ : std_logic;
SIGNAL \RAM|ram~225_q\ : std_logic;
SIGNAL \RAM|ram~330_combout\ : std_logic;
SIGNAL \RAM|ram~331_combout\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~328_combout\ : std_logic;
SIGNAL \RAM|ram~329_combout\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~326_combout\ : std_logic;
SIGNAL \RAM|ram~327_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~324_combout\ : std_logic;
SIGNAL \RAM|ram~325_combout\ : std_logic;
SIGNAL \Data_IN[2]~5_combout\ : std_logic;
SIGNAL \RAM|ram~256_q\ : std_logic;
SIGNAL \RAM|ram~224_q\ : std_logic;
SIGNAL \RAM|ram~338_combout\ : std_logic;
SIGNAL \RAM|ram~339_combout\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~336_combout\ : std_logic;
SIGNAL \RAM|ram~337_combout\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~334_combout\ : std_logic;
SIGNAL \RAM|ram~335_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~332_combout\ : std_logic;
SIGNAL \RAM|ram~333_combout\ : std_logic;
SIGNAL \Data_IN[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~340_combout\ : std_logic;
SIGNAL \RAM|ram~341_combout\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~342_combout\ : std_logic;
SIGNAL \RAM|ram~343_combout\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~344_combout\ : std_logic;
SIGNAL \RAM|ram~345_combout\ : std_logic;
SIGNAL \RAM|ram~255_q\ : std_logic;
SIGNAL \RAM|ram~223_q\ : std_logic;
SIGNAL \RAM|ram~346_combout\ : std_logic;
SIGNAL \RAM|ram~347_combout\ : std_logic;
SIGNAL \RAM|ram~348_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~28_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~19_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~29_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~11_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~36_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~6_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~12_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~35_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~34_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~31_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~30_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|DOUT~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[11]~0_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~36_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~27_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \CPU|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Data_IN[2]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|DEC_instrucao|ALT_INV_saida~5_combout\ <= NOT \CPU|DEC_instrucao|saida~5_combout\;
\RAM|ALT_INV_ram~348_combout\ <= NOT \RAM|ram~348_combout\;
\RAM|ALT_INV_ram~347_combout\ <= NOT \RAM|ram~347_combout\;
\RAM|ALT_INV_ram~346_combout\ <= NOT \RAM|ram~346_combout\;
\RAM|ALT_INV_ram~223_q\ <= NOT \RAM|ram~223_q\;
\RAM|ALT_INV_ram~255_q\ <= NOT \RAM|ram~255_q\;
\RAM|ALT_INV_ram~345_combout\ <= NOT \RAM|ram~345_combout\;
\RAM|ALT_INV_ram~344_combout\ <= NOT \RAM|ram~344_combout\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~343_combout\ <= NOT \RAM|ram~343_combout\;
\RAM|ALT_INV_ram~342_combout\ <= NOT \RAM|ram~342_combout\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~341_combout\ <= NOT \RAM|ram~341_combout\;
\RAM|ALT_INV_ram~340_combout\ <= NOT \RAM|ram~340_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\CPU|BANCO_REG|ALT_INV_registrador~36_combout\ <= NOT \CPU|BANCO_REG|registrador~36_combout\;
\RAM|ALT_INV_ram~339_combout\ <= NOT \RAM|ram~339_combout\;
\RAM|ALT_INV_ram~338_combout\ <= NOT \RAM|ram~338_combout\;
\RAM|ALT_INV_ram~224_q\ <= NOT \RAM|ram~224_q\;
\RAM|ALT_INV_ram~256_q\ <= NOT \RAM|ram~256_q\;
\RAM|ALT_INV_ram~337_combout\ <= NOT \RAM|ram~337_combout\;
\RAM|ALT_INV_ram~336_combout\ <= NOT \RAM|ram~336_combout\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~335_combout\ <= NOT \RAM|ram~335_combout\;
\RAM|ALT_INV_ram~334_combout\ <= NOT \RAM|ram~334_combout\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~333_combout\ <= NOT \RAM|ram~333_combout\;
\RAM|ALT_INV_ram~332_combout\ <= NOT \RAM|ram~332_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\CPU|BANCO_REG|ALT_INV_registrador~35_combout\ <= NOT \CPU|BANCO_REG|registrador~35_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\RAM|ALT_INV_ram~331_combout\ <= NOT \RAM|ram~331_combout\;
\RAM|ALT_INV_ram~330_combout\ <= NOT \RAM|ram~330_combout\;
\RAM|ALT_INV_ram~225_q\ <= NOT \RAM|ram~225_q\;
\RAM|ALT_INV_ram~257_q\ <= NOT \RAM|ram~257_q\;
\RAM|ALT_INV_ram~329_combout\ <= NOT \RAM|ram~329_combout\;
\RAM|ALT_INV_ram~328_combout\ <= NOT \RAM|ram~328_combout\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~327_combout\ <= NOT \RAM|ram~327_combout\;
\RAM|ALT_INV_ram~326_combout\ <= NOT \RAM|ram~326_combout\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~325_combout\ <= NOT \RAM|ram~325_combout\;
\RAM|ALT_INV_ram~324_combout\ <= NOT \RAM|ram~324_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\CPU|BANCO_REG|ALT_INV_registrador~34_combout\ <= NOT \CPU|BANCO_REG|registrador~34_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ALT_INV_Data_IN[3]~0_combout\ <= NOT \Data_IN[3]~0_combout\;
\RAM|ALT_INV_ram~323_combout\ <= NOT \RAM|ram~323_combout\;
\RAM|ALT_INV_ram~322_combout\ <= NOT \RAM|ram~322_combout\;
\RAM|ALT_INV_ram~321_combout\ <= NOT \RAM|ram~321_combout\;
\RAM|ALT_INV_ram~226_q\ <= NOT \RAM|ram~226_q\;
\RAM|ALT_INV_ram~258_q\ <= NOT \RAM|ram~258_q\;
\RAM|ALT_INV_ram~320_combout\ <= NOT \RAM|ram~320_combout\;
\RAM|ALT_INV_ram~319_combout\ <= NOT \RAM|ram~319_combout\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~318_combout\ <= NOT \RAM|ram~318_combout\;
\RAM|ALT_INV_ram~317_combout\ <= NOT \RAM|ram~317_combout\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~316_combout\ <= NOT \RAM|ram~316_combout\;
\RAM|ALT_INV_ram~315_combout\ <= NOT \RAM|ram~315_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\CPU|BANCO_REG|ALT_INV_registrador~33_combout\ <= NOT \CPU|BANCO_REG|registrador~33_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\;
\RAM|ALT_INV_ram~314_combout\ <= NOT \RAM|ram~314_combout\;
\RAM|ALT_INV_ram~313_combout\ <= NOT \RAM|ram~313_combout\;
\RAM|ALT_INV_ram~312_combout\ <= NOT \RAM|ram~312_combout\;
\RAM|ALT_INV_ram~227_q\ <= NOT \RAM|ram~227_q\;
\RAM|ALT_INV_ram~259_q\ <= NOT \RAM|ram~259_q\;
\RAM|ALT_INV_ram~311_combout\ <= NOT \RAM|ram~311_combout\;
\RAM|ALT_INV_ram~310_combout\ <= NOT \RAM|ram~310_combout\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~309_combout\ <= NOT \RAM|ram~309_combout\;
\RAM|ALT_INV_ram~308_combout\ <= NOT \RAM|ram~308_combout\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~307_combout\ <= NOT \RAM|ram~307_combout\;
\RAM|ALT_INV_ram~306_combout\ <= NOT \RAM|ram~306_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\CPU|BANCO_REG|ALT_INV_registrador~32_combout\ <= NOT \CPU|BANCO_REG|registrador~32_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~31_combout\ <= NOT \CPU|BANCO_REG|registrador~31_combout\;
\RAM|ALT_INV_ram~305_combout\ <= NOT \RAM|ram~305_combout\;
\RAM|ALT_INV_ram~304_combout\ <= NOT \RAM|ram~304_combout\;
\RAM|ALT_INV_ram~303_combout\ <= NOT \RAM|ram~303_combout\;
\RAM|ALT_INV_ram~228_q\ <= NOT \RAM|ram~228_q\;
\RAM|ALT_INV_ram~260_q\ <= NOT \RAM|ram~260_q\;
\RAM|ALT_INV_ram~302_combout\ <= NOT \RAM|ram~302_combout\;
\RAM|ALT_INV_ram~301_combout\ <= NOT \RAM|ram~301_combout\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~300_combout\ <= NOT \RAM|ram~300_combout\;
\RAM|ALT_INV_ram~299_combout\ <= NOT \RAM|ram~299_combout\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~298_combout\ <= NOT \RAM|ram~298_combout\;
\RAM|ALT_INV_ram~297_combout\ <= NOT \RAM|ram~297_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\CPU|BANCO_REG|ALT_INV_registrador~30_combout\ <= NOT \CPU|BANCO_REG|registrador~30_combout\;
\RAM|ALT_INV_ram~296_combout\ <= NOT \RAM|ram~296_combout\;
\RAM|ALT_INV_ram~295_combout\ <= NOT \RAM|ram~295_combout\;
\RAM|ALT_INV_ram~294_combout\ <= NOT \RAM|ram~294_combout\;
\RAM|ALT_INV_ram~229_q\ <= NOT \RAM|ram~229_q\;
\RAM|ALT_INV_ram~261_q\ <= NOT \RAM|ram~261_q\;
\RAM|ALT_INV_ram~293_combout\ <= NOT \RAM|ram~293_combout\;
\RAM|ALT_INV_ram~292_combout\ <= NOT \RAM|ram~292_combout\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~291_combout\ <= NOT \RAM|ram~291_combout\;
\RAM|ALT_INV_ram~290_combout\ <= NOT \RAM|ram~290_combout\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~289_combout\ <= NOT \RAM|ram~289_combout\;
\RAM|ALT_INV_ram~288_combout\ <= NOT \RAM|ram~288_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\ <= NOT \CPU|DEC_instrucao|Equal13~4_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\ <= NOT \CPU|DEC_instrucao|Equal13~3_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\ <= NOT \CPU|DEC_instrucao|Equal13~2_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\ <= NOT \CPU|DEC_instrucao|saida[1]~4_combout\;
\RAM|ALT_INV_ram~279_combout\ <= NOT \RAM|ram~279_combout\;
\RAM|ALT_INV_ram~278_combout\ <= NOT \RAM|ram~278_combout\;
\RAM|ALT_INV_ram~277_combout\ <= NOT \RAM|ram~277_combout\;
\RAM|ALT_INV_ram~230_q\ <= NOT \RAM|ram~230_q\;
\RAM|ALT_INV_ram~262_q\ <= NOT \RAM|ram~262_q\;
\RAM|ALT_INV_ram~276_combout\ <= NOT \RAM|ram~276_combout\;
\RAM|ALT_INV_ram~275_combout\ <= NOT \RAM|ram~275_combout\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~274_combout\ <= NOT \RAM|ram~274_combout\;
\RAM|ALT_INV_ram~273_combout\ <= NOT \RAM|ram~273_combout\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~272_combout\ <= NOT \RAM|ram~272_combout\;
\RAM|ALT_INV_ram~271_combout\ <= NOT \RAM|ram~271_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\CPU|BANCO_REG|ALT_INV_registrador~27_combout\ <= NOT \CPU|BANCO_REG|registrador~27_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|DEC_instrucao|ALT_INV_saida~3_combout\ <= NOT \CPU|DEC_instrucao|saida~3_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\ <= NOT \CPU|DEC_instrucao|saida[3]~2_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\ <= NOT \CPU|DEC_instrucao|Equal13~1_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\ <= NOT \CPU|DEC_instrucao|saida[3]~1_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|REG_RETORNO|DOUT\(8);
\CPU|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|REG_RETORNO|DOUT\(7);
\CPU|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|REG_RETORNO|DOUT\(6);
\CPU|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|REG_RETORNO|DOUT\(5);
\CPU|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|REG_RETORNO|DOUT\(4);
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|REG_RETORNO|DOUT\(3);
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|REG_RETORNO|DOUT\(2);
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|REG_RETORNO|DOUT\(1);
\CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ <= NOT \CPU|DEC_instrucao|saida_desvio[0]~0_combout\;
\CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_LESS|DOUT~q\;
\CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\ <= NOT \CPU|DEC_instrucao|Equal13~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|REG_RETORNO|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\ALT_INV_Data_IN[2]~5_combout\ <= NOT \Data_IN[2]~5_combout\;
\ALT_INV_Data_IN[1]~1_combout\ <= NOT \Data_IN[1]~1_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~11_q\ <= NOT \CPU|BANCO_REG|registrador~11_q\;
\CPU|BANCO_REG|ALT_INV_registrador~19_q\ <= NOT \CPU|BANCO_REG|registrador~19_q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~12_q\ <= NOT \CPU|BANCO_REG|registrador~12_q\;
\CPU|BANCO_REG|ALT_INV_registrador~20_q\ <= NOT \CPU|BANCO_REG|registrador~20_q\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~13_q\ <= NOT \CPU|BANCO_REG|registrador~13_q\;
\CPU|BANCO_REG|ALT_INV_registrador~21_q\ <= NOT \CPU|BANCO_REG|registrador~21_q\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~14_q\ <= NOT \CPU|BANCO_REG|registrador~14_q\;
\CPU|BANCO_REG|ALT_INV_registrador~22_q\ <= NOT \CPU|BANCO_REG|registrador~22_q\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~15_q\ <= NOT \CPU|BANCO_REG|registrador~15_q\;
\CPU|BANCO_REG|ALT_INV_registrador~23_q\ <= NOT \CPU|BANCO_REG|registrador~23_q\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~16_q\ <= NOT \CPU|BANCO_REG|registrador~16_q\;
\CPU|BANCO_REG|ALT_INV_registrador~24_q\ <= NOT \CPU|BANCO_REG|registrador~24_q\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~17_q\ <= NOT \CPU|BANCO_REG|registrador~17_q\;
\CPU|BANCO_REG|ALT_INV_registrador~25_q\ <= NOT \CPU|BANCO_REG|registrador~25_q\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|BANCO_REG|ALT_INV_registrador~18_q\ <= NOT \CPU|BANCO_REG|registrador~18_q\;
\CPU|BANCO_REG|ALT_INV_registrador~26_q\ <= NOT \CPU|BANCO_REG|registrador~26_q\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(5));

\CPU|MUX_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~5_combout\ = (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~0_combout\ & ((\CPU|incrementaPC|Add0~21_sumout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|REG_RETORNO|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(5),
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(6));

\CPU|MUX_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~6_combout\ = (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~0_combout\ & ((\CPU|incrementaPC|Add0~25_sumout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|REG_RETORNO|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(6),
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(7));

\CPU|MUX_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~7_combout\ = (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~0_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|REG_RETORNO|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(7),
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(8));

\CPU|MUX_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~8_combout\ = (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~0_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|REG_RETORNO|DOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(8),
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000001000010000000000100001000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~9_combout\ & \ROM|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(3));

\CPU|MUX_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # ((\ROM|memROM~11_combout\)))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(3))))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (\ROM|memROM~11_combout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111100010101101111100000010010101111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(3),
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(4));

\CPU|MUX_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\)) # (\ROM|memROM~14_combout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(4))))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(4),
	datae => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011000000100000001100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|DEC_instrucao|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[3]~1_combout\ = (!\ROM|memROM~5_combout\ & (!\ROM|memROM~8_combout\ & (!\ROM|memROM~1_combout\ $ (!\ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|DEC_instrucao|saida[3]~1_combout\);

\CPU|DEC_instrucao|Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~1_combout\ = (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~5_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal13~1_combout\);

\CPU|DEC_instrucao|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[3]~2_combout\ = (\CPU|DEC_instrucao|Equal13~1_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	combout => \CPU|DEC_instrucao|saida[3]~2_combout\);

\CPU|DEC_instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~5_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~3_combout\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \CPU|DEC_instrucao|saida~5_combout\);

\CPU|DEC_instrucao|Equal13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~2_combout\ = ( \ROM|memROM~4_combout\ & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) ) # ( !\ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~6_combout\ & 
-- \ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000010000000000000011000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DEC_instrucao|Equal13~2_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100000000100001010000000010000101000000001000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~9_combout\ & \ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|DEC_instrucao|Equal13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~4_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DEC_instrucao|Equal13~4_combout\);

\RAM|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~280_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (!\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~280_combout\);

\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

\RAM|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~281_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (!\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~281_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~271\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~271_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~22_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~22_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~271_combout\);

\RAM|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~272_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~271_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~271_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~271_combout\ & ( (\RAM|ram~54_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~54_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~271_combout\,
	combout => \RAM|ram~272_combout\);

\RAM|ram~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~282_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (!\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~282_combout\);

\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

\RAM|ram~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~283_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (!\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~283_combout\);

\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

\RAM|ram~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~273_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~102_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~102_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~273_combout\);

\RAM|ram~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~274_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~273_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~273_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~273_combout\ 
-- & ( (\RAM|ram~134_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~134_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~273_combout\,
	combout => \RAM|ram~274_combout\);

\RAM|ram~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~284_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~284_combout\);

\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

\RAM|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~285_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~285_combout\);

\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

\RAM|ram~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~275_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~150_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~150_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~275_combout\);

\RAM|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~276_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~275_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~275_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~275_combout\ & ( (\RAM|ram~182_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~182_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~275_combout\,
	combout => \RAM|ram~276_combout\);

\RAM|ram~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~286_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~286_combout\);

\RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~262_q\);

\RAM|ram~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~287_combout\ = ( !\ROM|memROM~15_combout\ & ( \CPU|DEC_instrucao|Equal13~4_combout\ & ( (\ROM|memROM~14_combout\ & (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal13~4_combout\,
	combout => \RAM|ram~287_combout\);

\RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~230_q\);

\RAM|ram~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~277_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~230_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~230_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~277_combout\);

\RAM|ram~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~278_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~277_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~277_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~277_combout\ 
-- & ( (\RAM|ram~262_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~262_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~277_combout\,
	combout => \RAM|ram~278_combout\);

\RAM|ram~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~279_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~278_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~276_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~274_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~272_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_combout\,
	datab => \RAM|ALT_INV_ram~274_combout\,
	datac => \RAM|ALT_INV_ram~276_combout\,
	datad => \RAM|ALT_INV_ram~278_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~279_combout\);

\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~288_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~21_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~21_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~288_combout\);

\RAM|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~289_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~288_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~288_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~288_combout\ & ( (\RAM|ram~53_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~53_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~288_combout\,
	combout => \RAM|ram~289_combout\);

\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

\RAM|ram~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~290_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~101_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~101_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~290_combout\);

\RAM|ram~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~291_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~290_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~290_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~290_combout\ 
-- & ( (\RAM|ram~133_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~133_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~290_combout\,
	combout => \RAM|ram~291_combout\);

\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

\RAM|ram~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~292_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~149_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~149_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~292_combout\);

\RAM|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~293_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~292_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~292_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~292_combout\ & ( (\RAM|ram~181_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~181_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~292_combout\,
	combout => \RAM|ram~293_combout\);

\RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~261_q\);

\RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~229_q\);

\RAM|ram~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~294_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~229_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~229_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~294_combout\);

\RAM|ram~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~295_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~294_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~294_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~294_combout\ 
-- & ( (\RAM|ram~261_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~261_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~294_combout\,
	combout => \RAM|ram~295_combout\);

\RAM|ram~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~296_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~295_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~293_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~291_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~289_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~289_combout\,
	datab => \RAM|ALT_INV_ram~291_combout\,
	datac => \RAM|ALT_INV_ram~293_combout\,
	datad => \RAM|ALT_INV_ram~295_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~296_combout\);

\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~297_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~20_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~297_combout\);

\RAM|ram~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~298_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~297_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~297_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~297_combout\ & ( (\RAM|ram~52_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~52_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~297_combout\,
	combout => \RAM|ram~298_combout\);

\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

\RAM|ram~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~299_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~100_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~100_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~299_combout\);

\RAM|ram~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~300_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~299_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~299_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~299_combout\ 
-- & ( (\RAM|ram~132_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~132_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~299_combout\,
	combout => \RAM|ram~300_combout\);

\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

\RAM|ram~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~301_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~148_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~148_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~301_combout\);

\RAM|ram~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~302_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~301_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~301_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~301_combout\ & ( (\RAM|ram~180_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~180_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~301_combout\,
	combout => \RAM|ram~302_combout\);

\RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~260_q\);

\RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~228_q\);

\RAM|ram~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~303_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~228_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~228_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~303_combout\);

\RAM|ram~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~304_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~303_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~303_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~303_combout\ 
-- & ( (\RAM|ram~260_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~260_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~303_combout\,
	combout => \RAM|ram~304_combout\);

\RAM|ram~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~305_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~304_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~302_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~300_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~298_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~298_combout\,
	datab => \RAM|ALT_INV_ram~300_combout\,
	datac => \RAM|ALT_INV_ram~302_combout\,
	datad => \RAM|ALT_INV_ram~304_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~305_combout\);

\CPU|DEC_instrucao|Equal13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~3_combout\ = (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & \CPU|DEC_instrucao|Equal13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	combout => \CPU|DEC_instrucao|Equal13~3_combout\);

\CPU|DEC_instrucao|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[1]~4_combout\ = (!\CPU|DEC_instrucao|Equal13~1_combout\ & ((\CPU|DEC_instrucao|saida~5_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	combout => \CPU|DEC_instrucao|saida[1]~4_combout\);

\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~306_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~306_combout\);

\RAM|ram~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~307_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~306_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~306_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~306_combout\ & ( (\RAM|ram~51_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~51_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~306_combout\,
	combout => \RAM|ram~307_combout\);

\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

\RAM|ram~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~308_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~99_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~99_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~308_combout\);

\RAM|ram~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~309_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~308_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~308_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~308_combout\ 
-- & ( (\RAM|ram~131_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~131_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~308_combout\,
	combout => \RAM|ram~309_combout\);

\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

\RAM|ram~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~310_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~147_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~147_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~310_combout\);

\RAM|ram~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~311_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~310_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~310_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~310_combout\ & ( (\RAM|ram~179_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~179_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~310_combout\,
	combout => \RAM|ram~311_combout\);

\RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~259_q\);

\RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~227_q\);

\RAM|ram~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~312_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~227_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~227_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~312_combout\);

\RAM|ram~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~313_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~312_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~312_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~312_combout\ 
-- & ( (\RAM|ram~259_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~259_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~312_combout\,
	combout => \RAM|ram~313_combout\);

\RAM|ram~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~314_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~313_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~311_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~309_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~307_combout\,
	datab => \RAM|ALT_INV_ram~309_combout\,
	datac => \RAM|ALT_INV_ram~311_combout\,
	datad => \RAM|ALT_INV_ram~313_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~314_combout\);

\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ = (!\CPU|DEC_instrucao|Equal13~3_combout\ & (\CPU|DEC_instrucao|saida[1]~4_combout\ & \RAM|ram~314_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \RAM|ALT_INV_ram~314_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~9_combout\ & \ROM|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	combout => \ROM|memROM~18_combout\);

\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~315_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~18_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~18_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~315_combout\);

\RAM|ram~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~316_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~315_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~315_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~315_combout\ & ( (\RAM|ram~50_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~50_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~315_combout\,
	combout => \RAM|ram~316_combout\);

\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

\RAM|ram~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~317_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~98_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~98_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~317_combout\);

\RAM|ram~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~318_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~317_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~317_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~317_combout\ 
-- & ( (\RAM|ram~130_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~130_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~317_combout\,
	combout => \RAM|ram~318_combout\);

\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

\RAM|ram~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~319_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~146_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~146_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~319_combout\);

\RAM|ram~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~320_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~319_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~319_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~319_combout\ & ( (\RAM|ram~178_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~178_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~319_combout\,
	combout => \RAM|ram~320_combout\);

\RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~258_q\);

\RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~226_q\);

\RAM|ram~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~321_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~226_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~226_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~321_combout\);

\RAM|ram~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~322_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~321_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~321_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~321_combout\ 
-- & ( (\RAM|ram~258_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~258_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~321_combout\,
	combout => \RAM|ram~322_combout\);

\RAM|ram~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~323_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~322_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~320_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~318_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~316_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~316_combout\,
	datab => \RAM|ALT_INV_ram~318_combout\,
	datac => \RAM|ALT_INV_ram~320_combout\,
	datad => \RAM|ALT_INV_ram~322_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~323_combout\);

\Data_IN[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~0_combout\ = (\CPU|DEC_instrucao|saida[1]~4_combout\ & \RAM|ram~323_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datab => \RAM|ALT_INV_ram~323_combout\,
	combout => \Data_IN[3]~0_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~9_combout\ & \ROM|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~17_combout\);

\RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~257_q\);

\RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~225_q\);

\RAM|ram~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~330_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~225_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~225_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~330_combout\);

\RAM|ram~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~331_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~330_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~330_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~330_combout\ 
-- & ( (\RAM|ram~257_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~257_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~330_combout\,
	combout => \RAM|ram~331_combout\);

\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

\RAM|ram~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~328_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~145_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~145_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~328_combout\);

\RAM|ram~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~329_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~328_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~328_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~328_combout\ & ( (\RAM|ram~177_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~177_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~328_combout\,
	combout => \RAM|ram~329_combout\);

\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~326_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~97_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~97_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~326_combout\);

\RAM|ram~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~327_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~326_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~326_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~326_combout\ 
-- & ( (\RAM|ram~129_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~129_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~326_combout\,
	combout => \RAM|ram~327_combout\);

\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~324_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~17_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~324_combout\);

\RAM|ram~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~325_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~324_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~324_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~324_combout\ & ( (\RAM|ram~49_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~49_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~324_combout\,
	combout => \RAM|ram~325_combout\);

\Data_IN[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~5_combout\ = ( !\ROM|memROM~14_combout\ & ( ((\CPU|DEC_instrucao|saida[1]~4_combout\ & ((!\ROM|memROM~11_combout\ & (\RAM|ram~325_combout\)) # (\ROM|memROM~11_combout\ & ((\RAM|ram~327_combout\)))))) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- ((\CPU|DEC_instrucao|saida[1]~4_combout\ & ((!\ROM|memROM~11_combout\ & ((\RAM|ram~329_combout\))) # (\ROM|memROM~11_combout\ & (\RAM|ram~331_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \RAM|ALT_INV_ram~331_combout\,
	datac => \RAM|ALT_INV_ram~329_combout\,
	datad => \RAM|ALT_INV_ram~327_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datag => \RAM|ALT_INV_ram~325_combout\,
	combout => \Data_IN[2]~5_combout\);

\RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~256_q\);

\RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~224_q\);

\RAM|ram~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~338_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~224_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~224_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~338_combout\);

\RAM|ram~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~339_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~338_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~338_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~338_combout\ 
-- & ( (\RAM|ram~256_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~256_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~338_combout\,
	combout => \RAM|ram~339_combout\);

\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

\RAM|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~336_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~144_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~144_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~336_combout\);

\RAM|ram~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~337_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~336_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~336_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~336_combout\ & ( (\RAM|ram~176_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~176_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~336_combout\,
	combout => \RAM|ram~337_combout\);

\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~334_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~96_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~96_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~334_combout\);

\RAM|ram~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~335_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~334_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~334_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~334_combout\ 
-- & ( (\RAM|ram~128_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~128_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~334_combout\,
	combout => \RAM|ram~335_combout\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~35_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~332_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~16_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~16_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~332_combout\);

\RAM|ram~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~333_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~332_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~332_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~332_combout\ & ( (\RAM|ram~48_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~48_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~332_combout\,
	combout => \RAM|ram~333_combout\);

\Data_IN[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~1_combout\ = ( !\ROM|memROM~14_combout\ & ( ((\CPU|DEC_instrucao|saida[1]~4_combout\ & ((!\ROM|memROM~11_combout\ & (\RAM|ram~333_combout\)) # (\ROM|memROM~11_combout\ & ((\RAM|ram~335_combout\)))))) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- ((\CPU|DEC_instrucao|saida[1]~4_combout\ & ((!\ROM|memROM~11_combout\ & ((\RAM|ram~337_combout\))) # (\ROM|memROM~11_combout\ & (\RAM|ram~339_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \RAM|ALT_INV_ram~339_combout\,
	datac => \RAM|ALT_INV_ram~337_combout\,
	datad => \RAM|ALT_INV_ram~335_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datag => \RAM|ALT_INV_ram~333_combout\,
	combout => \Data_IN[1]~1_combout\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~340_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~15_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~340_combout\);

\RAM|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~341_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~340_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~340_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~340_combout\ & ( (\RAM|ram~47_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~47_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~340_combout\,
	combout => \RAM|ram~341_combout\);

\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~342_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~95_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~95_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~342_combout\);

\RAM|ram~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~343_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~342_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~342_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~342_combout\ 
-- & ( (\RAM|ram~127_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~127_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~342_combout\,
	combout => \RAM|ram~343_combout\);

\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

\RAM|ram~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~344_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~143_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~143_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~344_combout\);

\RAM|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~345_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~344_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~344_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\RAM|ram~344_combout\ & ( (\RAM|ram~175_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~175_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~344_combout\,
	combout => \RAM|ram~345_combout\);

\RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~255_q\);

\RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~36_combout\,
	ena => \RAM|ram~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~223_q\);

\RAM|ram~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~346_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~13_combout\ & ( (\RAM|ram~223_q\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~223_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~346_combout\);

\RAM|ram~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~347_combout\ = ( \ROM|memROM~11_combout\ & ( \RAM|ram~346_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \RAM|ram~346_combout\ & ( !\ROM|memROM~13_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\RAM|ram~346_combout\ 
-- & ( (\RAM|ram~255_q\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~255_q\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~346_combout\,
	combout => \RAM|ram~347_combout\);

\RAM|ram~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~348_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~347_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~14_combout\ & ( \RAM|ram~345_combout\ ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ 
-- & ( \RAM|ram~343_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~14_combout\ & ( \RAM|ram~341_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~341_combout\,
	datab => \RAM|ALT_INV_ram~343_combout\,
	datac => \RAM|ALT_INV_ram~345_combout\,
	datad => \RAM|ALT_INV_ram~347_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~348_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~36_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~15_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~30\ = CARRY(( \CPU|BANCO_REG|registrador~36_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~15_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~36_combout\,
	dataf => \RAM|ALT_INV_ram~348_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~29_sumout\,
	cout => \CPU|ULA1|Add0~30\);

\CPU|DEC_instrucao|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~3_combout\ = (!\ROM|memROM~5_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~8_combout\ $ (!\ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|DEC_instrucao|saida~3_combout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (!\CPU|DEC_instrucao|saida[3]~2_combout\ & (\CPU|DEC_instrucao|saida~5_combout\ & !\CPU|DEC_instrucao|saida~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~36_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\ROM|memROM~15_combout\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( \CPU|BANCO_REG|registrador~36_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\ROM|memROM~15_combout\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~36_combout\,
	dataf => \RAM|ALT_INV_ram~348_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|ULA1|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~15_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\RAM|ram~348_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011111111100011101000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \RAM|ALT_INV_ram~348_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[0]~7_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & \CPU|DEC_instrucao|saida~5_combout\)) # (\CPU|DEC_instrucao|saida~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|BANCO_REG|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~28_combout\ = (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\ROM|memROM~16_combout\ & ((\CPU|DEC_instrucao|Equal13~3_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001100000001000000110000000100000011000000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	combout => \CPU|BANCO_REG|registrador~28_combout\);

\CPU|BANCO_REG|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[0]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~19_q\);

\CPU|BANCO_REG|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~29_combout\ = (!\CPU|DEC_instrucao|Equal13~1_combout\ & (!\ROM|memROM~16_combout\ & ((\CPU|DEC_instrucao|Equal13~3_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000010000001100000001000000110000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	combout => \CPU|BANCO_REG|registrador~29_combout\);

\CPU|BANCO_REG|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[0]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~11_q\);

\CPU|BANCO_REG|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~36_combout\ = ( \CPU|BANCO_REG|registrador~11_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~19_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~11_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~19_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~19_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~11_q\,
	combout => \CPU|BANCO_REG|registrador~36_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~35_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[1]~1_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( 
-- \CPU|ULA1|Add0~30\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|BANCO_REG|registrador~35_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[1]~1_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( 
-- \CPU|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~35_combout\,
	dataf => \ALT_INV_Data_IN[1]~1_combout\,
	cin => \CPU|ULA1|Add0~30\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~35_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\Data_IN[1]~1_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|BANCO_REG|registrador~35_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\Data_IN[1]~1_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~35_combout\,
	dataf => \ALT_INV_Data_IN[1]~1_combout\,
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[1]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~11_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[1]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011111111100011101000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \ALT_INV_Data_IN[1]~1_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[1]~6_combout\);

\CPU|BANCO_REG|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[1]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~20_q\);

\CPU|BANCO_REG|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[1]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~12_q\);

\CPU|BANCO_REG|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~35_combout\ = ( \CPU|BANCO_REG|registrador~12_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~20_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~12_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~20_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~20_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~12_q\,
	combout => \CPU|BANCO_REG|registrador~35_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[2]~5_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~17_combout\))) ) + ( 
-- \CPU|ULA1|Add0~26\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[2]~5_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~17_combout\))) ) + ( 
-- \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	dataf => \ALT_INV_Data_IN[2]~5_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\Data_IN[2]~5_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\Data_IN[2]~5_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	dataf => \ALT_INV_Data_IN[2]~5_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[2]~5_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~13_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[2]~5_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011111111100011101000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \ALT_INV_Data_IN[2]~5_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[2]~5_combout\);

\CPU|BANCO_REG|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[2]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~21_q\);

\CPU|BANCO_REG|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[2]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~13_q\);

\CPU|BANCO_REG|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~34_combout\ = ( \CPU|BANCO_REG|registrador~13_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~21_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~13_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~21_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~13_q\,
	combout => \CPU|BANCO_REG|registrador~34_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[3]~0_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & (((\Data_IN[3]~0_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~18_combout\))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	dataf => \ALT_INV_Data_IN[3]~0_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\CPU|DEC_instrucao|saida[1]~4_combout\) # ((!\RAM|ram~323_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & 
-- (((!\ROM|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\CPU|DEC_instrucao|saida[1]~4_combout\) # ((!\RAM|ram~323_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & 
-- (((!\ROM|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	dataf => \RAM|ALT_INV_ram~323_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[3]~0_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~11_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|Equal13~3_combout\ & ((\Data_IN[3]~0_combout\))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[3]~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[3]~4_combout\);

\CPU|BANCO_REG|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[3]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~22_q\);

\CPU|BANCO_REG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[3]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~14_q\);

\CPU|BANCO_REG|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~33_combout\ = ( \CPU|BANCO_REG|registrador~14_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~22_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~14_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~22_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~22_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~14_q\,
	combout => \CPU|BANCO_REG|registrador~33_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	dataf => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\CPU|DEC_instrucao|saida[1]~4_combout\) # ((!\RAM|ram~314_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & 
-- (((!\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~3_combout\ & ((!\CPU|DEC_instrucao|saida[1]~4_combout\) # ((!\RAM|ram~314_combout\)))) # (\CPU|DEC_instrucao|Equal13~3_combout\ & 
-- (((!\ROM|memROM~14_combout\)))) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	dataf => \RAM|ALT_INV_ram~314_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~3_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[4]~3_combout\);

\CPU|BANCO_REG|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[4]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~23_q\);

\CPU|BANCO_REG|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[4]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~15_q\);

\CPU|BANCO_REG|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~32_combout\ = ( \CPU|BANCO_REG|registrador~15_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~23_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~15_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~23_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~23_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~15_q\,
	combout => \CPU|BANCO_REG|registrador~32_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\RAM|ram~305_combout\ & ((\CPU|DEC_instrucao|saida~5_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\)))) ) + ( \CPU|ULA1|Add0~14\ 
-- ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\RAM|ram~305_combout\ & ((\CPU|DEC_instrucao|saida~5_combout\) # (\CPU|DEC_instrucao|saida[3]~1_combout\)))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	dataf => \RAM|ALT_INV_ram~305_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( ((!\RAM|ram~305_combout\) # ((!\CPU|DEC_instrucao|saida~5_combout\ & !\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( 
-- \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( ((!\RAM|ram~305_combout\) # ((!\CPU|DEC_instrucao|saida~5_combout\ & !\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \RAM|ALT_INV_ram~305_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~2_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\RAM|ram~305_combout\ & (\CPU|DEC_instrucao|saida[1]~4_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~305_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[5]~2_combout\);

\CPU|BANCO_REG|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[5]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~24_q\);

\CPU|BANCO_REG|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[5]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~16_q\);

\CPU|BANCO_REG|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~31_combout\ = ( \CPU|BANCO_REG|registrador~16_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~24_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~16_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~24_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~24_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~16_q\,
	combout => \CPU|BANCO_REG|registrador~31_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( (\RAM|ram~296_combout\ & ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & (\CPU|DEC_instrucao|saida~5_combout\)) # (\CPU|DEC_instrucao|saida[3]~2_combout\ & 
-- ((!\CPU|DEC_instrucao|Equal13~1_combout\))))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( (\RAM|ram~296_combout\ & ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & (\CPU|DEC_instrucao|saida~5_combout\)) # (\CPU|DEC_instrucao|saida[3]~2_combout\ & 
-- ((!\CPU|DEC_instrucao|Equal13~1_combout\))))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	dataf => \RAM|ALT_INV_ram~296_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( ((!\RAM|ram~296_combout\) # ((!\CPU|DEC_instrucao|saida~5_combout\ & !\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( 
-- \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( ((!\RAM|ram~296_combout\) # ((!\CPU|DEC_instrucao|saida~5_combout\ & !\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \RAM|ALT_INV_ram~296_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~1_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\RAM|ram~296_combout\ & (\CPU|DEC_instrucao|saida[1]~4_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111100010000000111110001000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~296_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[6]~1_combout\);

\CPU|BANCO_REG|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[6]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~25_q\);

\CPU|BANCO_REG|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[6]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~17_q\);

\CPU|BANCO_REG|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~30_combout\ = ( \CPU|BANCO_REG|registrador~17_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~25_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~17_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~25_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~25_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~17_q\,
	combout => \CPU|BANCO_REG|registrador~30_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( (\RAM|ram~279_combout\ & ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & (\CPU|DEC_instrucao|saida~5_combout\)) # (\CPU|DEC_instrucao|saida[3]~2_combout\ & 
-- ((!\CPU|DEC_instrucao|Equal13~1_combout\))))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~27_combout\,
	dataf => \RAM|ALT_INV_ram~279_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~1_sumout\);

\CPU|ULA1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~0_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\RAM|ram~279_combout\ & (\CPU|DEC_instrucao|saida[1]~4_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~279_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[7]~0_combout\);

\CPU|BANCO_REG|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[7]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~26_q\);

\CPU|BANCO_REG|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[7]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~18_q\);

\CPU|BANCO_REG|registrador~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~27_combout\ = ( \CPU|BANCO_REG|registrador~18_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~0_combout\) # (\CPU|BANCO_REG|registrador~26_q\)) # (\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|BANCO_REG|registrador~18_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \CPU|BANCO_REG|registrador~26_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~26_q\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~18_q\,
	combout => \CPU|BANCO_REG|registrador~27_combout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( ((!\RAM|ram~279_combout\) # ((!\CPU|DEC_instrucao|saida[3]~1_combout\ & !\CPU|DEC_instrucao|saida~5_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( \CPU|ULA1|Add1~6\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~27_combout\,
	dataf => \RAM|ALT_INV_ram~279_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~1_sumout\);

\CPU|REG_FLAG_LESS|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG_LESS|DOUT~0_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|DEC_instrucao|saida[3]~2_combout\ & ((!\CPU|DEC_instrucao|saida~5_combout\ & (\CPU|REG_FLAG_LESS|DOUT~q\)) # (\CPU|DEC_instrucao|saida~5_combout\ & 
-- ((\CPU|ULA1|Add1~1_sumout\))))) # (\CPU|DEC_instrucao|saida[3]~2_combout\ & (\CPU|REG_FLAG_LESS|DOUT~q\)) ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( (\CPU|REG_FLAG_LESS|DOUT~q\ & ((!\CPU|DEC_instrucao|saida~5_combout\) # 
-- (\CPU|DEC_instrucao|saida[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010001010100010101110101010001010100010101000101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|REG_FLAG_LESS|DOUT~0_combout\);

\CPU|REG_FLAG_LESS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_FLAG_LESS|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_LESS|DOUT~q\);

\CPU|DEC_instrucao|saida_desvio[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ = ( \CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~5_combout\))) # (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~5_combout\ & 
-- \ROM|memROM~8_combout\))) ) ) # ( !\CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~8_combout\))) # (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~5_combout\ & 
-- \ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100001000000010010000000000001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\,
	combout => \CPU|DEC_instrucao|saida_desvio[0]~0_combout\);

\CPU|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(2));

\CPU|MUX_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # ((\ROM|memROM~13_combout\)))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(2))))) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((\ROM|memROM~13_combout\)))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\CPU|DEC_instrucao|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~0_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal13~0_combout\);

\CPU|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(1));

\CPU|MUX_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~1_combout\ = ( \ROM|memROM~11_combout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (((\CPU|incrementaPC|Add0~5_sumout\)) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(1))))) ) ) # ( !\ROM|memROM~11_combout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\)))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & 
-- (((\CPU|REG_RETORNO|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(1),
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|DEC_instrucao|saida[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[11]~0_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~5_combout\ & !\ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|saida[11]~0_combout\);

\CPU|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DEC_instrucao|saida[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(0));

\CPU|MUX_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~0_combout\ = (!\CPU|DEC_instrucao|Equal13~0_combout\ & (((\CPU|incrementaPC|Add0~1_sumout\ & !\CPU|DEC_instrucao|saida_desvio[0]~0_combout\)))) # (\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|REG_RETORNO|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100010001000111010001000100011101000100010001110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_RETORNO|ALT_INV_DOUT\(0),
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;
END structure;


