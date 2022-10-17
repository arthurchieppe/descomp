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

-- DATE "10/11/2022 10:49:05"

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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~31_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~30_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal5~0_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal5~1_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~614_combout\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~618_combout\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~622_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~626_combout\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \logicaKeys|DEB|saidaQ~q\ : std_logic;
SIGNAL \logicaKeys|DEB|saida~combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal5~2_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \logicaKeys|FF|DOUT~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~12_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~13_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \Data_IN[0]~14_combout\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Data_IN[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Data_IN[2]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Data_IN[3]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Data_IN[4]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Data_IN[5]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Data_IN[6]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Data_IN[7]~10_combout\ : std_logic;
SIGNAL \Data_IN[7]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~608_combout\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~610_combout\ : std_logic;
SIGNAL \Data_IN[7]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_PC|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~5_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \DEC_Blocos|Equal6~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|comb~2_combout\ : std_logic;
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
SIGNAL \comp_HEX1|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX2|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX3|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX5|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX4|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX5|comb~1_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comp_HEX4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_LED|LED0to7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comp_HEX2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \comp_HEX5|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX4|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX3|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX2|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX1|REG|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[5]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \logicaKeys|FF|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \comp_HEX5|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~2_combout\ : std_logic;
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
SIGNAL \DEC_Blocos|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~12_combout\ : std_logic;
SIGNAL \logicaKeys|DEB|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~619_combout\ : std_logic;

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
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
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
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\ALT_INV_Data_IN[1]~2_combout\ <= NOT \Data_IN[1]~2_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~4_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~3_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|REG_RETORNO|DOUT\(1);
\CPU|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|REG_RETORNO|DOUT\(2);
\CPU|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|REG_RETORNO|DOUT\(0);
\CPU|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|REG_RETORNO|DOUT\(3);
\CPU|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|REG_RETORNO|DOUT\(5);
\CPU|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|REG_RETORNO|DOUT\(7);
\CPU|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|REG_RETORNO|DOUT\(6);
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|REG_RETORNO|DOUT\(4);
\CPU|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|REG_RETORNO|DOUT\(8);
\CPU|MUX_PC|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUX_PC|Equal2~0_combout\;
\CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\ <= NOT \CPU|MUX_PC|saida_MUX[8]~0_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG|DOUT~q\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[5]~1_combout\ <= NOT \CPU|DEC_instrucao|saida[5]~1_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\logicaKeys|FF|ALT_INV_DOUT~q\ <= NOT \logicaKeys|FF|DOUT~q\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\RAM|ALT_INV_dado_out~0_combout\ <= NOT \RAM|dado_out~0_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\ <= NOT \CPU|DEC_instrucao|saida[5]~0_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\comp_HEX5|ALT_INV_comb~0_combout\ <= NOT \comp_HEX5|comb~0_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal5~2_combout\ <= NOT \CPU|DEC_instrucao|Equal5~2_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\logica_LED|ALT_INV_comb~2_combout\ <= NOT \logica_LED|comb~2_combout\;
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
\DEC_Blocos|ALT_INV_Equal6~0_combout\ <= NOT \DEC_Blocos|Equal6~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\ <= NOT \CPU|DEC_instrucao|Equal5~1_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\ <= NOT \CPU|DEC_instrucao|Equal5~0_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\RAM|ALT_INV_ram~617_combout\ <= NOT \RAM|ram~617_combout\;
\RAM|ALT_INV_ram~615_combout\ <= NOT \RAM|ram~615_combout\;
\RAM|ALT_INV_ram~613_combout\ <= NOT \RAM|ram~613_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\ALT_INV_Data_IN[7]~8_combout\ <= NOT \Data_IN[7]~8_combout\;
\RAM|ALT_INV_ram~610_combout\ <= NOT \RAM|ram~610_combout\;
\RAM|ALT_INV_ram~609_combout\ <= NOT \RAM|ram~609_combout\;
\RAM|ALT_INV_ram~608_combout\ <= NOT \RAM|ram~608_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~606_combout\ <= NOT \RAM|ram~606_combout\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~605_combout\ <= NOT \RAM|ram~605_combout\;
\RAM|ALT_INV_ram~604_combout\ <= NOT \RAM|ram~604_combout\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~602_combout\ <= NOT \RAM|ram~602_combout\;
\RAM|ALT_INV_ram~601_combout\ <= NOT \RAM|ram~601_combout\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~600_combout\ <= NOT \RAM|ram~600_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\ALT_INV_Data_IN[6]~7_combout\ <= NOT \Data_IN[6]~7_combout\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~598_combout\ <= NOT \RAM|ram~598_combout\;
\RAM|ALT_INV_ram~597_combout\ <= NOT \RAM|ram~597_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~596_combout\ <= NOT \RAM|ram~596_combout\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~593_combout\ <= NOT \RAM|ram~593_combout\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~592_combout\ <= NOT \RAM|ram~592_combout\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~591_combout\ <= NOT \RAM|ram~591_combout\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ALT_INV_Data_IN[5]~6_combout\ <= NOT \Data_IN[5]~6_combout\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\ALT_INV_Data_IN[4]~5_combout\ <= NOT \Data_IN[4]~5_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\ALT_INV_Data_IN[3]~4_combout\ <= NOT \Data_IN[3]~4_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\ALT_INV_Data_IN[2]~3_combout\ <= NOT \Data_IN[2]~3_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Data_IN[0]~14_combout\ <= NOT \Data_IN[0]~14_combout\;
\ALT_INV_Data_IN[0]~13_combout\ <= NOT \Data_IN[0]~13_combout\;
\ALT_INV_Data_IN[0]~12_combout\ <= NOT \Data_IN[0]~12_combout\;
\logicaKeys|DEB|ALT_INV_saidaQ~q\ <= NOT \logicaKeys|DEB|saidaQ~q\;
\ALT_INV_Data_IN[7]~11_combout\ <= NOT \Data_IN[7]~11_combout\;
\ALT_INV_Data_IN[7]~10_combout\ <= NOT \Data_IN[7]~10_combout\;
\ROM|ALT_INV_memROM~33_combout\ <= NOT \ROM|memROM~33_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\ROM|ALT_INV_memROM~31_combout\ <= NOT \ROM|memROM~31_combout\;
\ROM|ALT_INV_memROM~30_combout\ <= NOT \ROM|memROM~30_combout\;
\ROM|ALT_INV_memROM~29_combout\ <= NOT \ROM|memROM~29_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|REG_FLAG|DOUT~2_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|REG_FLAG|DOUT~1_combout\;
\CPU|REG_FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|REG_FLAG|DOUT~0_combout\;
\ALT_INV_Data_IN[0]~9_combout\ <= NOT \Data_IN[0]~9_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\RAM|ALT_INV_ram~625_combout\ <= NOT \RAM|ram~625_combout\;
\RAM|ALT_INV_ram~623_combout\ <= NOT \RAM|ram~623_combout\;
\RAM|ALT_INV_ram~621_combout\ <= NOT \RAM|ram~621_combout\;
\RAM|ALT_INV_ram~619_combout\ <= NOT \RAM|ram~619_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|LED0to7|DOUT\(0),
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
	i => \logica_LED|LED0to7|DOUT\(1),
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
	i => \logica_LED|LED0to7|DOUT\(2),
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
	i => \logica_LED|LED0to7|DOUT\(3),
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
	i => \logica_LED|LED0to7|DOUT\(4),
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
	i => \logica_LED|LED0to7|DOUT\(5),
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
	i => \logica_LED|LED0to7|DOUT\(6),
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
	i => \logica_LED|LED0to7|DOUT\(7),
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
	i => \logica_LED|LED8|DOUT~q\,
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
	i => \logica_LED|LED9|DOUT~q\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\,
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
	i => \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111011000100101001001000100001001110110001001010010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~18_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000010000000100000000000010001000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(5) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(0) & (\ROM|memROM~0_combout\ & \ROM|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~20_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

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
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~27_combout\);

\CPU|DEC_instrucao|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~0_combout\ = (!\ROM|memROM~18_combout\ & (!\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & \ROM|memROM~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~0_combout\);

\CPU|DEC_instrucao|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~3_combout\ = (!\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & !\ROM|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~3_combout\);

\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~25_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001100000000111000110000000011100011000000001110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~0_combout\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) 
-- & \ROM|memROM~0_combout\)) ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~0_combout\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & 
-- (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~0_combout\ = ( !\ROM|memROM~21_combout\ & ( !\RAM|process_0~0_combout\ & ( (!\ROM|memROM~25_combout\ & ((!\ROM|memROM~19_combout\ $ (!\ROM|memROM~20_combout\)))) # (\ROM|memROM~25_combout\ & ((!\CPU|PC|DOUT\(8) & 
-- ((!\ROM|memROM~20_combout\))) # (\CPU|PC|DOUT\(8) & (!\ROM|memROM~19_combout\ & \ROM|memROM~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111011010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|dado_out~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \comb~1_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\ROM|memROM~21_combout\ & ( \comb~1_combout\ & ( (!\ROM|memROM~25_combout\ & ((!\ROM|memROM~19_combout\ $ (!\ROM|memROM~20_combout\)))) # (\ROM|memROM~25_combout\ & ((!\CPU|PC|DOUT\(8) & ((!\ROM|memROM~20_combout\))) # 
-- (\CPU|PC|DOUT\(8) & (!\ROM|memROM~19_combout\ & \ROM|memROM~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101110110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	dataf => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001011100000010010000000000001000010111000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~15_combout\);

\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & ((\ROM|memROM~15_combout\) # (\ROM|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	combout => \logica_LED|comb~0_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\ROM|memROM~10_combout\ & (!\ROM|memROM~13_combout\ & !\logica_LED|comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \logica_LED|ALT_INV_comb~0_combout\,
	combout => \comb~3_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\comb~2_combout\ & \comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

\CPU|DEC_instrucao|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~4_combout\ = (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\CPU|DEC_instrucao|saida[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~4_combout\);

\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000000010000100000000001000010000000000100001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~23_combout\);

\ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~31_combout\ = (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \ROM|memROM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~23_combout\,
	combout => \ROM|memROM~31_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001000001000000000100000100000000010000010000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~30_combout\ = (!\CPU|PC|DOUT\(1) & (\ROM|memROM~0_combout\ & \ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~30_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010010000010100001001000001010000100100000101000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000000010000001000000001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(3) & \ROM|memROM~11_combout\)))) ) ) # ( !\ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & 
-- \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000011000000111000000000000010100000110000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~29_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~29_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~29_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~19_combout\ & (\ROM|memROM~20_combout\ & ((!\ROM|memROM~25_combout\) # (\CPU|PC|DOUT\(8))))) # (\ROM|memROM~19_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~25_combout\ & 
-- !\ROM|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011010000000000000000000000000010110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~28_combout\);

\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~611_combout\);

\CPU|DEC_instrucao|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal5~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|DEC_instrucao|Equal5~0_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100101001000000000000000000010011100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\CPU|DEC_instrucao|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal5~1_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~3_combout\ & ((\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( 
-- (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DEC_instrucao|Equal5~1_combout\);

\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = (\CPU|DEC_instrucao|Equal5~0_combout\ & (\CPU|DEC_instrucao|Equal5~1_combout\ & !\RAM|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|process_0~1_combout\);

\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = (\RAM|ram~611_combout\ & \RAM|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~611_combout\,
	datab => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~612_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~613_combout\);

\RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~614_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~613_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~613_combout\,
	combout => \RAM|ram~614_combout\);

\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~271_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~271_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~615_combout\);

\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~615_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~615_combout\,
	combout => \RAM|ram~616_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~16_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~617_combout\);

\RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~618_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~617_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~617_combout\,
	combout => \RAM|ram~618_combout\);

\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~279_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~279_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~619_combout\);

\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~619_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~619_combout\,
	combout => \RAM|ram~620_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~530_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~529_combout\,
	datab => \RAM|ALT_INV_ram~530_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & !\ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~621_combout\);

\RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~622_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~621_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~621_combout\,
	combout => \RAM|ram~622_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~10_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~623_combout\);

\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~623_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~623_combout\,
	combout => \RAM|ram~624_combout\);

\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~103_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~16_combout\ & ( (\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\ & (\ROM|memROM~10_combout\ & \ROM|memROM~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~625_combout\);

\RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~626_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~625_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~625_combout\,
	combout => \RAM|ram~626_combout\);

\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~519_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~519_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~536_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~533_combout\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~13_combout\ 
-- & ( \RAM|ram~531_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~528_combout\,
	datab => \RAM|ALT_INV_ram~531_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~537_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = (\SW[0]~input_o\ & (\comb~2_combout\ & \comb~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_comb~2_combout\,
	datac => \ALT_INV_comb~3_combout\,
	combout => \Data_IN[0]~0_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\logicaKeys|DEB|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|DEB|saidaQ~q\);

\logicaKeys|DEB|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|DEB|saida~combout\ = LCELL((\KEY[0]~input_o\ & !\logicaKeys|DEB|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \logicaKeys|DEB|ALT_INV_saidaQ~q\,
	combout => \logicaKeys|DEB|saida~combout\);

\CPU|DEC_instrucao|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal5~2_combout\ = (\CPU|DEC_instrucao|Equal5~0_combout\ & \CPU|DEC_instrucao|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\,
	combout => \CPU|DEC_instrucao|Equal5~2_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & (\ROM|memROM~14_combout\ & \ROM|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	combout => \comb~0_combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\ROM|memROM~27_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	combout => \comb~5_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \comb~5_combout\ & ( (\CPU|DEC_instrucao|Equal5~2_combout\ & (\ROM|memROM~10_combout\ & (\ROM|memROM~13_combout\ & \comb~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~2_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \ALT_INV_comb~5_combout\,
	combout => \comb~6_combout\);

\logicaKeys|FF|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \logicaKeys|DEB|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|FF|DOUT~q\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\Data_IN[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~12_combout\ = ( \KEY[1]~input_o\ & ( \KEY[3]~input_o\ & ( ((!\ROM|memROM~13_combout\ & (\logicaKeys|FF|DOUT~q\)) # (\ROM|memROM~13_combout\ & ((\KEY[2]~input_o\)))) # (\ROM|memROM~17_combout\) ) ) ) # ( !\KEY[1]~input_o\ & ( \KEY[3]~input_o\ & 
-- ( (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~13_combout\ & (\logicaKeys|FF|DOUT~q\)) # (\ROM|memROM~13_combout\ & ((\KEY[2]~input_o\))))) # (\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\)) ) ) ) # ( \KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( 
-- (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~13_combout\ & (\logicaKeys|FF|DOUT~q\)) # (\ROM|memROM~13_combout\ & ((\KEY[2]~input_o\))))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\)) ) ) ) # ( !\KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( 
-- (!\ROM|memROM~17_combout\ & ((!\ROM|memROM~13_combout\ & (\logicaKeys|FF|DOUT~q\)) # (\ROM|memROM~13_combout\ & ((\KEY[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \logicaKeys|FF|ALT_INV_DOUT~q\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \Data_IN[0]~12_combout\);

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

\Data_IN[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~13_combout\ = (!\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\ & ((\SW[9]~input_o\)))) # (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000000100001001100000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \Data_IN[0]~13_combout\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\Data_IN[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~14_combout\ = (!\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & \FPGA_RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ALT_INV_FPGA_RESET~input_o\,
	combout => \Data_IN[0]~14_combout\);

\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \Data_IN[0]~13_combout\ & ( \Data_IN[0]~14_combout\ & ( (\comb~2_combout\ & ((!\ROM|memROM~10_combout\ & ((!\ROM|memROM~16_combout\) # (\Data_IN[0]~12_combout\))) # (\ROM|memROM~10_combout\ & (\ROM|memROM~16_combout\)))) ) ) ) # 
-- ( !\Data_IN[0]~13_combout\ & ( \Data_IN[0]~14_combout\ & ( (\ROM|memROM~16_combout\ & (\comb~2_combout\ & ((\Data_IN[0]~12_combout\) # (\ROM|memROM~10_combout\)))) ) ) ) # ( \Data_IN[0]~13_combout\ & ( !\Data_IN[0]~14_combout\ & ( 
-- (!\ROM|memROM~10_combout\ & (\comb~2_combout\ & ((!\ROM|memROM~16_combout\) # (\Data_IN[0]~12_combout\)))) ) ) ) # ( !\Data_IN[0]~13_combout\ & ( !\Data_IN[0]~14_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~16_combout\ & (\comb~2_combout\ & 
-- \Data_IN[0]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000010000000101000000001000000110000100100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_Data_IN[0]~12_combout\,
	datae => \ALT_INV_Data_IN[0]~13_combout\,
	dataf => \ALT_INV_Data_IN[0]~14_combout\,
	combout => \Data_IN[0]~1_combout\);

\Data_IN[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~9_combout\ = (((\RAM|ram~537_combout\ & \RAM|dado_out~0_combout\)) # (\Data_IN[0]~1_combout\)) # (\Data_IN[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datab => \RAM|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_Data_IN[0]~0_combout\,
	datad => \ALT_INV_Data_IN[0]~1_combout\,
	combout => \Data_IN[0]~9_combout\);

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

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\ROM|memROM~28_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\Data_IN[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (((!\ROM|memROM~28_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ALT_INV_Data_IN[0]~9_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[1]~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~13_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[1]~2_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~13_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[1]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[1]~2_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ( \ROM|memROM~21_combout\ & ( (!\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~25_combout\) # (\CPU|PC|DOUT\(8))))) ) ) # ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~20_combout\ & (!\CPU|PC|DOUT\(8) & 
-- (\ROM|memROM~25_combout\))) # (\ROM|memROM~20_combout\ & (!\ROM|memROM~19_combout\ & ((!\ROM|memROM~25_combout\) # (\CPU|PC|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011010000110100000000000000100010110100001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\CPU|DEC_instrucao|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~1_combout\ = ( \ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\) ) ) 
-- ) # ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~1_combout\);

\CPU|DEC_instrucao|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~2_combout\ = ( \CPU|DEC_instrucao|saida[5]~1_combout\ & ( (!\ROM|memROM~18_combout\ & (!\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & \ROM|memROM~21_combout\))) ) ) # ( !\CPU|DEC_instrucao|saida[5]~1_combout\ & ( 
-- (((\ROM|memROM~21_combout\) # (\ROM|memROM~20_combout\)) # (\ROM|memROM~19_combout\)) # (\ROM|memROM~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000001000000001111111111111110000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_saida[5]~1_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~2_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~56_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~24_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( 
-- \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~24_q\,
	datad => \RAM|ALT_INV_ram~56_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~104_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~104_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( 
-- !\ROM|memROM~24_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~538_combout\,
	datab => \RAM|ALT_INV_ram~539_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~280_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~543_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~520_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~520_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~545_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~546_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- !\ROM|memROM~22_combout\ & ( \RAM|ram~541_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~541_combout\,
	datab => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~547_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\Data_IN[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~2_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[1]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[1]~input_o\)) # (\RAM|ram~547_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~547_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \Data_IN[1]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~30_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~30_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~30_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[2]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~30_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[2]~3_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~10_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[2]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[2]~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~273_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~273_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~548_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~281_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \RAM|ALT_INV_ram~281_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~105_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~105_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~550_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~550_combout\,
	datad => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~57_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~521_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~521_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \ROM|memROM~24_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~554_combout\ ) ) ) # ( !\ROM|memROM~24_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~553_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~552_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( 
-- !\ROM|memROM~17_combout\ & ( \RAM|ram~549_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~549_combout\,
	datac => \RAM|ALT_INV_ram~552_combout\,
	datad => \RAM|ALT_INV_ram~555_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~556_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\Data_IN[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~3_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[2]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[2]~input_o\)) # (\RAM|ram~556_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~556_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \Data_IN[2]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~31_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[3]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~31_combout\))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((\Data_IN[3]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~31_combout\,
	datad => \ALT_INV_Data_IN[3]~4_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

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

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~24_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[3]~4_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~24_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[3]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[3]~4_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~558_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~58_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~559_combout\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~558_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( 
-- !\ROM|memROM~10_combout\ & ( \RAM|ram~557_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~557_combout\,
	datab => \RAM|ALT_INV_ram~558_combout\,
	datad => \RAM|ALT_INV_ram~559_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~282_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~274_q\,
	datab => \RAM|ALT_INV_ram~282_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~561_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~561_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~562_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~563_combout\);

\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~106_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~564_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~563_combout\,
	datad => \RAM|ALT_INV_ram~564_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~565_combout\);

\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~522_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~522_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~566_combout\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~566_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~566_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~567_combout\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~567_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~565_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~13_combout\ 
-- & ( \RAM|ram~562_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~560_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~560_combout\,
	datab => \RAM|ALT_INV_ram~562_combout\,
	datac => \RAM|ALT_INV_ram~565_combout\,
	datad => \RAM|ALT_INV_ram~567_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~568_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\Data_IN[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~4_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[3]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[3]~input_o\)) # (\RAM|ram~568_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~568_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Data_IN[3]~4_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[4]~5_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~22_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[4]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[4]~5_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~22_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[4]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ALT_INV_Data_IN[4]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~22_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[4]~5_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~22_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[4]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[4]~5_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( !\ROM|memROM~17_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~27_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~13_combout\ & ( 
-- \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~569_combout\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~13_combout\ & ( \RAM|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~59_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~570_combout\);

\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~13_combout\ & ( \RAM|ram~107_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~107_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~571_combout\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~571_combout\ ) ) ) # ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~570_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( 
-- !\ROM|memROM~24_combout\ & ( \RAM|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~569_combout\,
	datab => \RAM|ALT_INV_ram~570_combout\,
	datac => \RAM|ALT_INV_ram~571_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~572_combout\);

\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~283_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~275_q\,
	datab => \RAM|ALT_INV_ram~283_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~573_combout\);

\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~573_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~574_combout\);

\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~523_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~523_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~575_combout\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~575_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~575_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~576_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~574_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( 
-- !\ROM|memROM~22_combout\ & ( \RAM|ram~572_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~572_combout\,
	datab => \RAM|ALT_INV_ram~574_combout\,
	datad => \RAM|ALT_INV_ram~576_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~577_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\Data_IN[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~5_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[4]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[4]~input_o\)) # (\RAM|ram~577_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~577_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \Data_IN[4]~5_combout\);

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

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[5]~6_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~16_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[5]~6_combout\))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[5]~6_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~16_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[5]~6_combout\))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ALT_INV_Data_IN[5]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~16_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[5]~6_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~16_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[5]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[5]~6_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~36_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~578_combout\);

\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~578_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~578_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~579_combout\);

\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~276_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~580_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~580_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~581_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~60_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datac => \RAM|ALT_INV_ram~60_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~582_combout\);

\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~108_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~108_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~583_combout\);

\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~583_combout\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~582_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~582_combout\,
	datac => \RAM|ALT_INV_ram~583_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~584_combout\);

\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~284_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~585_combout\);

\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~524_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~524_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~586_combout\);

\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~586_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~585_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~585_combout\,
	datad => \RAM|ALT_INV_ram~586_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~587_combout\);

\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~587_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~584_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~17_combout\ 
-- & ( \RAM|ram~581_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~579_combout\,
	datab => \RAM|ALT_INV_ram~581_combout\,
	datac => \RAM|ALT_INV_ram~584_combout\,
	datad => \RAM|ALT_INV_ram~587_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~588_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\Data_IN[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~6_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[5]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[5]~input_o\)) # (\RAM|ram~588_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~588_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \Data_IN[5]~6_combout\);

\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~32_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[5]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ 
-- ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[5]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ALT_INV_Data_IN[5]~6_combout\,
	datad => \ROM|ALT_INV_memROM~32_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[6]~7_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~27_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[6]~7_combout\))))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[6]~7_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~27_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[6]~7_combout\))))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \ALT_INV_Data_IN[6]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~27_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[6]~7_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~27_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[6]~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[6]~7_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~29_q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~17_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~17_combout\ & ( 
-- \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~37_q\,
	datac => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~589_combout\);

\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~109_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~109_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~590_combout\);

\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~590_combout\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~589_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~589_combout\,
	datac => \RAM|ALT_INV_ram~590_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~591_combout\);

\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~277_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~592_combout\);

\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~285_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~593_combout\);

\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~593_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~592_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~592_combout\,
	datab => \RAM|ALT_INV_ram~593_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~594_combout\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~61_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~595_combout\);

\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~595_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~596_combout\);

\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~17_combout\ & ( \RAM|ram~525_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~525_q\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~597_combout\);

\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~597_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~597_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~598_combout\);

\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~598_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~10_combout\ & ( \RAM|ram~596_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~10_combout\ 
-- & ( \RAM|ram~594_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~10_combout\ & ( \RAM|ram~591_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~591_combout\,
	datab => \RAM|ALT_INV_ram~594_combout\,
	datac => \RAM|ALT_INV_ram~596_combout\,
	datad => \RAM|ALT_INV_ram~598_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~599_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\Data_IN[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~7_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[6]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[6]~input_o\)) # (\RAM|ram~599_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~599_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	combout => \Data_IN[6]~7_combout\);

\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~33_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[6]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ 
-- ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\Data_IN[6]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ALT_INV_Data_IN[6]~7_combout\,
	datad => \ROM|ALT_INV_memROM~33_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\Data_IN[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~10_combout\ = (\comb~2_combout\ & (\comb~3_combout\ & \SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \ALT_INV_comb~3_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	combout => \Data_IN[7]~10_combout\);

\Data_IN[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~8_combout\ = (!\RAM|dado_out~0_combout\ & (\comb~4_combout\ & ((\SW[7]~input_o\)))) # (\RAM|dado_out~0_combout\ & (((\comb~4_combout\ & \SW[7]~input_o\)) # (\RAM|ram~610_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_comb~4_combout\,
	datac => \RAM|ALT_INV_ram~610_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	combout => \Data_IN[7]~8_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\Data_IN[7]~8_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~22_combout\)) # 
-- (\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[7]~8_combout\))))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ALT_INV_Data_IN[7]~8_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~22_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[7]~8_combout\)))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~4_combout\ & (\ROM|memROM~22_combout\)) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & ((\Data_IN[7]~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011110111111101000000011100000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[7]~8_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~30_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~600_combout\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~62_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~601_combout\);

\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( \ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~601_combout\ ) ) ) # ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~600_combout\,
	datab => \RAM|ALT_INV_ram~601_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~602_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~603_combout\);

\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( !\ROM|memROM~10_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~110_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~110_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~604_combout\);

\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~604_combout\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~603_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~603_combout\,
	datab => \RAM|ALT_INV_ram~604_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~605_combout\);

\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( \ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~286_q\ ) ) ) # ( !\ROM|memROM~17_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~278_q\,
	datab => \RAM|ALT_INV_ram~286_q\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~606_combout\);

\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( !\ROM|memROM~10_combout\ & ( !\ROM|memROM~24_combout\ & ( \RAM|ram~606_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~606_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~607_combout\);

\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

\RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~608_combout\ = ( \ROM|memROM~10_combout\ & ( \ROM|memROM~24_combout\ & ( \RAM|ram~526_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~526_q\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~608_combout\);

\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( \ROM|memROM~17_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM|ram~608_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~608_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~609_combout\);

\RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~610_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~609_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~607_combout\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~605_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~602_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~602_combout\,
	datab => \RAM|ALT_INV_ram~605_combout\,
	datac => \RAM|ALT_INV_ram~607_combout\,
	datad => \RAM|ALT_INV_ram~609_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~610_combout\);

\Data_IN[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~11_combout\ = (\RAM|dado_out~0_combout\ & \RAM|ram~610_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~0_combout\,
	datab => \RAM|ALT_INV_ram~610_combout\,
	combout => \Data_IN[7]~11_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~4_combout\ & (((!\ROM|memROM~22_combout\)))) # (\CPU|DEC_instrucao|saida[6]~4_combout\ & (!\Data_IN[7]~10_combout\ & ((!\Data_IN[7]~11_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( 
-- \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~4_combout\,
	datab => \ALT_INV_Data_IN[7]~10_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ALT_INV_Data_IN[7]~11_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|REG_FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~0_combout\ = ( \CPU|REG_FLAG|DOUT~q\ & ( (((!\ROM|memROM~20_combout\) # (\ROM|memROM~21_combout\)) # (\ROM|memROM~19_combout\)) # (\ROM|memROM~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111111100000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|REG_FLAG|DOUT~0_combout\);

\CPU|REG_FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~1_combout\ = ( !\ROM|memROM~21_combout\ & ( (!\ROM|memROM~19_combout\ & (\ROM|memROM~20_combout\ & ((!\ROM|memROM~25_combout\) # (\CPU|PC|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000000000000000000000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|REG_FLAG|DOUT~1_combout\);

\CPU|REG_FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~2_combout\ = ( \CPU|REG_FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|REG_FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|REG_FLAG|DOUT~2_combout\);

\CPU|REG_FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_FLAG|DOUT~3_combout\ = ( \CPU|REG_FLAG|DOUT~0_combout\ & ( \CPU|REG_FLAG|DOUT~2_combout\ ) ) # ( !\CPU|REG_FLAG|DOUT~0_combout\ & ( \CPU|REG_FLAG|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & 
-- (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( \CPU|REG_FLAG|DOUT~0_combout\ & ( !\CPU|REG_FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|REG_FLAG|ALT_INV_DOUT~0_combout\,
	dataf => \CPU|REG_FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|REG_FLAG|DOUT~3_combout\);

\CPU|REG_FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REG_FLAG|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG|DOUT~q\);

\CPU|MUX_PC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|Equal2~0_combout\ = ( \CPU|REG_FLAG|DOUT~q\ & ( (!\ROM|memROM~19_combout\ & (\ROM|memROM~18_combout\ & (\ROM|memROM~20_combout\ & !\ROM|memROM~21_combout\))) # (\ROM|memROM~19_combout\ & (((!\ROM|memROM~20_combout\ & 
-- \ROM|memROM~21_combout\)))) ) ) # ( !\CPU|REG_FLAG|DOUT~q\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ & \ROM|memROM~21_combout\))) # (\ROM|memROM~18_combout\ & (!\ROM|memROM~19_combout\ & (\ROM|memROM~20_combout\ 
-- & !\ROM|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000011000000000100001000000000010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX_PC|Equal2~0_combout\);

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|DEC_instrucao|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~5_combout\ = (\CPU|DEC_instrucao|Equal5~0_combout\ & (\ROM|memROM~20_combout\ & !\ROM|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~21_combout\,
	combout => \CPU|DEC_instrucao|saida~5_combout\);

\CPU|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(6));

\CPU|MUX_PC|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~3_combout\ = ( \CPU|REG_RETORNO|DOUT\(6) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~9_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~27_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(6) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~9_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~27_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(6),
	combout => \CPU|MUX_PC|saida_MUX[6]~3_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(7));

\CPU|MUX_PC|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~4_combout\ = ( \CPU|REG_RETORNO|DOUT\(7) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(7) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~22_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUX_PC|saida_MUX[7]~4_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~3_combout\ & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~21_combout\);

\CPU|MUX_PC|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~0_combout\ = ( \CPU|REG_FLAG|DOUT~q\ & ( (!\ROM|memROM~20_combout\ & (((\ROM|memROM~19_combout\ & \ROM|memROM~21_combout\)))) # (\ROM|memROM~20_combout\ & (!\ROM|memROM~21_combout\ & (!\ROM|memROM~18_combout\ $ 
-- (!\ROM|memROM~19_combout\)))) ) ) # ( !\CPU|REG_FLAG|DOUT~q\ & ( (!\ROM|memROM~18_combout\ & (\ROM|memROM~19_combout\ & (!\ROM|memROM~20_combout\ $ (!\ROM|memROM~21_combout\)))) # (\ROM|memROM~18_combout\ & (!\ROM|memROM~19_combout\ & 
-- (\ROM|memROM~20_combout\ & !\ROM|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100000000001100011000000000110001000000000011000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~18_combout\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \CPU|REG_FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX_PC|saida_MUX[8]~0_combout\);

\CPU|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(0));

\CPU|MUX_PC|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~7_combout\ = ( \CPU|REG_RETORNO|DOUT\(0) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~25_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~17_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(0) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~25_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~17_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(0),
	combout => \CPU|MUX_PC|saida_MUX[0]~7_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & 
-- !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000001000001000100001000000010000000010000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(5));

\CPU|MUX_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~5_combout\ = ( \CPU|REG_RETORNO|DOUT\(5) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~16_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(5) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~16_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(5),
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

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~22_combout\);

\CPU|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(4));

\CPU|MUX_PC|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~2_combout\ = ( \CPU|REG_RETORNO|DOUT\(4) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~5_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(4) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~5_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~22_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(4),
	combout => \CPU|MUX_PC|saida_MUX[4]~2_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~12_combout\ & ( 
-- (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(1) & \ROM|memROM~0_combout\)) ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & \ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000101000000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(1));

\CPU|MUX_PC|saida_MUX[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~9_combout\ = ( \CPU|REG_RETORNO|DOUT\(1) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~33_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~13_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(1) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~33_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~13_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(1),
	combout => \CPU|MUX_PC|saida_MUX[1]~9_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(1) & (\ROM|memROM~0_combout\ & \ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(2));

\CPU|MUX_PC|saida_MUX[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~8_combout\ = ( \CPU|REG_RETORNO|DOUT\(2) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~29_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~10_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(2) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~29_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~10_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(2),
	combout => \CPU|MUX_PC|saida_MUX[2]~8_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \ROM|memROM~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	combout => \ROM|memROM~24_combout\);

\CPU|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(3));

\CPU|MUX_PC|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~6_combout\ = ( \CPU|REG_RETORNO|DOUT\(3) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~21_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~24_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(3) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~21_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~24_combout\ & (\CPU|MUX_PC|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUX_PC|saida_MUX[3]~6_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & \ROM|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~26_combout\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~1_sumout\);

\CPU|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DEC_instrucao|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(8));

\CPU|MUX_PC|saida_MUX[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~1_combout\ = ( \CPU|REG_RETORNO|DOUT\(8) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~1_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((!\CPU|MUX_PC|Equal2~0_combout\)) # 
-- (\ROM|memROM~26_combout\))) ) ) # ( !\CPU|REG_RETORNO|DOUT\(8) & ( (!\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (((\CPU|incrementaPC|Add0~1_sumout\)))) # (\CPU|MUX_PC|saida_MUX[8]~0_combout\ & (\ROM|memROM~26_combout\ & ((\CPU|MUX_PC|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001111110001110100001100000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~26_combout\,
	datab => \CPU|MUX_PC|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \CPU|MUX_PC|ALT_INV_Equal2~0_combout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(8),
	combout => \CPU|MUX_PC|saida_MUX[8]~1_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~17_combout\);

\CPU|MUX_EntradaB_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\ = ( \Data_IN[0]~0_combout\ & ( \Data_IN[0]~1_combout\ & ( (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\Data_IN[0]~0_combout\ & ( \Data_IN[0]~1_combout\ & ( 
-- (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\ROM|memROM~17_combout\) ) ) ) # ( \Data_IN[0]~0_combout\ & ( !\Data_IN[0]~1_combout\ & ( (!\CPU|DEC_instrucao|saida[5]~0_combout\) # (\ROM|memROM~17_combout\) ) ) ) # ( !\Data_IN[0]~0_combout\ & ( 
-- !\Data_IN[0]~1_combout\ & ( (!\CPU|DEC_instrucao|saida[5]~0_combout\ & (((\RAM|ram~537_combout\ & \RAM|dado_out~0_combout\)))) # (\CPU|DEC_instrucao|saida[5]~0_combout\ & (\ROM|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[5]~0_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	datad => \RAM|ALT_INV_dado_out~0_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	dataf => \ALT_INV_Data_IN[0]~1_combout\,
	combout => \CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|ULA1|Equal0~0_combout\ & (\CPU|MUX_EntradaB_ULA|saida_MUX[0]~0_combout\)) # (\CPU|ULA1|Equal0~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|ULA1|Equal1~0_combout\,
	ena => \CPU|DEC_instrucao|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\DEC_Blocos|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Blocos|Equal6~0_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DEC_Blocos|Equal6~0_combout\);

\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = ( !\ROM|memROM~13_combout\ & ( !\logica_LED|comb~0_combout\ & ( (\CPU|DEC_instrucao|Equal5~0_combout\ & (\CPU|DEC_instrucao|Equal5~1_combout\ & (\DEC_Blocos|Equal6~0_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\,
	datac => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \logica_LED|ALT_INV_comb~0_combout\,
	combout => \logica_LED|comb~1_combout\);

\logica_LED|LED0to7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(0));

\logica_LED|LED0to7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(1));

\logica_LED|LED0to7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(2));

\logica_LED|LED0to7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(3));

\logica_LED|LED0to7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(4));

\logica_LED|LED0to7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(5));

\logica_LED|LED0to7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(6));

\logica_LED|LED0to7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \logica_LED|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(7));

\logica_LED|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~2_combout\ = (\CPU|DEC_instrucao|Equal5~0_combout\ & (\CPU|DEC_instrucao|Equal5~1_combout\ & (\DEC_Blocos|Equal6~0_combout\ & !\ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\,
	datac => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	combout => \logica_LED|comb~2_combout\);

\logica_LED|LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED8|DOUT~0_combout\ = ( \ROM|memROM~13_combout\ & ( \logica_LED|comb~2_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \logica_LED|comb~2_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~17_combout\ & 
-- (\logica_LED|LED8|DOUT~q\)) # (\ROM|memROM~17_combout\ & ((\CPU|REGA|DOUT\(0)))))) # (\ROM|memROM~16_combout\ & (\logica_LED|LED8|DOUT~q\)) ) ) ) # ( \ROM|memROM~13_combout\ & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) ) # ( 
-- !\ROM|memROM~13_combout\ & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101001101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|LED8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \logica_LED|LED8|DOUT~0_combout\);

\logica_LED|LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \logica_LED|LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED8|DOUT~q\);

\logica_LED|LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED9|DOUT~0_combout\ = ( \ROM|memROM~13_combout\ & ( \logica_LED|comb~2_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~17_combout\ & ((\CPU|REGA|DOUT\(0)))) # (\ROM|memROM~17_combout\ & (\logica_LED|LED9|DOUT~q\)))) # 
-- (\ROM|memROM~16_combout\ & (\logica_LED|LED9|DOUT~q\)) ) ) ) # ( !\ROM|memROM~13_combout\ & ( \logica_LED|comb~2_combout\ & ( \logica_LED|LED9|DOUT~q\ ) ) ) # ( \ROM|memROM~13_combout\ & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED9|DOUT~q\ ) ) ) # 
-- ( !\ROM|memROM~13_combout\ & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|LED9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \logica_LED|LED9|DOUT~0_combout\);

\logica_LED|LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \logica_LED|LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED9|DOUT~q\);

\comp_HEX0|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|comb~0_combout\ = (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & \logica_LED|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \comp_HEX0|comb~0_combout\);

\comp_HEX0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(0));

\comp_HEX0|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(3));

\comp_HEX0|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(1));

\comp_HEX0|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX0|REG|DOUT\(2));

\comp_HEX0|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX0|REG|DOUT\(3) & (!\comp_HEX0|REG|DOUT\(1) & (!\comp_HEX0|REG|DOUT\(0) $ (!\comp_HEX0|REG|DOUT\(2))))) # (\comp_HEX0|REG|DOUT\(3) & (\comp_HEX0|REG|DOUT\(0) & (!\comp_HEX0|REG|DOUT\(1) $ 
-- (!\comp_HEX0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX0|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX0|REG|DOUT\(3) & (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(0) $ (!\comp_HEX0|REG|DOUT\(1))))) # (\comp_HEX0|REG|DOUT\(3) & ((!\comp_HEX0|REG|DOUT\(0) & ((\comp_HEX0|REG|DOUT\(2)))) # 
-- (\comp_HEX0|REG|DOUT\(0) & (\comp_HEX0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX0|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX0|REG|DOUT\(3) & (!\comp_HEX0|REG|DOUT\(0) & (\comp_HEX0|REG|DOUT\(1) & !\comp_HEX0|REG|DOUT\(2)))) # (\comp_HEX0|REG|DOUT\(3) & (\comp_HEX0|REG|DOUT\(2) & ((!\comp_HEX0|REG|DOUT\(0)) # 
-- (\comp_HEX0|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX0|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX0|REG|DOUT\(1) & (!\comp_HEX0|REG|DOUT\(3) & (!\comp_HEX0|REG|DOUT\(0) $ (!\comp_HEX0|REG|DOUT\(2))))) # (\comp_HEX0|REG|DOUT\(1) & ((!\comp_HEX0|REG|DOUT\(0) & (!\comp_HEX0|REG|DOUT\(2) & 
-- \comp_HEX0|REG|DOUT\(3))) # (\comp_HEX0|REG|DOUT\(0) & (\comp_HEX0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX0|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX0|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX0|REG|DOUT\(1) & ((!\comp_HEX0|REG|DOUT\(2) & ((\comp_HEX0|REG|DOUT\(0)))) # (\comp_HEX0|REG|DOUT\(2) & (!\comp_HEX0|REG|DOUT\(3))))) # (\comp_HEX0|REG|DOUT\(1) & (!\comp_HEX0|REG|DOUT\(3) & 
-- ((\comp_HEX0|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX0|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX0|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX0|REG|DOUT\(0) & (\comp_HEX0|REG|DOUT\(1) & (!\comp_HEX0|REG|DOUT\(2) & !\comp_HEX0|REG|DOUT\(3)))) # (\comp_HEX0|REG|DOUT\(0) & (!\comp_HEX0|REG|DOUT\(3) $ (((!\comp_HEX0|REG|DOUT\(1) & 
-- \comp_HEX0|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX0|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX0|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX0|REG|DOUT\(0) & (!\comp_HEX0|REG|DOUT\(1) & (!\comp_HEX0|REG|DOUT\(3) $ (\comp_HEX0|REG|DOUT\(2))))) # (\comp_HEX0|REG|DOUT\(0) & (!\comp_HEX0|REG|DOUT\(3) & (!\comp_HEX0|REG|DOUT\(1) $ 
-- (\comp_HEX0|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX0|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX0|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX0|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX0|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX0|converSeg|rascSaida7seg[6]~6_combout\);

\comp_HEX1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|comb~0_combout\ = (\ROM|memROM~16_combout\ & (\ROM|memROM~17_combout\ & (!\ROM|memROM~13_combout\ & \logica_LED|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \comp_HEX1|comb~0_combout\);

\comp_HEX1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(0));

\comp_HEX1|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(3));

\comp_HEX1|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(1));

\comp_HEX1|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX1|REG|DOUT\(2));

\comp_HEX1|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(0) $ (!\comp_HEX1|REG|DOUT\(2))))) # (\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(0) & (!\comp_HEX1|REG|DOUT\(1) $ 
-- (!\comp_HEX1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX1|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX1|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(2) & (!\comp_HEX1|REG|DOUT\(0) $ (!\comp_HEX1|REG|DOUT\(1))))) # (\comp_HEX1|REG|DOUT\(3) & ((!\comp_HEX1|REG|DOUT\(0) & ((\comp_HEX1|REG|DOUT\(2)))) # 
-- (\comp_HEX1|REG|DOUT\(0) & (\comp_HEX1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX1|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX1|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(0) & (\comp_HEX1|REG|DOUT\(1) & !\comp_HEX1|REG|DOUT\(2)))) # (\comp_HEX1|REG|DOUT\(3) & (\comp_HEX1|REG|DOUT\(2) & ((!\comp_HEX1|REG|DOUT\(0)) # 
-- (\comp_HEX1|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX1|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX1|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(0) $ (!\comp_HEX1|REG|DOUT\(2))))) # (\comp_HEX1|REG|DOUT\(1) & ((!\comp_HEX1|REG|DOUT\(0) & (!\comp_HEX1|REG|DOUT\(2) & 
-- \comp_HEX1|REG|DOUT\(3))) # (\comp_HEX1|REG|DOUT\(0) & (\comp_HEX1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX1|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX1|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX1|REG|DOUT\(1) & ((!\comp_HEX1|REG|DOUT\(2) & ((\comp_HEX1|REG|DOUT\(0)))) # (\comp_HEX1|REG|DOUT\(2) & (!\comp_HEX1|REG|DOUT\(3))))) # (\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(3) & 
-- ((\comp_HEX1|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX1|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX1|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX1|REG|DOUT\(0) & (\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(2) & !\comp_HEX1|REG|DOUT\(3)))) # (\comp_HEX1|REG|DOUT\(0) & (!\comp_HEX1|REG|DOUT\(3) $ (((!\comp_HEX1|REG|DOUT\(1) & 
-- \comp_HEX1|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX1|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX1|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX1|REG|DOUT\(0) & (!\comp_HEX1|REG|DOUT\(1) & (!\comp_HEX1|REG|DOUT\(3) $ (\comp_HEX1|REG|DOUT\(2))))) # (\comp_HEX1|REG|DOUT\(0) & (!\comp_HEX1|REG|DOUT\(3) & (!\comp_HEX1|REG|DOUT\(1) $ 
-- (\comp_HEX1|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX1|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX1|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX1|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX1|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX1|converSeg|rascSaida7seg[6]~6_combout\);

\comp_HEX2|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|comb~0_combout\ = (\ROM|memROM~16_combout\ & (!\ROM|memROM~17_combout\ & (\ROM|memROM~13_combout\ & \logica_LED|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \comp_HEX2|comb~0_combout\);

\comp_HEX2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(0));

\comp_HEX2|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(3));

\comp_HEX2|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(1));

\comp_HEX2|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX2|REG|DOUT\(2));

\comp_HEX2|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX2|REG|DOUT\(3) & (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(0) $ (!\comp_HEX2|REG|DOUT\(2))))) # (\comp_HEX2|REG|DOUT\(3) & (\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(1) $ 
-- (!\comp_HEX2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX2|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX2|REG|DOUT\(3) & (\comp_HEX2|REG|DOUT\(2) & (!\comp_HEX2|REG|DOUT\(0) $ (!\comp_HEX2|REG|DOUT\(1))))) # (\comp_HEX2|REG|DOUT\(3) & ((!\comp_HEX2|REG|DOUT\(0) & ((\comp_HEX2|REG|DOUT\(2)))) # 
-- (\comp_HEX2|REG|DOUT\(0) & (\comp_HEX2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX2|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX2|REG|DOUT\(3) & (!\comp_HEX2|REG|DOUT\(0) & (\comp_HEX2|REG|DOUT\(1) & !\comp_HEX2|REG|DOUT\(2)))) # (\comp_HEX2|REG|DOUT\(3) & (\comp_HEX2|REG|DOUT\(2) & ((!\comp_HEX2|REG|DOUT\(0)) # 
-- (\comp_HEX2|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX2|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(3) & (!\comp_HEX2|REG|DOUT\(0) $ (!\comp_HEX2|REG|DOUT\(2))))) # (\comp_HEX2|REG|DOUT\(1) & ((!\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(2) & 
-- \comp_HEX2|REG|DOUT\(3))) # (\comp_HEX2|REG|DOUT\(0) & (\comp_HEX2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX2|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX2|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX2|REG|DOUT\(1) & ((!\comp_HEX2|REG|DOUT\(2) & ((\comp_HEX2|REG|DOUT\(0)))) # (\comp_HEX2|REG|DOUT\(2) & (!\comp_HEX2|REG|DOUT\(3))))) # (\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(3) & 
-- ((\comp_HEX2|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX2|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX2|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX2|REG|DOUT\(0) & (\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(2) & !\comp_HEX2|REG|DOUT\(3)))) # (\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(3) $ (((!\comp_HEX2|REG|DOUT\(1) & 
-- \comp_HEX2|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX2|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX2|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(1) & (!\comp_HEX2|REG|DOUT\(3) $ (\comp_HEX2|REG|DOUT\(2))))) # (\comp_HEX2|REG|DOUT\(0) & (!\comp_HEX2|REG|DOUT\(3) & (!\comp_HEX2|REG|DOUT\(1) $ 
-- (\comp_HEX2|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX2|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX2|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX2|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX2|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX2|converSeg|rascSaida7seg[6]~6_combout\);

\comp_HEX3|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|comb~0_combout\ = ( \ROM|memROM~13_combout\ & ( \comb~0_combout\ & ( (\CPU|DEC_instrucao|Equal5~0_combout\ & (\CPU|DEC_instrucao|Equal5~1_combout\ & (\DEC_Blocos|Equal6~0_combout\ & !\ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal5~1_combout\,
	datac => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \comp_HEX3|comb~0_combout\);

\comp_HEX3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(0));

\comp_HEX3|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(3));

\comp_HEX3|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(1));

\comp_HEX3|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX3|REG|DOUT\(2));

\comp_HEX3|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(0) $ (!\comp_HEX3|REG|DOUT\(2))))) # (\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(1) $ 
-- (!\comp_HEX3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX3|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(2) & (!\comp_HEX3|REG|DOUT\(0) $ (!\comp_HEX3|REG|DOUT\(1))))) # (\comp_HEX3|REG|DOUT\(3) & ((!\comp_HEX3|REG|DOUT\(0) & ((\comp_HEX3|REG|DOUT\(2)))) # 
-- (\comp_HEX3|REG|DOUT\(0) & (\comp_HEX3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX3|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(0) & (\comp_HEX3|REG|DOUT\(1) & !\comp_HEX3|REG|DOUT\(2)))) # (\comp_HEX3|REG|DOUT\(3) & (\comp_HEX3|REG|DOUT\(2) & ((!\comp_HEX3|REG|DOUT\(0)) # 
-- (\comp_HEX3|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX3|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(0) $ (!\comp_HEX3|REG|DOUT\(2))))) # (\comp_HEX3|REG|DOUT\(1) & ((!\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(2) & 
-- \comp_HEX3|REG|DOUT\(3))) # (\comp_HEX3|REG|DOUT\(0) & (\comp_HEX3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX3|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX3|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX3|REG|DOUT\(1) & ((!\comp_HEX3|REG|DOUT\(2) & ((\comp_HEX3|REG|DOUT\(0)))) # (\comp_HEX3|REG|DOUT\(2) & (!\comp_HEX3|REG|DOUT\(3))))) # (\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(3) & 
-- ((\comp_HEX3|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX3|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX3|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX3|REG|DOUT\(0) & (\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(2) & !\comp_HEX3|REG|DOUT\(3)))) # (\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(3) $ (((!\comp_HEX3|REG|DOUT\(1) & 
-- \comp_HEX3|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX3|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX3|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(1) & (!\comp_HEX3|REG|DOUT\(3) $ (\comp_HEX3|REG|DOUT\(2))))) # (\comp_HEX3|REG|DOUT\(0) & (!\comp_HEX3|REG|DOUT\(3) & (!\comp_HEX3|REG|DOUT\(1) $ 
-- (\comp_HEX3|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX3|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX3|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX3|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX3|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX3|converSeg|rascSaida7seg[6]~6_combout\);

\comp_HEX5|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|comb~0_combout\ = (\DEC_Blocos|Equal6~0_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \comp_HEX5|comb~0_combout\);

\comp_HEX4|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|comb~0_combout\ = (\CPU|DEC_instrucao|Equal5~2_combout\ & (\ROM|memROM~10_combout\ & (!\ROM|memROM~17_combout\ & \comp_HEX5|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~2_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \comp_HEX5|ALT_INV_comb~0_combout\,
	combout => \comp_HEX4|comb~0_combout\);

\comp_HEX4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX4|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(0));

\comp_HEX4|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX4|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(3));

\comp_HEX4|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX4|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(1));

\comp_HEX4|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX4|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX4|REG|DOUT\(2));

\comp_HEX4|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(0) $ (!\comp_HEX4|REG|DOUT\(2))))) # (\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(1) $ 
-- (!\comp_HEX4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX4|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(2) & (!\comp_HEX4|REG|DOUT\(0) $ (!\comp_HEX4|REG|DOUT\(1))))) # (\comp_HEX4|REG|DOUT\(3) & ((!\comp_HEX4|REG|DOUT\(0) & ((\comp_HEX4|REG|DOUT\(2)))) # 
-- (\comp_HEX4|REG|DOUT\(0) & (\comp_HEX4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX4|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(0) & (\comp_HEX4|REG|DOUT\(1) & !\comp_HEX4|REG|DOUT\(2)))) # (\comp_HEX4|REG|DOUT\(3) & (\comp_HEX4|REG|DOUT\(2) & ((!\comp_HEX4|REG|DOUT\(0)) # 
-- (\comp_HEX4|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX4|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(0) $ (!\comp_HEX4|REG|DOUT\(2))))) # (\comp_HEX4|REG|DOUT\(1) & ((!\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(2) & 
-- \comp_HEX4|REG|DOUT\(3))) # (\comp_HEX4|REG|DOUT\(0) & (\comp_HEX4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX4|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX4|REG|DOUT\(1) & ((!\comp_HEX4|REG|DOUT\(2) & ((\comp_HEX4|REG|DOUT\(0)))) # (\comp_HEX4|REG|DOUT\(2) & (!\comp_HEX4|REG|DOUT\(3))))) # (\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(3) & 
-- ((\comp_HEX4|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX4|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX4|REG|DOUT\(0) & (\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(2) & !\comp_HEX4|REG|DOUT\(3)))) # (\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(3) $ (((!\comp_HEX4|REG|DOUT\(1) & 
-- \comp_HEX4|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX4|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(1) & (!\comp_HEX4|REG|DOUT\(3) $ (\comp_HEX4|REG|DOUT\(2))))) # (\comp_HEX4|REG|DOUT\(0) & (!\comp_HEX4|REG|DOUT\(3) & (!\comp_HEX4|REG|DOUT\(1) $ 
-- (\comp_HEX4|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX4|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX4|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX4|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX4|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\);

\comp_HEX5|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|comb~1_combout\ = (\CPU|DEC_instrucao|Equal5~2_combout\ & (\ROM|memROM~10_combout\ & (\ROM|memROM~17_combout\ & \comp_HEX5|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal5~2_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \comp_HEX5|ALT_INV_comb~0_combout\,
	combout => \comp_HEX5|comb~1_combout\);

\comp_HEX5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \comp_HEX5|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(0));

\comp_HEX5|REG|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \comp_HEX5|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(3));

\comp_HEX5|REG|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \comp_HEX5|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(1));

\comp_HEX5|REG|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \comp_HEX5|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp_HEX5|REG|DOUT\(2));

\comp_HEX5|converSeg|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\ = (!\comp_HEX5|REG|DOUT\(3) & (!\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(0) $ (!\comp_HEX5|REG|DOUT\(2))))) # (\comp_HEX5|REG|DOUT\(3) & (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(1) $ 
-- (!\comp_HEX5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\);

\comp_HEX5|converSeg|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\ = (!\comp_HEX5|REG|DOUT\(3) & (\comp_HEX5|REG|DOUT\(2) & (!\comp_HEX5|REG|DOUT\(0) $ (!\comp_HEX5|REG|DOUT\(1))))) # (\comp_HEX5|REG|DOUT\(3) & ((!\comp_HEX5|REG|DOUT\(0) & ((\comp_HEX5|REG|DOUT\(2)))) # 
-- (\comp_HEX5|REG|DOUT\(0) & (\comp_HEX5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\);

\comp_HEX5|converSeg|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\ = (!\comp_HEX5|REG|DOUT\(3) & (!\comp_HEX5|REG|DOUT\(0) & (\comp_HEX5|REG|DOUT\(1) & !\comp_HEX5|REG|DOUT\(2)))) # (\comp_HEX5|REG|DOUT\(3) & (\comp_HEX5|REG|DOUT\(2) & ((!\comp_HEX5|REG|DOUT\(0)) # 
-- (\comp_HEX5|REG|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\);

\comp_HEX5|converSeg|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\ = (!\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(3) & (!\comp_HEX5|REG|DOUT\(0) $ (!\comp_HEX5|REG|DOUT\(2))))) # (\comp_HEX5|REG|DOUT\(1) & ((!\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(2) & 
-- \comp_HEX5|REG|DOUT\(3))) # (\comp_HEX5|REG|DOUT\(0) & (\comp_HEX5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\);

\comp_HEX5|converSeg|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\ = (!\comp_HEX5|REG|DOUT\(1) & ((!\comp_HEX5|REG|DOUT\(2) & ((\comp_HEX5|REG|DOUT\(0)))) # (\comp_HEX5|REG|DOUT\(2) & (!\comp_HEX5|REG|DOUT\(3))))) # (\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(3) & 
-- ((\comp_HEX5|REG|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	combout => \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\);

\comp_HEX5|converSeg|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\ = (!\comp_HEX5|REG|DOUT\(0) & (\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(2) & !\comp_HEX5|REG|DOUT\(3)))) # (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(3) $ (((!\comp_HEX5|REG|DOUT\(1) & 
-- \comp_HEX5|REG|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	combout => \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\);

\comp_HEX5|converSeg|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\ = (!\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(1) & (!\comp_HEX5|REG|DOUT\(3) $ (\comp_HEX5|REG|DOUT\(2))))) # (\comp_HEX5|REG|DOUT\(0) & (!\comp_HEX5|REG|DOUT\(3) & (!\comp_HEX5|REG|DOUT\(1) $ 
-- (\comp_HEX5|REG|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comp_HEX5|REG|ALT_INV_DOUT\(0),
	datab => \comp_HEX5|REG|ALT_INV_DOUT\(3),
	datac => \comp_HEX5|REG|ALT_INV_DOUT\(1),
	datad => \comp_HEX5|REG|ALT_INV_DOUT\(2),
	combout => \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\);

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
END structure;


