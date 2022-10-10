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

-- DATE "10/10/2022 19:39:44"

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
-- KEY[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \RAM|process_0~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[4]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~3_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \logica_LED|LED0to7|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \logica_LED|LED0to7|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \logica_LED|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~q\ : std_logic;
SIGNAL \logica_LED|comb~2_combout\ : std_logic;
SIGNAL \logica_LED|LED9|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|LED9|DOUT~q\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_LED|LED0to7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
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
SIGNAL \logica_LED|LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
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
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

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
\CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[7]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[5]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[4]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[3]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\RAM|ALT_INV_process_0~2_combout\ <= NOT \RAM|process_0~2_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\ <= NOT \CPU|DEC_instrucao|saida[4]~2_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~1_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\ <= NOT \CPU|DEC_instrucao|saida[4]~0_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DEC_instrucao|Equal10~0_combout\;
\logica_LED|ALT_INV_comb~2_combout\ <= NOT \logica_LED|comb~2_combout\;
\logica_LED|ALT_INV_comb~1_combout\ <= NOT \logica_LED|comb~1_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
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
\logica_LED|LED9|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED9|DOUT~q\;
\logica_LED|LED8|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED8|DOUT~q\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
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
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);

-- Location: IOOBUF_X16_Y0_N59
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
	o => ww_LEDR(0));

-- Location: IOOBUF_X14_Y0_N53
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
	o => ww_LEDR(1));

-- Location: IOOBUF_X18_Y0_N36
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
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y0_N19
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
	o => ww_LEDR(3));

-- Location: IOOBUF_X12_Y0_N53
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
	o => ww_LEDR(4));

-- Location: IOOBUF_X16_Y0_N42
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
	o => ww_LEDR(5));

-- Location: IOOBUF_X18_Y0_N53
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
	o => ww_LEDR(6));

-- Location: IOOBUF_X18_Y0_N19
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
	o => ww_LEDR(7));

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N42
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
	o => ww_HEX0(0));

-- Location: IOOBUF_X22_Y0_N2
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
	o => ww_HEX0(1));

-- Location: IOOBUF_X18_Y0_N2
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
	o => ww_HEX0(2));

-- Location: IOOBUF_X38_Y45_N53
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
	o => ww_HEX0(3));

-- Location: IOOBUF_X34_Y45_N53
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
	o => ww_HEX0(4));

-- Location: IOOBUF_X54_Y20_N56
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
	o => ww_HEX0(5));

-- Location: IOOBUF_X43_Y45_N2
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X8_Y45_N59
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X8_Y45_N93
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X10_Y45_N36
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X38_Y45_N36
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X43_Y45_N19
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X54_Y15_N39
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X10_Y45_N53
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X0_Y18_N79
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X40_Y45_N42
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

-- Location: IOOBUF_X34_Y45_N2
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N53
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X8_Y45_N76
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X54_Y19_N22
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

-- Location: IOOBUF_X54_Y20_N5
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X44_Y45_N2
\HEX6[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: IOIBUF_X16_Y0_N75
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X16_Y1_N45
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

-- Location: FF_X16_Y1_N46
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

-- Location: LABCELL_X17_Y4_N3
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X14_Y3_N0
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X17_Y3_N9
\CPU|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~feeder_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X16_Y3_N33
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(1) & ( (\ROM|memROM~5_combout\ & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[3]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\ROM|memROM~5_combout\ & ((!\CPU|PC|DOUT[2]~DUPLICATE_q\ & 
-- (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000100001000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X16_Y3_N57
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (!\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100001111000000001111111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X16_Y3_N21
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X16_Y3_N15
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ $ 
-- (\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000111111110000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X16_Y3_N3
\CPU|DEC_instrucao|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~2_combout\ = ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~8_combout\ & \ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DEC_instrucao|Equal10~2_combout\);

-- Location: FF_X17_Y3_N58
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X14_Y3_N9
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X14_Y3_N12
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X14_Y3_N15
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X17_Y3_N42
\CPU|PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~feeder_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|PC|DOUT[5]~feeder_combout\);

-- Location: FF_X17_Y3_N43
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N18
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: LABCELL_X17_Y3_N21
\CPU|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X17_Y3_N22
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N21
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

-- Location: LABCELL_X14_Y3_N24
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~1_sumout\);

-- Location: LABCELL_X17_Y3_N57
\CPU|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[8]~feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X17_Y3_N59
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N1
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X17_Y3_N18
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & \ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~12_combout\);

-- Location: FF_X17_Y3_N13
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X17_Y3_N48
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000011110000110000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X17_Y3_N27
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X17_Y3_N11
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X14_Y3_N3
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X14_Y3_N6
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X16_Y3_N0
\CPU|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~feeder_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X16_Y3_N2
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N12
\CPU|PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[3]~feeder_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|PC|DOUT[3]~feeder_combout\);

-- Location: FF_X17_Y3_N14
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N3
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(2) & \ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~11_combout\);

-- Location: FF_X17_Y3_N7
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N6
\CPU|PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~feeder_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|PC|DOUT[7]~feeder_combout\);

-- Location: FF_X17_Y3_N8
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: FF_X17_Y3_N44
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: FF_X17_Y3_N23
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X17_Y3_N45
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\CPU|PC|DOUT[4]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X17_Y3_N15
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X17_Y3_N24
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X16_Y3_N47
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X16_Y3_N45
\CPU|PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|PC|DOUT[1]~feeder_combout\);

-- Location: FF_X16_Y3_N46
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N30
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X17_Y3_N34
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X17_Y3_N33
\CPU|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~feeder_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|PC|DOUT[4]~feeder_combout\);

-- Location: FF_X17_Y3_N35
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DEC_instrucao|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y3_N54
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X16_Y3_N27
\CPU|DEC_instrucao|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~0_combout\ = ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DEC_instrucao|Equal10~0_combout\);

-- Location: LABCELL_X16_Y3_N30
\CPU|DEC_instrucao|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[4]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~5_combout\ & \ROM|memROM~8_combout\) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DEC_instrucao|saida[4]~0_combout\);

-- Location: LABCELL_X16_Y3_N48
\CPU|DEC_instrucao|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~1_combout\ = ( \CPU|DEC_instrucao|saida[4]~0_combout\ & ( \CPU|DEC_instrucao|Equal10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~1_combout\);

-- Location: LABCELL_X16_Y3_N39
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~3_combout\ ) ) # ( !\ROM|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X16_Y3_N42
\RAM|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~2_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~5_combout\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (\ROM|memROM~5_combout\ & ((!\CPU|PC|DOUT\(0) & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT[2]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110010000100010011001000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM|process_0~2_combout\);

-- Location: LABCELL_X16_Y3_N36
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~5_combout\ & !\ROM|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X16_Y4_N21
\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = (\RAM|process_0~2_combout\ & (\RAM|process_0~0_combout\ & !\ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~2_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM|process_0~1_combout\);

-- Location: LABCELL_X16_Y4_N0
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( !\ROM|memROM~12_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~10_combout\ & (\RAM|process_0~1_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_process_0~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: FF_X17_Y4_N8
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: LABCELL_X17_Y4_N6
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~23_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X16_Y4_N45
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|process_0~1_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~12_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: FF_X16_Y4_N32
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X16_Y4_N30
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~15_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~15_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: LABCELL_X17_Y4_N9
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~528_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~4_combout\) # (\RAM|ram~527_combout\))) ) ) # ( !\RAM|ram~528_combout\ & ( (!\ROM|memROM~11_combout\ & (\RAM|ram~527_combout\ & \ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \RAM|ALT_INV_ram~527_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~528_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: LABCELL_X17_Y4_N0
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \RAM|ram~529_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: MLABCELL_X18_Y4_N30
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

-- Location: MLABCELL_X18_Y4_N33
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((!\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((!\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM|memROM~13_combout\))) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	dataf => \RAM|ALT_INV_ram~530_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: MLABCELL_X18_Y4_N24
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

-- Location: LABCELL_X16_Y3_N18
\CPU|DEC_instrucao|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[4]~2_combout\ = ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~8_combout\ & \ROM|memROM~9_combout\)) ) ) # ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~8_combout\ & 
-- !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~5_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_instrucao|saida[4]~2_combout\);

-- Location: LABCELL_X17_Y4_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\RAM|ram~530_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X18_Y4_N27
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & (\RAM|ram~530_combout\)) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\ROM|memROM~4_combout\)))) ) ) # 
-- ( !\CPU|ULA1|Add0~1_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & (\RAM|ram~530_combout\)) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\ROM|memROM~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \RAM|ALT_INV_ram~530_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X16_Y3_N9
\CPU|DEC_instrucao|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal10~1_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~8_combout\) # ((!\ROM|memROM~7_combout\) # (!\ROM|memROM~5_combout\)) ) ) # ( !\ROM|memROM~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|DEC_instrucao|Equal10~1_combout\);

-- Location: LABCELL_X16_Y3_N24
\CPU|DEC_instrucao|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~3_combout\ = ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~9_combout\ & \ROM|memROM~5_combout\) ) ) # ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ $ (\ROM|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|DEC_instrucao|saida~3_combout\);

-- Location: FF_X18_Y4_N25
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
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X16_Y4_N54
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( \RAM|process_0~0_combout\ & ( (\RAM|process_0~2_combout\ & (\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~2_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: FF_X16_Y4_N49
\logica_LED|LED0to7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(0));

-- Location: FF_X16_Y4_N38
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: LABCELL_X16_Y4_N18
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~24_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: FF_X16_Y4_N35
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X16_Y4_N33
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~16_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~16_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X16_Y4_N51
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|ram~532_combout\ & ( (!\ROM|memROM~11_combout\ & \RAM|ram~531_combout\) ) ) ) # ( !\ROM|memROM~4_combout\ & ( \RAM|ram~532_combout\ & ( !\ROM|memROM~11_combout\ ) ) ) # ( \ROM|memROM~4_combout\ & ( 
-- !\RAM|ram~532_combout\ & ( (!\ROM|memROM~11_combout\ & \RAM|ram~531_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101010101010101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~531_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X16_Y4_N57
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \RAM|ram~533_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: MLABCELL_X18_Y4_N36
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~534_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~534_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~2_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X18_Y4_N12
\CPU|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[1]~feeder_combout\ = ( \CPU|ULA1|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|REGA|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X16_Y3_N6
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: LABCELL_X17_Y4_N33
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DEC_instrucao|saida[6]~1_combout\ & (((\RAM|ram~534_combout\)))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: MLABCELL_X18_Y4_N15
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \ROM|memROM~2_combout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) # (\CPU|DEC_instrucao|saida[4]~2_combout\ & (((\RAM|ram~534_combout\)) # (\CPU|DEC_instrucao|saida[6]~1_combout\))) ) ) 
-- # ( !\ROM|memROM~2_combout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) # (\CPU|DEC_instrucao|saida[4]~2_combout\ & (!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~534_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \RAM|ALT_INV_ram~534_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X18_Y4_N14
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[1]~feeder_combout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X16_Y4_N26
\logica_LED|LED0to7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(1));

-- Location: FF_X17_Y3_N2
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X17_Y3_N0
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~25_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X17_Y3_N41
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: LABCELL_X17_Y3_N39
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~17_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X17_Y3_N51
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~536_combout\ & ( (!\ROM|memROM~11_combout\ & ((!\ROM|memROM~4_combout\) # (\RAM|ram~535_combout\))) ) ) # ( !\RAM|ram~536_combout\ & ( (\ROM|memROM~4_combout\ & (!\ROM|memROM~11_combout\ & \RAM|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X17_Y3_N36
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~537_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: MLABCELL_X18_Y4_N39
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~538_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~538_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~538_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~538_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X18_Y4_N18
\CPU|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[2]~feeder_combout\ = ( \CPU|ULA1|Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|REGA|DOUT[2]~feeder_combout\);

-- Location: FF_X18_Y4_N19
\CPU|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y4_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~538_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~538_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~538_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ 
-- & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: MLABCELL_X18_Y4_N21
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\))) ) ) # 
-- ( !\CPU|ULA1|Add0~9_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X18_Y4_N20
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[2]~feeder_combout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X18_Y4_N9
\logica_LED|LED0to7|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED0to7|DOUT[2]~feeder_combout\ = \CPU|REGA|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \logica_LED|LED0to7|DOUT[2]~feeder_combout\);

-- Location: FF_X18_Y4_N10
\logica_LED|LED0to7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_LED|LED0to7|DOUT[2]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(2));

-- Location: LABCELL_X17_Y4_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~542_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~542_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~542_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ 
-- & (\ROM|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X17_Y4_N21
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & (\RAM|ram~542_combout\)) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\ROM|memROM~12_combout\)))) ) ) 
-- # ( !\CPU|ULA1|Add0~13_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & (\RAM|ram~542_combout\)) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\ROM|memROM~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datab => \RAM|ALT_INV_ram~542_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X17_Y4_N20
\CPU|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X16_Y4_N13
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: LABCELL_X16_Y4_N42
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~26_q\ & ( (!\ROM|memROM~12_combout\ & !\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~26_q\,
	combout => \RAM|ram~539_combout\);

-- Location: FF_X16_Y4_N8
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
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: LABCELL_X16_Y4_N6
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~18_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: LABCELL_X16_Y4_N39
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \RAM|ram~539_combout\ & ( \RAM|ram~540_combout\ & ( !\ROM|memROM~11_combout\ ) ) ) # ( !\RAM|ram~539_combout\ & ( \RAM|ram~540_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) ) # ( \RAM|ram~539_combout\ & ( 
-- !\RAM|ram~540_combout\ & ( (\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \RAM|ALT_INV_ram~539_combout\,
	dataf => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: LABCELL_X16_Y4_N3
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~541_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: MLABCELL_X18_Y4_N42
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~542_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~542_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~542_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~542_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: LABCELL_X17_Y4_N18
\CPU|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[3]~feeder_combout\ = ( \CPU|ULA1|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X17_Y4_N19
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[3]~feeder_combout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X16_Y4_N20
\logica_LED|LED0to7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(3));

-- Location: FF_X16_Y4_N59
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: LABCELL_X16_Y4_N12
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~19_q\ & !\ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~19_q\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: FF_X16_Y4_N17
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: LABCELL_X16_Y4_N15
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~27_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~27_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X16_Y4_N9
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \RAM|ram~543_combout\ & ( (!\ROM|memROM~11_combout\ & ((\ROM|memROM~4_combout\) # (\RAM|ram~544_combout\))) ) ) # ( !\RAM|ram~543_combout\ & ( (!\ROM|memROM~11_combout\ & (\RAM|ram~544_combout\ & !\ROM|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X16_Y4_N24
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\ROM|memROM~10_combout\ & ( \RAM|ram~545_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: MLABCELL_X18_Y4_N45
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~546_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~546_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~546_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~546_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

-- Location: LABCELL_X17_Y4_N12
\CPU|REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[4]~feeder_combout\ = ( \CPU|ULA1|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|REGA|DOUT[4]~feeder_combout\);

-- Location: FF_X17_Y4_N14
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[4]~feeder_combout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: LABCELL_X17_Y4_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~546_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~546_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~546_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~546_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ 
-- & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X17_Y4_N15
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~546_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\))) ) ) 
-- # ( !\CPU|ULA1|Add0~17_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~546_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X17_Y4_N13
\CPU|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[4]~feeder_combout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X16_Y4_N28
\logica_LED|LED0to7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(4));

-- Location: FF_X18_Y3_N40
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: MLABCELL_X18_Y3_N36
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \RAM|ram~28_q\ & ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~28_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~547_combout\);

-- Location: FF_X18_Y3_N35
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: MLABCELL_X18_Y3_N30
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~2_combout\ & ( (\RAM|ram~20_q\ & !\ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~548_combout\);

-- Location: MLABCELL_X18_Y3_N42
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \RAM|ram~547_combout\ & ( \RAM|ram~548_combout\ & ( !\ROM|memROM~11_combout\ ) ) ) # ( !\RAM|ram~547_combout\ & ( \RAM|ram~548_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) ) # ( \RAM|ram~547_combout\ & ( 
-- !\RAM|ram~548_combout\ & ( (\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \RAM|ALT_INV_ram~547_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~549_combout\);

-- Location: MLABCELL_X18_Y3_N9
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \RAM|ram~549_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~550_combout\);

-- Location: LABCELL_X17_Y4_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~550_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~550_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~550_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~550_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ 
-- & (\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X17_Y4_N57
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \RAM|ram~550_combout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) # (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\) # ((\ROM|memROM~11_combout\)))) 
-- ) ) # ( !\RAM|ram~550_combout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) # (\CPU|DEC_instrucao|saida[4]~2_combout\ & (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	dataf => \RAM|ALT_INV_ram~550_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X17_Y4_N55
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[5]~feeder_combout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: MLABCELL_X18_Y4_N48
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~550_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~550_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~550_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~550_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X17_Y4_N54
\CPU|REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[5]~feeder_combout\ = ( \CPU|ULA1|Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|REGA|DOUT[5]~feeder_combout\);

-- Location: FF_X17_Y4_N56
\CPU|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[5]~feeder_combout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y4_N6
\logica_LED|LED0to7|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED0to7|DOUT[5]~feeder_combout\ = \CPU|REGA|DOUT[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \logica_LED|LED0to7|DOUT[5]~feeder_combout\);

-- Location: FF_X18_Y4_N8
\logica_LED|LED0to7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \logica_LED|LED0to7|DOUT[5]~feeder_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(5));

-- Location: FF_X18_Y3_N2
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: MLABCELL_X18_Y3_N0
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~29_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~29_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: FF_X18_Y3_N56
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: MLABCELL_X18_Y3_N48
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_ram~21_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~552_combout\);

-- Location: MLABCELL_X18_Y3_N12
\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \RAM|ram~551_combout\ & ( \RAM|ram~552_combout\ & ( !\ROM|memROM~11_combout\ ) ) ) # ( !\RAM|ram~551_combout\ & ( \RAM|ram~552_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) ) # ( \RAM|ram~551_combout\ & ( 
-- !\RAM|ram~552_combout\ & ( (\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000010101010000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \RAM|ALT_INV_ram~551_combout\,
	dataf => \RAM|ALT_INV_ram~552_combout\,
	combout => \RAM|ram~553_combout\);

-- Location: MLABCELL_X18_Y3_N21
\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \RAM|ram~553_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~554_combout\);

-- Location: MLABCELL_X18_Y4_N51
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~554_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~554_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~554_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~554_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: MLABCELL_X18_Y4_N0
\CPU|REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[6]~feeder_combout\ = ( \CPU|ULA1|Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|REGA|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X17_Y4_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~554_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~554_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~554_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~554_combout\))) # (\CPU|DEC_instrucao|Equal10~0_combout\ 
-- & (\ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: MLABCELL_X18_Y4_N3
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~554_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\))) ) ) 
-- # ( !\CPU|ULA1|Add0~25_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~554_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X18_Y4_N1
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[6]~feeder_combout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X18_Y4_N58
\logica_LED|LED0to7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(6));

-- Location: FF_X18_Y3_N59
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: MLABCELL_X18_Y3_N57
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \RAM|ram~22_q\ & ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_ram~22_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~556_combout\);

-- Location: FF_X18_Y3_N53
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: MLABCELL_X18_Y3_N51
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~12_combout\ & \RAM|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~30_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: MLABCELL_X18_Y3_N27
\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \RAM|ram~556_combout\ & ( \RAM|ram~555_combout\ & ( !\ROM|memROM~11_combout\ ) ) ) # ( !\RAM|ram~556_combout\ & ( \RAM|ram~555_combout\ & ( (\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) ) # ( \RAM|ram~556_combout\ & ( 
-- !\RAM|ram~555_combout\ & ( (!\ROM|memROM~4_combout\ & !\ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datae => \RAM|ALT_INV_ram~556_combout\,
	dataf => \RAM|ALT_INV_ram~555_combout\,
	combout => \RAM|ram~557_combout\);

-- Location: MLABCELL_X18_Y3_N3
\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \RAM|ram~557_combout\ & ( !\ROM|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~558_combout\);

-- Location: LABCELL_X17_Y4_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((\RAM|ram~558_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((\RAM|ram~558_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT[7]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~558_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X17_Y4_N27
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|DEC_instrucao|saida[4]~2_combout\) # ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~558_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~11_combout\))) ) ) 
-- # ( !\CPU|ULA1|Add0~29_sumout\ & ( (\CPU|DEC_instrucao|saida[4]~2_combout\ & ((!\CPU|DEC_instrucao|saida[6]~1_combout\ & ((\RAM|ram~558_combout\))) # (\CPU|DEC_instrucao|saida[6]~1_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[4]~2_combout\,
	datad => \RAM|ALT_INV_ram~558_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X17_Y4_N25
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[7]~feeder_combout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: MLABCELL_X18_Y4_N54
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DEC_instrucao|saida[4]~0_combout\ & (((!\RAM|ram~558_combout\)))) # (\CPU|DEC_instrucao|saida[4]~0_combout\ & ((!\CPU|DEC_instrucao|Equal10~0_combout\ & ((!\RAM|ram~558_combout\))) # 
-- (\CPU|DEC_instrucao|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[4]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~558_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X17_Y4_N24
\CPU|REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[7]~feeder_combout\ = ( \CPU|ULA1|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|REGA|DOUT[7]~feeder_combout\);

-- Location: FF_X17_Y4_N26
\CPU|REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[7]~feeder_combout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DEC_instrucao|Equal10~1_combout\,
	ena => \CPU|DEC_instrucao|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X18_Y4_N34
\logica_LED|LED0to7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(7));

-- Location: LABCELL_X16_Y3_N51
\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = ( \ROM|memROM~1_combout\ & ( (\ROM|memROM~3_combout\ & (!\CPU|PC|DOUT\(8) & !\ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \logica_LED|comb~1_combout\);

-- Location: LABCELL_X16_Y2_N48
\logica_LED|LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED8|DOUT~0_combout\ = ( \RAM|process_0~2_combout\ & ( \ROM|memROM~6_combout\ & ( (!\RAM|process_0~0_combout\ & (((\logica_LED|LED8|DOUT~q\)))) # (\RAM|process_0~0_combout\ & ((!\logica_LED|comb~1_combout\ & ((\logica_LED|LED8|DOUT~q\))) # 
-- (\logica_LED|comb~1_combout\ & (\CPU|REGA|DOUT\(0))))) ) ) ) # ( !\RAM|process_0~2_combout\ & ( \ROM|memROM~6_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) ) # ( \RAM|process_0~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) ) # ( 
-- !\RAM|process_0~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \logica_LED|LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGA|ALT_INV_DOUT\(0),
	datab => \RAM|ALT_INV_process_0~0_combout\,
	datac => \logica_LED|LED8|ALT_INV_DOUT~q\,
	datad => \logica_LED|ALT_INV_comb~1_combout\,
	datae => \RAM|ALT_INV_process_0~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \logica_LED|LED8|DOUT~0_combout\);

-- Location: FF_X16_Y2_N53
\logica_LED|LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \logica_LED|LED8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED8|DOUT~q\);

-- Location: LABCELL_X16_Y2_N39
\logica_LED|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~2_combout\ = ( \RAM|process_0~0_combout\ & ( \ROM|memROM~6_combout\ & ( (\RAM|process_0~2_combout\ & !\ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~2_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \logica_LED|comb~2_combout\);

-- Location: LABCELL_X16_Y2_N45
\logica_LED|LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED9|DOUT~0_combout\ = ( \CPU|REGA|DOUT\(0) & ( \logica_LED|comb~2_combout\ & ( (\logica_LED|LED9|DOUT~q\) # (\ROM|memROM~2_combout\) ) ) ) # ( !\CPU|REGA|DOUT\(0) & ( \logica_LED|comb~2_combout\ & ( (!\ROM|memROM~2_combout\ & 
-- \logica_LED|LED9|DOUT~q\) ) ) ) # ( \CPU|REGA|DOUT\(0) & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED9|DOUT~q\ ) ) ) # ( !\CPU|REGA|DOUT\(0) & ( !\logica_LED|comb~2_combout\ & ( \logica_LED|LED9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \logica_LED|LED9|ALT_INV_DOUT~q\,
	datae => \CPU|REGA|ALT_INV_DOUT\(0),
	dataf => \logica_LED|ALT_INV_comb~2_combout\,
	combout => \logica_LED|LED9|DOUT~0_combout\);

-- Location: FF_X16_Y2_N44
\logica_LED|LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \logica_LED|LED9|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED9|DOUT~q\);

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

-- Location: IOIBUF_X54_Y16_N4
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X34_Y42_N3
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


