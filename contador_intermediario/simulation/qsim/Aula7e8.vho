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

-- DATE "10/20/2022 15:56:05"

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
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
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
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[3]~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[1]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[3]~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~35_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~19_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~36_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~11_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~6_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~12_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~7_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~34_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~30\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~0_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~28_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~29_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~30_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~4_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~31_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|flagzero~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|flagzero~combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[2]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_ZERO|DOUT~q\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|DOUT~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal13~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~32_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~31_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~27_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_flagzero~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
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
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
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
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|DEC_instrucao|ALT_INV_saida~5_combout\ <= NOT \CPU|DEC_instrucao|saida~5_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[3]~4_combout\ <= NOT \CPU|DEC_instrucao|saida[3]~4_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\CPU|BANCO_REG|ALT_INV_registrador~34_combout\ <= NOT \CPU|BANCO_REG|registrador~34_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|BANCO_REG|ALT_INV_registrador~33_combout\ <= NOT \CPU|BANCO_REG|registrador~33_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|BANCO_REG|ALT_INV_registrador~32_combout\ <= NOT \CPU|BANCO_REG|registrador~32_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\CPU|BANCO_REG|ALT_INV_registrador~31_combout\ <= NOT \CPU|BANCO_REG|registrador~31_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\CPU|BANCO_REG|ALT_INV_registrador~30_combout\ <= NOT \CPU|BANCO_REG|registrador~30_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[5]~1_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\CPU|BANCO_REG|ALT_INV_registrador~29_combout\ <= NOT \CPU|BANCO_REG|registrador~29_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\ <= NOT \CPU|DEC_instrucao|saida[1]~3_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\ <= NOT \CPU|DEC_instrucao|Equal13~2_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~28_combout\ <= NOT \CPU|BANCO_REG|registrador~28_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\ <= NOT \CPU|DEC_instrucao|saida[3]~2_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~27_combout\ <= NOT \CPU|BANCO_REG|registrador~27_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\CPU|DEC_instrucao|ALT_INV_saida~1_combout\ <= NOT \CPU|DEC_instrucao|saida~1_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\ <= NOT \CPU|DEC_instrucao|Equal13~1_combout\;
\CPU|ULA1|ALT_INV_flagzero~0_combout\ <= NOT \CPU|ULA1|flagzero~0_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ <= NOT \CPU|DEC_instrucao|saida_desvio[0]~0_combout\;
\CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_LESS|DOUT~q\;
\CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_ZERO|DOUT~q\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
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
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~13_q\ <= NOT \CPU|BANCO_REG|registrador~13_q\;
\CPU|BANCO_REG|ALT_INV_registrador~21_q\ <= NOT \CPU|BANCO_REG|registrador~21_q\;
\CPU|BANCO_REG|ALT_INV_registrador~12_q\ <= NOT \CPU|BANCO_REG|registrador~12_q\;
\CPU|BANCO_REG|ALT_INV_registrador~20_q\ <= NOT \CPU|BANCO_REG|registrador~20_q\;
\CPU|BANCO_REG|ALT_INV_registrador~11_q\ <= NOT \CPU|BANCO_REG|registrador~11_q\;
\CPU|BANCO_REG|ALT_INV_registrador~19_q\ <= NOT \CPU|BANCO_REG|registrador~19_q\;
\CPU|BANCO_REG|ALT_INV_registrador~18_q\ <= NOT \CPU|BANCO_REG|registrador~18_q\;
\CPU|BANCO_REG|ALT_INV_registrador~26_q\ <= NOT \CPU|BANCO_REG|registrador~26_q\;
\CPU|BANCO_REG|ALT_INV_registrador~17_q\ <= NOT \CPU|BANCO_REG|registrador~17_q\;
\CPU|BANCO_REG|ALT_INV_registrador~25_q\ <= NOT \CPU|BANCO_REG|registrador~25_q\;
\CPU|BANCO_REG|ALT_INV_registrador~16_q\ <= NOT \CPU|BANCO_REG|registrador~16_q\;
\CPU|BANCO_REG|ALT_INV_registrador~24_q\ <= NOT \CPU|BANCO_REG|registrador~24_q\;
\CPU|BANCO_REG|ALT_INV_registrador~15_q\ <= NOT \CPU|BANCO_REG|registrador~15_q\;
\CPU|BANCO_REG|ALT_INV_registrador~23_q\ <= NOT \CPU|BANCO_REG|registrador~23_q\;
\CPU|BANCO_REG|ALT_INV_registrador~14_q\ <= NOT \CPU|BANCO_REG|registrador~14_q\;
\CPU|BANCO_REG|ALT_INV_registrador~22_q\ <= NOT \CPU|BANCO_REG|registrador~22_q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
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

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

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

\CPU|MUX_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~6_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( 
-- (\ROM|memROM~6_combout\ & (!\CPU|DEC_instrucao|Equal13~0_combout\ & \CPU|DEC_instrucao|saida_desvio[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110001001100010000000100000001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
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

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000101000000000000000000000001010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~11_combout\);

\CPU|MUX_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~11_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( 
-- (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010001010101000000000001000101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
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

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~13_combout\);

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

\CPU|MUX_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~5_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~13_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( 
-- (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010001010101000000000001000101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
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

\CPU|MUX_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~6_combout\ = (!\CPU|DEC_instrucao|Equal13~0_combout\ & (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \CPU|incrementaPC|Add0~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
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

\CPU|MUX_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~7_combout\ = (!\CPU|DEC_instrucao|Equal13~0_combout\ & (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \CPU|incrementaPC|Add0~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
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

\CPU|MUX_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~8_combout\ = (!\CPU|DEC_instrucao|Equal13~0_combout\ & (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \CPU|incrementaPC|Add0~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
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

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|MUX_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~12_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( 
-- (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \ROM|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010001010101000000000001000101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
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

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000000000000110100000000000011010000000000001101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001010000000111000101000000011100010100000001110001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|DEC_instrucao|Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~1_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~1_combout\ ) ) # ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~1_combout\) # ((!\ROM|memROM~0_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100110011001100110011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_instrucao|Equal13~1_combout\);

\CPU|DEC_instrucao|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~1_combout\ = ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\))) ) ) # ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~1_combout\ & 
-- ((!\ROM|memROM~0_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\)) # (\ROM|memROM~0_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000100000000000000010000100000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_instrucao|saida~1_combout\);

\CPU|DEC_instrucao|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[3]~2_combout\ = (!\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\ & (!\ROM|memROM~6_combout\ $ (!\ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000000010001000000000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|DEC_instrucao|saida[3]~2_combout\);

\CPU|DEC_instrucao|Equal13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~2_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal13~2_combout\);

\CPU|DEC_instrucao|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[1]~3_combout\ = (!\CPU|DEC_instrucao|Equal13~1_combout\ & ((\CPU|DEC_instrucao|saida~1_combout\) # (\CPU|DEC_instrucao|saida[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	combout => \CPU|DEC_instrucao|saida[1]~3_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~10_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~34_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~9_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\ & (\RAM|ram~17_q\ & !\ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~543_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~543_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~539_combout\);

\CPU|MUX_EntradaB_ULA|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\ = (!\CPU|DEC_instrucao|Equal13~2_combout\ & (((\CPU|DEC_instrucao|saida[1]~3_combout\ & \RAM|ram~539_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = (!\ROM|memROM~10_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~33_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = (!\ROM|memROM~11_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~16_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~16_q\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~12_combout\ & ( (\RAM|ram~541_combout\ & ((\RAM|ram~540_combout\) # (\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000000000000000000000101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~541_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~32_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~12_combout\ & \RAM|ram~15_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~538_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~9_combout\)) ) + ( !VCC ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~9_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

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

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~9_combout\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|BANCO_REG|registrador~32_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (!\ROM|memROM~9_combout\)) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~32_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|DEC_instrucao|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[3]~4_combout\ = (\CPU|DEC_instrucao|saida[3]~2_combout\) # (\CPU|DEC_instrucao|Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	combout => \CPU|DEC_instrucao|saida[3]~4_combout\);

\CPU|DEC_instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~5_combout\ = (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\ $ (!\ROM|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|DEC_instrucao|saida~5_combout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (!\CPU|DEC_instrucao|saida[3]~4_combout\ & (\CPU|DEC_instrucao|saida~1_combout\ & !\CPU|DEC_instrucao|saida~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~4_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|ULA1|saida[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~5_combout\ = ( \CPU|ULA1|Equal0~0_combout\ & ( \CPU|ULA1|Add1~21_sumout\ ) ) # ( !\CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001111111100011101000111010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \RAM|ALT_INV_ram~538_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[0]~5_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ((!\CPU|DEC_instrucao|saida[3]~4_combout\ & \CPU|DEC_instrucao|saida~1_combout\)) # (\CPU|DEC_instrucao|saida~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[3]~4_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~5_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~14_combout\);

\CPU|BANCO_REG|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~35_combout\ = ( \ROM|memROM~14_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\ $ (((!\ROM|memROM~2_combout\ & !\ROM|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011001000000000000000000000000100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|BANCO_REG|registrador~35_combout\);

\CPU|BANCO_REG|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[0]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~19_q\);

\CPU|BANCO_REG|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~36_combout\ = ( !\ROM|memROM~14_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\ $ (((!\ROM|memROM~2_combout\ & !\ROM|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110010000000000000000000000001001100100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	combout => \CPU|BANCO_REG|registrador~36_combout\);

\CPU|BANCO_REG|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[0]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~11_q\);

\CPU|BANCO_REG|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~32_combout\ = ( \CPU|BANCO_REG|registrador~19_q\ & ( \CPU|BANCO_REG|registrador~11_q\ ) ) # ( !\CPU|BANCO_REG|registrador~19_q\ & ( \CPU|BANCO_REG|registrador~11_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~19_q\ & ( !\CPU|BANCO_REG|registrador~11_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~19_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~11_q\,
	combout => \CPU|BANCO_REG|registrador~32_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\CPU|DEC_instrucao|saida[1]~3_combout\) # ((!\RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((!\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|BANCO_REG|registrador~33_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\CPU|DEC_instrucao|saida[1]~3_combout\) # ((!\RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((!\ROM|memROM~10_combout\)))) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~33_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( \CPU|ULA1|Equal0~0_combout\ ) ) # ( \CPU|ULA1|Add1~25_sumout\ & ( !\CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (((\CPU|DEC_instrucao|saida[1]~3_combout\ & 
-- \RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~10_combout\)) ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( !\CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (((\CPU|DEC_instrucao|saida[1]~3_combout\ & 
-- \RAM|ram~547_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datad => \RAM|ALT_INV_ram~547_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
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
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~12_q\);

\CPU|BANCO_REG|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~33_combout\ = ( \CPU|BANCO_REG|registrador~20_q\ & ( \CPU|BANCO_REG|registrador~12_q\ ) ) # ( !\CPU|BANCO_REG|registrador~20_q\ & ( \CPU|BANCO_REG|registrador~12_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~20_q\ & ( !\CPU|BANCO_REG|registrador~12_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~20_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~12_q\,
	combout => \CPU|BANCO_REG|registrador~33_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\ ) + ( \CPU|ULA1|Add0~26\ ))
-- \CPU|ULA1|Add0~30\ = CARRY(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	dataf => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\,
	cout => \CPU|ULA1|Add0~30\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\CPU|DEC_instrucao|saida[1]~3_combout\) # ((!\RAM|ram~539_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((!\ROM|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( \CPU|BANCO_REG|registrador~34_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & ((!\CPU|DEC_instrucao|saida[1]~3_combout\) # ((!\RAM|ram~539_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((!\ROM|memROM~11_combout\)))) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010010011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~34_combout\,
	dataf => \RAM|ALT_INV_ram~539_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|ULA1|saida[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~7_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & ((\CPU|MUX_EntradaB_ULA|saida_MUX[2]~2_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (\CPU|ULA1|Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \CPU|ULA1|saida[2]~7_combout\);

\CPU|BANCO_REG|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[2]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[2]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~13_q\);

\CPU|BANCO_REG|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~34_combout\ = ( \CPU|BANCO_REG|registrador~21_q\ & ( \CPU|BANCO_REG|registrador~13_q\ ) ) # ( !\CPU|BANCO_REG|registrador~21_q\ & ( \CPU|BANCO_REG|registrador~13_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~21_q\ & ( !\CPU|BANCO_REG|registrador~13_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~21_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~13_q\,
	combout => \CPU|BANCO_REG|registrador~34_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\RAM|ram~528_combout\ & ((\CPU|DEC_instrucao|saida~1_combout\) # (\CPU|DEC_instrucao|saida[3]~2_combout\)))) ) + ( \CPU|ULA1|Add0~30\ 
-- ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\RAM|ram~528_combout\ & ((\CPU|DEC_instrucao|saida~1_combout\) # (\CPU|DEC_instrucao|saida[3]~2_combout\)))) ) + ( \CPU|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~27_combout\,
	dataf => \RAM|ALT_INV_ram~528_combout\,
	cin => \CPU|ULA1|Add0~30\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~0_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & (\RAM|ram~528_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[3]~0_combout\);

\CPU|BANCO_REG|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[3]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[3]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~14_q\);

\CPU|BANCO_REG|registrador~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~27_combout\ = ( \CPU|BANCO_REG|registrador~22_q\ & ( \CPU|BANCO_REG|registrador~14_q\ ) ) # ( !\CPU|BANCO_REG|registrador~22_q\ & ( \CPU|BANCO_REG|registrador~14_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~22_q\ & ( !\CPU|BANCO_REG|registrador~14_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~22_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~14_q\,
	combout => \CPU|BANCO_REG|registrador~27_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~27_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( (\RAM|ram~18_q\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~528_combout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( ((!\RAM|ram~528_combout\) # ((!\CPU|DEC_instrucao|saida~1_combout\ & !\CPU|DEC_instrucao|saida[3]~2_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( 
-- \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|BANCO_REG|registrador~27_combout\ ) + ( ((!\RAM|ram~528_combout\) # ((!\CPU|DEC_instrucao|saida~1_combout\ & !\CPU|DEC_instrucao|saida[3]~2_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~27_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~28_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~13_combout\ & (\RAM|ram~19_q\ & !\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~529_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~530_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~28_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~12_combout\)))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|BANCO_REG|registrador~28_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~12_combout\)))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	dataf => \RAM|ALT_INV_ram~530_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ = (!\CPU|DEC_instrucao|Equal13~2_combout\ & (((\CPU|DEC_instrucao|saida[1]~3_combout\ & \RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\);

\CPU|ULA1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~1_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[4]~1_combout\);

\CPU|BANCO_REG|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[4]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[4]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~15_q\);

\CPU|BANCO_REG|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~28_combout\ = ( \CPU|BANCO_REG|registrador~23_q\ & ( \CPU|BANCO_REG|registrador~15_q\ ) ) # ( !\CPU|BANCO_REG|registrador~23_q\ & ( \CPU|BANCO_REG|registrador~15_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~23_q\ & ( !\CPU|BANCO_REG|registrador~15_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~23_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~15_q\,
	combout => \CPU|BANCO_REG|registrador~28_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~28_combout\ ) + ( !\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|BANCO_REG|registrador~28_combout\ ) + ( !\CPU|MUX_EntradaB_ULA|saida_MUX[4]~0_combout\ ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|BANCO_REG|ALT_INV_registrador~28_combout\,
	dataf => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[4]~0_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~29_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~1_combout\ & ( \CPU|PC|DOUT\(1) & ( (\RAM|ram~20_q\ & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\ROM|memROM~1_combout\ & ( \CPU|PC|DOUT\(1) & ( \RAM|ram~20_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(1) & ( (\RAM|ram~20_q\ & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(1) & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000100010101010101010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \RAM|ram~531_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~12_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~533_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~29_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~533_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~13_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|BANCO_REG|registrador~29_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~2_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & ((\RAM|ram~533_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & 
-- (((\ROM|memROM~13_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~29_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|MUX_EntradaB_ULA|saida_MUX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\ = (!\CPU|DEC_instrucao|Equal13~2_combout\ & (((\CPU|DEC_instrucao|saida[1]~3_combout\ & \RAM|ram~533_combout\)))) # (\CPU|DEC_instrucao|Equal13~2_combout\ & (\ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000111010001000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datad => \RAM|ALT_INV_ram~533_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\);

\CPU|ULA1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~2_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[5]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
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
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~16_q\);

\CPU|BANCO_REG|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~29_combout\ = ( \CPU|BANCO_REG|registrador~24_q\ & ( \CPU|BANCO_REG|registrador~16_q\ ) ) # ( !\CPU|BANCO_REG|registrador~24_q\ & ( \CPU|BANCO_REG|registrador~16_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~24_q\ & ( !\CPU|BANCO_REG|registrador~16_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~24_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~16_q\,
	combout => \CPU|BANCO_REG|registrador~29_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~29_combout\ ) + ( !\CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\ ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( \CPU|BANCO_REG|registrador~29_combout\ ) + ( !\CPU|MUX_EntradaB_ULA|saida_MUX[5]~1_combout\ ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|BANCO_REG|ALT_INV_registrador~29_combout\,
	dataf => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[5]~1_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~30_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & \RAM|ram~21_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~535_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( (\RAM|ram~535_combout\ & ((!\CPU|DEC_instrucao|saida[3]~4_combout\ & ((\CPU|DEC_instrucao|saida~1_combout\))) # (\CPU|DEC_instrucao|saida[3]~4_combout\ & 
-- (!\CPU|DEC_instrucao|Equal13~1_combout\)))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( (\RAM|ram~535_combout\ & ((!\CPU|DEC_instrucao|saida[3]~4_combout\ & ((\CPU|DEC_instrucao|saida~1_combout\))) # (\CPU|DEC_instrucao|saida[3]~4_combout\ & 
-- (!\CPU|DEC_instrucao|Equal13~1_combout\)))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_ram~535_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[3]~4_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~3_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & (\RAM|ram~535_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datab => \RAM|ALT_INV_ram~535_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[6]~3_combout\);

\CPU|BANCO_REG|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[6]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[6]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~17_q\);

\CPU|BANCO_REG|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~30_combout\ = ( \CPU|BANCO_REG|registrador~25_q\ & ( \CPU|BANCO_REG|registrador~17_q\ ) ) # ( !\CPU|BANCO_REG|registrador~25_q\ & ( \CPU|BANCO_REG|registrador~17_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~25_q\ & ( !\CPU|BANCO_REG|registrador~17_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~25_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~17_q\,
	combout => \CPU|BANCO_REG|registrador~30_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( ((!\RAM|ram~535_combout\) # ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & !\CPU|DEC_instrucao|saida~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( 
-- \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( \CPU|BANCO_REG|registrador~30_combout\ ) + ( ((!\RAM|ram~535_combout\) # ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & !\CPU|DEC_instrucao|saida~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~30_combout\,
	dataf => \RAM|ALT_INV_ram~535_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~31_combout\,
	ena => \RAM|ram~542_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~10_combout\ & (\RAM|ram~22_q\ & !\ROM|memROM~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~22_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~536_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( (!\CPU|DEC_instrucao|Equal13~1_combout\ & (\RAM|ram~536_combout\ & ((\CPU|DEC_instrucao|saida[3]~2_combout\) # (\CPU|DEC_instrucao|saida~1_combout\)))) ) + ( \CPU|ULA1|Add0~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\);

\CPU|ULA1|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~4_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|DEC_instrucao|saida[1]~3_combout\ & (\RAM|ram~536_combout\))) # (\CPU|ULA1|Equal0~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111100010001000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~3_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[7]~4_combout\);

\CPU|BANCO_REG|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[7]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~35_combout\,
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
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[7]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|BANCO_REG|registrador~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~18_q\);

\CPU|BANCO_REG|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~31_combout\ = ( \CPU|BANCO_REG|registrador~26_q\ & ( \CPU|BANCO_REG|registrador~18_q\ ) ) # ( !\CPU|BANCO_REG|registrador~26_q\ & ( \CPU|BANCO_REG|registrador~18_q\ & ( (!\CPU|PC|DOUT\(1)) # (((!\ROM|memROM~1_combout\) # 
-- (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2))) ) ) ) # ( \CPU|BANCO_REG|registrador~26_q\ & ( !\CPU|BANCO_REG|registrador~18_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|BANCO_REG|ALT_INV_registrador~26_q\,
	dataf => \CPU|BANCO_REG|ALT_INV_registrador~18_q\,
	combout => \CPU|BANCO_REG|registrador~31_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~31_combout\ ) + ( ((!\RAM|ram~536_combout\) # ((!\CPU|DEC_instrucao|saida[3]~2_combout\ & !\CPU|DEC_instrucao|saida~1_combout\))) # (\CPU|DEC_instrucao|Equal13~1_combout\) ) + ( 
-- \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~1_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~31_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\);

\CPU|ULA1|flagzero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagzero~0_combout\ = (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|flagzero~0_combout\);

\CPU|ULA1|flagzero\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagzero~combout\ = ( !\CPU|ULA1|Add1~17_sumout\ & ( \CPU|ULA1|flagzero~0_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \CPU|ULA1|ALT_INV_flagzero~0_combout\,
	combout => \CPU|ULA1|flagzero~combout\);

\CPU|DEC_instrucao|saida[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[2]~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DEC_instrucao|saida[2]~0_combout\);

\CPU|REG_FLAG_ZERO|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|flagzero~combout\,
	ena => \CPU|DEC_instrucao|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_ZERO|DOUT~q\);

\CPU|REG_FLAG_LESS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add1~17_sumout\,
	ena => \CPU|DEC_instrucao|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_LESS|DOUT~q\);

\CPU|DEC_instrucao|saida_desvio[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ = ( \CPU|REG_FLAG_ZERO|DOUT~q\ & ( \CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~4_combout\ & (((\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\)))) # (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & 
-- (!\ROM|memROM~6_combout\))) ) ) ) # ( !\CPU|REG_FLAG_ZERO|DOUT~q\ & ( \CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\))) # (\ROM|memROM~2_combout\ & 
-- (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\) # (!\ROM|memROM~8_combout\)))) ) ) ) # ( \CPU|REG_FLAG_ZERO|DOUT~q\ & ( !\CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~4_combout\ & (((\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\)))) # 
-- (\ROM|memROM~4_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\))) ) ) ) # ( !\CPU|REG_FLAG_ZERO|DOUT~q\ & ( !\CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & 
-- (\ROM|memROM~6_combout\ & \ROM|memROM~8_combout\))) # (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & ((!\ROM|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001000000100000000110000010001000110000001000000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\,
	dataf => \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\,
	combout => \CPU|DEC_instrucao|saida_desvio[0]~0_combout\);

\CPU|MUX_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~10_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( 
-- (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & \ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010001010101000000000001000101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000000000010010100000000001001010000000000100101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|DEC_instrucao|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal13~0_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DEC_instrucao|Equal13~0_combout\);

\CPU|MUX_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|DEC_instrucao|Equal13~0_combout\ & ((!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # (\ROM|memROM~9_combout\))) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( 
-- (!\CPU|DEC_instrucao|Equal13~0_combout\ & (\ROM|memROM~9_combout\ & \CPU|DEC_instrucao|saida_desvio[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011000000110000000000000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_instrucao|ALT_INV_Equal13~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
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


