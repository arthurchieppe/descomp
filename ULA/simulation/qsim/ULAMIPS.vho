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

-- DATE "11/18/2022 20:24:22"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULAMIPS IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	decoder : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0)
	);
END ULAMIPS;

ARCHITECTURE structure OF ULAMIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_decoder : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \decoder[2]~input_o\ : std_logic;
SIGNAL \decoder[3]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \B_mux[2]~0_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \A_mux[2]~0_combout\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \B_mux[3]~1_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \A_mux[3]~1_combout\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \FULLADDER|Cout~0_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~1_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~2_combout\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \B_mux[5]~2_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \A_mux[5]~2_combout\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \B_mux[6]~3_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \A_mux[6]~3_combout\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \B_mux[7]~4_combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \A_mux[7]~4_combout\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \B_mux[8]~5_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \A_mux[8]~5_combout\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \FULLADDER|Cout~3_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~4_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~5_combout\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \B_mux[10]~6_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \A_mux[10]~6_combout\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \B_mux[11]~7_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \A_mux[11]~7_combout\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \B_mux[12]~8_combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \A_mux[12]~8_combout\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \B_mux[13]~9_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \A_mux[13]~9_combout\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \B_mux[14]~10_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \FULLADDER|Cout~6_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~7_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~8_combout\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \B_mux[15]~11_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \A_mux[15]~10_combout\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \B_mux[16]~12_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \A_mux[16]~11_combout\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \B_mux[17]~13_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \A_mux[17]~12_combout\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \B_mux[18]~14_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \A_mux[18]~13_combout\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \B_mux[19]~15_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \FULLADDER|Cout~9_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~10_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~11_combout\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \B_mux[20]~16_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \A_mux[20]~14_combout\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \B_mux[21]~17_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \A_mux[21]~15_combout\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \B_mux[22]~18_combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \A_mux[22]~16_combout\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \B_mux[23]~19_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \A_mux[23]~17_combout\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \B_mux[24]~20_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \A_mux[24]~18_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~12_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~13_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~14_combout\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \B_mux[25]~21_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \A_mux[25]~19_combout\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \B_mux[26]~22_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \A_mux[26]~20_combout\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \B_mux[27]~23_combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \A_mux[27]~21_combout\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \B_mux[28]~24_combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \A_mux[28]~22_combout\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \B_mux[29]~25_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \A_mux[29]~23_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~15_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~16_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~17_combout\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \B_mux[30]~26_combout\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \A_mux[30]~24_combout\ : std_logic;
SIGNAL \decoder[0]~input_o\ : std_logic;
SIGNAL \decoder[1]~input_o\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \B_mux[31]~27_combout\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \B_mux[1]~28_combout\ : std_logic;
SIGNAL \FULLADDER|Cout[0]~18_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \B_mux[4]~29_combout\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \B_mux[9]~30_combout\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;
SIGNAL \saida~16_combout\ : std_logic;
SIGNAL \saida~17_combout\ : std_logic;
SIGNAL \saida~18_combout\ : std_logic;
SIGNAL \saida~19_combout\ : std_logic;
SIGNAL \saida~20_combout\ : std_logic;
SIGNAL \saida~21_combout\ : std_logic;
SIGNAL \saida~22_combout\ : std_logic;
SIGNAL \saida~23_combout\ : std_logic;
SIGNAL \saida~24_combout\ : std_logic;
SIGNAL \saida~25_combout\ : std_logic;
SIGNAL \saida~26_combout\ : std_logic;
SIGNAL \saida~27_combout\ : std_logic;
SIGNAL \saida~28_combout\ : std_logic;
SIGNAL \saida~29_combout\ : std_logic;
SIGNAL \saida~30_combout\ : std_logic;
SIGNAL \FULLADDER|Cout~19_combout\ : std_logic;
SIGNAL \saida~31_combout\ : std_logic;
SIGNAL \saida~32_combout\ : std_logic;
SIGNAL \saida~33_combout\ : std_logic;
SIGNAL \saida~34_combout\ : std_logic;
SIGNAL \saida~35_combout\ : std_logic;
SIGNAL \saida~36_combout\ : std_logic;
SIGNAL \FULLADDER|Cout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_decoder[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_decoder[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_decoder[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_decoder[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_mux[17]~13_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout\ : std_logic_vector(30 DOWNTO 1);
SIGNAL \ALT_INV_A_mux[16]~11_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[16]~12_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[15]~10_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[15]~11_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~8_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~7_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~6_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[14]~10_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[13]~9_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[13]~9_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[12]~8_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[12]~8_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[11]~7_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[11]~7_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[10]~6_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[10]~6_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~5_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~4_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~3_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[8]~5_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[8]~5_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[7]~4_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[7]~4_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[6]~3_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[6]~3_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[5]~2_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[5]~2_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~2_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_saida~32_combout\ : std_logic;
SIGNAL \ALT_INV_saida~31_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~19_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[9]~30_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[4]~29_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout[0]~18_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[1]~28_combout\ : std_logic;
SIGNAL \ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[31]~27_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[30]~24_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[30]~26_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~17_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~16_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[29]~23_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[29]~25_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[28]~22_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[28]~24_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[27]~21_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[27]~23_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[26]~20_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[26]~22_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[25]~19_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[25]~21_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~14_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~13_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~12_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[24]~18_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[24]~20_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[23]~17_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[23]~19_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[22]~16_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[22]~18_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[21]~15_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[21]~17_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[20]~14_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[20]~16_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~11_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~10_combout\ : std_logic;
SIGNAL \FULLADDER|ALT_INV_Cout~9_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[19]~15_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[18]~13_combout\ : std_logic;
SIGNAL \ALT_INV_B_mux[18]~14_combout\ : std_logic;
SIGNAL \ALT_INV_A_mux[17]~12_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_decoder <= decoder;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_decoder[1]~input_o\ <= NOT \decoder[1]~input_o\;
\ALT_INV_decoder[0]~input_o\ <= NOT \decoder[0]~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_decoder[3]~input_o\ <= NOT \decoder[3]~input_o\;
\ALT_INV_decoder[2]~input_o\ <= NOT \decoder[2]~input_o\;
\ALT_INV_B_mux[17]~13_combout\ <= NOT \B_mux[17]~13_combout\;
\FULLADDER|ALT_INV_Cout\(16) <= NOT \FULLADDER|Cout\(16);
\ALT_INV_A_mux[16]~11_combout\ <= NOT \A_mux[16]~11_combout\;
\ALT_INV_B_mux[16]~12_combout\ <= NOT \B_mux[16]~12_combout\;
\ALT_INV_A_mux[15]~10_combout\ <= NOT \A_mux[15]~10_combout\;
\ALT_INV_B_mux[15]~11_combout\ <= NOT \B_mux[15]~11_combout\;
\FULLADDER|ALT_INV_Cout~8_combout\ <= NOT \FULLADDER|Cout~8_combout\;
\FULLADDER|ALT_INV_Cout~7_combout\ <= NOT \FULLADDER|Cout~7_combout\;
\FULLADDER|ALT_INV_Cout~6_combout\ <= NOT \FULLADDER|Cout~6_combout\;
\ALT_INV_B_mux[14]~10_combout\ <= NOT \B_mux[14]~10_combout\;
\ALT_INV_A_mux[13]~9_combout\ <= NOT \A_mux[13]~9_combout\;
\ALT_INV_B_mux[13]~9_combout\ <= NOT \B_mux[13]~9_combout\;
\ALT_INV_A_mux[12]~8_combout\ <= NOT \A_mux[12]~8_combout\;
\ALT_INV_B_mux[12]~8_combout\ <= NOT \B_mux[12]~8_combout\;
\FULLADDER|ALT_INV_Cout\(11) <= NOT \FULLADDER|Cout\(11);
\ALT_INV_A_mux[11]~7_combout\ <= NOT \A_mux[11]~7_combout\;
\ALT_INV_B_mux[11]~7_combout\ <= NOT \B_mux[11]~7_combout\;
\ALT_INV_A_mux[10]~6_combout\ <= NOT \A_mux[10]~6_combout\;
\ALT_INV_B_mux[10]~6_combout\ <= NOT \B_mux[10]~6_combout\;
\FULLADDER|ALT_INV_Cout~5_combout\ <= NOT \FULLADDER|Cout~5_combout\;
\FULLADDER|ALT_INV_Cout~4_combout\ <= NOT \FULLADDER|Cout~4_combout\;
\FULLADDER|ALT_INV_Cout~3_combout\ <= NOT \FULLADDER|Cout~3_combout\;
\ALT_INV_A_mux[8]~5_combout\ <= NOT \A_mux[8]~5_combout\;
\ALT_INV_B_mux[8]~5_combout\ <= NOT \B_mux[8]~5_combout\;
\ALT_INV_A_mux[7]~4_combout\ <= NOT \A_mux[7]~4_combout\;
\ALT_INV_B_mux[7]~4_combout\ <= NOT \B_mux[7]~4_combout\;
\FULLADDER|ALT_INV_Cout\(6) <= NOT \FULLADDER|Cout\(6);
\ALT_INV_A_mux[6]~3_combout\ <= NOT \A_mux[6]~3_combout\;
\ALT_INV_B_mux[6]~3_combout\ <= NOT \B_mux[6]~3_combout\;
\ALT_INV_A_mux[5]~2_combout\ <= NOT \A_mux[5]~2_combout\;
\ALT_INV_B_mux[5]~2_combout\ <= NOT \B_mux[5]~2_combout\;
\FULLADDER|ALT_INV_Cout~2_combout\ <= NOT \FULLADDER|Cout~2_combout\;
\FULLADDER|ALT_INV_Cout~1_combout\ <= NOT \FULLADDER|Cout~1_combout\;
\FULLADDER|ALT_INV_Cout~0_combout\ <= NOT \FULLADDER|Cout~0_combout\;
\ALT_INV_A_mux[3]~1_combout\ <= NOT \A_mux[3]~1_combout\;
\ALT_INV_B_mux[3]~1_combout\ <= NOT \B_mux[3]~1_combout\;
\ALT_INV_A_mux[2]~0_combout\ <= NOT \A_mux[2]~0_combout\;
\ALT_INV_B_mux[2]~0_combout\ <= NOT \B_mux[2]~0_combout\;
\FULLADDER|ALT_INV_Cout\(1) <= NOT \FULLADDER|Cout\(1);
\FULLADDER|ALT_INV_Cout\(30) <= NOT \FULLADDER|Cout\(30);
\FULLADDER|ALT_INV_Cout\(28) <= NOT \FULLADDER|Cout\(28);
\ALT_INV_saida~32_combout\ <= NOT \saida~32_combout\;
\ALT_INV_saida~31_combout\ <= NOT \saida~31_combout\;
\FULLADDER|ALT_INV_Cout~19_combout\ <= NOT \FULLADDER|Cout~19_combout\;
\FULLADDER|ALT_INV_Cout\(25) <= NOT \FULLADDER|Cout\(25);
\FULLADDER|ALT_INV_Cout\(23) <= NOT \FULLADDER|Cout\(23);
\FULLADDER|ALT_INV_Cout\(22) <= NOT \FULLADDER|Cout\(22);
\FULLADDER|ALT_INV_Cout\(20) <= NOT \FULLADDER|Cout\(20);
\FULLADDER|ALT_INV_Cout\(19) <= NOT \FULLADDER|Cout\(19);
\FULLADDER|ALT_INV_Cout\(18) <= NOT \FULLADDER|Cout\(18);
\FULLADDER|ALT_INV_Cout\(17) <= NOT \FULLADDER|Cout\(17);
\FULLADDER|ALT_INV_Cout\(15) <= NOT \FULLADDER|Cout\(15);
\FULLADDER|ALT_INV_Cout\(14) <= NOT \FULLADDER|Cout\(14);
\FULLADDER|ALT_INV_Cout\(13) <= NOT \FULLADDER|Cout\(13);
\FULLADDER|ALT_INV_Cout\(12) <= NOT \FULLADDER|Cout\(12);
\FULLADDER|ALT_INV_Cout\(10) <= NOT \FULLADDER|Cout\(10);
\FULLADDER|ALT_INV_Cout\(9) <= NOT \FULLADDER|Cout\(9);
\ALT_INV_B_mux[9]~30_combout\ <= NOT \B_mux[9]~30_combout\;
\FULLADDER|ALT_INV_Cout\(8) <= NOT \FULLADDER|Cout\(8);
\FULLADDER|ALT_INV_Cout\(7) <= NOT \FULLADDER|Cout\(7);
\FULLADDER|ALT_INV_Cout\(5) <= NOT \FULLADDER|Cout\(5);
\FULLADDER|ALT_INV_Cout\(4) <= NOT \FULLADDER|Cout\(4);
\ALT_INV_B_mux[4]~29_combout\ <= NOT \B_mux[4]~29_combout\;
\FULLADDER|ALT_INV_Cout\(3) <= NOT \FULLADDER|Cout\(3);
\FULLADDER|ALT_INV_Cout\(2) <= NOT \FULLADDER|Cout\(2);
\FULLADDER|ALT_INV_Cout[0]~18_combout\ <= NOT \FULLADDER|Cout[0]~18_combout\;
\ALT_INV_B_mux[1]~28_combout\ <= NOT \B_mux[1]~28_combout\;
\ALT_INV_saida~2_combout\ <= NOT \saida~2_combout\;
\ALT_INV_saida~1_combout\ <= NOT \saida~1_combout\;
\ALT_INV_saida~0_combout\ <= NOT \saida~0_combout\;
\ALT_INV_B_mux[31]~27_combout\ <= NOT \B_mux[31]~27_combout\;
\ALT_INV_A_mux[30]~24_combout\ <= NOT \A_mux[30]~24_combout\;
\ALT_INV_B_mux[30]~26_combout\ <= NOT \B_mux[30]~26_combout\;
\FULLADDER|ALT_INV_Cout~17_combout\ <= NOT \FULLADDER|Cout~17_combout\;
\FULLADDER|ALT_INV_Cout~16_combout\ <= NOT \FULLADDER|Cout~16_combout\;
\FULLADDER|ALT_INV_Cout~15_combout\ <= NOT \FULLADDER|Cout~15_combout\;
\ALT_INV_A_mux[29]~23_combout\ <= NOT \A_mux[29]~23_combout\;
\ALT_INV_B_mux[29]~25_combout\ <= NOT \B_mux[29]~25_combout\;
\ALT_INV_A_mux[28]~22_combout\ <= NOT \A_mux[28]~22_combout\;
\ALT_INV_B_mux[28]~24_combout\ <= NOT \B_mux[28]~24_combout\;
\ALT_INV_A_mux[27]~21_combout\ <= NOT \A_mux[27]~21_combout\;
\ALT_INV_B_mux[27]~23_combout\ <= NOT \B_mux[27]~23_combout\;
\FULLADDER|ALT_INV_Cout\(26) <= NOT \FULLADDER|Cout\(26);
\ALT_INV_A_mux[26]~20_combout\ <= NOT \A_mux[26]~20_combout\;
\ALT_INV_B_mux[26]~22_combout\ <= NOT \B_mux[26]~22_combout\;
\ALT_INV_A_mux[25]~19_combout\ <= NOT \A_mux[25]~19_combout\;
\ALT_INV_B_mux[25]~21_combout\ <= NOT \B_mux[25]~21_combout\;
\FULLADDER|ALT_INV_Cout~14_combout\ <= NOT \FULLADDER|Cout~14_combout\;
\FULLADDER|ALT_INV_Cout~13_combout\ <= NOT \FULLADDER|Cout~13_combout\;
\FULLADDER|ALT_INV_Cout~12_combout\ <= NOT \FULLADDER|Cout~12_combout\;
\ALT_INV_A_mux[24]~18_combout\ <= NOT \A_mux[24]~18_combout\;
\ALT_INV_B_mux[24]~20_combout\ <= NOT \B_mux[24]~20_combout\;
\ALT_INV_A_mux[23]~17_combout\ <= NOT \A_mux[23]~17_combout\;
\ALT_INV_B_mux[23]~19_combout\ <= NOT \B_mux[23]~19_combout\;
\ALT_INV_A_mux[22]~16_combout\ <= NOT \A_mux[22]~16_combout\;
\ALT_INV_B_mux[22]~18_combout\ <= NOT \B_mux[22]~18_combout\;
\FULLADDER|ALT_INV_Cout\(21) <= NOT \FULLADDER|Cout\(21);
\ALT_INV_A_mux[21]~15_combout\ <= NOT \A_mux[21]~15_combout\;
\ALT_INV_B_mux[21]~17_combout\ <= NOT \B_mux[21]~17_combout\;
\ALT_INV_A_mux[20]~14_combout\ <= NOT \A_mux[20]~14_combout\;
\ALT_INV_B_mux[20]~16_combout\ <= NOT \B_mux[20]~16_combout\;
\FULLADDER|ALT_INV_Cout~11_combout\ <= NOT \FULLADDER|Cout~11_combout\;
\FULLADDER|ALT_INV_Cout~10_combout\ <= NOT \FULLADDER|Cout~10_combout\;
\FULLADDER|ALT_INV_Cout~9_combout\ <= NOT \FULLADDER|Cout~9_combout\;
\ALT_INV_B_mux[19]~15_combout\ <= NOT \B_mux[19]~15_combout\;
\ALT_INV_A_mux[18]~13_combout\ <= NOT \A_mux[18]~13_combout\;
\ALT_INV_B_mux[18]~14_combout\ <= NOT \B_mux[18]~14_combout\;
\ALT_INV_A_mux[17]~12_combout\ <= NOT \A_mux[17]~12_combout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~5_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~6_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~7_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~8_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~9_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~10_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~11_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~12_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~13_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~14_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~15_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~16_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~17_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~18_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~19_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~20_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~21_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~22_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~23_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~24_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~25_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~26_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~27_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~28_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~29_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~30_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~33_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~34_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~35_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~36_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\decoder[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder(2),
	o => \decoder[2]~input_o\);

\decoder[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder(3),
	o => \decoder[3]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\FULLADDER|Cout[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(1) = ( \entradaB[0]~input_o\ & ( \entradaA[0]~input_o\ & ( (!\entradaA[1]~input_o\ & (!\decoder[2]~input_o\ $ (((!\entradaB[1]~input_o\))))) # (\entradaA[1]~input_o\ & (((!\decoder[3]~input_o\)))) ) ) ) # ( !\entradaB[0]~input_o\ & ( 
-- \entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\decoder[2]~input_o\)) # (\entradaB[1]~input_o\ & ((!\decoder[3]~input_o\ $ (!\entradaA[1]~input_o\)))) ) ) ) # ( \entradaB[0]~input_o\ & ( !\entradaA[0]~input_o\ & ( (!\entradaA[1]~input_o\ & 
-- (((\decoder[3]~input_o\)))) # (\entradaA[1]~input_o\ & (!\decoder[2]~input_o\ $ (((!\entradaB[1]~input_o\))))) ) ) ) # ( !\entradaB[0]~input_o\ & ( !\entradaA[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\decoder[2]~input_o\)) # (\entradaB[1]~input_o\ & 
-- ((!\decoder[3]~input_o\ $ (!\entradaA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101011100001100110101101001010011010111000101101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaA[1]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	combout => \FULLADDER|Cout\(1));

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\B_mux[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[2]~0_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[2]~input_o\,
	combout => \B_mux[2]~0_combout\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\A_mux[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[2]~0_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	combout => \A_mux[2]~0_combout\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\B_mux[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[3]~1_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	combout => \B_mux[3]~1_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\A_mux[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[3]~1_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[3]~input_o\,
	combout => \A_mux[3]~1_combout\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\FULLADDER|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~0_combout\ = !\decoder[2]~input_o\ $ (!\decoder[3]~input_o\ $ (!\entradaB[4]~input_o\ $ (!\entradaA[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	combout => \FULLADDER|Cout~0_combout\);

\FULLADDER|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~1_combout\ = ( \A_mux[3]~1_combout\ & ( \FULLADDER|Cout~0_combout\ & ( ((!\FULLADDER|Cout\(1) & (\B_mux[2]~0_combout\ & \A_mux[2]~0_combout\)) # (\FULLADDER|Cout\(1) & ((\A_mux[2]~0_combout\) # (\B_mux[2]~0_combout\)))) # 
-- (\B_mux[3]~1_combout\) ) ) ) # ( !\A_mux[3]~1_combout\ & ( \FULLADDER|Cout~0_combout\ & ( (\B_mux[3]~1_combout\ & ((!\FULLADDER|Cout\(1) & (\B_mux[2]~0_combout\ & \A_mux[2]~0_combout\)) # (\FULLADDER|Cout\(1) & ((\A_mux[2]~0_combout\) # 
-- (\B_mux[2]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(1),
	datab => \ALT_INV_B_mux[2]~0_combout\,
	datac => \ALT_INV_A_mux[2]~0_combout\,
	datad => \ALT_INV_B_mux[3]~1_combout\,
	datae => \ALT_INV_A_mux[3]~1_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~0_combout\,
	combout => \FULLADDER|Cout~1_combout\);

\FULLADDER|Cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~2_combout\ = (!\decoder[2]~input_o\ & (\entradaB[4]~input_o\ & (!\decoder[3]~input_o\ $ (!\entradaA[4]~input_o\)))) # (\decoder[2]~input_o\ & (!\entradaB[4]~input_o\ & (!\decoder[3]~input_o\ $ (!\entradaA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	datad => \ALT_INV_entradaA[4]~input_o\,
	combout => \FULLADDER|Cout~2_combout\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\B_mux[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[5]~2_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \B_mux[5]~2_combout\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\A_mux[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[5]~2_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[5]~input_o\,
	combout => \A_mux[5]~2_combout\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\B_mux[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[6]~3_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	combout => \B_mux[6]~3_combout\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\A_mux[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[6]~3_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[6]~input_o\,
	combout => \A_mux[6]~3_combout\);

\FULLADDER|Cout[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(6) = ( !\B_mux[6]~3_combout\ & ( \A_mux[6]~3_combout\ & ( (!\B_mux[5]~2_combout\ & ((!\A_mux[5]~2_combout\) # ((!\FULLADDER|Cout~1_combout\ & !\FULLADDER|Cout~2_combout\)))) # (\B_mux[5]~2_combout\ & (!\FULLADDER|Cout~1_combout\ & 
-- (!\FULLADDER|Cout~2_combout\ & !\A_mux[5]~2_combout\))) ) ) ) # ( \B_mux[6]~3_combout\ & ( !\A_mux[6]~3_combout\ & ( (!\B_mux[5]~2_combout\ & ((!\A_mux[5]~2_combout\) # ((!\FULLADDER|Cout~1_combout\ & !\FULLADDER|Cout~2_combout\)))) # 
-- (\B_mux[5]~2_combout\ & (!\FULLADDER|Cout~1_combout\ & (!\FULLADDER|Cout~2_combout\ & !\A_mux[5]~2_combout\))) ) ) ) # ( !\B_mux[6]~3_combout\ & ( !\A_mux[6]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~1_combout\,
	datab => \FULLADDER|ALT_INV_Cout~2_combout\,
	datac => \ALT_INV_B_mux[5]~2_combout\,
	datad => \ALT_INV_A_mux[5]~2_combout\,
	datae => \ALT_INV_B_mux[6]~3_combout\,
	dataf => \ALT_INV_A_mux[6]~3_combout\,
	combout => \FULLADDER|Cout\(6));

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\B_mux[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[7]~4_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	combout => \B_mux[7]~4_combout\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\A_mux[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[7]~4_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	combout => \A_mux[7]~4_combout\);

\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

\B_mux[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[8]~5_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[8]~input_o\,
	combout => \B_mux[8]~5_combout\);

\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

\A_mux[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[8]~5_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[8]~input_o\,
	combout => \A_mux[8]~5_combout\);

\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

\FULLADDER|Cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~3_combout\ = !\decoder[2]~input_o\ $ (!\decoder[3]~input_o\ $ (!\entradaB[9]~input_o\ $ (!\entradaA[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	combout => \FULLADDER|Cout~3_combout\);

\FULLADDER|Cout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~4_combout\ = ( \A_mux[8]~5_combout\ & ( \FULLADDER|Cout~3_combout\ & ( ((!\FULLADDER|Cout\(6) & ((\A_mux[7]~4_combout\) # (\B_mux[7]~4_combout\))) # (\FULLADDER|Cout\(6) & (\B_mux[7]~4_combout\ & \A_mux[7]~4_combout\))) # 
-- (\B_mux[8]~5_combout\) ) ) ) # ( !\A_mux[8]~5_combout\ & ( \FULLADDER|Cout~3_combout\ & ( (\B_mux[8]~5_combout\ & ((!\FULLADDER|Cout\(6) & ((\A_mux[7]~4_combout\) # (\B_mux[7]~4_combout\))) # (\FULLADDER|Cout\(6) & (\B_mux[7]~4_combout\ & 
-- \A_mux[7]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(6),
	datab => \ALT_INV_B_mux[7]~4_combout\,
	datac => \ALT_INV_A_mux[7]~4_combout\,
	datad => \ALT_INV_B_mux[8]~5_combout\,
	datae => \ALT_INV_A_mux[8]~5_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~3_combout\,
	combout => \FULLADDER|Cout~4_combout\);

\FULLADDER|Cout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~5_combout\ = (!\decoder[2]~input_o\ & (\entradaB[9]~input_o\ & (!\decoder[3]~input_o\ $ (!\entradaA[9]~input_o\)))) # (\decoder[2]~input_o\ & (!\entradaB[9]~input_o\ & (!\decoder[3]~input_o\ $ (!\entradaA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	combout => \FULLADDER|Cout~5_combout\);

\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

\B_mux[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[10]~6_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[10]~input_o\,
	combout => \B_mux[10]~6_combout\);

\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

\A_mux[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[10]~6_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[10]~input_o\,
	combout => \A_mux[10]~6_combout\);

\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

\B_mux[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[11]~7_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[11]~input_o\,
	combout => \B_mux[11]~7_combout\);

\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

\A_mux[11]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[11]~7_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[11]~input_o\,
	combout => \A_mux[11]~7_combout\);

\FULLADDER|Cout[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(11) = ( !\B_mux[11]~7_combout\ & ( \A_mux[11]~7_combout\ & ( (!\B_mux[10]~6_combout\ & ((!\A_mux[10]~6_combout\) # ((!\FULLADDER|Cout~4_combout\ & !\FULLADDER|Cout~5_combout\)))) # (\B_mux[10]~6_combout\ & (!\FULLADDER|Cout~4_combout\ & 
-- (!\FULLADDER|Cout~5_combout\ & !\A_mux[10]~6_combout\))) ) ) ) # ( \B_mux[11]~7_combout\ & ( !\A_mux[11]~7_combout\ & ( (!\B_mux[10]~6_combout\ & ((!\A_mux[10]~6_combout\) # ((!\FULLADDER|Cout~4_combout\ & !\FULLADDER|Cout~5_combout\)))) # 
-- (\B_mux[10]~6_combout\ & (!\FULLADDER|Cout~4_combout\ & (!\FULLADDER|Cout~5_combout\ & !\A_mux[10]~6_combout\))) ) ) ) # ( !\B_mux[11]~7_combout\ & ( !\A_mux[11]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~4_combout\,
	datab => \FULLADDER|ALT_INV_Cout~5_combout\,
	datac => \ALT_INV_B_mux[10]~6_combout\,
	datad => \ALT_INV_A_mux[10]~6_combout\,
	datae => \ALT_INV_B_mux[11]~7_combout\,
	dataf => \ALT_INV_A_mux[11]~7_combout\,
	combout => \FULLADDER|Cout\(11));

\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

\B_mux[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[12]~8_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	combout => \B_mux[12]~8_combout\);

\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

\A_mux[12]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[12]~8_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	combout => \A_mux[12]~8_combout\);

\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

\B_mux[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[13]~9_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[13]~input_o\,
	combout => \B_mux[13]~9_combout\);

\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

\A_mux[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[13]~9_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[13]~input_o\,
	combout => \A_mux[13]~9_combout\);

\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

\B_mux[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[14]~10_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	combout => \B_mux[14]~10_combout\);

\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

\FULLADDER|Cout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~6_combout\ = !\decoder[3]~input_o\ $ (!\B_mux[14]~10_combout\ $ (\entradaA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_B_mux[14]~10_combout\,
	datac => \ALT_INV_entradaA[14]~input_o\,
	combout => \FULLADDER|Cout~6_combout\);

\FULLADDER|Cout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~7_combout\ = ( \A_mux[13]~9_combout\ & ( \FULLADDER|Cout~6_combout\ & ( ((!\FULLADDER|Cout\(11) & ((\A_mux[12]~8_combout\) # (\B_mux[12]~8_combout\))) # (\FULLADDER|Cout\(11) & (\B_mux[12]~8_combout\ & \A_mux[12]~8_combout\))) # 
-- (\B_mux[13]~9_combout\) ) ) ) # ( !\A_mux[13]~9_combout\ & ( \FULLADDER|Cout~6_combout\ & ( (\B_mux[13]~9_combout\ & ((!\FULLADDER|Cout\(11) & ((\A_mux[12]~8_combout\) # (\B_mux[12]~8_combout\))) # (\FULLADDER|Cout\(11) & (\B_mux[12]~8_combout\ & 
-- \A_mux[12]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(11),
	datab => \ALT_INV_B_mux[12]~8_combout\,
	datac => \ALT_INV_A_mux[12]~8_combout\,
	datad => \ALT_INV_B_mux[13]~9_combout\,
	datae => \ALT_INV_A_mux[13]~9_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~6_combout\,
	combout => \FULLADDER|Cout~7_combout\);

\FULLADDER|Cout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~8_combout\ = (\B_mux[14]~10_combout\ & (!\decoder[3]~input_o\ $ (!\entradaA[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_B_mux[14]~10_combout\,
	datac => \ALT_INV_entradaA[14]~input_o\,
	combout => \FULLADDER|Cout~8_combout\);

\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

\B_mux[15]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[15]~11_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[15]~input_o\,
	combout => \B_mux[15]~11_combout\);

\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

\A_mux[15]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[15]~10_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[15]~input_o\,
	combout => \A_mux[15]~10_combout\);

\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

\B_mux[16]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[16]~12_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \B_mux[16]~12_combout\);

\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

\A_mux[16]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[16]~11_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[16]~input_o\,
	combout => \A_mux[16]~11_combout\);

\FULLADDER|Cout[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(16) = ( !\B_mux[16]~12_combout\ & ( \A_mux[16]~11_combout\ & ( (!\B_mux[15]~11_combout\ & ((!\A_mux[15]~10_combout\) # ((!\FULLADDER|Cout~7_combout\ & !\FULLADDER|Cout~8_combout\)))) # (\B_mux[15]~11_combout\ & 
-- (!\FULLADDER|Cout~7_combout\ & (!\FULLADDER|Cout~8_combout\ & !\A_mux[15]~10_combout\))) ) ) ) # ( \B_mux[16]~12_combout\ & ( !\A_mux[16]~11_combout\ & ( (!\B_mux[15]~11_combout\ & ((!\A_mux[15]~10_combout\) # ((!\FULLADDER|Cout~7_combout\ & 
-- !\FULLADDER|Cout~8_combout\)))) # (\B_mux[15]~11_combout\ & (!\FULLADDER|Cout~7_combout\ & (!\FULLADDER|Cout~8_combout\ & !\A_mux[15]~10_combout\))) ) ) ) # ( !\B_mux[16]~12_combout\ & ( !\A_mux[16]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~7_combout\,
	datab => \FULLADDER|ALT_INV_Cout~8_combout\,
	datac => \ALT_INV_B_mux[15]~11_combout\,
	datad => \ALT_INV_A_mux[15]~10_combout\,
	datae => \ALT_INV_B_mux[16]~12_combout\,
	dataf => \ALT_INV_A_mux[16]~11_combout\,
	combout => \FULLADDER|Cout\(16));

\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

\B_mux[17]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[17]~13_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	combout => \B_mux[17]~13_combout\);

\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

\A_mux[17]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[17]~12_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	combout => \A_mux[17]~12_combout\);

\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

\B_mux[18]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[18]~14_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[18]~input_o\,
	combout => \B_mux[18]~14_combout\);

\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

\A_mux[18]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[18]~13_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[18]~input_o\,
	combout => \A_mux[18]~13_combout\);

\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

\B_mux[19]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[19]~15_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[19]~input_o\,
	combout => \B_mux[19]~15_combout\);

\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

\FULLADDER|Cout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~9_combout\ = !\decoder[3]~input_o\ $ (!\B_mux[19]~15_combout\ $ (\entradaA[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_B_mux[19]~15_combout\,
	datac => \ALT_INV_entradaA[19]~input_o\,
	combout => \FULLADDER|Cout~9_combout\);

\FULLADDER|Cout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~10_combout\ = ( \A_mux[18]~13_combout\ & ( \FULLADDER|Cout~9_combout\ & ( ((!\FULLADDER|Cout\(16) & ((\A_mux[17]~12_combout\) # (\B_mux[17]~13_combout\))) # (\FULLADDER|Cout\(16) & (\B_mux[17]~13_combout\ & \A_mux[17]~12_combout\))) # 
-- (\B_mux[18]~14_combout\) ) ) ) # ( !\A_mux[18]~13_combout\ & ( \FULLADDER|Cout~9_combout\ & ( (\B_mux[18]~14_combout\ & ((!\FULLADDER|Cout\(16) & ((\A_mux[17]~12_combout\) # (\B_mux[17]~13_combout\))) # (\FULLADDER|Cout\(16) & (\B_mux[17]~13_combout\ & 
-- \A_mux[17]~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(16),
	datab => \ALT_INV_B_mux[17]~13_combout\,
	datac => \ALT_INV_A_mux[17]~12_combout\,
	datad => \ALT_INV_B_mux[18]~14_combout\,
	datae => \ALT_INV_A_mux[18]~13_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~9_combout\,
	combout => \FULLADDER|Cout~10_combout\);

\FULLADDER|Cout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~11_combout\ = (\B_mux[19]~15_combout\ & (!\decoder[3]~input_o\ $ (!\entradaA[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_B_mux[19]~15_combout\,
	datac => \ALT_INV_entradaA[19]~input_o\,
	combout => \FULLADDER|Cout~11_combout\);

\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

\B_mux[20]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[20]~16_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[20]~input_o\,
	combout => \B_mux[20]~16_combout\);

\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

\A_mux[20]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[20]~14_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[20]~input_o\,
	combout => \A_mux[20]~14_combout\);

\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

\B_mux[21]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[21]~17_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	combout => \B_mux[21]~17_combout\);

\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

\A_mux[21]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[21]~15_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[21]~input_o\,
	combout => \A_mux[21]~15_combout\);

\FULLADDER|Cout[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(21) = ( !\B_mux[21]~17_combout\ & ( \A_mux[21]~15_combout\ & ( (!\B_mux[20]~16_combout\ & ((!\A_mux[20]~14_combout\) # ((!\FULLADDER|Cout~10_combout\ & !\FULLADDER|Cout~11_combout\)))) # (\B_mux[20]~16_combout\ & 
-- (!\FULLADDER|Cout~10_combout\ & (!\FULLADDER|Cout~11_combout\ & !\A_mux[20]~14_combout\))) ) ) ) # ( \B_mux[21]~17_combout\ & ( !\A_mux[21]~15_combout\ & ( (!\B_mux[20]~16_combout\ & ((!\A_mux[20]~14_combout\) # ((!\FULLADDER|Cout~10_combout\ & 
-- !\FULLADDER|Cout~11_combout\)))) # (\B_mux[20]~16_combout\ & (!\FULLADDER|Cout~10_combout\ & (!\FULLADDER|Cout~11_combout\ & !\A_mux[20]~14_combout\))) ) ) ) # ( !\B_mux[21]~17_combout\ & ( !\A_mux[21]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~10_combout\,
	datab => \FULLADDER|ALT_INV_Cout~11_combout\,
	datac => \ALT_INV_B_mux[20]~16_combout\,
	datad => \ALT_INV_A_mux[20]~14_combout\,
	datae => \ALT_INV_B_mux[21]~17_combout\,
	dataf => \ALT_INV_A_mux[21]~15_combout\,
	combout => \FULLADDER|Cout\(21));

\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

\B_mux[22]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[22]~18_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[22]~input_o\,
	combout => \B_mux[22]~18_combout\);

\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

\A_mux[22]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[22]~16_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	combout => \A_mux[22]~16_combout\);

\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

\B_mux[23]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[23]~19_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[23]~input_o\,
	combout => \B_mux[23]~19_combout\);

\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

\A_mux[23]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[23]~17_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[23]~input_o\,
	combout => \A_mux[23]~17_combout\);

\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

\B_mux[24]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[24]~20_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[24]~input_o\,
	combout => \B_mux[24]~20_combout\);

\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

\A_mux[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[24]~18_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[24]~input_o\,
	combout => \A_mux[24]~18_combout\);

\FULLADDER|Cout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~12_combout\ = !\B_mux[24]~20_combout\ $ (!\A_mux[24]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_mux[24]~20_combout\,
	datab => \ALT_INV_A_mux[24]~18_combout\,
	combout => \FULLADDER|Cout~12_combout\);

\FULLADDER|Cout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~13_combout\ = ( \A_mux[23]~17_combout\ & ( \FULLADDER|Cout~12_combout\ & ( ((!\FULLADDER|Cout\(21) & ((\A_mux[22]~16_combout\) # (\B_mux[22]~18_combout\))) # (\FULLADDER|Cout\(21) & (\B_mux[22]~18_combout\ & \A_mux[22]~16_combout\))) # 
-- (\B_mux[23]~19_combout\) ) ) ) # ( !\A_mux[23]~17_combout\ & ( \FULLADDER|Cout~12_combout\ & ( (\B_mux[23]~19_combout\ & ((!\FULLADDER|Cout\(21) & ((\A_mux[22]~16_combout\) # (\B_mux[22]~18_combout\))) # (\FULLADDER|Cout\(21) & (\B_mux[22]~18_combout\ & 
-- \A_mux[22]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(21),
	datab => \ALT_INV_B_mux[22]~18_combout\,
	datac => \ALT_INV_A_mux[22]~16_combout\,
	datad => \ALT_INV_B_mux[23]~19_combout\,
	datae => \ALT_INV_A_mux[23]~17_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~12_combout\,
	combout => \FULLADDER|Cout~13_combout\);

\FULLADDER|Cout~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~14_combout\ = (\B_mux[24]~20_combout\ & \A_mux[24]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_mux[24]~20_combout\,
	datab => \ALT_INV_A_mux[24]~18_combout\,
	combout => \FULLADDER|Cout~14_combout\);

\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

\B_mux[25]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[25]~21_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[25]~input_o\,
	combout => \B_mux[25]~21_combout\);

\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

\A_mux[25]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[25]~19_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[25]~input_o\,
	combout => \A_mux[25]~19_combout\);

\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

\B_mux[26]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[26]~22_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[26]~input_o\,
	combout => \B_mux[26]~22_combout\);

\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

\A_mux[26]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[26]~20_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[26]~input_o\,
	combout => \A_mux[26]~20_combout\);

\FULLADDER|Cout[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(26) = ( !\B_mux[26]~22_combout\ & ( \A_mux[26]~20_combout\ & ( (!\B_mux[25]~21_combout\ & ((!\A_mux[25]~19_combout\) # ((!\FULLADDER|Cout~13_combout\ & !\FULLADDER|Cout~14_combout\)))) # (\B_mux[25]~21_combout\ & 
-- (!\FULLADDER|Cout~13_combout\ & (!\FULLADDER|Cout~14_combout\ & !\A_mux[25]~19_combout\))) ) ) ) # ( \B_mux[26]~22_combout\ & ( !\A_mux[26]~20_combout\ & ( (!\B_mux[25]~21_combout\ & ((!\A_mux[25]~19_combout\) # ((!\FULLADDER|Cout~13_combout\ & 
-- !\FULLADDER|Cout~14_combout\)))) # (\B_mux[25]~21_combout\ & (!\FULLADDER|Cout~13_combout\ & (!\FULLADDER|Cout~14_combout\ & !\A_mux[25]~19_combout\))) ) ) ) # ( !\B_mux[26]~22_combout\ & ( !\A_mux[26]~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~13_combout\,
	datab => \FULLADDER|ALT_INV_Cout~14_combout\,
	datac => \ALT_INV_B_mux[25]~21_combout\,
	datad => \ALT_INV_A_mux[25]~19_combout\,
	datae => \ALT_INV_B_mux[26]~22_combout\,
	dataf => \ALT_INV_A_mux[26]~20_combout\,
	combout => \FULLADDER|Cout\(26));

\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

\B_mux[27]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[27]~23_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[27]~input_o\,
	combout => \B_mux[27]~23_combout\);

\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

\A_mux[27]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[27]~21_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	combout => \A_mux[27]~21_combout\);

\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

\B_mux[28]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[28]~24_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[28]~input_o\,
	combout => \B_mux[28]~24_combout\);

\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

\A_mux[28]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[28]~22_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[28]~input_o\,
	combout => \A_mux[28]~22_combout\);

\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

\B_mux[29]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[29]~25_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[29]~input_o\,
	combout => \B_mux[29]~25_combout\);

\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

\A_mux[29]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[29]~23_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[29]~input_o\,
	combout => \A_mux[29]~23_combout\);

\FULLADDER|Cout~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~15_combout\ = !\B_mux[29]~25_combout\ $ (!\A_mux[29]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_mux[29]~25_combout\,
	datab => \ALT_INV_A_mux[29]~23_combout\,
	combout => \FULLADDER|Cout~15_combout\);

\FULLADDER|Cout~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~16_combout\ = ( \A_mux[28]~22_combout\ & ( \FULLADDER|Cout~15_combout\ & ( ((!\FULLADDER|Cout\(26) & ((\A_mux[27]~21_combout\) # (\B_mux[27]~23_combout\))) # (\FULLADDER|Cout\(26) & (\B_mux[27]~23_combout\ & \A_mux[27]~21_combout\))) # 
-- (\B_mux[28]~24_combout\) ) ) ) # ( !\A_mux[28]~22_combout\ & ( \FULLADDER|Cout~15_combout\ & ( (\B_mux[28]~24_combout\ & ((!\FULLADDER|Cout\(26) & ((\A_mux[27]~21_combout\) # (\B_mux[27]~23_combout\))) # (\FULLADDER|Cout\(26) & (\B_mux[27]~23_combout\ & 
-- \A_mux[27]~21_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(26),
	datab => \ALT_INV_B_mux[27]~23_combout\,
	datac => \ALT_INV_A_mux[27]~21_combout\,
	datad => \ALT_INV_B_mux[28]~24_combout\,
	datae => \ALT_INV_A_mux[28]~22_combout\,
	dataf => \FULLADDER|ALT_INV_Cout~15_combout\,
	combout => \FULLADDER|Cout~16_combout\);

\FULLADDER|Cout~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~17_combout\ = (\B_mux[29]~25_combout\ & \A_mux[29]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_mux[29]~25_combout\,
	datab => \ALT_INV_A_mux[29]~23_combout\,
	combout => \FULLADDER|Cout~17_combout\);

\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

\B_mux[30]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[30]~26_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[30]~input_o\,
	combout => \B_mux[30]~26_combout\);

\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

\A_mux[30]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \A_mux[30]~24_combout\ = !\decoder[3]~input_o\ $ (!\entradaA[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[3]~input_o\,
	datab => \ALT_INV_entradaA[30]~input_o\,
	combout => \A_mux[30]~24_combout\);

\decoder[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder(0),
	o => \decoder[0]~input_o\);

\decoder[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decoder(1),
	o => \decoder[1]~input_o\);

\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

\B_mux[31]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[31]~27_combout\ = !\entradaB[31]~input_o\ $ (!\decoder[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_decoder[2]~input_o\,
	combout => \B_mux[31]~27_combout\);

\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \decoder[3]~input_o\ & ( (\decoder[0]~input_o\ & (\decoder[1]~input_o\ & ((!\entradaA[31]~input_o\) # (\B_mux[31]~27_combout\)))) ) ) # ( !\decoder[3]~input_o\ & ( (\decoder[0]~input_o\ & (\decoder[1]~input_o\ & 
-- ((\entradaA[31]~input_o\) # (\B_mux[31]~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010000000100000001000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_B_mux[31]~27_combout\,
	datad => \ALT_INV_entradaA[31]~input_o\,
	datae => \ALT_INV_decoder[3]~input_o\,
	combout => \saida~0_combout\);

\saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = ( \entradaB[0]~input_o\ & ( \entradaA[0]~input_o\ & ( (!\decoder[0]~input_o\ & ((!\decoder[1]~input_o\ & (!\decoder[2]~input_o\ & !\decoder[3]~input_o\)) # (\decoder[1]~input_o\ & ((\decoder[3]~input_o\))))) # (\decoder[0]~input_o\ & 
-- (!\decoder[1]~input_o\ & ((!\decoder[2]~input_o\) # (!\decoder[3]~input_o\)))) ) ) ) # ( !\entradaB[0]~input_o\ & ( \entradaA[0]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ & ((\decoder[2]~input_o\) # (\decoder[1]~input_o\)))) # 
-- (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((!\decoder[3]~input_o\) # (\decoder[2]~input_o\)))) ) ) ) # ( \entradaB[0]~input_o\ & ( !\entradaA[0]~input_o\ & ( (!\decoder[0]~input_o\ & ((!\decoder[1]~input_o\ & (!\decoder[2]~input_o\ & 
-- \decoder[3]~input_o\)) # (\decoder[1]~input_o\ & ((!\decoder[3]~input_o\))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((!\decoder[2]~input_o\) # (\decoder[3]~input_o\)))) ) ) ) # ( !\entradaB[0]~input_o\ & ( !\entradaA[0]~input_o\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[3]~input_o\ & ((\decoder[2]~input_o\) # (\decoder[1]~input_o\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\decoder[3]~input_o\) # (\decoder[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001101110011000101100010001101110000001001100010001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[2]~input_o\,
	datad => \ALT_INV_decoder[3]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	combout => \saida~1_combout\);

\saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = ( \decoder[3]~input_o\ & ( !\saida~1_combout\ & ( (!\decoder[0]~input_o\) # ((!\decoder[1]~input_o\) # ((!\B_mux[31]~27_combout\) # (\entradaA[31]~input_o\))) ) ) ) # ( !\decoder[3]~input_o\ & ( !\saida~1_combout\ & ( 
-- (!\decoder[0]~input_o\) # ((!\decoder[1]~input_o\) # ((!\B_mux[31]~27_combout\) # (!\entradaA[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_B_mux[31]~27_combout\,
	datad => \ALT_INV_entradaA[31]~input_o\,
	datae => \ALT_INV_decoder[3]~input_o\,
	dataf => \ALT_INV_saida~1_combout\,
	combout => \saida~2_combout\);

\saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = ( \saida~0_combout\ & ( \saida~2_combout\ & ( (!\B_mux[30]~26_combout\ & ((!\A_mux[30]~24_combout\) # ((!\FULLADDER|Cout~16_combout\ & !\FULLADDER|Cout~17_combout\)))) # (\B_mux[30]~26_combout\ & (!\FULLADDER|Cout~16_combout\ & 
-- (!\FULLADDER|Cout~17_combout\ & !\A_mux[30]~24_combout\))) ) ) ) # ( \saida~0_combout\ & ( !\saida~2_combout\ ) ) # ( !\saida~0_combout\ & ( !\saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~16_combout\,
	datab => \FULLADDER|ALT_INV_Cout~17_combout\,
	datac => \ALT_INV_B_mux[30]~26_combout\,
	datad => \ALT_INV_A_mux[30]~24_combout\,
	datae => \ALT_INV_saida~0_combout\,
	dataf => \ALT_INV_saida~2_combout\,
	combout => \saida~3_combout\);

\B_mux[1]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[1]~28_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[1]~input_o\,
	combout => \B_mux[1]~28_combout\);

\FULLADDER|Cout[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout[0]~18_combout\ = (!\entradaB[0]~input_o\ & (\decoder[2]~input_o\)) # (\entradaB[0]~input_o\ & ((!\decoder[3]~input_o\ $ (!\entradaA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101011100010100110101110001010011010111000101001101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_decoder[3]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	combout => \FULLADDER|Cout[0]~18_combout\);

\saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = ( \entradaA[1]~input_o\ & ( \FULLADDER|Cout[0]~18_combout\ & ( (!\decoder[0]~input_o\ & ((!\decoder[3]~input_o\ & ((\B_mux[1]~28_combout\))) # (\decoder[3]~input_o\ & (\decoder[1]~input_o\ & !\B_mux[1]~28_combout\)))) # 
-- (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((!\decoder[3]~input_o\) # (\B_mux[1]~28_combout\)))) ) ) ) # ( !\entradaA[1]~input_o\ & ( \FULLADDER|Cout[0]~18_combout\ & ( (!\decoder[0]~input_o\ & ((!\decoder[3]~input_o\ & (\decoder[1]~input_o\ & 
-- !\B_mux[1]~28_combout\)) # (\decoder[3]~input_o\ & ((\B_mux[1]~28_combout\))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[1]~28_combout\) # (\decoder[3]~input_o\)))) ) ) ) # ( \entradaA[1]~input_o\ & ( !\FULLADDER|Cout[0]~18_combout\ & ( 
-- (!\decoder[3]~input_o\ & (!\decoder[1]~input_o\ $ (((!\decoder[0]~input_o\ & !\B_mux[1]~28_combout\))))) # (\decoder[3]~input_o\ & (\B_mux[1]~28_combout\ & (!\decoder[0]~input_o\ $ (!\decoder[1]~input_o\)))) ) ) ) # ( !\entradaA[1]~input_o\ & ( 
-- !\FULLADDER|Cout[0]~18_combout\ & ( (!\decoder[3]~input_o\ & (\B_mux[1]~28_combout\ & (!\decoder[0]~input_o\ $ (!\decoder[1]~input_o\)))) # (\decoder[3]~input_o\ & (!\decoder[1]~input_o\ $ (((!\decoder[0]~input_o\ & !\B_mux[1]~28_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100011000001100011000100100010011100100001011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[3]~input_o\,
	datad => \ALT_INV_B_mux[1]~28_combout\,
	datae => \ALT_INV_entradaA[1]~input_o\,
	dataf => \FULLADDER|ALT_INV_Cout[0]~18_combout\,
	combout => \saida~4_combout\);

\saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = ( \A_mux[2]~0_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[2]~0_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(1)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[2]~0_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(1) $ (!\B_mux[2]~0_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(1),
	datad => \ALT_INV_B_mux[2]~0_combout\,
	datae => \ALT_INV_A_mux[2]~0_combout\,
	combout => \saida~5_combout\);

\FULLADDER|Cout[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(2) = (!\FULLADDER|Cout\(1) & (\B_mux[2]~0_combout\ & \A_mux[2]~0_combout\)) # (\FULLADDER|Cout\(1) & ((\A_mux[2]~0_combout\) # (\B_mux[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(1),
	datab => \ALT_INV_B_mux[2]~0_combout\,
	datac => \ALT_INV_A_mux[2]~0_combout\,
	combout => \FULLADDER|Cout\(2));

\saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = ( \A_mux[3]~1_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[3]~1_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(2)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[3]~1_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(2) $ (!\B_mux[3]~1_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(2),
	datad => \ALT_INV_B_mux[3]~1_combout\,
	datae => \ALT_INV_A_mux[3]~1_combout\,
	combout => \saida~6_combout\);

\FULLADDER|Cout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(3) = (!\FULLADDER|Cout\(2) & (\B_mux[3]~1_combout\ & \A_mux[3]~1_combout\)) # (\FULLADDER|Cout\(2) & ((\A_mux[3]~1_combout\) # (\B_mux[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(2),
	datab => \ALT_INV_B_mux[3]~1_combout\,
	datac => \ALT_INV_A_mux[3]~1_combout\,
	combout => \FULLADDER|Cout\(3));

\B_mux[4]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[4]~29_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[4]~input_o\,
	combout => \B_mux[4]~29_combout\);

\saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = ( \B_mux[4]~29_combout\ & ( \entradaA[4]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((\decoder[1]~input_o\ & !\FULLADDER|Cout\(3)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( 
-- !\B_mux[4]~29_combout\ & ( \entradaA[4]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (\FULLADDER|Cout\(3))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (!\decoder[3]~input_o\))) ) ) ) # ( 
-- \B_mux[4]~29_combout\ & ( !\entradaA[4]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(3)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[4]~29_combout\ & ( 
-- !\entradaA[4]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (!\FULLADDER|Cout\(3))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (\decoder[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[3]~input_o\,
	datad => \FULLADDER|ALT_INV_Cout\(3),
	datae => \ALT_INV_B_mux[4]~29_combout\,
	dataf => \ALT_INV_entradaA[4]~input_o\,
	combout => \saida~7_combout\);

\FULLADDER|Cout[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(4) = (!\FULLADDER|Cout~1_combout\ & !\FULLADDER|Cout~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~1_combout\,
	datab => \FULLADDER|ALT_INV_Cout~2_combout\,
	combout => \FULLADDER|Cout\(4));

\saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = ( \A_mux[5]~2_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[5]~2_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(4)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[5]~2_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(4) $ (\B_mux[5]~2_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[5]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(4),
	datad => \ALT_INV_B_mux[5]~2_combout\,
	datae => \ALT_INV_A_mux[5]~2_combout\,
	combout => \saida~8_combout\);

\FULLADDER|Cout[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(5) = (!\FULLADDER|Cout\(4) & ((\A_mux[5]~2_combout\) # (\B_mux[5]~2_combout\))) # (\FULLADDER|Cout\(4) & (\B_mux[5]~2_combout\ & \A_mux[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(4),
	datab => \ALT_INV_B_mux[5]~2_combout\,
	datac => \ALT_INV_A_mux[5]~2_combout\,
	combout => \FULLADDER|Cout\(5));

\saida~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = ( \A_mux[6]~3_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[6]~3_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(5)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[6]~3_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(5) $ (!\B_mux[6]~3_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[6]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(5),
	datad => \ALT_INV_B_mux[6]~3_combout\,
	datae => \ALT_INV_A_mux[6]~3_combout\,
	combout => \saida~9_combout\);

\saida~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = ( \A_mux[7]~4_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[7]~4_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(6)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[7]~4_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(6) $ (\B_mux[7]~4_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[7]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(6),
	datad => \ALT_INV_B_mux[7]~4_combout\,
	datae => \ALT_INV_A_mux[7]~4_combout\,
	combout => \saida~10_combout\);

\FULLADDER|Cout[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(7) = (!\FULLADDER|Cout\(6) & ((\A_mux[7]~4_combout\) # (\B_mux[7]~4_combout\))) # (\FULLADDER|Cout\(6) & (\B_mux[7]~4_combout\ & \A_mux[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(6),
	datab => \ALT_INV_B_mux[7]~4_combout\,
	datac => \ALT_INV_A_mux[7]~4_combout\,
	combout => \FULLADDER|Cout\(7));

\saida~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = ( \A_mux[8]~5_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[8]~5_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(7)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[8]~5_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(7) $ (!\B_mux[8]~5_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(7),
	datad => \ALT_INV_B_mux[8]~5_combout\,
	datae => \ALT_INV_A_mux[8]~5_combout\,
	combout => \saida~11_combout\);

\FULLADDER|Cout[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(8) = (!\FULLADDER|Cout\(7) & (\B_mux[8]~5_combout\ & \A_mux[8]~5_combout\)) # (\FULLADDER|Cout\(7) & ((\A_mux[8]~5_combout\) # (\B_mux[8]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(7),
	datab => \ALT_INV_B_mux[8]~5_combout\,
	datac => \ALT_INV_A_mux[8]~5_combout\,
	combout => \FULLADDER|Cout\(8));

\B_mux[9]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \B_mux[9]~30_combout\ = !\decoder[2]~input_o\ $ (!\entradaB[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[2]~input_o\,
	datab => \ALT_INV_entradaB[9]~input_o\,
	combout => \B_mux[9]~30_combout\);

\saida~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = ( \B_mux[9]~30_combout\ & ( \entradaA[9]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((\decoder[1]~input_o\ & !\FULLADDER|Cout\(8)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( 
-- !\B_mux[9]~30_combout\ & ( \entradaA[9]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (\FULLADDER|Cout\(8))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (!\decoder[3]~input_o\))) ) ) ) # ( 
-- \B_mux[9]~30_combout\ & ( !\entradaA[9]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(8)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[9]~30_combout\ & ( 
-- !\entradaA[9]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (!\FULLADDER|Cout\(8))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (\decoder[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[3]~input_o\,
	datad => \FULLADDER|ALT_INV_Cout\(8),
	datae => \ALT_INV_B_mux[9]~30_combout\,
	dataf => \ALT_INV_entradaA[9]~input_o\,
	combout => \saida~12_combout\);

\FULLADDER|Cout[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(9) = (!\FULLADDER|Cout~4_combout\ & !\FULLADDER|Cout~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~4_combout\,
	datab => \FULLADDER|ALT_INV_Cout~5_combout\,
	combout => \FULLADDER|Cout\(9));

\saida~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = ( \A_mux[10]~6_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[10]~6_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(9)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[10]~6_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(9) $ (\B_mux[10]~6_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[10]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(9),
	datad => \ALT_INV_B_mux[10]~6_combout\,
	datae => \ALT_INV_A_mux[10]~6_combout\,
	combout => \saida~13_combout\);

\FULLADDER|Cout[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(10) = (!\FULLADDER|Cout\(9) & ((\A_mux[10]~6_combout\) # (\B_mux[10]~6_combout\))) # (\FULLADDER|Cout\(9) & (\B_mux[10]~6_combout\ & \A_mux[10]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(9),
	datab => \ALT_INV_B_mux[10]~6_combout\,
	datac => \ALT_INV_A_mux[10]~6_combout\,
	combout => \FULLADDER|Cout\(10));

\saida~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = ( \A_mux[11]~7_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[11]~7_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(10)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[11]~7_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(10) $ (!\B_mux[11]~7_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[11]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(10),
	datad => \ALT_INV_B_mux[11]~7_combout\,
	datae => \ALT_INV_A_mux[11]~7_combout\,
	combout => \saida~14_combout\);

\saida~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = ( \A_mux[12]~8_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[12]~8_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(11)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[12]~8_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(11) $ (\B_mux[12]~8_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[12]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(11),
	datad => \ALT_INV_B_mux[12]~8_combout\,
	datae => \ALT_INV_A_mux[12]~8_combout\,
	combout => \saida~15_combout\);

\FULLADDER|Cout[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(12) = (!\FULLADDER|Cout\(11) & ((\A_mux[12]~8_combout\) # (\B_mux[12]~8_combout\))) # (\FULLADDER|Cout\(11) & (\B_mux[12]~8_combout\ & \A_mux[12]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(11),
	datab => \ALT_INV_B_mux[12]~8_combout\,
	datac => \ALT_INV_A_mux[12]~8_combout\,
	combout => \FULLADDER|Cout\(12));

\saida~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~16_combout\ = ( \A_mux[13]~9_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[13]~9_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(12)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[13]~9_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(12) $ (!\B_mux[13]~9_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[13]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(12),
	datad => \ALT_INV_B_mux[13]~9_combout\,
	datae => \ALT_INV_A_mux[13]~9_combout\,
	combout => \saida~16_combout\);

\FULLADDER|Cout[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(13) = (!\FULLADDER|Cout\(12) & (\B_mux[13]~9_combout\ & \A_mux[13]~9_combout\)) # (\FULLADDER|Cout\(12) & ((\A_mux[13]~9_combout\) # (\B_mux[13]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(12),
	datab => \ALT_INV_B_mux[13]~9_combout\,
	datac => \ALT_INV_A_mux[13]~9_combout\,
	combout => \FULLADDER|Cout\(13));

\saida~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~17_combout\ = ( \B_mux[14]~10_combout\ & ( \entradaA[14]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((\decoder[1]~input_o\ & !\FULLADDER|Cout\(13)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( 
-- !\B_mux[14]~10_combout\ & ( \entradaA[14]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (\FULLADDER|Cout\(13))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (!\decoder[3]~input_o\))) ) ) ) # ( 
-- \B_mux[14]~10_combout\ & ( !\entradaA[14]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(13)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[14]~10_combout\ & ( 
-- !\entradaA[14]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (!\FULLADDER|Cout\(13))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (\decoder[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[3]~input_o\,
	datad => \FULLADDER|ALT_INV_Cout\(13),
	datae => \ALT_INV_B_mux[14]~10_combout\,
	dataf => \ALT_INV_entradaA[14]~input_o\,
	combout => \saida~17_combout\);

\FULLADDER|Cout[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(14) = (!\FULLADDER|Cout~7_combout\ & !\FULLADDER|Cout~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~7_combout\,
	datab => \FULLADDER|ALT_INV_Cout~8_combout\,
	combout => \FULLADDER|Cout\(14));

\saida~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~18_combout\ = ( \A_mux[15]~10_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[15]~11_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(14)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[15]~10_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(14) $ (\B_mux[15]~11_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[15]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(14),
	datad => \ALT_INV_B_mux[15]~11_combout\,
	datae => \ALT_INV_A_mux[15]~10_combout\,
	combout => \saida~18_combout\);

\FULLADDER|Cout[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(15) = (!\FULLADDER|Cout\(14) & ((\A_mux[15]~10_combout\) # (\B_mux[15]~11_combout\))) # (\FULLADDER|Cout\(14) & (\B_mux[15]~11_combout\ & \A_mux[15]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(14),
	datab => \ALT_INV_B_mux[15]~11_combout\,
	datac => \ALT_INV_A_mux[15]~10_combout\,
	combout => \FULLADDER|Cout\(15));

\saida~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~19_combout\ = ( \A_mux[16]~11_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[16]~12_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(15)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[16]~11_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(15) $ (!\B_mux[16]~12_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[16]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(15),
	datad => \ALT_INV_B_mux[16]~12_combout\,
	datae => \ALT_INV_A_mux[16]~11_combout\,
	combout => \saida~19_combout\);

\saida~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~20_combout\ = ( \A_mux[17]~12_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[17]~13_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(16)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[17]~12_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(16) $ (\B_mux[17]~13_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[17]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(16),
	datad => \ALT_INV_B_mux[17]~13_combout\,
	datae => \ALT_INV_A_mux[17]~12_combout\,
	combout => \saida~20_combout\);

\FULLADDER|Cout[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(17) = (!\FULLADDER|Cout\(16) & ((\A_mux[17]~12_combout\) # (\B_mux[17]~13_combout\))) # (\FULLADDER|Cout\(16) & (\B_mux[17]~13_combout\ & \A_mux[17]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(16),
	datab => \ALT_INV_B_mux[17]~13_combout\,
	datac => \ALT_INV_A_mux[17]~12_combout\,
	combout => \FULLADDER|Cout\(17));

\saida~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~21_combout\ = ( \A_mux[18]~13_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[18]~14_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(17)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[18]~13_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(17) $ (!\B_mux[18]~14_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[18]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(17),
	datad => \ALT_INV_B_mux[18]~14_combout\,
	datae => \ALT_INV_A_mux[18]~13_combout\,
	combout => \saida~21_combout\);

\FULLADDER|Cout[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(18) = (!\FULLADDER|Cout\(17) & (\B_mux[18]~14_combout\ & \A_mux[18]~13_combout\)) # (\FULLADDER|Cout\(17) & ((\A_mux[18]~13_combout\) # (\B_mux[18]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(17),
	datab => \ALT_INV_B_mux[18]~14_combout\,
	datac => \ALT_INV_A_mux[18]~13_combout\,
	combout => \FULLADDER|Cout\(18));

\saida~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~22_combout\ = ( \B_mux[19]~15_combout\ & ( \entradaA[19]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((\decoder[1]~input_o\ & !\FULLADDER|Cout\(18)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( 
-- !\B_mux[19]~15_combout\ & ( \entradaA[19]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (\FULLADDER|Cout\(18))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (!\decoder[3]~input_o\))) ) ) ) # ( 
-- \B_mux[19]~15_combout\ & ( !\entradaA[19]~input_o\ & ( (!\decoder[0]~input_o\ & (!\decoder[3]~input_o\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(18)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[19]~15_combout\ & ( 
-- !\entradaA[19]~input_o\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\decoder[3]~input_o\ $ (!\FULLADDER|Cout\(18))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & (\decoder[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_decoder[3]~input_o\,
	datad => \FULLADDER|ALT_INV_Cout\(18),
	datae => \ALT_INV_B_mux[19]~15_combout\,
	dataf => \ALT_INV_entradaA[19]~input_o\,
	combout => \saida~22_combout\);

\FULLADDER|Cout[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(19) = (!\FULLADDER|Cout~10_combout\ & !\FULLADDER|Cout~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~10_combout\,
	datab => \FULLADDER|ALT_INV_Cout~11_combout\,
	combout => \FULLADDER|Cout\(19));

\saida~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~23_combout\ = ( \A_mux[20]~14_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[20]~16_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(19)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[20]~14_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(19) $ (\B_mux[20]~16_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[20]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(19),
	datad => \ALT_INV_B_mux[20]~16_combout\,
	datae => \ALT_INV_A_mux[20]~14_combout\,
	combout => \saida~23_combout\);

\FULLADDER|Cout[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(20) = (!\FULLADDER|Cout\(19) & ((\A_mux[20]~14_combout\) # (\B_mux[20]~16_combout\))) # (\FULLADDER|Cout\(19) & (\B_mux[20]~16_combout\ & \A_mux[20]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(19),
	datab => \ALT_INV_B_mux[20]~16_combout\,
	datac => \ALT_INV_A_mux[20]~14_combout\,
	combout => \FULLADDER|Cout\(20));

\saida~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~24_combout\ = ( \A_mux[21]~15_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[21]~17_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(20)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[21]~15_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(20) $ (!\B_mux[21]~17_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[21]~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(20),
	datad => \ALT_INV_B_mux[21]~17_combout\,
	datae => \ALT_INV_A_mux[21]~15_combout\,
	combout => \saida~24_combout\);

\saida~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~25_combout\ = ( \A_mux[22]~16_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[22]~18_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(21)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[22]~16_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(21) $ (\B_mux[22]~18_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[22]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(21),
	datad => \ALT_INV_B_mux[22]~18_combout\,
	datae => \ALT_INV_A_mux[22]~16_combout\,
	combout => \saida~25_combout\);

\FULLADDER|Cout[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(22) = (!\FULLADDER|Cout\(21) & ((\A_mux[22]~16_combout\) # (\B_mux[22]~18_combout\))) # (\FULLADDER|Cout\(21) & (\B_mux[22]~18_combout\ & \A_mux[22]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(21),
	datab => \ALT_INV_B_mux[22]~18_combout\,
	datac => \ALT_INV_A_mux[22]~16_combout\,
	combout => \FULLADDER|Cout\(22));

\saida~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~26_combout\ = ( \A_mux[23]~17_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[23]~19_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(22)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[23]~17_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(22) $ (!\B_mux[23]~19_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[23]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(22),
	datad => \ALT_INV_B_mux[23]~19_combout\,
	datae => \ALT_INV_A_mux[23]~17_combout\,
	combout => \saida~26_combout\);

\FULLADDER|Cout[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(23) = ( \A_mux[23]~17_combout\ & ( ((!\FULLADDER|Cout\(21) & ((\A_mux[22]~16_combout\) # (\B_mux[22]~18_combout\))) # (\FULLADDER|Cout\(21) & (\B_mux[22]~18_combout\ & \A_mux[22]~16_combout\))) # (\B_mux[23]~19_combout\) ) ) # ( 
-- !\A_mux[23]~17_combout\ & ( (\B_mux[23]~19_combout\ & ((!\FULLADDER|Cout\(21) & ((\A_mux[22]~16_combout\) # (\B_mux[22]~18_combout\))) # (\FULLADDER|Cout\(21) & (\B_mux[22]~18_combout\ & \A_mux[22]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(21),
	datab => \ALT_INV_B_mux[22]~18_combout\,
	datac => \ALT_INV_A_mux[22]~16_combout\,
	datad => \ALT_INV_B_mux[23]~19_combout\,
	datae => \ALT_INV_A_mux[23]~17_combout\,
	combout => \FULLADDER|Cout\(23));

\saida~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~27_combout\ = ( \A_mux[24]~18_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[24]~20_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(23)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[24]~18_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(23) $ (!\B_mux[24]~20_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[24]~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(23),
	datad => \ALT_INV_B_mux[24]~20_combout\,
	datae => \ALT_INV_A_mux[24]~18_combout\,
	combout => \saida~27_combout\);

\saida~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~28_combout\ = ( \B_mux[25]~21_combout\ & ( \A_mux[25]~19_combout\ & ( (!\decoder[1]~input_o\) # ((!\decoder[0]~input_o\ & ((\FULLADDER|Cout~14_combout\) # (\FULLADDER|Cout~13_combout\)))) ) ) ) # ( !\B_mux[25]~21_combout\ & ( \A_mux[25]~19_combout\ 
-- & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout~13_combout\ & !\FULLADDER|Cout~14_combout\))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( \B_mux[25]~21_combout\ & ( !\A_mux[25]~19_combout\ & ( (!\decoder[0]~input_o\ 
-- & (\decoder[1]~input_o\ & (!\FULLADDER|Cout~13_combout\ & !\FULLADDER|Cout~14_combout\))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[25]~21_combout\ & ( !\A_mux[25]~19_combout\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & 
-- ((\FULLADDER|Cout~14_combout\) # (\FULLADDER|Cout~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout~13_combout\,
	datad => \FULLADDER|ALT_INV_Cout~14_combout\,
	datae => \ALT_INV_B_mux[25]~21_combout\,
	dataf => \ALT_INV_A_mux[25]~19_combout\,
	combout => \saida~28_combout\);

\FULLADDER|Cout[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(25) = (!\B_mux[25]~21_combout\ & ((!\A_mux[25]~19_combout\) # ((!\FULLADDER|Cout~13_combout\ & !\FULLADDER|Cout~14_combout\)))) # (\B_mux[25]~21_combout\ & (!\FULLADDER|Cout~13_combout\ & (!\FULLADDER|Cout~14_combout\ & 
-- !\A_mux[25]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~13_combout\,
	datab => \FULLADDER|ALT_INV_Cout~14_combout\,
	datac => \ALT_INV_B_mux[25]~21_combout\,
	datad => \ALT_INV_A_mux[25]~19_combout\,
	combout => \FULLADDER|Cout\(25));

\saida~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~29_combout\ = ( \A_mux[26]~20_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[26]~22_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(25)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[26]~20_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(25) $ (\B_mux[26]~22_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[26]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(25),
	datad => \ALT_INV_B_mux[26]~22_combout\,
	datae => \ALT_INV_A_mux[26]~20_combout\,
	combout => \saida~29_combout\);

\saida~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~30_combout\ = ( \A_mux[27]~21_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[27]~23_combout\ $ (((!\decoder[1]~input_o\) # (!\FULLADDER|Cout\(26)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[27]~21_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(26) $ (\B_mux[27]~23_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[27]~23_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(26),
	datad => \ALT_INV_B_mux[27]~23_combout\,
	datae => \ALT_INV_A_mux[27]~21_combout\,
	combout => \saida~30_combout\);

\FULLADDER|Cout~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout~19_combout\ = !\B_mux[28]~24_combout\ $ (!\A_mux[28]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_mux[28]~24_combout\,
	datab => \ALT_INV_A_mux[28]~22_combout\,
	combout => \FULLADDER|Cout~19_combout\);

\saida~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~31_combout\ = (!\decoder[0]~input_o\ & \decoder[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	combout => \saida~31_combout\);

\saida~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~32_combout\ = (!\decoder[1]~input_o\ & ((!\decoder[0]~input_o\ & (\B_mux[28]~24_combout\ & \A_mux[28]~22_combout\)) # (\decoder[0]~input_o\ & ((\A_mux[28]~22_combout\) # (\B_mux[28]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_B_mux[28]~24_combout\,
	datad => \ALT_INV_A_mux[28]~22_combout\,
	combout => \saida~32_combout\);

\saida~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~33_combout\ = ( \saida~31_combout\ & ( \saida~32_combout\ ) ) # ( !\saida~31_combout\ & ( \saida~32_combout\ ) ) # ( \saida~31_combout\ & ( !\saida~32_combout\ & ( !\FULLADDER|Cout~19_combout\ $ (((!\FULLADDER|Cout\(26) & (!\B_mux[27]~23_combout\ & 
-- !\A_mux[27]~21_combout\)) # (\FULLADDER|Cout\(26) & ((!\B_mux[27]~23_combout\) # (!\A_mux[27]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(26),
	datab => \ALT_INV_B_mux[27]~23_combout\,
	datac => \ALT_INV_A_mux[27]~21_combout\,
	datad => \FULLADDER|ALT_INV_Cout~19_combout\,
	datae => \ALT_INV_saida~31_combout\,
	dataf => \ALT_INV_saida~32_combout\,
	combout => \saida~33_combout\);

\FULLADDER|Cout[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(28) = ( \A_mux[28]~22_combout\ & ( ((!\FULLADDER|Cout\(26) & ((\A_mux[27]~21_combout\) # (\B_mux[27]~23_combout\))) # (\FULLADDER|Cout\(26) & (\B_mux[27]~23_combout\ & \A_mux[27]~21_combout\))) # (\B_mux[28]~24_combout\) ) ) # ( 
-- !\A_mux[28]~22_combout\ & ( (\B_mux[28]~24_combout\ & ((!\FULLADDER|Cout\(26) & ((\A_mux[27]~21_combout\) # (\B_mux[27]~23_combout\))) # (\FULLADDER|Cout\(26) & (\B_mux[27]~23_combout\ & \A_mux[27]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout\(26),
	datab => \ALT_INV_B_mux[27]~23_combout\,
	datac => \ALT_INV_A_mux[27]~21_combout\,
	datad => \ALT_INV_B_mux[28]~24_combout\,
	datae => \ALT_INV_A_mux[28]~22_combout\,
	combout => \FULLADDER|Cout\(28));

\saida~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~34_combout\ = ( \A_mux[29]~23_combout\ & ( (!\decoder[0]~input_o\ & (!\B_mux[29]~25_combout\ $ (((!\decoder[1]~input_o\) # (\FULLADDER|Cout\(28)))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) # ( !\A_mux[29]~23_combout\ & ( 
-- (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout\(28) $ (!\B_mux[29]~25_combout\)))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\B_mux[29]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout\(28),
	datad => \ALT_INV_B_mux[29]~25_combout\,
	datae => \ALT_INV_A_mux[29]~23_combout\,
	combout => \saida~34_combout\);

\saida~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~35_combout\ = ( \B_mux[30]~26_combout\ & ( \A_mux[30]~24_combout\ & ( (!\decoder[1]~input_o\) # ((!\decoder[0]~input_o\ & ((\FULLADDER|Cout~17_combout\) # (\FULLADDER|Cout~16_combout\)))) ) ) ) # ( !\B_mux[30]~26_combout\ & ( \A_mux[30]~24_combout\ 
-- & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & (!\FULLADDER|Cout~16_combout\ & !\FULLADDER|Cout~17_combout\))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( \B_mux[30]~26_combout\ & ( !\A_mux[30]~24_combout\ & ( (!\decoder[0]~input_o\ 
-- & (\decoder[1]~input_o\ & (!\FULLADDER|Cout~16_combout\ & !\FULLADDER|Cout~17_combout\))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\)) ) ) ) # ( !\B_mux[30]~26_combout\ & ( !\A_mux[30]~24_combout\ & ( (!\decoder[0]~input_o\ & (\decoder[1]~input_o\ & 
-- ((\FULLADDER|Cout~17_combout\) # (\FULLADDER|Cout~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \FULLADDER|ALT_INV_Cout~16_combout\,
	datad => \FULLADDER|ALT_INV_Cout~17_combout\,
	datae => \ALT_INV_B_mux[30]~26_combout\,
	dataf => \ALT_INV_A_mux[30]~24_combout\,
	combout => \saida~35_combout\);

\FULLADDER|Cout[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FULLADDER|Cout\(30) = (!\B_mux[30]~26_combout\ & ((!\A_mux[30]~24_combout\) # ((!\FULLADDER|Cout~16_combout\ & !\FULLADDER|Cout~17_combout\)))) # (\B_mux[30]~26_combout\ & (!\FULLADDER|Cout~16_combout\ & (!\FULLADDER|Cout~17_combout\ & 
-- !\A_mux[30]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FULLADDER|ALT_INV_Cout~16_combout\,
	datab => \FULLADDER|ALT_INV_Cout~17_combout\,
	datac => \ALT_INV_B_mux[30]~26_combout\,
	datad => \ALT_INV_A_mux[30]~24_combout\,
	combout => \FULLADDER|Cout\(30));

\saida~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~36_combout\ = ( \decoder[3]~input_o\ & ( \FULLADDER|Cout\(30) & ( (!\B_mux[31]~27_combout\ & (!\entradaA[31]~input_o\ & (!\decoder[0]~input_o\ $ (!\decoder[1]~input_o\)))) # (\B_mux[31]~27_combout\ & (!\decoder[1]~input_o\ $ 
-- (((!\decoder[0]~input_o\ & \entradaA[31]~input_o\))))) ) ) ) # ( !\decoder[3]~input_o\ & ( \FULLADDER|Cout\(30) & ( (!\B_mux[31]~27_combout\ & (\entradaA[31]~input_o\ & (!\decoder[0]~input_o\ $ (!\decoder[1]~input_o\)))) # (\B_mux[31]~27_combout\ & 
-- (!\decoder[1]~input_o\ $ (((!\decoder[0]~input_o\ & !\entradaA[31]~input_o\))))) ) ) ) # ( \decoder[3]~input_o\ & ( !\FULLADDER|Cout\(30) & ( (!\decoder[0]~input_o\ & ((!\B_mux[31]~27_combout\ & (\decoder[1]~input_o\ & \entradaA[31]~input_o\)) # 
-- (\B_mux[31]~27_combout\ & ((!\entradaA[31]~input_o\))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((!\entradaA[31]~input_o\) # (\B_mux[31]~27_combout\)))) ) ) ) # ( !\decoder[3]~input_o\ & ( !\FULLADDER|Cout\(30) & ( (!\decoder[0]~input_o\ & 
-- ((!\B_mux[31]~27_combout\ & (\decoder[1]~input_o\ & !\entradaA[31]~input_o\)) # (\B_mux[31]~27_combout\ & ((\entradaA[31]~input_o\))))) # (\decoder[0]~input_o\ & (!\decoder[1]~input_o\ & ((\entradaA[31]~input_o\) # (\B_mux[31]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110010011100010010000000110011011000110110000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_decoder[0]~input_o\,
	datab => \ALT_INV_decoder[1]~input_o\,
	datac => \ALT_INV_B_mux[31]~27_combout\,
	datad => \ALT_INV_entradaA[31]~input_o\,
	datae => \ALT_INV_decoder[3]~input_o\,
	dataf => \FULLADDER|ALT_INV_Cout\(30),
	combout => \saida~36_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;
END structure;


