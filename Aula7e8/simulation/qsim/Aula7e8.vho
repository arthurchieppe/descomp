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

-- DATE "10/11/2022 09:28:29"

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
	FPGA_RESET : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END Aula7e8;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~5_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~4_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal5~0_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \Data_IN[4]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~31_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \Data_IN[3]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~30_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \Data_IN[2]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \Data_IN[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \Data_IN[0]~13_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[1]~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~12_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \logicaKeys|DEB|saidaQ~q\ : std_logic;
SIGNAL \logicaKeys|DEB|saida~combout\ : std_logic;
SIGNAL \logicaKeys|FF|DOUT~feeder_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \logicaKeys|FF|DOUT~q\ : std_logic;
SIGNAL \Data_IN[0]~11_combout\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~31feeder_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \Data_IN[0]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \Data_IN[5]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \Data_IN[7]~8_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \Data_IN[6]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \Data_IN[7]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \RAM|dado_out~0_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DEC_Blocos|Equal6~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~q\ : std_logic;
SIGNAL \logica_LED|LED9|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|LED9|DOUT~q\ : std_logic;
SIGNAL \comp_HEX0|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comp_HEX0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \DEC_Blocos|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \comp_HEX0|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_LED|LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
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
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|MUX_PC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \logicaKeys|FF|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~11_combout\ : std_logic;
SIGNAL \logicaKeys|DEB|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~29_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET <= FPGA_RESET;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|DEC_instrucao|saida[5]~0_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\logica_LED|ALT_INV_comb~1_combout\ <= NOT \logica_LED|comb~1_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\logica_LED|ALT_INV_comb~0_combout\ <= NOT \logica_LED|comb~0_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\DEC_Blocos|ALT_INV_Equal6~0_combout\ <= NOT \DEC_Blocos|Equal6~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\ <= NOT \CPU|DEC_instrucao|Equal5~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\comp_HEX0|REG|ALT_INV_DOUT\(2) <= NOT \comp_HEX0|REG|DOUT\(2);
\comp_HEX0|REG|ALT_INV_DOUT\(1) <= NOT \comp_HEX0|REG|DOUT\(1);
\comp_HEX0|REG|ALT_INV_DOUT\(3) <= NOT \comp_HEX0|REG|DOUT\(3);
\comp_HEX0|REG|ALT_INV_DOUT\(0) <= NOT \comp_HEX0|REG|DOUT\(0);
\logica_LED|LED9|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED9|DOUT~q\;
\logica_LED|LED8|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED8|DOUT~q\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
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
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|REG_FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|REG_FLAG|DOUT~1_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|REG_FLAG|DOUT~0_combout\;
\ALT_INV_Data_IN[0]~9_combout\ <= NOT \Data_IN[0]~9_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\ALT_INV_Data_IN[7]~8_combout\ <= NOT \Data_IN[7]~8_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\ALT_INV_Data_IN[6]~7_combout\ <= NOT \Data_IN[6]~7_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ALT_INV_Data_IN[5]~6_combout\ <= NOT \Data_IN[5]~6_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\ALT_INV_Data_IN[4]~5_combout\ <= NOT \Data_IN[4]~5_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\ALT_INV_Data_IN[3]~4_combout\ <= NOT \Data_IN[3]~4_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\ALT_INV_Data_IN[2]~3_combout\ <= NOT \Data_IN[2]~3_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\ALT_INV_Data_IN[1]~2_combout\ <= NOT \Data_IN[1]~2_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~4_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~3_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|REG_RETORNO|DOUT\(7);
\CPU|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|REG_RETORNO|DOUT\(6);
\CPU|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|REG_RETORNO|DOUT\(4);
\CPU|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|REG_RETORNO|DOUT\(8);
\CPU|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|REG_RETORNO|DOUT\(3);
\CPU|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|REG_RETORNO|DOUT\(5);
\CPU|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|REG_RETORNO|DOUT\(0);
\CPU|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|REG_RETORNO|DOUT\(1);
\CPU|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|REG_RETORNO|DOUT\(2);
\CPU|MUX_PC|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX_PC|Equal2~0_combout\;
\CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\ <= NOT \CPU|MUX_PC|saida_MUX[8]~0_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG|DOUT~q\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\logicaKeys|FF|ALT_INV_DOUT~q\ <= NOT \logicaKeys|FF|DOUT~q\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\RAM|ALT_INV_dado_out~0_combout\ <= NOT \RAM|dado_out~0_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|DEC_instrucao|saida[1]~1_combout\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Data_IN[0]~13_combout\ <= NOT \Data_IN[0]~13_combout\;
\ALT_INV_Data_IN[0]~12_combout\ <= NOT \Data_IN[0]~12_combout\;
\ALT_INV_Data_IN[0]~11_combout\ <= NOT \Data_IN[0]~11_combout\;
\logicaKeys|DEB|ALT_INV_saidaQ~q\ <= NOT \logicaKeys|DEB|saidaQ~q\;
\ALT_INV_Data_IN[7]~10_combout\ <= NOT \Data_IN[7]~10_combout\;
\ROM|ALT_INV_memROM~33_combout\ <= NOT \ROM|memROM~33_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\ROM|ALT_INV_memROM~31_combout\ <= NOT \ROM|memROM~31_combout\;
\ROM|ALT_INV_memROM~30_combout\ <= NOT \ROM|memROM~30_combout\;
\ROM|ALT_INV_memROM~29_combout\ <= NOT \ROM|memROM~29_combout\;

-- Location: IOOBUF_X8_Y45_N76
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X43_Y45_N2
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X10_Y0_N42
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|LED8|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X11_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|LED9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X11_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y45_N59
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
	o => ww_HEX1(1));

-- Location: IOOBUF_X22_Y45_N2
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
	o => ww_HEX1(2));

-- Location: IOOBUF_X36_Y45_N53
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
	o => ww_HEX1(3));

-- Location: IOOBUF_X22_Y45_N19
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
	o => ww_HEX1(4));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_HEX1(5));

-- Location: IOOBUF_X50_Y0_N53
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
	o => ww_HEX1(6));

-- Location: IOOBUF_X10_Y0_N76
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
	o => ww_HEX2(0));

-- Location: IOOBUF_X25_Y0_N19
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
	o => ww_HEX2(1));

-- Location: IOOBUF_X52_Y45_N36
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
	o => ww_HEX2(2));

-- Location: IOOBUF_X54_Y19_N22
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
	o => ww_HEX2(3));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX2(4));

-- Location: IOOBUF_X24_Y0_N53
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
	o => ww_HEX2(5));

-- Location: IOOBUF_X48_Y0_N76
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
	o => ww_HEX2(6));

-- Location: IOOBUF_X54_Y14_N96
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
	o => ww_HEX3(0));

-- Location: IOOBUF_X14_Y45_N53
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
	o => ww_HEX3(1));

-- Location: IOOBUF_X51_Y0_N36
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
	o => ww_HEX3(2));

-- Location: IOOBUF_X48_Y45_N53
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
	o => ww_HEX3(3));

-- Location: IOOBUF_X51_Y0_N53
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
	o => ww_HEX3(4));

-- Location: IOOBUF_X12_Y45_N36
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
	o => ww_HEX3(5));

-- Location: IOOBUF_X54_Y18_N45
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
	o => ww_HEX3(6));

-- Location: IOOBUF_X16_Y45_N42
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
	o => ww_HEX4(0));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_HEX4(1));

-- Location: IOOBUF_X42_Y45_N36
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
	o => ww_HEX4(2));

-- Location: IOOBUF_X25_Y0_N53
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
	o => ww_HEX4(3));

-- Location: IOOBUF_X40_Y0_N59
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
	o => ww_HEX4(4));

-- Location: IOOBUF_X54_Y20_N56
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
	o => ww_HEX4(5));

-- Location: IOOBUF_X54_Y15_N22
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
	o => ww_HEX4(6));

-- Location: IOOBUF_X18_Y0_N19
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X42_Y45_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X36_Y0_N2
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X10_Y45_N36
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X52_Y45_N53
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y19_N22
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X48_Y0_N42
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
	o => ww_HEX5(6));

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X13_Y3_N10
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[8]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: FF_X12_Y3_N59
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X16_Y3_N0
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X16_Y3_N3
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X16_Y3_N6
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X16_Y3_N9
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X16_Y3_N12
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X12_Y3_N32
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X12_Y3_N9
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X12_Y3_N6
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) 
-- & \CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000010000001000100001000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: MLABCELL_X13_Y3_N15
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) 
-- # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011001000111000001100100010111000001000001011100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~4_combout\);

-- Location: MLABCELL_X13_Y2_N27
\CPU|DEC_instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~5_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~3_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DEC_instrucao|saida~5_combout\);

-- Location: FF_X16_Y3_N13
\CPU|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(4));

-- Location: LABCELL_X16_Y3_N39
\CPU|MUX_PC|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~7_combout\ = ( !\CPU|MUX_PC|Equal2~0_combout\ & ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|REG_RETORNO|DOUT\(4) ) ) ) # ( \CPU|MUX_PC|Equal2~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( 
-- \CPU|incrementaPC|Add0~25_sumout\ ) ) ) # ( !\CPU|MUX_PC|Equal2~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|incrementaPC|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(4),
	datae => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~7_combout\);

-- Location: FF_X14_Y3_N4
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N15
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: FF_X16_Y3_N16
\CPU|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(5));

-- Location: FF_X13_Y3_N20
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N33
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X12_Y3_N24
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X13_Y3_N0
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~14_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) ) # ( !\ROM|memROM~14_combout\ & ( (\ROM|memROM~13_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~1_combout\ & 
-- !\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X12_Y3_N30
\CPU|MUX_PC|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~4_combout\ = ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( (!\CPU|MUX_PC|Equal2~0_combout\ & (\CPU|REG_RETORNO|DOUT\(5))) # (\CPU|MUX_PC|Equal2~0_combout\ & ((\ROM|memROM~16_combout\))) ) ) # ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( 
-- \CPU|incrementaPC|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_RETORNO|ALT_INV_DOUT\(5),
	datab => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~4_combout\);

-- Location: FF_X12_Y3_N31
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N48
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X14_Y3_N21
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\) # (\CPU|PC|DOUT\(0)))) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X14_Y3_N6
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~11_combout\ & ( (!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \ROM|memROM~10_combout\)))) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~11_combout\ & ( 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\ROM|memROM~10_combout\ & !\CPU|PC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000000000000000001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

-- Location: FF_X16_Y3_N5
\CPU|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(1));

-- Location: LABCELL_X12_Y3_N57
\CPU|MUX_PC|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~2_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\) # ((!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(1)))) # (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~12_combout\))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~5_sumout\ & ( (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ((!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(1)))) # (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datab => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(1),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~2_combout\);

-- Location: FF_X12_Y3_N58
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N39
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) # (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X12_Y3_N36
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: FF_X16_Y3_N7
\CPU|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(2));

-- Location: LABCELL_X12_Y3_N54
\CPU|MUX_PC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~1_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\) # ((!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(2)))) # (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~9_combout\))) ) ) # ( 
-- !\CPU|incrementaPC|Add0~1_sumout\ & ( (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ((!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(2)))) # (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datab => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(2),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~1_combout\);

-- Location: FF_X12_Y3_N56
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N18
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & 
-- \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001000010100000000100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~15_combout\);

-- Location: MLABCELL_X13_Y3_N36
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~17_combout\);

-- Location: FF_X16_Y3_N2
\CPU|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(0));

-- Location: LABCELL_X12_Y2_N51
\CPU|MUX_PC|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~3_combout\ = ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(0)))) # (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~17_combout\)) ) ) ) # ( 
-- !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|incrementaPC|Add0~9_sumout\ ) ) # ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|MUX_PC|Equal2~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(0)))) # 
-- (\CPU|MUX_PC|Equal2~0_combout\ & (\ROM|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101010111111111111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datae => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~3_combout\);

-- Location: FF_X12_Y3_N35
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X12_Y3_N27
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(5) $ 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\))))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010010100000011101001010000010011000110000001001100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: MLABCELL_X13_Y2_N15
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~18_combout\);

-- Location: MLABCELL_X13_Y2_N18
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~19_combout\);

-- Location: MLABCELL_X13_Y2_N45
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X12_Y2_N33
\CPU|MUX_PC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|Equal2~0_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~19_combout\ & ((!\ROM|memROM~18_combout\) # (\CPU|REG_FLAG|DOUT~q\))) ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- (\ROM|memROM~18_combout\ & !\ROM|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000100011001000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX_PC|Equal2~0_combout\);

-- Location: FF_X12_Y3_N55
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X12_Y3_N51
\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( \CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT[5]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~23_combout\);

-- Location: LABCELL_X12_Y3_N48
\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( \ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \ROM|memROM~24_combout\);

-- Location: FF_X16_Y3_N10
\CPU|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(3));

-- Location: MLABCELL_X13_Y3_N18
\CPU|MUX_PC|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~5_combout\ = ( \CPU|REG_RETORNO|DOUT\(3) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ((!\CPU|MUX_PC|Equal2~0_combout\) # 
-- ((\ROM|memROM~24_combout\)))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(3) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\CPU|MUX_PC|Equal2~0_combout\ & ((\ROM|memROM~24_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111010001111110011101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datac => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \CPU|REG_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUX_PC|saida_MUX[3]~5_combout\);

-- Location: FF_X13_Y3_N19
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X13_Y3_N51
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X14_Y2_N36
\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = ( !\CPU|PC|DOUT\(3) & ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~25_combout\);

-- Location: FF_X14_Y3_N58
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[6]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N18
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X16_Y3_N19
\CPU|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(6));

-- Location: LABCELL_X16_Y3_N54
\CPU|MUX_PC|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~8_combout\ = ( \CPU|MUX_PC|Equal2~0_combout\ & ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \ROM|memROM~25_combout\ ) ) ) # ( !\CPU|MUX_PC|Equal2~0_combout\ & ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|REG_RETORNO|DOUT\(6) ) ) ) 
-- # ( \CPU|MUX_PC|Equal2~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ ) ) ) # ( !\CPU|MUX_PC|Equal2~0_combout\ & ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~25_combout\,
	datab => \CPU|REG_RETORNO|ALT_INV_DOUT\(6),
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~8_combout\);

-- Location: FF_X14_Y3_N59
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[6]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: FF_X14_Y3_N5
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X14_Y3_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X14_Y3_N45
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

-- Location: MLABCELL_X13_Y2_N0
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~20_combout\);

-- Location: LABCELL_X12_Y2_N9
\CPU|REG_FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~0_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \CPU|REG_FLAG|DOUT~q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( \ROM|memROM~21_combout\ & ( \CPU|REG_FLAG|DOUT~q\ ) ) ) # ( \ROM|memROM~18_combout\ & ( 
-- !\ROM|memROM~21_combout\ & ( \CPU|REG_FLAG|DOUT~q\ ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~21_combout\ & ( (\CPU|REG_FLAG|DOUT~q\ & ((!\ROM|memROM~20_combout\) # (\ROM|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|REG_FLAG|DOUT~0_combout\);

-- Location: MLABCELL_X13_Y2_N51
\CPU|DEC_instrucao|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~3_combout\ = ( !\ROM|memROM~21_combout\ & ( !\ROM|memROM~19_combout\ & ( !\ROM|memROM~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~3_combout\);

-- Location: MLABCELL_X13_Y2_N39
\CPU|DEC_instrucao|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~0_combout\ = ( !\ROM|memROM~19_combout\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~21_combout\ & !\ROM|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~0_combout\);

-- Location: MLABCELL_X13_Y2_N54
\CPU|DEC_instrucao|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~4_combout\ = (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\CPU|DEC_instrucao|saida[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~4_combout\);

-- Location: LABCELL_X14_Y2_N6
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~24_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~565_combout\);

-- Location: MLABCELL_X13_Y3_N30
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\CPU|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001010010101010000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~6_combout\);

-- Location: MLABCELL_X13_Y3_N24
\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~26_combout\);

-- Location: LABCELL_X12_Y3_N42
\CPU|DEC_instrucao|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal5~0_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~1_combout\ & (!\ROM|memROM~3_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \CPU|DEC_instrucao|Equal5~0_combout\);

-- Location: LABCELL_X14_Y2_N42
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \CPU|DEC_instrucao|Equal5~0_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~26_combout\ & !\ROM|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: MLABCELL_X13_Y2_N3
\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = (\RAM|ram~565_combout\ & \RAM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~565_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~566_combout\);

-- Location: FF_X12_Y1_N26
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: MLABCELL_X13_Y2_N6
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~24_combout\ & !\ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: MLABCELL_X13_Y2_N36
\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \RAM|ram~567_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \RAM|ram~568_combout\);

-- Location: FF_X12_Y1_N44
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: MLABCELL_X13_Y2_N9
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~569_combout\);

-- Location: MLABCELL_X13_Y2_N21
\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \RAM|ram~569_combout\ & ( \RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \RAM|ALT_INV_ram~569_combout\,
	combout => \RAM|ram~570_combout\);

-- Location: FF_X12_Y1_N49
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: LABCELL_X12_Y1_N15
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~17_combout\ & ( (\RAM|ram~27_q\ & !\ROM|memROM~12_combout\) ) ) # ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~12_combout\ & (\RAM|ram~19_q\)) # (\ROM|memROM~12_combout\ & ((\RAM|ram~35_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: LABCELL_X12_Y1_N24
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~549_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X12_Y1_N48
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \RAM|ram~550_combout\ & ( (!\ROM|memROM~22_combout\ & !\ROM|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \RAM|ALT_INV_ram~550_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: MLABCELL_X13_Y1_N6
\Data_IN[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~5_combout\ = ( \RAM|ram~551_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~551_combout\,
	combout => \Data_IN[4]~5_combout\);

-- Location: LABCELL_X16_Y3_N45
\ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~31_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\ROM|memROM~1_combout\ & \ROM|memROM~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~31_combout\);

-- Location: FF_X12_Y1_N11
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: LABCELL_X12_Y1_N9
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \RAM|ram~34_q\ & ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~34_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: LABCELL_X12_Y1_N36
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\ROM|memROM~17_combout\ & ( \RAM|ram~546_combout\ & ( !\ROM|memROM~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: FF_X12_Y1_N35
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: LABCELL_X12_Y1_N33
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~24_combout\ & \RAM|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~26_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X12_Y1_N14
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: LABCELL_X12_Y1_N12
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~24_combout\ & \RAM|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X12_Y1_N27
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~543_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~17_combout\) # (\RAM|ram~544_combout\))) ) ) # ( !\RAM|ram~543_combout\ & ( (\RAM|ram~544_combout\ & (\ROM|memROM~17_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~544_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X12_Y1_N30
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \RAM|ram~545_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~12_combout\) # (\RAM|ram~547_combout\))) ) ) # ( !\RAM|ram~545_combout\ & ( (\ROM|memROM~12_combout\ & (\RAM|ram~547_combout\ & !\ROM|memROM~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: MLABCELL_X13_Y1_N27
\Data_IN[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~4_combout\ = ( \RAM|ram~548_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \Data_IN[3]~4_combout\);

-- Location: MLABCELL_X13_Y2_N42
\ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~30_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~30_combout\);

-- Location: FF_X14_Y2_N2
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X14_Y2_N0
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~16_combout\ & \RAM|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_ram~25_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: LABCELL_X14_Y2_N21
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM|memROM~24_combout\ & ( \RAM|ram~540_combout\ & ( !\ROM|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: FF_X13_Y2_N4
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X14_Y2_N14
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X14_Y2_N12
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~12_combout\ & (\RAM|ram~17_q\)) # (\ROM|memROM~12_combout\ & ((\RAM|ram~33_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~17_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~33_q\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: LABCELL_X14_Y2_N33
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~24_combout\ & ( \RAM|ram~538_combout\ & ( !\ROM|memROM~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X14_Y2_N48
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~539_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~17_combout\) # (\RAM|ram~541_combout\))) ) ) # ( !\RAM|ram~539_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~9_combout\ & \RAM|ram~541_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \RAM|ALT_INV_ram~539_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X14_Y2_N15
\Data_IN[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~3_combout\ = ( \RAM|ram~542_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~542_combout\,
	combout => \Data_IN[2]~3_combout\);

-- Location: LABCELL_X14_Y2_N3
\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (\ROM|memROM~1_combout\ & \ROM|memROM~11_combout\)) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\ROM|memROM~1_combout\ & (((!\CPU|PC|DOUT\(3) & \ROM|memROM~11_combout\)) # 
-- (\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011000000110010001100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~29_combout\);

-- Location: FF_X13_Y4_N38
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: MLABCELL_X13_Y4_N36
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~32_q\ & ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~32_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X13_Y3_N43
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: FF_X13_Y4_N8
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: MLABCELL_X13_Y4_N6
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~24_q\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~17_combout\) # (\RAM|ram~16_q\) ) ) ) # ( !\RAM|ram~24_q\ & ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~16_q\ & !\ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~16_q\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \RAM|ALT_INV_ram~24_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: MLABCELL_X13_Y4_N45
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \RAM|ram~535_combout\ & ( \RAM|ram~534_combout\ & ( !\ROM|memROM~24_combout\ ) ) ) # ( !\RAM|ram~535_combout\ & ( \RAM|ram~534_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~12_combout\) ) ) ) # ( \RAM|ram~535_combout\ & ( 
-- !\RAM|ram~534_combout\ & ( (!\ROM|memROM~24_combout\ & \ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X14_Y1_N18
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~536_combout\ & ( (!\ROM|memROM~16_combout\ & !\ROM|memROM~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X14_Y1_N57
\Data_IN[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~2_combout\ = ( \RAM|ram~537_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \Data_IN[1]~2_combout\);

-- Location: MLABCELL_X13_Y1_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X13_Y1_N33
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGA|DOUT\(1) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~29_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[1]~2_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGA|DOUT\(1) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~29_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[1]~2_combout\)))) ) + ( \CPU|ULA1|Add0~2\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~29_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|REGA|ALT_INV_DOUT\(1),
	dataf => \ALT_INV_Data_IN[1]~2_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X12_Y2_N12
\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~27_combout\);

-- Location: MLABCELL_X13_Y2_N12
\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~21_combout\ & ((!\ROM|memROM~27_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000000000011010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

-- Location: LABCELL_X12_Y3_N33
\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~28_combout\);

-- Location: IOIBUF_X14_Y0_N35
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: LABCELL_X14_Y3_N36
\Data_IN[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~13_combout\ = ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~12_combout\ & \FPGA_RESET~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ALT_INV_FPGA_RESET~input_o\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \Data_IN[0]~13_combout\);

-- Location: MLABCELL_X13_Y3_N6
\CPU|DEC_instrucao|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[1]~1_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM|memROM~0_combout\ & !\ROM|memROM~3_combout\))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~4_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM|memROM~0_combout\ $ (!\ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \CPU|DEC_instrucao|saida[1]~1_combout\);

-- Location: IOIBUF_X16_Y0_N92
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X13_Y3_N39
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT[5]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X14_Y3_N54
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\CPU|PC|DOUT\(3) & ( \ROM|memROM~5_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~6_combout\ & !\CPU|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X14_Y3_N0
\Data_IN[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~12_combout\ = ( \comb~1_combout\ & ( \ROM|memROM~17_combout\ & ( ((!\ROM|memROM~12_combout\ & \SW[8]~input_o\)) # (\ROM|memROM~16_combout\) ) ) ) # ( \comb~1_combout\ & ( !\ROM|memROM~17_combout\ & ( ((\SW[9]~input_o\ & 
-- \ROM|memROM~12_combout\)) # (\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111110001111100000000000000000000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \Data_IN[0]~12_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N58
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X13_Y3_N58
\logicaKeys|DEB|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|DEB|saidaQ~q\);

-- Location: MLABCELL_X13_Y3_N42
\logicaKeys|DEB|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|DEB|saida~combout\ = LCELL(( !\logicaKeys|DEB|saidaQ~q\ & ( \KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \logicaKeys|DEB|ALT_INV_saidaQ~q\,
	combout => \logicaKeys|DEB|saida~combout\);

-- Location: LABCELL_X12_Y3_N21
\logicaKeys|FF|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|FF|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \logicaKeys|FF|DOUT~feeder_combout\);

-- Location: LABCELL_X12_Y3_N0
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(1)) # (\ROM|memROM~14_combout\)))) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- (\ROM|memROM~15_combout\ & (\ROM|memROM~14_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \comb~0_combout\);

-- Location: MLABCELL_X13_Y3_N45
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\ROM|memROM~7_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X12_Y3_N12
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~12_combout\ & ( (\comb~0_combout\ & (\CPU|DEC_instrucao|Equal5~0_combout\ & (\comb~2_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \comb~3_combout\);

-- Location: FF_X12_Y3_N23
\logicaKeys|FF|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \logicaKeys|DEB|saida~combout\,
	d => \logicaKeys|FF|DOUT~feeder_combout\,
	clrn => \ALT_INV_comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|FF|DOUT~q\);

-- Location: LABCELL_X14_Y3_N24
\Data_IN[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~11_combout\ = ( \KEY[1]~input_o\ & ( \logicaKeys|FF|DOUT~q\ & ( (!\ROM|memROM~12_combout\) # ((!\ROM|memROM~17_combout\ & ((\KEY[2]~input_o\))) # (\ROM|memROM~17_combout\ & (\KEY[3]~input_o\))) ) ) ) # ( !\KEY[1]~input_o\ & ( 
-- \logicaKeys|FF|DOUT~q\ & ( (!\ROM|memROM~17_combout\ & (((!\ROM|memROM~12_combout\) # (\KEY[2]~input_o\)))) # (\ROM|memROM~17_combout\ & (\KEY[3]~input_o\ & ((\ROM|memROM~12_combout\)))) ) ) ) # ( \KEY[1]~input_o\ & ( !\logicaKeys|FF|DOUT~q\ & ( 
-- (!\ROM|memROM~17_combout\ & (((\KEY[2]~input_o\ & \ROM|memROM~12_combout\)))) # (\ROM|memROM~17_combout\ & (((!\ROM|memROM~12_combout\)) # (\KEY[3]~input_o\))) ) ) ) # ( !\KEY[1]~input_o\ & ( !\logicaKeys|FF|DOUT~q\ & ( (\ROM|memROM~12_combout\ & 
-- ((!\ROM|memROM~17_combout\ & ((\KEY[2]~input_o\))) # (\ROM|memROM~17_combout\ & (\KEY[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \logicaKeys|FF|ALT_INV_DOUT~q\,
	combout => \Data_IN[0]~11_combout\);

-- Location: LABCELL_X14_Y3_N12
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \Data_IN[0]~12_combout\ & ( \Data_IN[0]~11_combout\ & ( (\CPU|DEC_instrucao|saida[1]~1_combout\ & ((!\ROM|memROM~9_combout\) # (\Data_IN[0]~13_combout\))) ) ) ) # ( \Data_IN[0]~12_combout\ & ( !\Data_IN[0]~11_combout\ & ( 
-- (\CPU|DEC_instrucao|saida[1]~1_combout\ & ((!\ROM|memROM~9_combout\ & ((!\ROM|memROM~16_combout\))) # (\ROM|memROM~9_combout\ & (\Data_IN[0]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100010100000000000000000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data_IN[0]~13_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[1]~1_combout\,
	datae => \ALT_INV_Data_IN[0]~12_combout\,
	dataf => \ALT_INV_Data_IN[0]~11_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: IOIBUF_X14_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X13_Y3_N54
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~1_combout\ & 
-- !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~14_combout\)) ) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- !\ROM|memROM~15_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~14_combout\) # (\ROM|memROM~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000000000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: LABCELL_X14_Y3_N30
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \SW[0]~input_o\ & ( !\logica_LED|comb~0_combout\ & ( (\comb~1_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~9_combout\ & \CPU|DEC_instrucao|saida[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[1]~1_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \logica_LED|ALT_INV_comb~0_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: FF_X13_Y3_N5
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: MLABCELL_X13_Y3_N3
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~22_combout\ & \RAM|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: MLABCELL_X13_Y3_N48
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~24_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM|ram~527_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: FF_X13_Y3_N14
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: MLABCELL_X13_Y3_N12
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~16_combout\ & \RAM|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \RAM|ALT_INV_ram~23_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: MLABCELL_X13_Y3_N27
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~529_combout\ & !\ROM|memROM~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: LABCELL_X14_Y4_N57
\RAM|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~31feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM|ram~31feeder_combout\);

-- Location: FF_X14_Y4_N59
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~31feeder_combout\,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: LABCELL_X14_Y4_N12
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~31_q\ & ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datae => \RAM|ALT_INV_ram~31_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: LABCELL_X14_Y3_N42
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~531_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X14_Y3_N39
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~17_combout\ & (((\RAM|ram~528_combout\)) # (\ROM|memROM~12_combout\))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~12_combout\ & ((\RAM|ram~530_combout\)))) ) ) # ( !\RAM|ram~532_combout\ & 
-- ( (!\ROM|memROM~12_combout\ & ((!\ROM|memROM~17_combout\ & (\RAM|ram~528_combout\)) # (\ROM|memROM~17_combout\ & ((\RAM|ram~530_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X14_Y3_N18
\Data_IN[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~9_combout\ = ( \RAM|ram~533_combout\ & ( ((\RAM|dado_out~0_combout\) # (\Data_IN[0]~0_combout\)) # (\Data_IN[0]~1_combout\) ) ) # ( !\RAM|ram~533_combout\ & ( (\Data_IN[0]~0_combout\) # (\Data_IN[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data_IN[0]~1_combout\,
	datac => \ALT_INV_Data_IN[0]~0_combout\,
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \Data_IN[0]~9_combout\);

-- Location: LABCELL_X14_Y1_N24
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

-- Location: LABCELL_X14_Y1_N27
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\ROM|memROM~28_combout\) # ((\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\ROM|memROM~28_combout\) # ((\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ALT_INV_Data_IN[0]~9_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: LABCELL_X14_Y1_N30
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( 
-- \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( 
-- \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X13_Y1_N12
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( ((\CPU|DEC_instrucao|saida[6]~4_combout\ & \Data_IN[1]~2_combout\)) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DEC_instrucao|saida[6]~4_combout\ & 
-- (!\CPU|ULA1|Equal0~0_combout\ & \Data_IN[1]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: MLABCELL_X13_Y2_N57
\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM|memROM~18_combout\ & ( (!\ROM|memROM~21_combout\ & (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~27_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) ) # ( !\ROM|memROM~18_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & 
-- (!\ROM|memROM~27_combout\ & (!\ROM|memROM~21_combout\ $ (!\ROM|memROM~20_combout\)))) # (\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((!\ROM|memROM~21_combout\ $ (!\ROM|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111010000000011011101000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~27_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

-- Location: MLABCELL_X13_Y2_N30
\CPU|DEC_instrucao|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~2_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM|memROM~4_combout\ $ (((!\ROM|memROM~2_combout\ & !\ROM|memROM~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~2_combout\);

-- Location: FF_X13_Y1_N35
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: MLABCELL_X13_Y1_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGA|DOUT\(2) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~30_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[2]~3_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGA|DOUT\(2) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~30_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[2]~3_combout\)))) ) + ( \CPU|ULA1|Add0~6\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \ROM|ALT_INV_memROM~30_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(2),
	dataf => \ALT_INV_Data_IN[2]~3_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X14_Y1_N33
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( 
-- \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( 
-- \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~30_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X13_Y1_N57
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[2]~3_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[2]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X13_Y1_N38
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X13_Y1_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGA|DOUT\(3) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~31_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[3]~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGA|DOUT\(3) ) + ( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~31_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[3]~4_combout\)))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \ROM|ALT_INV_memROM~31_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(3),
	dataf => \ALT_INV_Data_IN[3]~4_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X14_Y1_N36
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[3]~4_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\ROM|memROM~24_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\Data_IN[3]~4_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[3]~4_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\ROM|memROM~24_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\Data_IN[3]~4_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \ALT_INV_Data_IN[3]~4_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X14_Y1_N21
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|DEC_instrucao|saida[6]~4_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & (\Data_IN[3]~4_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))) ) ) # ( !\CPU|DEC_instrucao|saida[6]~4_combout\ & ( 
-- (!\CPU|ULA1|Equal0~0_combout\ & (\ROM|memROM~24_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Data_IN[3]~4_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X13_Y1_N41
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: MLABCELL_X13_Y1_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGA|DOUT\(4) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[4]~5_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~22_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[4]~5_combout\)))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGA|DOUT\(4) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[4]~5_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~22_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[4]~5_combout\)))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(4),
	dataf => \ALT_INV_Data_IN[4]~5_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X14_Y1_N39
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[4]~5_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\ROM|memROM~22_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\Data_IN[4]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[4]~5_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\ROM|memROM~22_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\Data_IN[4]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ALT_INV_Data_IN[4]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: MLABCELL_X13_Y1_N18
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( ((\CPU|DEC_instrucao|saida[6]~4_combout\ & \Data_IN[4]~5_combout\)) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DEC_instrucao|saida[6]~4_combout\ & 
-- (!\CPU|ULA1|Equal0~0_combout\ & \Data_IN[4]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[4]~5_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X13_Y1_N44
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: MLABCELL_X13_Y1_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[5]~6_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~16_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[5]~6_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[5]~6_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~16_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[5]~6_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \ALT_INV_Data_IN[5]~6_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: MLABCELL_X13_Y1_N21
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \Data_IN[5]~6_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|DEC_instrucao|saida[6]~4_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\))) ) ) # ( !\Data_IN[5]~6_combout\ & ( 
-- (\CPU|ULA1|Equal0~0_combout\ & \CPU|ULA1|Add1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_Data_IN[5]~6_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X13_Y1_N47
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X13_Y4_N35
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: MLABCELL_X13_Y4_N33
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~28_q\ & ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~28_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: MLABCELL_X13_Y4_N51
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\ROM|memROM~24_combout\ & ( \RAM|ram~554_combout\ & ( !\ROM|memROM~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~554_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: FF_X13_Y3_N26
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: FF_X13_Y4_N26
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: MLABCELL_X13_Y4_N24
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \RAM|ram~36_q\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~12_combout\) # (\RAM|ram~20_q\) ) ) ) # ( !\RAM|ram~36_q\ & ( !\ROM|memROM~9_combout\ & ( (\RAM|ram~20_q\ & !\ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~36_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: MLABCELL_X13_Y4_N12
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~552_combout\ & ( (!\ROM|memROM~22_combout\ & !\ROM|memROM~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: MLABCELL_X13_Y4_N57
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~555_combout\ & ( \RAM|ram~553_combout\ & ( !\ROM|memROM~16_combout\ ) ) ) # ( !\RAM|ram~555_combout\ & ( \RAM|ram~553_combout\ & ( (!\ROM|memROM~17_combout\ & !\ROM|memROM~16_combout\) ) ) ) # ( \RAM|ram~555_combout\ & ( 
-- !\RAM|ram~553_combout\ & ( (\ROM|memROM~17_combout\ & !\ROM|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \RAM|ALT_INV_ram~555_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: LABCELL_X14_Y1_N9
\Data_IN[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~6_combout\ = ( \RAM|ram~556_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~556_combout\,
	combout => \Data_IN[5]~6_combout\);

-- Location: LABCELL_X16_Y3_N51
\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~13_combout\ & ( (!\CPU|PC|DOUT\(1)) # (\ROM|memROM~14_combout\) ) ) ) # ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~32_combout\);

-- Location: LABCELL_X14_Y1_N42
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[5]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[5]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ALT_INV_Data_IN[5]~6_combout\,
	datad => \ROM|ALT_INV_memROM~32_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: FF_X12_Y1_N1
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: FF_X12_Y1_N20
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X12_Y1_N18
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~22_combout\ & \RAM|ram~30_q\) ) ) # ( !\ROM|memROM~17_combout\ & ( (\RAM|ram~22_q\ & !\ROM|memROM~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~22_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM|ALT_INV_ram~30_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X12_Y1_N0
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \RAM|ram~560_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~560_combout\,
	combout => \RAM|ram~561_combout\);

-- Location: FF_X12_Y1_N53
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X12_Y1_N51
\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~24_combout\ & \RAM|ram~38_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~38_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~562_combout\);

-- Location: LABCELL_X12_Y1_N3
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( !\ROM|memROM~17_combout\ & ( (\RAM|ram~562_combout\ & !\ROM|memROM~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~562_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: LABCELL_X12_Y1_N21
\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \RAM|ram~563_combout\ & ( (!\ROM|memROM~16_combout\ & ((\RAM|ram~561_combout\) # (\ROM|memROM~12_combout\))) ) ) # ( !\RAM|ram~563_combout\ & ( (!\ROM|memROM~16_combout\ & (!\ROM|memROM~12_combout\ & \RAM|ram~561_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~561_combout\,
	dataf => \RAM|ALT_INV_ram~563_combout\,
	combout => \RAM|ram~564_combout\);

-- Location: MLABCELL_X13_Y1_N15
\Data_IN[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~8_combout\ = ( \RAM|ram~564_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~564_combout\,
	combout => \Data_IN[7]~8_combout\);

-- Location: FF_X12_Y1_N59
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: FF_X12_Y1_N8
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~570_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X12_Y1_N47
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: LABCELL_X12_Y1_N45
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~29_q\ & ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~12_combout\ ) ) ) # ( \RAM|ram~29_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~12_combout\ & (\RAM|ram~21_q\)) # (\ROM|memROM~12_combout\ & ((\RAM|ram~37_q\))) ) ) 
-- ) # ( !\RAM|ram~29_q\ & ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~12_combout\ & (\RAM|ram~21_q\)) # (\ROM|memROM~12_combout\ & ((\RAM|ram~37_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~29_q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: LABCELL_X14_Y1_N6
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \RAM|ram~557_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: LABCELL_X14_Y1_N15
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \RAM|ram~558_combout\ & ( (!\ROM|memROM~16_combout\ & !\ROM|memROM~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~558_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X14_Y1_N54
\Data_IN[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~7_combout\ = ( \RAM|ram~559_combout\ & ( \RAM|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \Data_IN[6]~7_combout\);

-- Location: MLABCELL_X13_Y1_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[6]~7_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~25_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[6]~7_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[6]~7_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~25_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[6]~7_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(6),
	dataf => \ALT_INV_Data_IN[6]~7_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X14_Y2_N51
\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = ( \ROM|memROM~5_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~33_combout\);

-- Location: LABCELL_X14_Y1_N45
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[6]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[6]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ALT_INV_Data_IN[6]~7_combout\,
	datad => \ROM|ALT_INV_memROM~33_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: MLABCELL_X13_Y1_N54
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~25_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[6]~7_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~25_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[6]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \ALT_INV_Data_IN[6]~7_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X13_Y1_N50
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: MLABCELL_X13_Y1_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGA|DOUT\(7) ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((!\CPU|DEC_instrucao|saida[5]~0_combout\ & ((\Data_IN[7]~8_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~22_combout\)))) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[7]~8_combout\)))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	dataf => \ALT_INV_Data_IN[7]~8_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y1_N24
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \Data_IN[7]~8_combout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|DEC_instrucao|saida[6]~4_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~29_sumout\))) ) ) # ( !\Data_IN[7]~8_combout\ & ( 
-- (\CPU|ULA1|Equal0~0_combout\ & \CPU|ULA1|Add1~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \ALT_INV_Data_IN[7]~8_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X13_Y1_N53
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: LABCELL_X12_Y1_N54
\Data_IN[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~10_combout\ = ( \RAM|dado_out~0_combout\ & ( \RAM|ram~564_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM|ALT_INV_dado_out~0_combout\,
	dataf => \RAM|ALT_INV_ram~564_combout\,
	combout => \Data_IN[7]~10_combout\);

-- Location: LABCELL_X14_Y1_N48
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\ROM|memROM~22_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((!\Data_IN[7]~10_combout\))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datad => \ALT_INV_Data_IN[7]~10_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X14_Y1_N12
\CPU|REG_FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~1_combout\ = ( !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Add1~9_sumout\ & (!\CPU|ULA1|Add1~1_sumout\ & (\CPU|ULA1|Equal0~0_combout\ & !\CPU|ULA1|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|REG_FLAG|DOUT~1_combout\);

-- Location: LABCELL_X14_Y1_N0
\CPU|REG_FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~2_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( \CPU|REG_FLAG|DOUT~1_combout\ & ( \CPU|REG_FLAG|DOUT~0_combout\ ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( \CPU|REG_FLAG|DOUT~1_combout\ & ( ((!\CPU|ULA1|Add1~21_sumout\ & 
-- (!\CPU|ULA1|Add1~29_sumout\ & !\CPU|ULA1|Add1~17_sumout\))) # (\CPU|REG_FLAG|DOUT~0_combout\) ) ) ) # ( \CPU|ULA1|Add1~25_sumout\ & ( !\CPU|REG_FLAG|DOUT~1_combout\ & ( \CPU|REG_FLAG|DOUT~0_combout\ ) ) ) # ( !\CPU|ULA1|Add1~25_sumout\ & ( 
-- !\CPU|REG_FLAG|DOUT~1_combout\ & ( \CPU|REG_FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_FLAG|ALT_INV_DOUT~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \CPU|REG_FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|REG_FLAG|DOUT~2_combout\);

-- Location: FF_X14_Y1_N2
\CPU|REG_FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|REG_FLAG|DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG|DOUT~q\);

-- Location: LABCELL_X12_Y2_N54
\CPU|MUX_PC|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~0_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~21_combout\ & ( (\ROM|memROM~19_combout\ & ((!\ROM|memROM~18_combout\) # (\CPU|REG_FLAG|DOUT~q\))) ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~21_combout\ & ( 
-- !\ROM|memROM~18_combout\ $ (!\ROM|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~0_combout\);

-- Location: LABCELL_X16_Y3_N21
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

-- Location: FF_X16_Y3_N22
\CPU|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(7));

-- Location: LABCELL_X14_Y3_N51
\CPU|MUX_PC|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~9_combout\ = ( \CPU|MUX_PC|Equal2~0_combout\ & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & \CPU|incrementaPC|Add0~33_sumout\) ) ) # ( !\CPU|MUX_PC|Equal2~0_combout\ & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & 
-- (\CPU|incrementaPC|Add0~33_sumout\)) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ((\CPU|REG_RETORNO|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(7),
	dataf => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~9_combout\);

-- Location: FF_X14_Y3_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_PC|saida_MUX[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N24
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\);

-- Location: FF_X16_Y3_N25
\CPU|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(8));

-- Location: LABCELL_X16_Y3_N42
\CPU|MUX_PC|saida_MUX[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~6_combout\ = ( \CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( (!\CPU|MUX_PC|Equal2~0_combout\ & (\CPU|REG_RETORNO|DOUT\(8))) # (\CPU|MUX_PC|Equal2~0_combout\ & ((\ROM|memROM~26_combout\))) ) ) # ( !\CPU|MUX_PC|saida_MUX[8]~0_combout\ & ( 
-- \CPU|incrementaPC|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datab => \CPU|REG_RETORNO|ALT_INV_DOUT\(8),
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~6_combout\);

-- Location: FF_X13_Y3_N11
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_PC|saida_MUX[8]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N21
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \ROM|memROM~7_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~22_combout\);

-- Location: LABCELL_X14_Y2_N45
\RAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~0_combout\ = ( \CPU|DEC_instrucao|saida[1]~1_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~26_combout\ & !\ROM|memROM~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~26_combout\,
	datad => \ROM|ALT_INV_memROM~25_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~1_combout\,
	combout => \RAM|dado_out~0_combout\);

-- Location: MLABCELL_X13_Y1_N0
\CPU|MUX_EntradaB_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ = ( \Data_IN[0]~1_combout\ & ( \RAM|ram~533_combout\ & ( (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\Data_IN[0]~1_combout\ & ( \RAM|ram~533_combout\ & ( 
-- (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[0]~0_combout\)) # (\RAM|dado_out~0_combout\))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\ROM|memROM~17_combout\)))) ) ) ) # ( \Data_IN[0]~1_combout\ & ( !\RAM|ram~533_combout\ & ( 
-- (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\Data_IN[0]~1_combout\ & ( !\RAM|ram~533_combout\ & ( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (\Data_IN[0]~0_combout\)) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & 
-- ((\ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111110011001111111101001100011111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \ALT_INV_Data_IN[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ALT_INV_Data_IN[0]~1_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X13_Y1_N9
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: FF_X13_Y1_N32
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X14_Y2_N24
\DEC_Blocos|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Blocos|Equal6~0_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\ROM|memROM~7_combout\ & (\ROM|memROM~6_combout\ & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \DEC_Blocos|Equal6~0_combout\);

-- Location: MLABCELL_X13_Y4_N15
\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = ( !\ROM|memROM~9_combout\ & ( (\CPU|DEC_instrucao|Equal5~0_combout\ & \DEC_Blocos|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datad => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \logica_LED|comb~1_combout\);

-- Location: MLABCELL_X13_Y4_N0
\logica_LED|LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED8|DOUT~0_combout\ = ( \logica_LED|LED8|DOUT~q\ & ( \logica_LED|comb~1_combout\ & ( (((!\ROM|memROM~17_combout\) # (\ROM|memROM~12_combout\)) # (\ROM|memROM~16_combout\)) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\logica_LED|LED8|DOUT~q\ & ( 
-- \logica_LED|comb~1_combout\ & ( (\CPU|REGA|DOUT\(0) & (!\ROM|memROM~16_combout\ & (!\ROM|memROM~12_combout\ & \ROM|memROM~17_combout\))) ) ) ) # ( \logica_LED|LED8|DOUT~q\ & ( !\logica_LED|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \logica_LED|LED8|ALT_INV_DOUT~q\,
	dataf => \logica_LED|ALT_INV_comb~1_combout\,
	combout => \logica_LED|LED8|DOUT~0_combout\);

-- Location: FF_X13_Y4_N2
\logica_LED|LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED8|DOUT~q\);

-- Location: MLABCELL_X13_Y4_N18
\logica_LED|LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED9|DOUT~0_combout\ = ( \logica_LED|LED9|DOUT~q\ & ( \logica_LED|comb~1_combout\ & ( (((!\ROM|memROM~12_combout\) # (\ROM|memROM~17_combout\)) # (\ROM|memROM~16_combout\)) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\logica_LED|LED9|DOUT~q\ & ( 
-- \logica_LED|comb~1_combout\ & ( (\CPU|REGA|DOUT\(0) & (!\ROM|memROM~16_combout\ & (\ROM|memROM~12_combout\ & !\ROM|memROM~17_combout\))) ) ) ) # ( \logica_LED|LED9|DOUT~q\ & ( !\logica_LED|comb~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \logica_LED|LED9|ALT_INV_DOUT~q\,
	dataf => \logica_LED|ALT_INV_comb~1_combout\,
	combout => \logica_LED|LED9|DOUT~0_combout\);

-- Location: FF_X13_Y4_N20
\logica_LED|LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \logica_LED|LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED9|DOUT~q\);

-- Location: LABCELL_X14_Y2_N57
\comp_HEX0|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|comb~0_combout\ = ( \DEC_Blocos|Equal6~0_combout\ & ( !\ROM|memROM~9_combout\ & ( (\CPU|DEC_instrucao|Equal5~0_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \comp_HEX0|comb~0_combout\);

-- Location: FF_X12_Y2_N32
\comp_HEX0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(2));

-- Location: FF_X13_Y2_N59
\comp_HEX0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(1));

-- Location: FF_X12_Y2_N5
\comp_HEX0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(3));

-- Location: FF_X13_Y2_N26
\comp_HEX0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(0));

-- Location: LABCELL_X12_Y2_N39
\comp_HEX0|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\ = ( \comp_HEX0|REG|DOUT\(0) & ( (!\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(1) $ (\comp_HEX0|REG|DOUT\(3)))) # (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(1) & \comp_HEX0|REG|DOUT\(3))) ) ) # ( 
-- !\comp_HEX0|REG|DOUT\(0) & ( (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(1) & !\comp_HEX0|REG|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X12_Y2_N45
\comp_HEX0|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\ = ( \comp_HEX0|REG|DOUT\(0) & ( (!\comp_HEX0|REG|DOUT\(1) & (\comp_HEX0|REG|DOUT\(2) & !\comp_HEX0|REG|DOUT\(3))) # (\comp_HEX0|REG|DOUT\(1) & ((\comp_HEX0|REG|DOUT\(3)))) ) ) # ( !\comp_HEX0|REG|DOUT\(0) & 
-- ( (\comp_HEX0|REG|DOUT\(2) & ((\comp_HEX0|REG|DOUT\(3)) # (\comp_HEX0|REG|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X12_Y2_N0
\comp_HEX0|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\ = ( \comp_HEX0|REG|DOUT\(1) & ( \comp_HEX0|REG|DOUT\(0) & ( (\comp_HEX0|REG|DOUT\(2) & \comp_HEX0|REG|DOUT\(3)) ) ) ) # ( \comp_HEX0|REG|DOUT\(1) & ( !\comp_HEX0|REG|DOUT\(0) & ( !\comp_HEX0|REG|DOUT\(2) $ 
-- (\comp_HEX0|REG|DOUT\(3)) ) ) ) # ( !\comp_HEX0|REG|DOUT\(1) & ( !\comp_HEX0|REG|DOUT\(0) & ( (\comp_HEX0|REG|DOUT\(2) & \comp_HEX0|REG|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datae => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X12_Y2_N36
\comp_HEX0|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\ = ( \comp_HEX0|REG|DOUT\(0) & ( (!\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(3) & !\comp_HEX0|REG|DOUT\(1))) # (\comp_HEX0|REG|DOUT\(2) & ((\comp_HEX0|REG|DOUT\(1)))) ) ) # ( !\comp_HEX0|REG|DOUT\(0) 
-- & ( (!\comp_HEX0|REG|DOUT\(2) & (\comp_HEX0|REG|DOUT\(3) & \comp_HEX0|REG|DOUT\(1))) # (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(3) & !\comp_HEX0|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X12_Y2_N42
\comp_HEX0|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\ = ( \comp_HEX0|REG|DOUT\(0) & ( (!\comp_HEX0|REG|DOUT\(3)) # ((!\comp_HEX0|REG|DOUT\(2) & !\comp_HEX0|REG|DOUT\(1))) ) ) # ( !\comp_HEX0|REG|DOUT\(0) & ( (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(3) 
-- & !\comp_HEX0|REG|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111100111100001111110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	dataf => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X12_Y2_N27
\comp_HEX0|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\ = ( \comp_HEX0|REG|DOUT\(1) & ( (!\comp_HEX0|REG|DOUT\(3) & ((!\comp_HEX0|REG|DOUT\(2)) # (\comp_HEX0|REG|DOUT\(0)))) ) ) # ( !\comp_HEX0|REG|DOUT\(1) & ( (\comp_HEX0|REG|DOUT\(0) & 
-- (!\comp_HEX0|REG|DOUT\(3) $ (\comp_HEX0|REG|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001101000101010001000100001001000011010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datae => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X12_Y2_N21
\comp_HEX0|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\ = ( \comp_HEX0|REG|DOUT\(1) & ( (!\comp_HEX0|REG|DOUT\(3) & (\comp_HEX0|REG|DOUT\(0) & \comp_HEX0|REG|DOUT\(2))) ) ) # ( !\comp_HEX0|REG|DOUT\(1) & ( (!\comp_HEX0|REG|DOUT\(3) & 
-- ((!\comp_HEX0|REG|DOUT\(2)))) # (\comp_HEX0|REG|DOUT\(3) & (!\comp_HEX0|REG|DOUT\(0) & \comp_HEX0|REG|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100000000100000001010100100101001000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datae => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	combout => \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X54_Y17_N55
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N52
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y21_N38
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X46_Y45_N75
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X40_Y32_N3
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


