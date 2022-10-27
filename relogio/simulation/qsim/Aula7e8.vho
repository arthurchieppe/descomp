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

-- DATE "10/27/2022 16:08:10"

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

ENTITY 	relogio IS
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
	clockSegundo : OUT std_logic
	);
END relogio;

ARCHITECTURE structure OF relogio IS
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
SIGNAL ww_clockSegundo : std_logic;
SIGNAL \clockSegundo~output_o\ : std_logic;
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
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~39_combout\ : std_logic;
SIGNAL \ROM|memROM~38_combout\ : std_logic;
SIGNAL \ROM|memROM~45_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~60_combout\ : std_logic;
SIGNAL \ROM|memROM~40_combout\ : std_logic;
SIGNAL \ROM|memROM~41_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~42_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal14~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal14~3_combout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[4]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~43_combout\ : std_logic;
SIGNAL \ROM|memROM~44_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \ROM|memROM~53_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~57_combout\ : std_logic;
SIGNAL \ROM|memROM~58_combout\ : std_logic;
SIGNAL \ROM|memROM~59_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \ROM|memROM~64_combout\ : std_logic;
SIGNAL \ROM|memROM~65_combout\ : std_logic;
SIGNAL \ROM|memROM~66_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[1]~7_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal14~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[1]~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[3]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~3_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \RAM|ram~695_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|Equal14~0_combout\ : std_logic;
SIGNAL \RAM|process_0~1_combout\ : std_logic;
SIGNAL \RAM|ram~696_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~727_combout\ : std_logic;
SIGNAL \RAM|ram~728_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~759_combout\ : std_logic;
SIGNAL \RAM|ram~760_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~791_combout\ : std_logic;
SIGNAL \RAM|ram~792_combout\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~703_combout\ : std_logic;
SIGNAL \RAM|ram~704_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~735_combout\ : std_logic;
SIGNAL \RAM|ram~736_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~767_combout\ : std_logic;
SIGNAL \RAM|ram~768_combout\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~799_combout\ : std_logic;
SIGNAL \RAM|ram~800_combout\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~699_combout\ : std_logic;
SIGNAL \RAM|ram~700_combout\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~731_combout\ : std_logic;
SIGNAL \RAM|ram~732_combout\ : std_logic;
SIGNAL \RAM|ram~210_q\ : std_logic;
SIGNAL \RAM|ram~763_combout\ : std_logic;
SIGNAL \RAM|ram~764_combout\ : std_logic;
SIGNAL \RAM|ram~178_q\ : std_logic;
SIGNAL \RAM|ram~807_combout\ : std_logic;
SIGNAL \RAM|ram~808_combout\ : std_logic;
SIGNAL \RAM|ram~242_q\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~707_combout\ : std_logic;
SIGNAL \RAM|ram~708_combout\ : std_logic;
SIGNAL \RAM|ram~162_q\ : std_logic;
SIGNAL \RAM|ram~739_combout\ : std_logic;
SIGNAL \RAM|ram~740_combout\ : std_logic;
SIGNAL \RAM|ram~226_q\ : std_logic;
SIGNAL \RAM|ram~771_combout\ : std_logic;
SIGNAL \RAM|ram~772_combout\ : std_logic;
SIGNAL \RAM|ram~194_q\ : std_logic;
SIGNAL \RAM|ram~815_combout\ : std_logic;
SIGNAL \RAM|ram~816_combout\ : std_logic;
SIGNAL \RAM|ram~258_q\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~697_combout\ : std_logic;
SIGNAL \RAM|ram~698_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~761_combout\ : std_logic;
SIGNAL \RAM|ram~762_combout\ : std_logic;
SIGNAL \RAM|ram~306_q\ : std_logic;
SIGNAL \RAM|ram~705_combout\ : std_logic;
SIGNAL \RAM|ram~706_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~769_combout\ : std_logic;
SIGNAL \RAM|ram~770_combout\ : std_logic;
SIGNAL \RAM|ram~322_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~729_combout\ : std_logic;
SIGNAL \RAM|ram~730_combout\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~793_combout\ : std_logic;
SIGNAL \RAM|ram~794_combout\ : std_logic;
SIGNAL \RAM|ram~370_q\ : std_logic;
SIGNAL \RAM|ram~737_combout\ : std_logic;
SIGNAL \RAM|ram~738_combout\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~801_combout\ : std_logic;
SIGNAL \RAM|ram~802_combout\ : std_logic;
SIGNAL \RAM|ram~386_q\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~701_combout\ : std_logic;
SIGNAL \RAM|ram~702_combout\ : std_logic;
SIGNAL \RAM|ram~402_q\ : std_logic;
SIGNAL \RAM|ram~765_combout\ : std_logic;
SIGNAL \RAM|ram~766_combout\ : std_logic;
SIGNAL \RAM|ram~434_q\ : std_logic;
SIGNAL \RAM|ram~709_combout\ : std_logic;
SIGNAL \RAM|ram~710_combout\ : std_logic;
SIGNAL \RAM|ram~418_q\ : std_logic;
SIGNAL \RAM|ram~773_combout\ : std_logic;
SIGNAL \RAM|ram~774_combout\ : std_logic;
SIGNAL \RAM|ram~450_q\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~733_combout\ : std_logic;
SIGNAL \RAM|ram~734_combout\ : std_logic;
SIGNAL \RAM|ram~466_q\ : std_logic;
SIGNAL \RAM|ram~809_combout\ : std_logic;
SIGNAL \RAM|ram~810_combout\ : std_logic;
SIGNAL \RAM|ram~498_q\ : std_logic;
SIGNAL \RAM|ram~741_combout\ : std_logic;
SIGNAL \RAM|ram~742_combout\ : std_logic;
SIGNAL \RAM|ram~482_q\ : std_logic;
SIGNAL \RAM|ram~817_combout\ : std_logic;
SIGNAL \RAM|ram~818_combout\ : std_logic;
SIGNAL \RAM|ram~514_q\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~711_combout\ : std_logic;
SIGNAL \RAM|ram~712_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~775_combout\ : std_logic;
SIGNAL \RAM|ram~776_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~715_combout\ : std_logic;
SIGNAL \RAM|ram~716_combout\ : std_logic;
SIGNAL \RAM|ram~154_q\ : std_logic;
SIGNAL \RAM|ram~779_combout\ : std_logic;
SIGNAL \RAM|ram~780_combout\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~743_combout\ : std_logic;
SIGNAL \RAM|ram~744_combout\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~795_combout\ : std_logic;
SIGNAL \RAM|ram~796_combout\ : std_logic;
SIGNAL \RAM|ram~122_q\ : std_logic;
SIGNAL \RAM|ram~747_combout\ : std_logic;
SIGNAL \RAM|ram~748_combout\ : std_logic;
SIGNAL \RAM|ram~218_q\ : std_logic;
SIGNAL \RAM|ram~811_combout\ : std_logic;
SIGNAL \RAM|ram~812_combout\ : std_logic;
SIGNAL \RAM|ram~250_q\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~719_combout\ : std_logic;
SIGNAL \RAM|ram~720_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~783_combout\ : std_logic;
SIGNAL \RAM|ram~784_combout\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~723_combout\ : std_logic;
SIGNAL \RAM|ram~724_combout\ : std_logic;
SIGNAL \RAM|ram~170_q\ : std_logic;
SIGNAL \RAM|ram~787_combout\ : std_logic;
SIGNAL \RAM|ram~788_combout\ : std_logic;
SIGNAL \RAM|ram~202_q\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~751_combout\ : std_logic;
SIGNAL \RAM|ram~752_combout\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~803_combout\ : std_logic;
SIGNAL \RAM|ram~804_combout\ : std_logic;
SIGNAL \RAM|ram~138_q\ : std_logic;
SIGNAL \RAM|ram~755_combout\ : std_logic;
SIGNAL \RAM|ram~756_combout\ : std_logic;
SIGNAL \RAM|ram~234_q\ : std_logic;
SIGNAL \RAM|ram~819_combout\ : std_logic;
SIGNAL \RAM|ram~820_combout\ : std_logic;
SIGNAL \RAM|ram~266_q\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~713_combout\ : std_logic;
SIGNAL \RAM|ram~714_combout\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~745_combout\ : std_logic;
SIGNAL \RAM|ram~746_combout\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~777_combout\ : std_logic;
SIGNAL \RAM|ram~778_combout\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~797_combout\ : std_logic;
SIGNAL \RAM|ram~798_combout\ : std_logic;
SIGNAL \RAM|ram~378_q\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~721_combout\ : std_logic;
SIGNAL \RAM|ram~722_combout\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~753_combout\ : std_logic;
SIGNAL \RAM|ram~754_combout\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~785_combout\ : std_logic;
SIGNAL \RAM|ram~786_combout\ : std_logic;
SIGNAL \RAM|ram~330_q\ : std_logic;
SIGNAL \RAM|ram~805_combout\ : std_logic;
SIGNAL \RAM|ram~806_combout\ : std_logic;
SIGNAL \RAM|ram~394_q\ : std_logic;
SIGNAL \RAM|ram~606_combout\ : std_logic;
SIGNAL \RAM|ram~717_combout\ : std_logic;
SIGNAL \RAM|ram~718_combout\ : std_logic;
SIGNAL \RAM|ram~410_q\ : std_logic;
SIGNAL \RAM|ram~749_combout\ : std_logic;
SIGNAL \RAM|ram~750_combout\ : std_logic;
SIGNAL \RAM|ram~474_q\ : std_logic;
SIGNAL \RAM|ram~781_combout\ : std_logic;
SIGNAL \RAM|ram~782_combout\ : std_logic;
SIGNAL \RAM|ram~442_q\ : std_logic;
SIGNAL \RAM|ram~813_combout\ : std_logic;
SIGNAL \RAM|ram~814_combout\ : std_logic;
SIGNAL \RAM|ram~506_q\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~725_combout\ : std_logic;
SIGNAL \RAM|ram~726_combout\ : std_logic;
SIGNAL \RAM|ram~426_q\ : std_logic;
SIGNAL \RAM|ram~757_combout\ : std_logic;
SIGNAL \RAM|ram~758_combout\ : std_logic;
SIGNAL \RAM|ram~490_q\ : std_logic;
SIGNAL \RAM|ram~789_combout\ : std_logic;
SIGNAL \RAM|ram~790_combout\ : std_logic;
SIGNAL \RAM|ram~458_q\ : std_logic;
SIGNAL \RAM|ram~821_combout\ : std_logic;
SIGNAL \RAM|ram~822_combout\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~608_combout\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~610_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Data_IN[3]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~36_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~153_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~209_q\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~217_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~177_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~241_q\ : std_logic;
SIGNAL \RAM|ram~121_q\ : std_logic;
SIGNAL \RAM|ram~249_q\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~305_q\ : std_logic;
SIGNAL \RAM|ram~369_q\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~377_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~401_q\ : std_logic;
SIGNAL \RAM|ram~465_q\ : std_logic;
SIGNAL \RAM|ram~409_q\ : std_logic;
SIGNAL \RAM|ram~473_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~433_q\ : std_logic;
SIGNAL \RAM|ram~497_q\ : std_logic;
SIGNAL \RAM|ram~441_q\ : std_logic;
SIGNAL \RAM|ram~505_q\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~137_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~161_q\ : std_logic;
SIGNAL \RAM|ram~193_q\ : std_logic;
SIGNAL \RAM|ram~169_q\ : std_logic;
SIGNAL \RAM|ram~201_q\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~225_q\ : std_logic;
SIGNAL \RAM|ram~257_q\ : std_logic;
SIGNAL \RAM|ram~233_q\ : std_logic;
SIGNAL \RAM|ram~265_q\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~417_q\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~425_q\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~481_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~489_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~321_q\ : std_logic;
SIGNAL \RAM|ram~449_q\ : std_logic;
SIGNAL \RAM|ram~329_q\ : std_logic;
SIGNAL \RAM|ram~457_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~385_q\ : std_logic;
SIGNAL \RAM|ram~513_q\ : std_logic;
SIGNAL \RAM|ram~393_q\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Data_IN[2]~1_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~120_q\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~136_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~304_q\ : std_logic;
SIGNAL \RAM|ram~368_q\ : std_logic;
SIGNAL \RAM|ram~320_q\ : std_logic;
SIGNAL \RAM|ram~384_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~376_q\ : std_logic;
SIGNAL \RAM|ram~328_q\ : std_logic;
SIGNAL \RAM|ram~392_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~160_q\ : std_logic;
SIGNAL \RAM|ram~152_q\ : std_logic;
SIGNAL \RAM|ram~168_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~208_q\ : std_logic;
SIGNAL \RAM|ram~224_q\ : std_logic;
SIGNAL \RAM|ram~216_q\ : std_logic;
SIGNAL \RAM|ram~232_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~176_q\ : std_logic;
SIGNAL \RAM|ram~192_q\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~200_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~240_q\ : std_logic;
SIGNAL \RAM|ram~256_q\ : std_logic;
SIGNAL \RAM|ram~248_q\ : std_logic;
SIGNAL \RAM|ram~264_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~400_q\ : std_logic;
SIGNAL \RAM|ram~432_q\ : std_logic;
SIGNAL \RAM|ram~416_q\ : std_logic;
SIGNAL \RAM|ram~448_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~464_q\ : std_logic;
SIGNAL \RAM|ram~496_q\ : std_logic;
SIGNAL \RAM|ram~480_q\ : std_logic;
SIGNAL \RAM|ram~512_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~408_q\ : std_logic;
SIGNAL \RAM|ram~440_q\ : std_logic;
SIGNAL \RAM|ram~424_q\ : std_logic;
SIGNAL \RAM|ram~456_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~472_q\ : std_logic;
SIGNAL \RAM|ram~504_q\ : std_logic;
SIGNAL \RAM|ram~488_q\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Data_IN[1]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \RAM|dado_out[0]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \switch8|saida~0_combout\ : std_logic;
SIGNAL \switch8|saida~1_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~399_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~159_q\ : std_logic;
SIGNAL \RAM|ram~415_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~151_q\ : std_logic;
SIGNAL \RAM|ram~407_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~167_q\ : std_logic;
SIGNAL \RAM|ram~423_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~207_q\ : std_logic;
SIGNAL \RAM|ram~463_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~223_q\ : std_logic;
SIGNAL \RAM|ram~479_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~215_q\ : std_logic;
SIGNAL \RAM|ram~471_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~231_q\ : std_logic;
SIGNAL \RAM|ram~487_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~303_q\ : std_logic;
SIGNAL \RAM|ram~175_q\ : std_logic;
SIGNAL \RAM|ram~431_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~319_q\ : std_logic;
SIGNAL \RAM|ram~191_q\ : std_logic;
SIGNAL \RAM|ram~447_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~439_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~327_q\ : std_logic;
SIGNAL \RAM|ram~199_q\ : std_logic;
SIGNAL \RAM|ram~455_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~367_q\ : std_logic;
SIGNAL \RAM|ram~119_q\ : std_logic;
SIGNAL \RAM|ram~375_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~383_q\ : std_logic;
SIGNAL \RAM|ram~135_q\ : std_logic;
SIGNAL \RAM|ram~391_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~239_q\ : std_logic;
SIGNAL \RAM|ram~495_q\ : std_logic;
SIGNAL \RAM|ram~247_q\ : std_logic;
SIGNAL \RAM|ram~503_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~255_q\ : std_logic;
SIGNAL \RAM|ram~511_q\ : std_logic;
SIGNAL \RAM|ram~263_q\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|contador~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|contador~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~q\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \logicaKeys|FPGARESET|saida~0_combout\ : std_logic;
SIGNAL \logicaKeys|FPGARESET|saida~1_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~4_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \logicaKeys|KEY_1|KEY|saidaQ~q\ : std_logic;
SIGNAL \logicaKeys|KEY_1|KEY|saida~combout\ : std_logic;
SIGNAL \logicaKeys|KEY_1|FF0|DOUT~q\ : std_logic;
SIGNAL \RAM|dado_out[0]~5_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~7_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \ROM|memROM~73_combout\ : std_logic;
SIGNAL \ROM|memROM~74_combout\ : std_logic;
SIGNAL \ROM|memROM~75_combout\ : std_logic;
SIGNAL \ROM|memROM~70_combout\ : std_logic;
SIGNAL \ROM|memROM~71_combout\ : std_logic;
SIGNAL \ROM|memROM~72_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~51_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~11_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~52_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~19_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~53_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~54_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~35_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~43_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~12_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~28_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~36_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~44_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~29_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~37_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~45_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~30_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~38_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~46_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \RAM|ram~163_q\ : std_logic;
SIGNAL \RAM|ram~155_q\ : std_logic;
SIGNAL \RAM|ram~171_q\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~211_q\ : std_logic;
SIGNAL \RAM|ram~227_q\ : std_logic;
SIGNAL \RAM|ram~219_q\ : std_logic;
SIGNAL \RAM|ram~235_q\ : std_logic;
SIGNAL \RAM|ram~614_combout\ : std_logic;
SIGNAL \RAM|ram~615_combout\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~403_q\ : std_logic;
SIGNAL \RAM|ram~467_q\ : std_logic;
SIGNAL \RAM|ram~419_q\ : std_logic;
SIGNAL \RAM|ram~483_q\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~618_combout\ : std_logic;
SIGNAL \RAM|ram~411_q\ : std_logic;
SIGNAL \RAM|ram~475_q\ : std_logic;
SIGNAL \RAM|ram~427_q\ : std_logic;
SIGNAL \RAM|ram~491_q\ : std_logic;
SIGNAL \RAM|ram~619_combout\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~179_q\ : std_logic;
SIGNAL \RAM|ram~195_q\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~243_q\ : std_logic;
SIGNAL \RAM|ram~259_q\ : std_logic;
SIGNAL \RAM|ram~622_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~203_q\ : std_logic;
SIGNAL \RAM|ram~623_combout\ : std_logic;
SIGNAL \RAM|ram~123_q\ : std_logic;
SIGNAL \RAM|ram~139_q\ : std_logic;
SIGNAL \RAM|ram~251_q\ : std_logic;
SIGNAL \RAM|ram~267_q\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~307_q\ : std_logic;
SIGNAL \RAM|ram~323_q\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~331_q\ : std_logic;
SIGNAL \RAM|ram~626_combout\ : std_logic;
SIGNAL \RAM|ram~371_q\ : std_logic;
SIGNAL \RAM|ram~387_q\ : std_logic;
SIGNAL \RAM|ram~379_q\ : std_logic;
SIGNAL \RAM|ram~395_q\ : std_logic;
SIGNAL \RAM|ram~627_combout\ : std_logic;
SIGNAL \RAM|ram~435_q\ : std_logic;
SIGNAL \RAM|ram~451_q\ : std_logic;
SIGNAL \RAM|ram~443_q\ : std_logic;
SIGNAL \RAM|ram~459_q\ : std_logic;
SIGNAL \RAM|ram~628_combout\ : std_logic;
SIGNAL \RAM|ram~499_q\ : std_logic;
SIGNAL \RAM|ram~515_q\ : std_logic;
SIGNAL \RAM|ram~507_q\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \RAM|ram~630_combout\ : std_logic;
SIGNAL \RAM|ram~631_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Data_IN[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~31_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~39_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~47_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~632_combout\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~124_q\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~180_q\ : std_logic;
SIGNAL \RAM|ram~156_q\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~634_combout\ : std_logic;
SIGNAL \RAM|ram~212_q\ : std_logic;
SIGNAL \RAM|ram~244_q\ : std_logic;
SIGNAL \RAM|ram~220_q\ : std_logic;
SIGNAL \RAM|ram~252_q\ : std_logic;
SIGNAL \RAM|ram~635_combout\ : std_logic;
SIGNAL \RAM|ram~636_combout\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~308_q\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~637_combout\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~372_q\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~380_q\ : std_logic;
SIGNAL \RAM|ram~638_combout\ : std_logic;
SIGNAL \RAM|ram~404_q\ : std_logic;
SIGNAL \RAM|ram~436_q\ : std_logic;
SIGNAL \RAM|ram~412_q\ : std_logic;
SIGNAL \RAM|ram~444_q\ : std_logic;
SIGNAL \RAM|ram~639_combout\ : std_logic;
SIGNAL \RAM|ram~468_q\ : std_logic;
SIGNAL \RAM|ram~500_q\ : std_logic;
SIGNAL \RAM|ram~476_q\ : std_logic;
SIGNAL \RAM|ram~508_q\ : std_logic;
SIGNAL \RAM|ram~640_combout\ : std_logic;
SIGNAL \RAM|ram~641_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~642_combout\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~140_q\ : std_logic;
SIGNAL \RAM|ram~643_combout\ : std_logic;
SIGNAL \RAM|ram~164_q\ : std_logic;
SIGNAL \RAM|ram~228_q\ : std_logic;
SIGNAL \RAM|ram~172_q\ : std_logic;
SIGNAL \RAM|ram~236_q\ : std_logic;
SIGNAL \RAM|ram~644_combout\ : std_logic;
SIGNAL \RAM|ram~196_q\ : std_logic;
SIGNAL \RAM|ram~260_q\ : std_logic;
SIGNAL \RAM|ram~204_q\ : std_logic;
SIGNAL \RAM|ram~268_q\ : std_logic;
SIGNAL \RAM|ram~645_combout\ : std_logic;
SIGNAL \RAM|ram~646_combout\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~420_q\ : std_logic;
SIGNAL \RAM|ram~484_q\ : std_logic;
SIGNAL \RAM|ram~647_combout\ : std_logic;
SIGNAL \RAM|ram~324_q\ : std_logic;
SIGNAL \RAM|ram~388_q\ : std_logic;
SIGNAL \RAM|ram~452_q\ : std_logic;
SIGNAL \RAM|ram~516_q\ : std_logic;
SIGNAL \RAM|ram~648_combout\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~428_q\ : std_logic;
SIGNAL \RAM|ram~492_q\ : std_logic;
SIGNAL \RAM|ram~649_combout\ : std_logic;
SIGNAL \RAM|ram~332_q\ : std_logic;
SIGNAL \RAM|ram~396_q\ : std_logic;
SIGNAL \RAM|ram~460_q\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~650_combout\ : std_logic;
SIGNAL \RAM|ram~651_combout\ : std_logic;
SIGNAL \RAM|ram~652_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Data_IN[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~32_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~40_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~48_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~37_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~181_q\ : std_logic;
SIGNAL \RAM|ram~653_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~213_q\ : std_logic;
SIGNAL \RAM|ram~245_q\ : std_logic;
SIGNAL \RAM|ram~654_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~165_q\ : std_logic;
SIGNAL \RAM|ram~197_q\ : std_logic;
SIGNAL \RAM|ram~655_combout\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~229_q\ : std_logic;
SIGNAL \RAM|ram~261_q\ : std_logic;
SIGNAL \RAM|ram~656_combout\ : std_logic;
SIGNAL \RAM|ram~657_combout\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~309_q\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~325_q\ : std_logic;
SIGNAL \RAM|ram~658_combout\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~373_q\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~389_q\ : std_logic;
SIGNAL \RAM|ram~659_combout\ : std_logic;
SIGNAL \RAM|ram~405_q\ : std_logic;
SIGNAL \RAM|ram~437_q\ : std_logic;
SIGNAL \RAM|ram~421_q\ : std_logic;
SIGNAL \RAM|ram~453_q\ : std_logic;
SIGNAL \RAM|ram~660_combout\ : std_logic;
SIGNAL \RAM|ram~469_q\ : std_logic;
SIGNAL \RAM|ram~501_q\ : std_logic;
SIGNAL \RAM|ram~485_q\ : std_logic;
SIGNAL \RAM|ram~517_q\ : std_logic;
SIGNAL \RAM|ram~661_combout\ : std_logic;
SIGNAL \RAM|ram~662_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~125_q\ : std_logic;
SIGNAL \RAM|ram~663_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~141_q\ : std_logic;
SIGNAL \RAM|ram~664_combout\ : std_logic;
SIGNAL \RAM|ram~157_q\ : std_logic;
SIGNAL \RAM|ram~221_q\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~253_q\ : std_logic;
SIGNAL \RAM|ram~665_combout\ : std_logic;
SIGNAL \RAM|ram~173_q\ : std_logic;
SIGNAL \RAM|ram~237_q\ : std_logic;
SIGNAL \RAM|ram~205_q\ : std_logic;
SIGNAL \RAM|ram~269_q\ : std_logic;
SIGNAL \RAM|ram~666_combout\ : std_logic;
SIGNAL \RAM|ram~667_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~413_q\ : std_logic;
SIGNAL \RAM|ram~445_q\ : std_logic;
SIGNAL \RAM|ram~668_combout\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~381_q\ : std_logic;
SIGNAL \RAM|ram~477_q\ : std_logic;
SIGNAL \RAM|ram~509_q\ : std_logic;
SIGNAL \RAM|ram~669_combout\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~333_q\ : std_logic;
SIGNAL \RAM|ram~429_q\ : std_logic;
SIGNAL \RAM|ram~461_q\ : std_logic;
SIGNAL \RAM|ram~670_combout\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~397_q\ : std_logic;
SIGNAL \RAM|ram~493_q\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~671_combout\ : std_logic;
SIGNAL \RAM|ram~672_combout\ : std_logic;
SIGNAL \RAM|ram~673_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Data_IN[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~33_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~41_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~49_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~214_q\ : std_logic;
SIGNAL \RAM|ram~674_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~166_q\ : std_logic;
SIGNAL \RAM|ram~230_q\ : std_logic;
SIGNAL \RAM|ram~675_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~158_q\ : std_logic;
SIGNAL \RAM|ram~222_q\ : std_logic;
SIGNAL \RAM|ram~676_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~174_q\ : std_logic;
SIGNAL \RAM|ram~238_q\ : std_logic;
SIGNAL \RAM|ram~677_combout\ : std_logic;
SIGNAL \RAM|ram~678_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~679_combout\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~126_q\ : std_logic;
SIGNAL \RAM|ram~142_q\ : std_logic;
SIGNAL \RAM|ram~680_combout\ : std_logic;
SIGNAL \RAM|ram~182_q\ : std_logic;
SIGNAL \RAM|ram~198_q\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~206_q\ : std_logic;
SIGNAL \RAM|ram~681_combout\ : std_logic;
SIGNAL \RAM|ram~246_q\ : std_logic;
SIGNAL \RAM|ram~262_q\ : std_logic;
SIGNAL \RAM|ram~254_q\ : std_logic;
SIGNAL \RAM|ram~270_q\ : std_logic;
SIGNAL \RAM|ram~682_combout\ : std_logic;
SIGNAL \RAM|ram~683_combout\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~406_q\ : std_logic;
SIGNAL \RAM|ram~470_q\ : std_logic;
SIGNAL \RAM|ram~684_combout\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~422_q\ : std_logic;
SIGNAL \RAM|ram~486_q\ : std_logic;
SIGNAL \RAM|ram~685_combout\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~414_q\ : std_logic;
SIGNAL \RAM|ram~478_q\ : std_logic;
SIGNAL \RAM|ram~686_combout\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~430_q\ : std_logic;
SIGNAL \RAM|ram~494_q\ : std_logic;
SIGNAL \RAM|ram~687_combout\ : std_logic;
SIGNAL \RAM|ram~688_combout\ : std_logic;
SIGNAL \RAM|ram~310_q\ : std_logic;
SIGNAL \RAM|ram~326_q\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~334_q\ : std_logic;
SIGNAL \RAM|ram~689_combout\ : std_logic;
SIGNAL \RAM|ram~374_q\ : std_logic;
SIGNAL \RAM|ram~390_q\ : std_logic;
SIGNAL \RAM|ram~382_q\ : std_logic;
SIGNAL \RAM|ram~398_q\ : std_logic;
SIGNAL \RAM|ram~690_combout\ : std_logic;
SIGNAL \RAM|ram~438_q\ : std_logic;
SIGNAL \RAM|ram~454_q\ : std_logic;
SIGNAL \RAM|ram~446_q\ : std_logic;
SIGNAL \RAM|ram~462_q\ : std_logic;
SIGNAL \RAM|ram~691_combout\ : std_logic;
SIGNAL \RAM|ram~502_q\ : std_logic;
SIGNAL \RAM|ram~518_q\ : std_logic;
SIGNAL \RAM|ram~510_q\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~692_combout\ : std_logic;
SIGNAL \RAM|ram~693_combout\ : std_logic;
SIGNAL \RAM|ram~694_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Data_IN[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~34_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~42_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|registrador~50_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|flagzero~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|flagzero~combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida[2]~6_combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_ZERO|DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|flagless~combout\ : std_logic;
SIGNAL \CPU|REG_FLAG_LESS|DOUT~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM|memROM~30_combout\ : std_logic;
SIGNAL \ROM|memROM~31_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \ROM|memROM~34_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~67_combout\ : std_logic;
SIGNAL \ROM|memROM~68_combout\ : std_logic;
SIGNAL \ROM|memROM~69_combout\ : std_logic;
SIGNAL \ROM|memROM~35_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[8]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX_PC|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~49_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \logicaKeys|KEY_0|KEY|saidaQ~q\ : std_logic;
SIGNAL \logicaKeys|KEY_0|KEY|saida~combout\ : std_logic;
SIGNAL \logicaKeys|KEY_0|FF0|DOUT~q\ : std_logic;
SIGNAL \logicaKeys|KEY_0|buff|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~6_combout\ : std_logic;
SIGNAL \DEC_Blocos|Equal6~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|LED8|DOUT~q\ : std_logic;
SIGNAL \logica_LED|comb~2_combout\ : std_logic;
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
SIGNAL \comp_HEX4|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX4|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \comp_HEX5|comb~0_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \comp_HEX5|converSeg|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comp_HEX5|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX1|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \logica_LED|LED0to7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comp_HEX2|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX0|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX3|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comp_HEX4|REG|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REG_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \interfaceBaseTempo|baseTempo|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~45_combout\ : std_logic;
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
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \logica_LED|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\ : std_logic;
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
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \CPU|BANCO_REG|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
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
SIGNAL \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~5_combout\ : std_logic;
SIGNAL \logicaKeys|KEY_1|FF0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~4_combout\ : std_logic;
SIGNAL \logicaKeys|FPGARESET|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \logicaKeys|FPGARESET|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \switch8|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \switch8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~2_combout\ : std_logic;
SIGNAL \logicaKeys|KEY_0|buff|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \logicaKeys|KEY_0|FF0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \CPU|REG_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~6_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~75_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~73_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~72_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~71_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~69_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~68_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~67_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~65_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~64_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \CPU|DEC_instrucao|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \logicaKeys|KEY_1|KEY|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \logicaKeys|KEY_0|KEY|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_flagzero~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~821_combout\ : std_logic;

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
clockSegundo <= ww_clockSegundo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~60_combout\ <= NOT \ROM|memROM~60_combout\;
\ROM|ALT_INV_memROM~53_combout\ <= NOT \ROM|memROM~53_combout\;
\ROM|ALT_INV_memROM~49_combout\ <= NOT \ROM|memROM~49_combout\;
\ROM|ALT_INV_memROM~45_combout\ <= NOT \ROM|memROM~45_combout\;
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
\CPU|BANCO_REG|ALT_INV_registrador~42_q\ <= NOT \CPU|BANCO_REG|registrador~42_q\;
\CPU|BANCO_REG|ALT_INV_registrador~34_q\ <= NOT \CPU|BANCO_REG|registrador~34_q\;
\CPU|BANCO_REG|ALT_INV_registrador~26_q\ <= NOT \CPU|BANCO_REG|registrador~26_q\;
\CPU|BANCO_REG|ALT_INV_registrador~18_q\ <= NOT \CPU|BANCO_REG|registrador~18_q\;
\CPU|BANCO_REG|ALT_INV_registrador~41_q\ <= NOT \CPU|BANCO_REG|registrador~41_q\;
\CPU|BANCO_REG|ALT_INV_registrador~33_q\ <= NOT \CPU|BANCO_REG|registrador~33_q\;
\CPU|BANCO_REG|ALT_INV_registrador~25_q\ <= NOT \CPU|BANCO_REG|registrador~25_q\;
\CPU|BANCO_REG|ALT_INV_registrador~17_q\ <= NOT \CPU|BANCO_REG|registrador~17_q\;
\CPU|BANCO_REG|ALT_INV_registrador~40_q\ <= NOT \CPU|BANCO_REG|registrador~40_q\;
\CPU|BANCO_REG|ALT_INV_registrador~32_q\ <= NOT \CPU|BANCO_REG|registrador~32_q\;
\CPU|BANCO_REG|ALT_INV_registrador~24_q\ <= NOT \CPU|BANCO_REG|registrador~24_q\;
\CPU|BANCO_REG|ALT_INV_registrador~16_q\ <= NOT \CPU|BANCO_REG|registrador~16_q\;
\CPU|BANCO_REG|ALT_INV_registrador~39_q\ <= NOT \CPU|BANCO_REG|registrador~39_q\;
\CPU|BANCO_REG|ALT_INV_registrador~31_q\ <= NOT \CPU|BANCO_REG|registrador~31_q\;
\CPU|BANCO_REG|ALT_INV_registrador~23_q\ <= NOT \CPU|BANCO_REG|registrador~23_q\;
\CPU|BANCO_REG|ALT_INV_registrador~15_q\ <= NOT \CPU|BANCO_REG|registrador~15_q\;
\CPU|BANCO_REG|ALT_INV_registrador~38_q\ <= NOT \CPU|BANCO_REG|registrador~38_q\;
\CPU|BANCO_REG|ALT_INV_registrador~30_q\ <= NOT \CPU|BANCO_REG|registrador~30_q\;
\CPU|BANCO_REG|ALT_INV_registrador~22_q\ <= NOT \CPU|BANCO_REG|registrador~22_q\;
\CPU|BANCO_REG|ALT_INV_registrador~14_q\ <= NOT \CPU|BANCO_REG|registrador~14_q\;
\CPU|BANCO_REG|ALT_INV_registrador~37_q\ <= NOT \CPU|BANCO_REG|registrador~37_q\;
\CPU|BANCO_REG|ALT_INV_registrador~29_q\ <= NOT \CPU|BANCO_REG|registrador~29_q\;
\CPU|BANCO_REG|ALT_INV_registrador~21_q\ <= NOT \CPU|BANCO_REG|registrador~21_q\;
\CPU|BANCO_REG|ALT_INV_registrador~13_q\ <= NOT \CPU|BANCO_REG|registrador~13_q\;
\CPU|BANCO_REG|ALT_INV_registrador~36_q\ <= NOT \CPU|BANCO_REG|registrador~36_q\;
\CPU|BANCO_REG|ALT_INV_registrador~28_q\ <= NOT \CPU|BANCO_REG|registrador~28_q\;
\CPU|BANCO_REG|ALT_INV_registrador~20_q\ <= NOT \CPU|BANCO_REG|registrador~20_q\;
\CPU|BANCO_REG|ALT_INV_registrador~12_q\ <= NOT \CPU|BANCO_REG|registrador~12_q\;
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|BANCO_REG|ALT_INV_registrador~35_q\ <= NOT \CPU|BANCO_REG|registrador~35_q\;
\CPU|BANCO_REG|ALT_INV_registrador~27_q\ <= NOT \CPU|BANCO_REG|registrador~27_q\;
\CPU|BANCO_REG|ALT_INV_registrador~19_q\ <= NOT \CPU|BANCO_REG|registrador~19_q\;
\CPU|BANCO_REG|ALT_INV_registrador~11_q\ <= NOT \CPU|BANCO_REG|registrador~11_q\;
\CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\ <= NOT \CPU|DEC_instrucao|Equal14~1_combout\;
\logica_LED|ALT_INV_comb~2_combout\ <= NOT \logica_LED|comb~2_combout\;
\logica_LED|ALT_INV_comb~1_combout\ <= NOT \logica_LED|comb~1_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~50_combout\ <= NOT \CPU|BANCO_REG|registrador~50_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~49_combout\ <= NOT \CPU|BANCO_REG|registrador~49_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~48_combout\ <= NOT \CPU|BANCO_REG|registrador~48_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~47_combout\ <= NOT \CPU|BANCO_REG|registrador~47_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~46_combout\ <= NOT \CPU|BANCO_REG|registrador~46_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~45_combout\ <= NOT \CPU|BANCO_REG|registrador~45_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~44_combout\ <= NOT \CPU|BANCO_REG|registrador~44_combout\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\ <= NOT \CPU|DEC_instrucao|Equal14~0_combout\;
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
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\CPU|BANCO_REG|ALT_INV_registrador~43_combout\ <= NOT \CPU|BANCO_REG|registrador~43_combout\;
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
\logica_LED|LED9|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED9|DOUT~q\;
\logica_LED|LED8|ALT_INV_DOUT~q\ <= NOT \logica_LED|LED8|DOUT~q\;
\CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_LESS|DOUT~q\;
\CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\ <= NOT \CPU|REG_FLAG_ZERO|DOUT~q\;
\CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\ <= NOT \CPU|DEC_instrucao|saida[5]~5_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\CPU|DEC_instrucao|ALT_INV_saida~4_combout\ <= NOT \CPU|DEC_instrucao|saida~4_combout\;
\RAM|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM|dado_out[0]~9_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\ <= NOT \CPU|DEC_instrucao|saida[6]~3_combout\;
\CPU|DEC_instrucao|ALT_INV_saida~2_combout\ <= NOT \CPU|DEC_instrucao|saida~2_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\RAM|ALT_INV_dado_out[0]~7_combout\ <= NOT \RAM|dado_out[0]~7_combout\;
\RAM|ALT_INV_dado_out[0]~5_combout\ <= NOT \RAM|dado_out[0]~5_combout\;
\logicaKeys|KEY_1|FF0|ALT_INV_DOUT~q\ <= NOT \logicaKeys|KEY_1|FF0|DOUT~q\;
\RAM|ALT_INV_dado_out[0]~4_combout\ <= NOT \RAM|dado_out[0]~4_combout\;
\logicaKeys|FPGARESET|ALT_INV_saida~1_combout\ <= NOT \logicaKeys|FPGARESET|saida~1_combout\;
\logicaKeys|FPGARESET|ALT_INV_saida~0_combout\ <= NOT \logicaKeys|FPGARESET|saida~0_combout\;
\interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \interfaceBaseTempo|registraUmSegundo|DOUT~q\;
\RAM|ALT_INV_dado_out~3_combout\ <= NOT \RAM|dado_out~3_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\ROM|ALT_INV_memROM~34_combout\ <= NOT \ROM|memROM~34_combout\;
\ROM|ALT_INV_memROM~33_combout\ <= NOT \ROM|memROM~33_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\ROM|ALT_INV_memROM~31_combout\ <= NOT \ROM|memROM~31_combout\;
\ROM|ALT_INV_memROM~30_combout\ <= NOT \ROM|memROM~30_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~263_q\ <= NOT \RAM|ram~263_q\;
\RAM|ALT_INV_ram~511_q\ <= NOT \RAM|ram~511_q\;
\RAM|ALT_INV_ram~255_q\ <= NOT \RAM|ram~255_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~503_q\ <= NOT \RAM|ram~503_q\;
\RAM|ALT_INV_ram~247_q\ <= NOT \RAM|ram~247_q\;
\RAM|ALT_INV_ram~495_q\ <= NOT \RAM|ram~495_q\;
\RAM|ALT_INV_ram~239_q\ <= NOT \RAM|ram~239_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~391_q\ <= NOT \RAM|ram~391_q\;
\RAM|ALT_INV_ram~135_q\ <= NOT \RAM|ram~135_q\;
\RAM|ALT_INV_ram~383_q\ <= NOT \RAM|ram~383_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~375_q\ <= NOT \RAM|ram~375_q\;
\RAM|ALT_INV_ram~119_q\ <= NOT \RAM|ram~119_q\;
\RAM|ALT_INV_ram~367_q\ <= NOT \RAM|ram~367_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~455_q\ <= NOT \RAM|ram~455_q\;
\RAM|ALT_INV_ram~199_q\ <= NOT \RAM|ram~199_q\;
\RAM|ALT_INV_ram~327_q\ <= NOT \RAM|ram~327_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~439_q\ <= NOT \RAM|ram~439_q\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~447_q\ <= NOT \RAM|ram~447_q\;
\RAM|ALT_INV_ram~191_q\ <= NOT \RAM|ram~191_q\;
\RAM|ALT_INV_ram~319_q\ <= NOT \RAM|ram~319_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~431_q\ <= NOT \RAM|ram~431_q\;
\RAM|ALT_INV_ram~175_q\ <= NOT \RAM|ram~175_q\;
\RAM|ALT_INV_ram~303_q\ <= NOT \RAM|ram~303_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~487_q\ <= NOT \RAM|ram~487_q\;
\RAM|ALT_INV_ram~231_q\ <= NOT \RAM|ram~231_q\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~471_q\ <= NOT \RAM|ram~471_q\;
\RAM|ALT_INV_ram~215_q\ <= NOT \RAM|ram~215_q\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~479_q\ <= NOT \RAM|ram~479_q\;
\RAM|ALT_INV_ram~223_q\ <= NOT \RAM|ram~223_q\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~463_q\ <= NOT \RAM|ram~463_q\;
\RAM|ALT_INV_ram~207_q\ <= NOT \RAM|ram~207_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~423_q\ <= NOT \RAM|ram~423_q\;
\RAM|ALT_INV_ram~167_q\ <= NOT \RAM|ram~167_q\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~407_q\ <= NOT \RAM|ram~407_q\;
\RAM|ALT_INV_ram~151_q\ <= NOT \RAM|ram~151_q\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~415_q\ <= NOT \RAM|ram~415_q\;
\RAM|ALT_INV_ram~159_q\ <= NOT \RAM|ram~159_q\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\ROM|ALT_INV_memROM~29_combout\ <= NOT \ROM|memROM~29_combout\;
\RAM|ALT_INV_ram~399_q\ <= NOT \RAM|ram~399_q\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\switch8|ALT_INV_saida~1_combout\ <= NOT \switch8|saida~1_combout\;
\switch8|ALT_INV_saida~0_combout\ <= NOT \switch8|saida~0_combout\;
\RAM|ALT_INV_dado_out[0]~2_combout\ <= NOT \RAM|dado_out[0]~2_combout\;
\logicaKeys|KEY_0|buff|ALT_INV_saida[0]~0_combout\ <= NOT \logicaKeys|KEY_0|buff|saida[0]~0_combout\;
\logicaKeys|KEY_0|FF0|ALT_INV_DOUT~q\ <= NOT \logicaKeys|KEY_0|FF0|DOUT~q\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\RAM|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM|dado_out[0]~1_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\ <= NOT \CPU|DEC_instrucao|saida[3]~1_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\ <= NOT \CPU|DEC_instrucao|saida[1]~0_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\RAM|ALT_INV_ram~241_q\ <= NOT \RAM|ram~241_q\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~177_q\ <= NOT \RAM|ram~177_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~217_q\ <= NOT \RAM|ram~217_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~209_q\ <= NOT \RAM|ram~209_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~153_q\ <= NOT \RAM|ram~153_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\ALT_INV_Data_IN[1]~0_combout\ <= NOT \Data_IN[1]~0_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~488_q\ <= NOT \RAM|ram~488_q\;
\RAM|ALT_INV_ram~504_q\ <= NOT \RAM|ram~504_q\;
\RAM|ALT_INV_ram~472_q\ <= NOT \RAM|ram~472_q\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~456_q\ <= NOT \RAM|ram~456_q\;
\RAM|ALT_INV_ram~424_q\ <= NOT \RAM|ram~424_q\;
\RAM|ALT_INV_ram~440_q\ <= NOT \RAM|ram~440_q\;
\RAM|ALT_INV_ram~408_q\ <= NOT \RAM|ram~408_q\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~512_q\ <= NOT \RAM|ram~512_q\;
\RAM|ALT_INV_ram~480_q\ <= NOT \RAM|ram~480_q\;
\RAM|ALT_INV_ram~496_q\ <= NOT \RAM|ram~496_q\;
\RAM|ALT_INV_ram~464_q\ <= NOT \RAM|ram~464_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~448_q\ <= NOT \RAM|ram~448_q\;
\RAM|ALT_INV_ram~416_q\ <= NOT \RAM|ram~416_q\;
\RAM|ALT_INV_ram~432_q\ <= NOT \RAM|ram~432_q\;
\RAM|ALT_INV_ram~400_q\ <= NOT \RAM|ram~400_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~264_q\ <= NOT \RAM|ram~264_q\;
\RAM|ALT_INV_ram~248_q\ <= NOT \RAM|ram~248_q\;
\RAM|ALT_INV_ram~256_q\ <= NOT \RAM|ram~256_q\;
\RAM|ALT_INV_ram~240_q\ <= NOT \RAM|ram~240_q\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~200_q\ <= NOT \RAM|ram~200_q\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\RAM|ALT_INV_ram~192_q\ <= NOT \RAM|ram~192_q\;
\RAM|ALT_INV_ram~176_q\ <= NOT \RAM|ram~176_q\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~232_q\ <= NOT \RAM|ram~232_q\;
\RAM|ALT_INV_ram~216_q\ <= NOT \RAM|ram~216_q\;
\RAM|ALT_INV_ram~224_q\ <= NOT \RAM|ram~224_q\;
\RAM|ALT_INV_ram~208_q\ <= NOT \RAM|ram~208_q\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~168_q\ <= NOT \RAM|ram~168_q\;
\RAM|ALT_INV_ram~152_q\ <= NOT \RAM|ram~152_q\;
\RAM|ALT_INV_ram~160_q\ <= NOT \RAM|ram~160_q\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~392_q\ <= NOT \RAM|ram~392_q\;
\RAM|ALT_INV_ram~328_q\ <= NOT \RAM|ram~328_q\;
\RAM|ALT_INV_ram~376_q\ <= NOT \RAM|ram~376_q\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~384_q\ <= NOT \RAM|ram~384_q\;
\RAM|ALT_INV_ram~320_q\ <= NOT \RAM|ram~320_q\;
\RAM|ALT_INV_ram~368_q\ <= NOT \RAM|ram~368_q\;
\RAM|ALT_INV_ram~304_q\ <= NOT \RAM|ram~304_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~136_q\ <= NOT \RAM|ram~136_q\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~120_q\ <= NOT \RAM|ram~120_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|REG_RETORNO|DOUT\(7);
\CPU|REG_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|REG_RETORNO|DOUT\(8);
\CPU|REG_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|REG_RETORNO|DOUT\(5);
\CPU|REG_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|REG_RETORNO|DOUT\(2);
\CPU|REG_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|REG_RETORNO|DOUT\(1);
\CPU|REG_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|REG_RETORNO|DOUT\(0);
\CPU|REG_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|REG_RETORNO|DOUT\(6);
\ROM|ALT_INV_memROM~35_combout\ <= NOT \ROM|memROM~35_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|REG_RETORNO|DOUT\(4);
\CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\ <= NOT \CPU|DEC_instrucao|Equal14~2_combout\;
\CPU|REG_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|REG_RETORNO|DOUT\(3);
\CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\ <= NOT \CPU|DEC_instrucao|saida_desvio[0]~0_combout\;
\RAM|ALT_INV_ram~602_combout\ <= NOT \RAM|ram~602_combout\;
\RAM|ALT_INV_ram~202_q\ <= NOT \RAM|ram~202_q\;
\RAM|ALT_INV_ram~170_q\ <= NOT \RAM|ram~170_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~601_combout\ <= NOT \RAM|ram~601_combout\;
\RAM|ALT_INV_ram~250_q\ <= NOT \RAM|ram~250_q\;
\RAM|ALT_INV_ram~218_q\ <= NOT \RAM|ram~218_q\;
\RAM|ALT_INV_ram~122_q\ <= NOT \RAM|ram~122_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~600_combout\ <= NOT \RAM|ram~600_combout\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~154_q\ <= NOT \RAM|ram~154_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~598_combout\ <= NOT \RAM|ram~598_combout\;
\RAM|ALT_INV_ram~514_q\ <= NOT \RAM|ram~514_q\;
\RAM|ALT_INV_ram~482_q\ <= NOT \RAM|ram~482_q\;
\RAM|ALT_INV_ram~498_q\ <= NOT \RAM|ram~498_q\;
\RAM|ALT_INV_ram~466_q\ <= NOT \RAM|ram~466_q\;
\RAM|ALT_INV_ram~597_combout\ <= NOT \RAM|ram~597_combout\;
\RAM|ALT_INV_ram~450_q\ <= NOT \RAM|ram~450_q\;
\RAM|ALT_INV_ram~418_q\ <= NOT \RAM|ram~418_q\;
\RAM|ALT_INV_ram~434_q\ <= NOT \RAM|ram~434_q\;
\RAM|ALT_INV_ram~402_q\ <= NOT \RAM|ram~402_q\;
\RAM|ALT_INV_ram~596_combout\ <= NOT \RAM|ram~596_combout\;
\RAM|ALT_INV_ram~386_q\ <= NOT \RAM|ram~386_q\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~370_q\ <= NOT \RAM|ram~370_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~322_q\ <= NOT \RAM|ram~322_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~306_q\ <= NOT \RAM|ram~306_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\RAM|ALT_INV_ram~593_combout\ <= NOT \RAM|ram~593_combout\;
\RAM|ALT_INV_ram~258_q\ <= NOT \RAM|ram~258_q\;
\RAM|ALT_INV_ram~194_q\ <= NOT \RAM|ram~194_q\;
\RAM|ALT_INV_ram~226_q\ <= NOT \RAM|ram~226_q\;
\RAM|ALT_INV_ram~162_q\ <= NOT \RAM|ram~162_q\;
\RAM|ALT_INV_ram~592_combout\ <= NOT \RAM|ram~592_combout\;
\RAM|ALT_INV_ram~242_q\ <= NOT \RAM|ram~242_q\;
\RAM|ALT_INV_ram~178_q\ <= NOT \RAM|ram~178_q\;
\RAM|ALT_INV_ram~210_q\ <= NOT \RAM|ram~210_q\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~591_combout\ <= NOT \RAM|ram~591_combout\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\ALT_INV_Data_IN[2]~1_combout\ <= NOT \Data_IN[2]~1_combout\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~588_combout\ <= NOT \RAM|ram~588_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~393_q\ <= NOT \RAM|ram~393_q\;
\RAM|ALT_INV_ram~513_q\ <= NOT \RAM|ram~513_q\;
\RAM|ALT_INV_ram~385_q\ <= NOT \RAM|ram~385_q\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~457_q\ <= NOT \RAM|ram~457_q\;
\RAM|ALT_INV_ram~329_q\ <= NOT \RAM|ram~329_q\;
\RAM|ALT_INV_ram~449_q\ <= NOT \RAM|ram~449_q\;
\RAM|ALT_INV_ram~321_q\ <= NOT \RAM|ram~321_q\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~489_q\ <= NOT \RAM|ram~489_q\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~481_q\ <= NOT \RAM|ram~481_q\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~584_combout\ <= NOT \RAM|ram~584_combout\;
\RAM|ALT_INV_ram~425_q\ <= NOT \RAM|ram~425_q\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~417_q\ <= NOT \RAM|ram~417_q\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~265_q\ <= NOT \RAM|ram~265_q\;
\RAM|ALT_INV_ram~233_q\ <= NOT \RAM|ram~233_q\;
\RAM|ALT_INV_ram~257_q\ <= NOT \RAM|ram~257_q\;
\RAM|ALT_INV_ram~225_q\ <= NOT \RAM|ram~225_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~201_q\ <= NOT \RAM|ram~201_q\;
\RAM|ALT_INV_ram~169_q\ <= NOT \RAM|ram~169_q\;
\RAM|ALT_INV_ram~193_q\ <= NOT \RAM|ram~193_q\;
\RAM|ALT_INV_ram~161_q\ <= NOT \RAM|ram~161_q\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~137_q\ <= NOT \RAM|ram~137_q\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~505_q\ <= NOT \RAM|ram~505_q\;
\RAM|ALT_INV_ram~441_q\ <= NOT \RAM|ram~441_q\;
\RAM|ALT_INV_ram~497_q\ <= NOT \RAM|ram~497_q\;
\RAM|ALT_INV_ram~433_q\ <= NOT \RAM|ram~433_q\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~473_q\ <= NOT \RAM|ram~473_q\;
\RAM|ALT_INV_ram~409_q\ <= NOT \RAM|ram~409_q\;
\RAM|ALT_INV_ram~465_q\ <= NOT \RAM|ram~465_q\;
\RAM|ALT_INV_ram~401_q\ <= NOT \RAM|ram~401_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~377_q\ <= NOT \RAM|ram~377_q\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~369_q\ <= NOT \RAM|ram~369_q\;
\RAM|ALT_INV_ram~305_q\ <= NOT \RAM|ram~305_q\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~249_q\ <= NOT \RAM|ram~249_q\;
\RAM|ALT_INV_ram~121_q\ <= NOT \RAM|ram~121_q\;
\RAM|ALT_INV_ram~633_combout\ <= NOT \RAM|ram~633_combout\;
\RAM|ALT_INV_ram~124_q\ <= NOT \RAM|ram~124_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~632_combout\ <= NOT \RAM|ram~632_combout\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\ALT_INV_Data_IN[4]~3_combout\ <= NOT \Data_IN[4]~3_combout\;
\RAM|ALT_INV_ram~631_combout\ <= NOT \RAM|ram~631_combout\;
\RAM|ALT_INV_ram~630_combout\ <= NOT \RAM|ram~630_combout\;
\RAM|ALT_INV_ram~629_combout\ <= NOT \RAM|ram~629_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~507_q\ <= NOT \RAM|ram~507_q\;
\RAM|ALT_INV_ram~515_q\ <= NOT \RAM|ram~515_q\;
\RAM|ALT_INV_ram~499_q\ <= NOT \RAM|ram~499_q\;
\RAM|ALT_INV_ram~628_combout\ <= NOT \RAM|ram~628_combout\;
\RAM|ALT_INV_ram~459_q\ <= NOT \RAM|ram~459_q\;
\RAM|ALT_INV_ram~443_q\ <= NOT \RAM|ram~443_q\;
\RAM|ALT_INV_ram~451_q\ <= NOT \RAM|ram~451_q\;
\RAM|ALT_INV_ram~435_q\ <= NOT \RAM|ram~435_q\;
\RAM|ALT_INV_ram~627_combout\ <= NOT \RAM|ram~627_combout\;
\RAM|ALT_INV_ram~395_q\ <= NOT \RAM|ram~395_q\;
\RAM|ALT_INV_ram~379_q\ <= NOT \RAM|ram~379_q\;
\RAM|ALT_INV_ram~387_q\ <= NOT \RAM|ram~387_q\;
\RAM|ALT_INV_ram~371_q\ <= NOT \RAM|ram~371_q\;
\RAM|ALT_INV_ram~626_combout\ <= NOT \RAM|ram~626_combout\;
\RAM|ALT_INV_ram~331_q\ <= NOT \RAM|ram~331_q\;
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~323_q\ <= NOT \RAM|ram~323_q\;
\RAM|ALT_INV_ram~307_q\ <= NOT \RAM|ram~307_q\;
\RAM|ALT_INV_ram~625_combout\ <= NOT \RAM|ram~625_combout\;
\RAM|ALT_INV_ram~624_combout\ <= NOT \RAM|ram~624_combout\;
\RAM|ALT_INV_ram~267_q\ <= NOT \RAM|ram~267_q\;
\RAM|ALT_INV_ram~251_q\ <= NOT \RAM|ram~251_q\;
\RAM|ALT_INV_ram~139_q\ <= NOT \RAM|ram~139_q\;
\RAM|ALT_INV_ram~123_q\ <= NOT \RAM|ram~123_q\;
\RAM|ALT_INV_ram~623_combout\ <= NOT \RAM|ram~623_combout\;
\RAM|ALT_INV_ram~203_q\ <= NOT \RAM|ram~203_q\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~622_combout\ <= NOT \RAM|ram~622_combout\;
\RAM|ALT_INV_ram~259_q\ <= NOT \RAM|ram~259_q\;
\RAM|ALT_INV_ram~243_q\ <= NOT \RAM|ram~243_q\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~621_combout\ <= NOT \RAM|ram~621_combout\;
\RAM|ALT_INV_ram~195_q\ <= NOT \RAM|ram~195_q\;
\RAM|ALT_INV_ram~179_q\ <= NOT \RAM|ram~179_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~620_combout\ <= NOT \RAM|ram~620_combout\;
\RAM|ALT_INV_ram~619_combout\ <= NOT \RAM|ram~619_combout\;
\RAM|ALT_INV_ram~491_q\ <= NOT \RAM|ram~491_q\;
\RAM|ALT_INV_ram~427_q\ <= NOT \RAM|ram~427_q\;
\RAM|ALT_INV_ram~475_q\ <= NOT \RAM|ram~475_q\;
\RAM|ALT_INV_ram~411_q\ <= NOT \RAM|ram~411_q\;
\RAM|ALT_INV_ram~618_combout\ <= NOT \RAM|ram~618_combout\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~617_combout\ <= NOT \RAM|ram~617_combout\;
\RAM|ALT_INV_ram~483_q\ <= NOT \RAM|ram~483_q\;
\RAM|ALT_INV_ram~419_q\ <= NOT \RAM|ram~419_q\;
\RAM|ALT_INV_ram~467_q\ <= NOT \RAM|ram~467_q\;
\RAM|ALT_INV_ram~403_q\ <= NOT \RAM|ram~403_q\;
\RAM|ALT_INV_ram~616_combout\ <= NOT \RAM|ram~616_combout\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~615_combout\ <= NOT \RAM|ram~615_combout\;
\RAM|ALT_INV_ram~614_combout\ <= NOT \RAM|ram~614_combout\;
\RAM|ALT_INV_ram~235_q\ <= NOT \RAM|ram~235_q\;
\RAM|ALT_INV_ram~219_q\ <= NOT \RAM|ram~219_q\;
\RAM|ALT_INV_ram~227_q\ <= NOT \RAM|ram~227_q\;
\RAM|ALT_INV_ram~211_q\ <= NOT \RAM|ram~211_q\;
\RAM|ALT_INV_ram~613_combout\ <= NOT \RAM|ram~613_combout\;
\RAM|ALT_INV_ram~171_q\ <= NOT \RAM|ram~171_q\;
\RAM|ALT_INV_ram~155_q\ <= NOT \RAM|ram~155_q\;
\RAM|ALT_INV_ram~163_q\ <= NOT \RAM|ram~163_q\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~612_combout\ <= NOT \RAM|ram~612_combout\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\ALT_INV_Data_IN[3]~2_combout\ <= NOT \Data_IN[3]~2_combout\;
\RAM|ALT_INV_ram~610_combout\ <= NOT \RAM|ram~610_combout\;
\RAM|ALT_INV_ram~609_combout\ <= NOT \RAM|ram~609_combout\;
\RAM|ALT_INV_ram~608_combout\ <= NOT \RAM|ram~608_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~458_q\ <= NOT \RAM|ram~458_q\;
\RAM|ALT_INV_ram~490_q\ <= NOT \RAM|ram~490_q\;
\RAM|ALT_INV_ram~426_q\ <= NOT \RAM|ram~426_q\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~506_q\ <= NOT \RAM|ram~506_q\;
\RAM|ALT_INV_ram~442_q\ <= NOT \RAM|ram~442_q\;
\RAM|ALT_INV_ram~474_q\ <= NOT \RAM|ram~474_q\;
\RAM|ALT_INV_ram~410_q\ <= NOT \RAM|ram~410_q\;
\RAM|ALT_INV_ram~606_combout\ <= NOT \RAM|ram~606_combout\;
\RAM|ALT_INV_ram~394_q\ <= NOT \RAM|ram~394_q\;
\RAM|ALT_INV_ram~330_q\ <= NOT \RAM|ram~330_q\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~605_combout\ <= NOT \RAM|ram~605_combout\;
\RAM|ALT_INV_ram~378_q\ <= NOT \RAM|ram~378_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~604_combout\ <= NOT \RAM|ram~604_combout\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~266_q\ <= NOT \RAM|ram~266_q\;
\RAM|ALT_INV_ram~234_q\ <= NOT \RAM|ram~234_q\;
\RAM|ALT_INV_ram~138_q\ <= NOT \RAM|ram~138_q\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~663_combout\ <= NOT \RAM|ram~663_combout\;
\RAM|ALT_INV_ram~125_q\ <= NOT \RAM|ram~125_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~662_combout\ <= NOT \RAM|ram~662_combout\;
\RAM|ALT_INV_ram~661_combout\ <= NOT \RAM|ram~661_combout\;
\RAM|ALT_INV_ram~517_q\ <= NOT \RAM|ram~517_q\;
\RAM|ALT_INV_ram~485_q\ <= NOT \RAM|ram~485_q\;
\RAM|ALT_INV_ram~501_q\ <= NOT \RAM|ram~501_q\;
\RAM|ALT_INV_ram~469_q\ <= NOT \RAM|ram~469_q\;
\RAM|ALT_INV_ram~660_combout\ <= NOT \RAM|ram~660_combout\;
\RAM|ALT_INV_ram~453_q\ <= NOT \RAM|ram~453_q\;
\RAM|ALT_INV_ram~421_q\ <= NOT \RAM|ram~421_q\;
\RAM|ALT_INV_ram~437_q\ <= NOT \RAM|ram~437_q\;
\RAM|ALT_INV_ram~405_q\ <= NOT \RAM|ram~405_q\;
\RAM|ALT_INV_ram~659_combout\ <= NOT \RAM|ram~659_combout\;
\RAM|ALT_INV_ram~389_q\ <= NOT \RAM|ram~389_q\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~373_q\ <= NOT \RAM|ram~373_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~658_combout\ <= NOT \RAM|ram~658_combout\;
\RAM|ALT_INV_ram~325_q\ <= NOT \RAM|ram~325_q\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~309_q\ <= NOT \RAM|ram~309_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~657_combout\ <= NOT \RAM|ram~657_combout\;
\RAM|ALT_INV_ram~656_combout\ <= NOT \RAM|ram~656_combout\;
\RAM|ALT_INV_ram~261_q\ <= NOT \RAM|ram~261_q\;
\RAM|ALT_INV_ram~229_q\ <= NOT \RAM|ram~229_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~655_combout\ <= NOT \RAM|ram~655_combout\;
\RAM|ALT_INV_ram~197_q\ <= NOT \RAM|ram~197_q\;
\RAM|ALT_INV_ram~165_q\ <= NOT \RAM|ram~165_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~654_combout\ <= NOT \RAM|ram~654_combout\;
\RAM|ALT_INV_ram~245_q\ <= NOT \RAM|ram~245_q\;
\RAM|ALT_INV_ram~213_q\ <= NOT \RAM|ram~213_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~653_combout\ <= NOT \RAM|ram~653_combout\;
\RAM|ALT_INV_ram~181_q\ <= NOT \RAM|ram~181_q\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\ALT_INV_Data_IN[5]~4_combout\ <= NOT \Data_IN[5]~4_combout\;
\RAM|ALT_INV_ram~652_combout\ <= NOT \RAM|ram~652_combout\;
\RAM|ALT_INV_ram~651_combout\ <= NOT \RAM|ram~651_combout\;
\RAM|ALT_INV_ram~650_combout\ <= NOT \RAM|ram~650_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~460_q\ <= NOT \RAM|ram~460_q\;
\RAM|ALT_INV_ram~396_q\ <= NOT \RAM|ram~396_q\;
\RAM|ALT_INV_ram~332_q\ <= NOT \RAM|ram~332_q\;
\RAM|ALT_INV_ram~649_combout\ <= NOT \RAM|ram~649_combout\;
\RAM|ALT_INV_ram~492_q\ <= NOT \RAM|ram~492_q\;
\RAM|ALT_INV_ram~428_q\ <= NOT \RAM|ram~428_q\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~648_combout\ <= NOT \RAM|ram~648_combout\;
\RAM|ALT_INV_ram~516_q\ <= NOT \RAM|ram~516_q\;
\RAM|ALT_INV_ram~452_q\ <= NOT \RAM|ram~452_q\;
\RAM|ALT_INV_ram~388_q\ <= NOT \RAM|ram~388_q\;
\RAM|ALT_INV_ram~324_q\ <= NOT \RAM|ram~324_q\;
\RAM|ALT_INV_ram~647_combout\ <= NOT \RAM|ram~647_combout\;
\RAM|ALT_INV_ram~484_q\ <= NOT \RAM|ram~484_q\;
\RAM|ALT_INV_ram~420_q\ <= NOT \RAM|ram~420_q\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~646_combout\ <= NOT \RAM|ram~646_combout\;
\RAM|ALT_INV_ram~645_combout\ <= NOT \RAM|ram~645_combout\;
\RAM|ALT_INV_ram~268_q\ <= NOT \RAM|ram~268_q\;
\RAM|ALT_INV_ram~204_q\ <= NOT \RAM|ram~204_q\;
\RAM|ALT_INV_ram~260_q\ <= NOT \RAM|ram~260_q\;
\RAM|ALT_INV_ram~196_q\ <= NOT \RAM|ram~196_q\;
\RAM|ALT_INV_ram~644_combout\ <= NOT \RAM|ram~644_combout\;
\RAM|ALT_INV_ram~236_q\ <= NOT \RAM|ram~236_q\;
\RAM|ALT_INV_ram~172_q\ <= NOT \RAM|ram~172_q\;
\RAM|ALT_INV_ram~228_q\ <= NOT \RAM|ram~228_q\;
\RAM|ALT_INV_ram~164_q\ <= NOT \RAM|ram~164_q\;
\RAM|ALT_INV_ram~643_combout\ <= NOT \RAM|ram~643_combout\;
\RAM|ALT_INV_ram~140_q\ <= NOT \RAM|ram~140_q\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~642_combout\ <= NOT \RAM|ram~642_combout\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~641_combout\ <= NOT \RAM|ram~641_combout\;
\RAM|ALT_INV_ram~640_combout\ <= NOT \RAM|ram~640_combout\;
\RAM|ALT_INV_ram~508_q\ <= NOT \RAM|ram~508_q\;
\RAM|ALT_INV_ram~476_q\ <= NOT \RAM|ram~476_q\;
\RAM|ALT_INV_ram~500_q\ <= NOT \RAM|ram~500_q\;
\RAM|ALT_INV_ram~468_q\ <= NOT \RAM|ram~468_q\;
\RAM|ALT_INV_ram~639_combout\ <= NOT \RAM|ram~639_combout\;
\RAM|ALT_INV_ram~444_q\ <= NOT \RAM|ram~444_q\;
\RAM|ALT_INV_ram~412_q\ <= NOT \RAM|ram~412_q\;
\RAM|ALT_INV_ram~436_q\ <= NOT \RAM|ram~436_q\;
\RAM|ALT_INV_ram~404_q\ <= NOT \RAM|ram~404_q\;
\RAM|ALT_INV_ram~638_combout\ <= NOT \RAM|ram~638_combout\;
\RAM|ALT_INV_ram~380_q\ <= NOT \RAM|ram~380_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~372_q\ <= NOT \RAM|ram~372_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~637_combout\ <= NOT \RAM|ram~637_combout\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~308_q\ <= NOT \RAM|ram~308_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~636_combout\ <= NOT \RAM|ram~636_combout\;
\RAM|ALT_INV_ram~635_combout\ <= NOT \RAM|ram~635_combout\;
\RAM|ALT_INV_ram~252_q\ <= NOT \RAM|ram~252_q\;
\RAM|ALT_INV_ram~220_q\ <= NOT \RAM|ram~220_q\;
\RAM|ALT_INV_ram~244_q\ <= NOT \RAM|ram~244_q\;
\RAM|ALT_INV_ram~212_q\ <= NOT \RAM|ram~212_q\;
\RAM|ALT_INV_ram~634_combout\ <= NOT \RAM|ram~634_combout\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~156_q\ <= NOT \RAM|ram~156_q\;
\RAM|ALT_INV_ram~180_q\ <= NOT \RAM|ram~180_q\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_Data_IN[7]~6_combout\ <= NOT \Data_IN[7]~6_combout\;
\RAM|ALT_INV_ram~694_combout\ <= NOT \RAM|ram~694_combout\;
\RAM|ALT_INV_ram~693_combout\ <= NOT \RAM|ram~693_combout\;
\RAM|ALT_INV_ram~692_combout\ <= NOT \RAM|ram~692_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~510_q\ <= NOT \RAM|ram~510_q\;
\RAM|ALT_INV_ram~518_q\ <= NOT \RAM|ram~518_q\;
\RAM|ALT_INV_ram~502_q\ <= NOT \RAM|ram~502_q\;
\RAM|ALT_INV_ram~691_combout\ <= NOT \RAM|ram~691_combout\;
\RAM|ALT_INV_ram~462_q\ <= NOT \RAM|ram~462_q\;
\RAM|ALT_INV_ram~446_q\ <= NOT \RAM|ram~446_q\;
\RAM|ALT_INV_ram~454_q\ <= NOT \RAM|ram~454_q\;
\RAM|ALT_INV_ram~438_q\ <= NOT \RAM|ram~438_q\;
\RAM|ALT_INV_ram~690_combout\ <= NOT \RAM|ram~690_combout\;
\RAM|ALT_INV_ram~398_q\ <= NOT \RAM|ram~398_q\;
\RAM|ALT_INV_ram~382_q\ <= NOT \RAM|ram~382_q\;
\RAM|ALT_INV_ram~390_q\ <= NOT \RAM|ram~390_q\;
\RAM|ALT_INV_ram~374_q\ <= NOT \RAM|ram~374_q\;
\RAM|ALT_INV_ram~689_combout\ <= NOT \RAM|ram~689_combout\;
\RAM|ALT_INV_ram~334_q\ <= NOT \RAM|ram~334_q\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~326_q\ <= NOT \RAM|ram~326_q\;
\RAM|ALT_INV_ram~310_q\ <= NOT \RAM|ram~310_q\;
\RAM|ALT_INV_ram~688_combout\ <= NOT \RAM|ram~688_combout\;
\RAM|ALT_INV_ram~687_combout\ <= NOT \RAM|ram~687_combout\;
\RAM|ALT_INV_ram~494_q\ <= NOT \RAM|ram~494_q\;
\RAM|ALT_INV_ram~430_q\ <= NOT \RAM|ram~430_q\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~686_combout\ <= NOT \RAM|ram~686_combout\;
\RAM|ALT_INV_ram~478_q\ <= NOT \RAM|ram~478_q\;
\RAM|ALT_INV_ram~414_q\ <= NOT \RAM|ram~414_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~685_combout\ <= NOT \RAM|ram~685_combout\;
\RAM|ALT_INV_ram~486_q\ <= NOT \RAM|ram~486_q\;
\RAM|ALT_INV_ram~422_q\ <= NOT \RAM|ram~422_q\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~684_combout\ <= NOT \RAM|ram~684_combout\;
\RAM|ALT_INV_ram~470_q\ <= NOT \RAM|ram~470_q\;
\RAM|ALT_INV_ram~406_q\ <= NOT \RAM|ram~406_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~683_combout\ <= NOT \RAM|ram~683_combout\;
\RAM|ALT_INV_ram~682_combout\ <= NOT \RAM|ram~682_combout\;
\RAM|ALT_INV_ram~270_q\ <= NOT \RAM|ram~270_q\;
\RAM|ALT_INV_ram~254_q\ <= NOT \RAM|ram~254_q\;
\RAM|ALT_INV_ram~262_q\ <= NOT \RAM|ram~262_q\;
\RAM|ALT_INV_ram~246_q\ <= NOT \RAM|ram~246_q\;
\RAM|ALT_INV_ram~681_combout\ <= NOT \RAM|ram~681_combout\;
\RAM|ALT_INV_ram~206_q\ <= NOT \RAM|ram~206_q\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~198_q\ <= NOT \RAM|ram~198_q\;
\RAM|ALT_INV_ram~182_q\ <= NOT \RAM|ram~182_q\;
\RAM|ALT_INV_ram~680_combout\ <= NOT \RAM|ram~680_combout\;
\RAM|ALT_INV_ram~142_q\ <= NOT \RAM|ram~142_q\;
\RAM|ALT_INV_ram~126_q\ <= NOT \RAM|ram~126_q\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~679_combout\ <= NOT \RAM|ram~679_combout\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~678_combout\ <= NOT \RAM|ram~678_combout\;
\RAM|ALT_INV_ram~677_combout\ <= NOT \RAM|ram~677_combout\;
\RAM|ALT_INV_ram~238_q\ <= NOT \RAM|ram~238_q\;
\RAM|ALT_INV_ram~174_q\ <= NOT \RAM|ram~174_q\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~676_combout\ <= NOT \RAM|ram~676_combout\;
\RAM|ALT_INV_ram~222_q\ <= NOT \RAM|ram~222_q\;
\RAM|ALT_INV_ram~158_q\ <= NOT \RAM|ram~158_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~675_combout\ <= NOT \RAM|ram~675_combout\;
\RAM|ALT_INV_ram~230_q\ <= NOT \RAM|ram~230_q\;
\RAM|ALT_INV_ram~166_q\ <= NOT \RAM|ram~166_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~674_combout\ <= NOT \RAM|ram~674_combout\;
\RAM|ALT_INV_ram~214_q\ <= NOT \RAM|ram~214_q\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\ALT_INV_Data_IN[6]~5_combout\ <= NOT \Data_IN[6]~5_combout\;
\RAM|ALT_INV_ram~673_combout\ <= NOT \RAM|ram~673_combout\;
\RAM|ALT_INV_ram~672_combout\ <= NOT \RAM|ram~672_combout\;
\RAM|ALT_INV_ram~671_combout\ <= NOT \RAM|ram~671_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~493_q\ <= NOT \RAM|ram~493_q\;
\RAM|ALT_INV_ram~397_q\ <= NOT \RAM|ram~397_q\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~670_combout\ <= NOT \RAM|ram~670_combout\;
\RAM|ALT_INV_ram~461_q\ <= NOT \RAM|ram~461_q\;
\RAM|ALT_INV_ram~429_q\ <= NOT \RAM|ram~429_q\;
\RAM|ALT_INV_ram~333_q\ <= NOT \RAM|ram~333_q\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~669_combout\ <= NOT \RAM|ram~669_combout\;
\RAM|ALT_INV_ram~509_q\ <= NOT \RAM|ram~509_q\;
\RAM|ALT_INV_ram~477_q\ <= NOT \RAM|ram~477_q\;
\RAM|ALT_INV_ram~381_q\ <= NOT \RAM|ram~381_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~668_combout\ <= NOT \RAM|ram~668_combout\;
\RAM|ALT_INV_ram~445_q\ <= NOT \RAM|ram~445_q\;
\RAM|ALT_INV_ram~413_q\ <= NOT \RAM|ram~413_q\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~667_combout\ <= NOT \RAM|ram~667_combout\;
\RAM|ALT_INV_ram~666_combout\ <= NOT \RAM|ram~666_combout\;
\RAM|ALT_INV_ram~269_q\ <= NOT \RAM|ram~269_q\;
\RAM|ALT_INV_ram~205_q\ <= NOT \RAM|ram~205_q\;
\RAM|ALT_INV_ram~237_q\ <= NOT \RAM|ram~237_q\;
\RAM|ALT_INV_ram~173_q\ <= NOT \RAM|ram~173_q\;
\RAM|ALT_INV_ram~665_combout\ <= NOT \RAM|ram~665_combout\;
\RAM|ALT_INV_ram~253_q\ <= NOT \RAM|ram~253_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~221_q\ <= NOT \RAM|ram~221_q\;
\RAM|ALT_INV_ram~157_q\ <= NOT \RAM|ram~157_q\;
\RAM|ALT_INV_ram~664_combout\ <= NOT \RAM|ram~664_combout\;
\RAM|ALT_INV_ram~141_q\ <= NOT \RAM|ram~141_q\;
\RAM|ALT_INV_ram~819_combout\ <= NOT \RAM|ram~819_combout\;
\RAM|ALT_INV_ram~817_combout\ <= NOT \RAM|ram~817_combout\;
\RAM|ALT_INV_ram~815_combout\ <= NOT \RAM|ram~815_combout\;
\RAM|ALT_INV_ram~813_combout\ <= NOT \RAM|ram~813_combout\;
\RAM|ALT_INV_ram~811_combout\ <= NOT \RAM|ram~811_combout\;
\RAM|ALT_INV_ram~809_combout\ <= NOT \RAM|ram~809_combout\;
\RAM|ALT_INV_ram~807_combout\ <= NOT \RAM|ram~807_combout\;
\RAM|ALT_INV_ram~805_combout\ <= NOT \RAM|ram~805_combout\;
\RAM|ALT_INV_ram~803_combout\ <= NOT \RAM|ram~803_combout\;
\RAM|ALT_INV_ram~801_combout\ <= NOT \RAM|ram~801_combout\;
\RAM|ALT_INV_ram~799_combout\ <= NOT \RAM|ram~799_combout\;
\RAM|ALT_INV_ram~797_combout\ <= NOT \RAM|ram~797_combout\;
\RAM|ALT_INV_ram~795_combout\ <= NOT \RAM|ram~795_combout\;
\RAM|ALT_INV_ram~793_combout\ <= NOT \RAM|ram~793_combout\;
\RAM|ALT_INV_ram~791_combout\ <= NOT \RAM|ram~791_combout\;
\RAM|ALT_INV_ram~789_combout\ <= NOT \RAM|ram~789_combout\;
\RAM|ALT_INV_ram~787_combout\ <= NOT \RAM|ram~787_combout\;
\RAM|ALT_INV_ram~785_combout\ <= NOT \RAM|ram~785_combout\;
\RAM|ALT_INV_ram~783_combout\ <= NOT \RAM|ram~783_combout\;
\RAM|ALT_INV_ram~781_combout\ <= NOT \RAM|ram~781_combout\;
\RAM|ALT_INV_ram~779_combout\ <= NOT \RAM|ram~779_combout\;
\RAM|ALT_INV_ram~777_combout\ <= NOT \RAM|ram~777_combout\;
\RAM|ALT_INV_ram~775_combout\ <= NOT \RAM|ram~775_combout\;
\RAM|ALT_INV_ram~773_combout\ <= NOT \RAM|ram~773_combout\;
\RAM|ALT_INV_ram~771_combout\ <= NOT \RAM|ram~771_combout\;
\RAM|ALT_INV_ram~769_combout\ <= NOT \RAM|ram~769_combout\;
\RAM|ALT_INV_ram~767_combout\ <= NOT \RAM|ram~767_combout\;
\RAM|ALT_INV_ram~765_combout\ <= NOT \RAM|ram~765_combout\;
\RAM|ALT_INV_ram~763_combout\ <= NOT \RAM|ram~763_combout\;
\RAM|ALT_INV_ram~761_combout\ <= NOT \RAM|ram~761_combout\;
\RAM|ALT_INV_ram~759_combout\ <= NOT \RAM|ram~759_combout\;
\RAM|ALT_INV_ram~757_combout\ <= NOT \RAM|ram~757_combout\;
\RAM|ALT_INV_ram~755_combout\ <= NOT \RAM|ram~755_combout\;
\RAM|ALT_INV_ram~753_combout\ <= NOT \RAM|ram~753_combout\;
\RAM|ALT_INV_ram~751_combout\ <= NOT \RAM|ram~751_combout\;
\RAM|ALT_INV_ram~749_combout\ <= NOT \RAM|ram~749_combout\;
\RAM|ALT_INV_ram~747_combout\ <= NOT \RAM|ram~747_combout\;
\RAM|ALT_INV_ram~745_combout\ <= NOT \RAM|ram~745_combout\;
\RAM|ALT_INV_ram~743_combout\ <= NOT \RAM|ram~743_combout\;
\RAM|ALT_INV_ram~741_combout\ <= NOT \RAM|ram~741_combout\;
\RAM|ALT_INV_ram~739_combout\ <= NOT \RAM|ram~739_combout\;
\RAM|ALT_INV_ram~737_combout\ <= NOT \RAM|ram~737_combout\;
\RAM|ALT_INV_ram~735_combout\ <= NOT \RAM|ram~735_combout\;
\RAM|ALT_INV_ram~733_combout\ <= NOT \RAM|ram~733_combout\;
\RAM|ALT_INV_ram~731_combout\ <= NOT \RAM|ram~731_combout\;
\RAM|ALT_INV_ram~729_combout\ <= NOT \RAM|ram~729_combout\;
\RAM|ALT_INV_ram~727_combout\ <= NOT \RAM|ram~727_combout\;
\RAM|ALT_INV_ram~725_combout\ <= NOT \RAM|ram~725_combout\;
\RAM|ALT_INV_ram~723_combout\ <= NOT \RAM|ram~723_combout\;
\RAM|ALT_INV_ram~721_combout\ <= NOT \RAM|ram~721_combout\;
\RAM|ALT_INV_ram~719_combout\ <= NOT \RAM|ram~719_combout\;
\RAM|ALT_INV_ram~717_combout\ <= NOT \RAM|ram~717_combout\;
\RAM|ALT_INV_ram~715_combout\ <= NOT \RAM|ram~715_combout\;
\RAM|ALT_INV_ram~713_combout\ <= NOT \RAM|ram~713_combout\;
\RAM|ALT_INV_ram~711_combout\ <= NOT \RAM|ram~711_combout\;
\RAM|ALT_INV_ram~709_combout\ <= NOT \RAM|ram~709_combout\;
\RAM|ALT_INV_ram~707_combout\ <= NOT \RAM|ram~707_combout\;
\RAM|ALT_INV_ram~705_combout\ <= NOT \RAM|ram~705_combout\;
\RAM|ALT_INV_ram~703_combout\ <= NOT \RAM|ram~703_combout\;
\RAM|ALT_INV_ram~701_combout\ <= NOT \RAM|ram~701_combout\;
\RAM|ALT_INV_ram~699_combout\ <= NOT \RAM|ram~699_combout\;
\RAM|ALT_INV_ram~697_combout\ <= NOT \RAM|ram~697_combout\;
\RAM|ALT_INV_process_0~1_combout\ <= NOT \RAM|process_0~1_combout\;
\RAM|ALT_INV_ram~695_combout\ <= NOT \RAM|ram~695_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ROM|ALT_INV_memROM~75_combout\ <= NOT \ROM|memROM~75_combout\;
\ROM|ALT_INV_memROM~74_combout\ <= NOT \ROM|memROM~74_combout\;
\ROM|ALT_INV_memROM~73_combout\ <= NOT \ROM|memROM~73_combout\;
\ROM|ALT_INV_memROM~72_combout\ <= NOT \ROM|memROM~72_combout\;
\ROM|ALT_INV_memROM~71_combout\ <= NOT \ROM|memROM~71_combout\;
\ROM|ALT_INV_memROM~70_combout\ <= NOT \ROM|memROM~70_combout\;
\ROM|ALT_INV_memROM~69_combout\ <= NOT \ROM|memROM~69_combout\;
\ROM|ALT_INV_memROM~68_combout\ <= NOT \ROM|memROM~68_combout\;
\ROM|ALT_INV_memROM~67_combout\ <= NOT \ROM|memROM~67_combout\;
\ROM|ALT_INV_memROM~66_combout\ <= NOT \ROM|memROM~66_combout\;
\ROM|ALT_INV_memROM~65_combout\ <= NOT \ROM|memROM~65_combout\;
\ROM|ALT_INV_memROM~64_combout\ <= NOT \ROM|memROM~64_combout\;
\ROM|ALT_INV_memROM~59_combout\ <= NOT \ROM|memROM~59_combout\;
\ROM|ALT_INV_memROM~58_combout\ <= NOT \ROM|memROM~58_combout\;
\ROM|ALT_INV_memROM~57_combout\ <= NOT \ROM|memROM~57_combout\;
\ROM|ALT_INV_memROM~44_combout\ <= NOT \ROM|memROM~44_combout\;
\ROM|ALT_INV_memROM~43_combout\ <= NOT \ROM|memROM~43_combout\;
\ROM|ALT_INV_memROM~42_combout\ <= NOT \ROM|memROM~42_combout\;
\ROM|ALT_INV_memROM~41_combout\ <= NOT \ROM|memROM~41_combout\;
\ROM|ALT_INV_memROM~40_combout\ <= NOT \ROM|memROM~40_combout\;
\CPU|DEC_instrucao|ALT_INV_saida[1]~7_combout\ <= NOT \CPU|DEC_instrucao|saida[1]~7_combout\;
\ROM|ALT_INV_memROM~39_combout\ <= NOT \ROM|memROM~39_combout\;
\ROM|ALT_INV_memROM~38_combout\ <= NOT \ROM|memROM~38_combout\;
\logicaKeys|KEY_1|KEY|ALT_INV_saidaQ~q\ <= NOT \logicaKeys|KEY_1|KEY|saidaQ~q\;
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceBaseTempo|baseTempo|contador\(1);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceBaseTempo|baseTempo|contador\(0);
\logicaKeys|KEY_0|KEY|ALT_INV_saidaQ~q\ <= NOT \logicaKeys|KEY_0|KEY|saidaQ~q\;
\ROM|ALT_INV_memROM~37_combout\ <= NOT \ROM|memROM~37_combout\;
\ROM|ALT_INV_memROM~36_combout\ <= NOT \ROM|memROM~36_combout\;
\CPU|ULA1|ALT_INV_flagzero~0_combout\ <= NOT \CPU|ULA1|flagzero~0_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceBaseTempo|baseTempo|tick~q\;
\RAM|ALT_INV_ram~821_combout\ <= NOT \RAM|ram~821_combout\;

\clockSegundo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|dado_out[0]~6_combout\,
	oe => \RAM|dado_out[0]~8_combout\,
	devoe => ww_devoe,
	o => \clockSegundo~output_o\);

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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~39_combout\ = (!\CPU|PC|DOUT\(7) & ((\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~39_combout\);

\ROM|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~38_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) & 
-- ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ 
-- (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010000000000000000001100101000001000000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~38_combout\);

\ROM|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~45_combout\ = ( !\CPU|PC|DOUT\(1) & ( (\ROM|memROM~39_combout\ & (\ROM|memROM~38_combout\ & (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(6)))))) ) ) # ( \CPU|PC|DOUT\(1) & ( (\ROM|memROM~39_combout\ & (\ROM|memROM~38_combout\ & 
-- (!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000100001000000000011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~39_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~38_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	datag => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~45_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(4)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110010010010011011110111110110111100100100100110111101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~10_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2)))))) ) ) 
-- # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & 
-- ((\CPU|PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000101101110111111110001001100100001011011101111111100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1)))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101111110011111001101111001101111011111100111110011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~60_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & (\ROM|memROM~9_combout\)) # (\CPU|PC|DOUT\(6) & ((\ROM|memROM~11_combout\)))))) ) ) # ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(8) & (\ROM|memROM~10_combout\ & (!\CPU|PC|DOUT\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000000000000010000000000000001000100010000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	datag => \ROM|ALT_INV_memROM~9_combout\,
	combout => \ROM|memROM~60_combout\);

\ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~40_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & 
-- \CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(4))))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(4))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100100000000000010100000010100100000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~40_combout\);

\ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~41_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100100110000101010010011000010101001001100001010100100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~41_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \ROM|memROM~40_combout\ & ( \ROM|memROM~41_combout\ & ( !\CPU|PC|DOUT\(0) ) ) ) # ( !\ROM|memROM~40_combout\ & ( \ROM|memROM~41_combout\ & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(5))) # 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(5))))) ) ) ) # ( \ROM|memROM~40_combout\ & ( !\ROM|memROM~41_combout\ & ( (!\CPU|PC|DOUT\(0)) # ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101110101000000001010000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \ROM|ALT_INV_memROM~40_combout\,
	dataf => \ROM|ALT_INV_memROM~41_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~27_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110110000000000011011000000000001101100000000000110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~42_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( 
-- (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000001000001101000000000100000010110000100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~42_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( !\ROM|memROM~42_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000001100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \ROM|ALT_INV_memROM~42_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~8_combout\) # ((\CPU|PC|DOUT\(4) & \ROM|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100000000110011010000000011001101000000001100110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|DEC_instrucao|Equal14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal14~2_combout\ = (\ROM|memROM~28_combout\ & (!\ROM|memROM~60_combout\ & (\ROM|memROM~27_combout\ & \ROM|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~60_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DEC_instrucao|Equal14~2_combout\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|DEC_instrucao|Equal14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal14~3_combout\ = ( \ROM|memROM~15_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~66_combout\ & (\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	datac => \ROM|ALT_INV_memROM~60_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DEC_instrucao|Equal14~3_combout\);

\CPU|REG_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(4));

\CPU|MUX_PC|saida_MUX[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[4]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(4))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~45_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(4))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(4),
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[4]~1_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~43_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(5)) # ((!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (((\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(5)) # ((\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001111111101101001010100100101110111100101000001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~43_combout\);

\ROM|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~44_combout\ = ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(4))) # 
-- (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100010101000001000000111001010001000101010000010000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~44_combout\);

\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = ( \ROM|memROM~43_combout\ & ( \ROM|memROM~44_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6)) # (!\CPU|PC|DOUT\(5)))) ) ) ) # ( \ROM|memROM~43_combout\ & ( !\ROM|memROM~44_combout\ & ( (!\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(6) $ (((!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000001010000000000000000000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~43_combout\,
	dataf => \ROM|ALT_INV_memROM~44_combout\,
	combout => \ROM|memROM~25_combout\);

\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = (!\CPU|PC|DOUT\(8) & \ROM|memROM~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~25_combout\,
	combout => \ROM|memROM~26_combout\);

\CPU|REG_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(1));

\CPU|MUX_PC|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[1]~4_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(1))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~26_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(1))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~26_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(1),
	datae => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[1]~4_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(4))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110000010010001010011100000110011100000100100010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~18_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001110110011011010101000000011010011101100110110101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~19_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(3)))))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000010101110001101011101110010000000101011100011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~17_combout\);

\ROM|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~53_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & (\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(6) & ((\ROM|memROM~19_combout\)))))) ) ) # ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(8) & (\ROM|memROM~18_combout\ & ((!\CPU|PC|DOUT\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000000100000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \ROM|ALT_INV_memROM~19_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	datag => \ROM|ALT_INV_memROM~17_combout\,
	combout => \ROM|memROM~53_combout\);

\CPU|REG_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(0));

\CPU|MUX_PC|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[0]~3_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(0))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~53_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(0))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~53_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(0),
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[0]~3_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~57_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3)))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(6))))) # 
-- (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(1)))))) # 
-- (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110011110111111111010010110000000011000010010001110000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~57_combout\);

\ROM|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~58_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000000100000000000001000000000000000110000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~58_combout\);

\ROM|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~59_combout\ = (!\CPU|PC|DOUT\(5) & (\ROM|memROM~57_combout\)) # (\CPU|PC|DOUT\(5) & ((\ROM|memROM~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~57_combout\,
	datab => \ROM|ALT_INV_memROM~58_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~59_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~59_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~59_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|REG_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(2));

\CPU|MUX_PC|saida_MUX[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[2]~5_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(2))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~16_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(2))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(2),
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[2]~5_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM|memROM~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~64_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(4))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(5) & 
-- (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000001000000000100001000001100001010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~64_combout\);

\ROM|memROM~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~65_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(4)))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(4))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(4)))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000001000001011001100010000000000100000110000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~65_combout\);

\ROM|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~66_combout\ = (!\CPU|PC|DOUT\(3) & (\ROM|memROM~64_combout\)) # (\CPU|PC|DOUT\(3) & ((\ROM|memROM~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~64_combout\,
	datab => \ROM|ALT_INV_memROM~65_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~66_combout\);

\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~66_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	combout => \ROM|memROM~28_combout\);

\CPU|DEC_instrucao|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~2_combout\ = (!\ROM|memROM~15_combout\ & (!\ROM|memROM~60_combout\ & (!\ROM|memROM~27_combout\ $ (\ROM|memROM~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001000000000010000100000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~60_combout\,
	combout => \CPU|DEC_instrucao|saida~2_combout\);

\CPU|DEC_instrucao|saida[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[6]~3_combout\ = ( \CPU|DEC_instrucao|saida~2_combout\ & ( (!\ROM|memROM~15_combout\) # (\ROM|memROM~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_saida~2_combout\,
	combout => \CPU|DEC_instrucao|saida[6]~3_combout\);

\CPU|DEC_instrucao|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[1]~7_combout\ = (\ROM|memROM~8_combout\ & ((!\CPU|PC|DOUT\(4)) # (!\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DEC_instrucao|saida[1]~7_combout\);

\CPU|DEC_instrucao|Equal14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal14~1_combout\ = ( !\ROM|memROM~14_combout\ & ( !\CPU|DEC_instrucao|saida[1]~7_combout\ & ( (!\ROM|memROM~60_combout\ & ((!\ROM|memROM~0_combout\) # ((!\ROM|memROM~66_combout\ & !\ROM|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	datac => \ROM|ALT_INV_memROM~60_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~7_combout\,
	combout => \CPU|DEC_instrucao|Equal14~1_combout\);

\CPU|DEC_instrucao|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[1]~0_combout\ = ( \ROM|memROM~66_combout\ & ( !\CPU|DEC_instrucao|saida[1]~7_combout\ & ( (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~60_combout\ & (\ROM|memROM~0_combout\ & !\ROM|memROM~12_combout\)) # (\ROM|memROM~60_combout\ & 
-- (!\ROM|memROM~0_combout\)))) ) ) ) # ( !\ROM|memROM~66_combout\ & ( !\CPU|DEC_instrucao|saida[1]~7_combout\ & ( (\ROM|memROM~60_combout\ & (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~0_combout\) # (!\ROM|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000011001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~60_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~66_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~7_combout\,
	combout => \CPU|DEC_instrucao|saida[1]~0_combout\);

\CPU|DEC_instrucao|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[3]~1_combout\ = ( \ROM|memROM~14_combout\ & ( \CPU|DEC_instrucao|saida[1]~7_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~66_combout\ & (!\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\))) ) ) ) # ( 
-- !\ROM|memROM~14_combout\ & ( \CPU|DEC_instrucao|saida[1]~7_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~66_combout\ & (!\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\))) ) ) ) # ( \ROM|memROM~14_combout\ & ( 
-- !\CPU|DEC_instrucao|saida[1]~7_combout\ & ( (\ROM|memROM~0_combout\ & (!\ROM|memROM~66_combout\ & (!\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\))) ) ) ) # ( !\ROM|memROM~14_combout\ & ( !\CPU|DEC_instrucao|saida[1]~7_combout\ & ( 
-- (\ROM|memROM~0_combout\ & ((!\ROM|memROM~66_combout\ & (!\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\)) # (\ROM|memROM~66_combout\ & (\ROM|memROM~60_combout\ & !\ROM|memROM~12_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	datac => \ROM|ALT_INV_memROM~60_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DEC_instrucao|ALT_INV_saida[1]~7_combout\,
	combout => \CPU|DEC_instrucao|saida[3]~1_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000010001100000000001000110000000000100011000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~6_combout\ & ( (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~7_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM|memROM~7_combout\ & ( (\CPU|PC|DOUT\(8) & !\ROM|memROM~5_combout\) ) ) # ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~5_combout\ & (((!\ROM|memROM~69_combout\) # (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001110000010100000101000011110000011100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|dado_out~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~3_combout\ = (\RAM|process_0~0_combout\ & ((!\CPU|DEC_instrucao|saida[1]~0_combout\ & ((\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|saida[1]~0_combout\ & (!\CPU|DEC_instrucao|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101110000000000010111000000000001011100000000000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|dado_out~3_combout\);

\RAM|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~1_combout\ = ( !\ROM|memROM~7_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (\ROM|memROM~5_combout\ & \ROM|memROM~69_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM|dado_out[0]~1_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \CPU|DEC_instrucao|saida[3]~1_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( (!\ROM|memROM~16_combout\ & (!\ROM|memROM~53_combout\ & ((!\CPU|DEC_instrucao|Equal14~1_combout\) # (!\CPU|DEC_instrucao|saida[1]~0_combout\)))) ) ) ) # ( 
-- !\CPU|DEC_instrucao|saida[3]~1_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( (!\ROM|memROM~16_combout\ & (!\ROM|memROM~53_combout\ & (!\CPU|DEC_instrucao|Equal14~1_combout\ & \CPU|DEC_instrucao|saida[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~53_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~1_combout\,
	combout => \comb~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & \comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ALT_INV_comb~0_combout\,
	combout => \comb~1_combout\);

\RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~695_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~695_combout\);

\CPU|DEC_instrucao|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|Equal14~0_combout\ = ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~60_combout\ & ((!\ROM|memROM~0_combout\) # ((!\ROM|memROM~66_combout\ & !\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001010000000000000000000001110000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	datac => \ROM|ALT_INV_memROM~60_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DEC_instrucao|Equal14~0_combout\);

\RAM|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~1_combout\ = (\CPU|DEC_instrucao|Equal14~0_combout\ & \RAM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datab => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|process_0~1_combout\);

\RAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~696_combout\ = (\RAM|ram~695_combout\ & \RAM|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~695_combout\,
	datab => \RAM|ALT_INV_process_0~1_combout\,
	combout => \RAM|ram~696_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~727_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~727_combout\);

\RAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~728_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~727_combout\,
	combout => \RAM|ram~728_combout\);

\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

\RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~759_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~759_combout\);

\RAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~760_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~759_combout\,
	combout => \RAM|ram~760_combout\);

\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

\RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~791_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~791_combout\);

\RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~792_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~791_combout\,
	combout => \RAM|ram~792_combout\);

\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~114_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~50_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~82_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datab => \RAM|ALT_INV_ram~82_q\,
	datac => \RAM|ALT_INV_ram~50_q\,
	datad => \RAM|ALT_INV_ram~114_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~590_combout\);

\RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~703_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~703_combout\);

\RAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~704_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~703_combout\,
	combout => \RAM|ram~704_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~735_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~735_combout\);

\RAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~736_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~735_combout\,
	combout => \RAM|ram~736_combout\);

\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

\RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~767_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~767_combout\);

\RAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~768_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~767_combout\,
	combout => \RAM|ram~768_combout\);

\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

\RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~799_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~799_combout\);

\RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~800_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~799_combout\,
	combout => \RAM|ram~800_combout\);

\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~130_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~66_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~98_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datab => \RAM|ALT_INV_ram~98_q\,
	datac => \RAM|ALT_INV_ram~66_q\,
	datad => \RAM|ALT_INV_ram~130_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~591_combout\);

\RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~699_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~699_combout\);

\RAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~700_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~699_combout\,
	combout => \RAM|ram~700_combout\);

\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

\RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~731_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~731_combout\);

\RAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~732_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~731_combout\,
	combout => \RAM|ram~732_combout\);

\RAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~210_q\);

\RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~763_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~763_combout\);

\RAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~764_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~763_combout\,
	combout => \RAM|ram~764_combout\);

\RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~178_q\);

\RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~807_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~807_combout\);

\RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~808_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~807_combout\,
	combout => \RAM|ram~808_combout\);

\RAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~242_q\);

\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~242_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~178_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~210_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~146_q\,
	datab => \RAM|ALT_INV_ram~210_q\,
	datac => \RAM|ALT_INV_ram~178_q\,
	datad => \RAM|ALT_INV_ram~242_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~592_combout\);

\RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~707_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~707_combout\);

\RAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~708_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~707_combout\,
	combout => \RAM|ram~708_combout\);

\RAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~162_q\);

\RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~739_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~739_combout\);

\RAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~740_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~739_combout\,
	combout => \RAM|ram~740_combout\);

\RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~226_q\);

\RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~771_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~771_combout\);

\RAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~772_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~771_combout\,
	combout => \RAM|ram~772_combout\);

\RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~194_q\);

\RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~815_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~815_combout\);

\RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~816_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~815_combout\,
	combout => \RAM|ram~816_combout\);

\RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~258_q\);

\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~258_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~194_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~226_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~162_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~162_q\,
	datab => \RAM|ALT_INV_ram~226_q\,
	datac => \RAM|ALT_INV_ram~194_q\,
	datad => \RAM|ALT_INV_ram~258_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~593_combout\);

\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~593_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~592_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~591_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~590_combout\,
	datab => \RAM|ALT_INV_ram~591_combout\,
	datac => \RAM|ALT_INV_ram~592_combout\,
	datad => \RAM|ALT_INV_ram~593_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~594_combout\);

\RAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~697_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~697_combout\);

\RAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~698_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~697_combout\,
	combout => \RAM|ram~698_combout\);

\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

\RAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~761_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~761_combout\);

\RAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~762_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~761_combout\,
	combout => \RAM|ram~762_combout\);

\RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~306_q\);

\RAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~705_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~705_combout\);

\RAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~706_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~705_combout\,
	combout => \RAM|ram~706_combout\);

\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

\RAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~769_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~769_combout\);

\RAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~770_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~769_combout\,
	combout => \RAM|ram~770_combout\);

\RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~322_q\);

\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~322_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~290_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~306_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~274_q\,
	datab => \RAM|ALT_INV_ram~306_q\,
	datac => \RAM|ALT_INV_ram~290_q\,
	datad => \RAM|ALT_INV_ram~322_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~595_combout\);

\RAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~729_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~729_combout\);

\RAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~730_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~729_combout\,
	combout => \RAM|ram~730_combout\);

\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

\RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~793_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~793_combout\);

\RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~794_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~793_combout\,
	combout => \RAM|ram~794_combout\);

\RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~370_q\);

\RAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~737_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~737_combout\);

\RAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~738_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~737_combout\,
	combout => \RAM|ram~738_combout\);

\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

\RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~801_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~801_combout\);

\RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~802_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~801_combout\,
	combout => \RAM|ram~802_combout\);

\RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~386_q\);

\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~386_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~354_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~370_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~338_q\,
	datab => \RAM|ALT_INV_ram~370_q\,
	datac => \RAM|ALT_INV_ram~354_q\,
	datad => \RAM|ALT_INV_ram~386_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~596_combout\);

\RAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~701_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~701_combout\);

\RAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~702_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~701_combout\,
	combout => \RAM|ram~702_combout\);

\RAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~402_q\);

\RAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~765_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~765_combout\);

\RAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~766_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~765_combout\,
	combout => \RAM|ram~766_combout\);

\RAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~434_q\);

\RAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~709_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~709_combout\);

\RAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~710_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~709_combout\,
	combout => \RAM|ram~710_combout\);

\RAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~418_q\);

\RAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~773_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~773_combout\);

\RAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~774_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~773_combout\,
	combout => \RAM|ram~774_combout\);

\RAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~450_q\);

\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~450_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~418_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~434_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~402_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~402_q\,
	datab => \RAM|ALT_INV_ram~434_q\,
	datac => \RAM|ALT_INV_ram~418_q\,
	datad => \RAM|ALT_INV_ram~450_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~597_combout\);

\RAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~733_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~733_combout\);

\RAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~734_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~733_combout\,
	combout => \RAM|ram~734_combout\);

\RAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~466_q\);

\RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~809_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~809_combout\);

\RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~810_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~809_combout\,
	combout => \RAM|ram~810_combout\);

\RAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~498_q\);

\RAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~741_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~741_combout\);

\RAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~742_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~741_combout\,
	combout => \RAM|ram~742_combout\);

\RAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~482_q\);

\RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~817_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (!\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~817_combout\);

\RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~818_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~817_combout\,
	combout => \RAM|ram~818_combout\);

\RAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~514_q\);

\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~514_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~482_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~498_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~466_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~466_q\,
	datab => \RAM|ALT_INV_ram~498_q\,
	datac => \RAM|ALT_INV_ram~482_q\,
	datad => \RAM|ALT_INV_ram~514_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~598_combout\);

\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~598_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~597_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~596_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~595_combout\,
	datab => \RAM|ALT_INV_ram~596_combout\,
	datac => \RAM|ALT_INV_ram~597_combout\,
	datad => \RAM|ALT_INV_ram~598_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~599_combout\);

\RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~711_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~711_combout\);

\RAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~712_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~711_combout\,
	combout => \RAM|ram~712_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~775_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~775_combout\);

\RAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~776_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~775_combout\,
	combout => \RAM|ram~776_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~715_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~715_combout\);

\RAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~716_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~715_combout\,
	combout => \RAM|ram~716_combout\);

\RAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~154_q\);

\RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~779_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~779_combout\);

\RAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~780_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~779_combout\,
	combout => \RAM|ram~780_combout\);

\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~186_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~154_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~58_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \RAM|ALT_INV_ram~58_q\,
	datac => \RAM|ALT_INV_ram~154_q\,
	datad => \RAM|ALT_INV_ram~186_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~600_combout\);

\RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~743_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~743_combout\);

\RAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~744_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~743_combout\,
	combout => \RAM|ram~744_combout\);

\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

\RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~795_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~795_combout\);

\RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~796_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~795_combout\,
	combout => \RAM|ram~796_combout\);

\RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~122_q\);

\RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~747_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~747_combout\);

\RAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~748_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~747_combout\,
	combout => \RAM|ram~748_combout\);

\RAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~218_q\);

\RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~811_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~811_combout\);

\RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~812_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~811_combout\,
	combout => \RAM|ram~812_combout\);

\RAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~250_q\);

\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~250_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~218_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~122_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~90_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~90_q\,
	datab => \RAM|ALT_INV_ram~122_q\,
	datac => \RAM|ALT_INV_ram~218_q\,
	datad => \RAM|ALT_INV_ram~250_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~601_combout\);

\RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~719_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~719_combout\);

\RAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~720_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~719_combout\,
	combout => \RAM|ram~720_combout\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~783_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~783_combout\);

\RAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~784_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~783_combout\,
	combout => \RAM|ram~784_combout\);

\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

\RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~723_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~723_combout\);

\RAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~724_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~723_combout\,
	combout => \RAM|ram~724_combout\);

\RAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~170_q\);

\RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~787_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~787_combout\);

\RAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~788_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~787_combout\,
	combout => \RAM|ram~788_combout\);

\RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~202_q\);

\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~202_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~170_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~74_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~42_q\,
	datab => \RAM|ALT_INV_ram~74_q\,
	datac => \RAM|ALT_INV_ram~170_q\,
	datad => \RAM|ALT_INV_ram~202_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~602_combout\);

\RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~751_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~751_combout\);

\RAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~752_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~751_combout\,
	combout => \RAM|ram~752_combout\);

\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

\RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~803_combout\ = ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~803_combout\);

\RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~804_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~803_combout\,
	combout => \RAM|ram~804_combout\);

\RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~138_q\);

\RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~755_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~755_combout\);

\RAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~756_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~755_combout\,
	combout => \RAM|ram~756_combout\);

\RAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~234_q\);

\RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~819_combout\ = ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~819_combout\);

\RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~820_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~819_combout\,
	combout => \RAM|ram~820_combout\);

\RAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~266_q\);

\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~266_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~234_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~138_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~106_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~106_q\,
	datab => \RAM|ALT_INV_ram~138_q\,
	datac => \RAM|ALT_INV_ram~234_q\,
	datad => \RAM|ALT_INV_ram~266_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~603_combout\);

\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~603_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~602_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ 
-- & ( \RAM|ram~601_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~600_combout\,
	datab => \RAM|ALT_INV_ram~601_combout\,
	datac => \RAM|ALT_INV_ram~602_combout\,
	datad => \RAM|ALT_INV_ram~603_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~604_combout\);

\RAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~713_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~713_combout\);

\RAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~714_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~713_combout\,
	combout => \RAM|ram~714_combout\);

\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

\RAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~745_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~745_combout\);

\RAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~746_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~745_combout\,
	combout => \RAM|ram~746_combout\);

\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

\RAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~777_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~777_combout\);

\RAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~778_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~777_combout\,
	combout => \RAM|ram~778_combout\);

\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

\RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~797_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~797_combout\);

\RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~798_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~797_combout\,
	combout => \RAM|ram~798_combout\);

\RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~378_q\);

\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~378_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~314_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~346_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~282_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~282_q\,
	datab => \RAM|ALT_INV_ram~346_q\,
	datac => \RAM|ALT_INV_ram~314_q\,
	datad => \RAM|ALT_INV_ram~378_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~605_combout\);

\RAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~721_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~721_combout\);

\RAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~722_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~721_combout\,
	combout => \RAM|ram~722_combout\);

\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

\RAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~753_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~753_combout\);

\RAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~754_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~753_combout\,
	combout => \RAM|ram~754_combout\);

\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

\RAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~785_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~785_combout\);

\RAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~786_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~785_combout\,
	combout => \RAM|ram~786_combout\);

\RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~330_q\);

\RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~805_combout\ = ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~805_combout\);

\RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~806_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~805_combout\,
	combout => \RAM|ram~806_combout\);

\RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~394_q\);

\RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~606_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~394_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~330_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~362_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~298_q\,
	datab => \RAM|ALT_INV_ram~362_q\,
	datac => \RAM|ALT_INV_ram~330_q\,
	datad => \RAM|ALT_INV_ram~394_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~606_combout\);

\RAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~717_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~717_combout\);

\RAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~718_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~717_combout\,
	combout => \RAM|ram~718_combout\);

\RAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~410_q\);

\RAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~749_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~749_combout\);

\RAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~750_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~749_combout\,
	combout => \RAM|ram~750_combout\);

\RAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~474_q\);

\RAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~781_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~781_combout\);

\RAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~782_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~781_combout\,
	combout => \RAM|ram~782_combout\);

\RAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~442_q\);

\RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~813_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (!\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~813_combout\);

\RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~814_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~813_combout\,
	combout => \RAM|ram~814_combout\);

\RAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~506_q\);

\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~506_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~442_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~474_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~410_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~410_q\,
	datab => \RAM|ALT_INV_ram~474_q\,
	datac => \RAM|ALT_INV_ram~442_q\,
	datad => \RAM|ALT_INV_ram~506_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~607_combout\);

\RAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~725_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~725_combout\);

\RAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~726_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~725_combout\,
	combout => \RAM|ram~726_combout\);

\RAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~426_q\);

\RAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~757_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~757_combout\);

\RAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~758_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~757_combout\,
	combout => \RAM|ram~758_combout\);

\RAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~490_q\);

\RAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~789_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~789_combout\);

\RAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~790_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~789_combout\,
	combout => \RAM|ram~790_combout\);

\RAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~458_q\);

\RAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~821_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~49_combout\ & ( (\ROM|memROM~53_combout\ & (\ROM|memROM~26_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~34_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~821_combout\);

\RAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~822_combout\ = (\RAM|process_0~1_combout\ & \RAM|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~1_combout\,
	datab => \RAM|ALT_INV_ram~821_combout\,
	combout => \RAM|ram~822_combout\);

\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

\RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~608_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~522_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~458_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~490_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~426_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~426_q\,
	datab => \RAM|ALT_INV_ram~490_q\,
	datac => \RAM|ALT_INV_ram~458_q\,
	datad => \RAM|ALT_INV_ram~522_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~608_combout\);

\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~608_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~607_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~606_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~605_combout\,
	datab => \RAM|ALT_INV_ram~606_combout\,
	datac => \RAM|ALT_INV_ram~607_combout\,
	datad => \RAM|ALT_INV_ram~608_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~609_combout\);

\RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~610_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~609_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~604_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~599_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~594_combout\,
	datab => \RAM|ALT_INV_ram~599_combout\,
	datac => \RAM|ALT_INV_ram~604_combout\,
	datad => \RAM|ALT_INV_ram~609_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~610_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\Data_IN[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[3]~2_combout\ = (!\RAM|dado_out~3_combout\ & (\comb~1_combout\ & ((\SW[3]~input_o\)))) # (\RAM|dado_out~3_combout\ & (((\comb~1_combout\ & \SW[3]~input_o\)) # (\RAM|ram~610_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~3_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \RAM|ALT_INV_ram~610_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Data_IN[3]~2_combout\);

\ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~36_combout\ = (!\CPU|PC|DOUT\(7) & \ROM|memROM~59_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~59_combout\,
	combout => \ROM|memROM~36_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~153_q\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~153_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~145_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \RAM|ALT_INV_ram~145_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \RAM|ALT_INV_ram~153_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~569_combout\);

\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

\RAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~209_q\);

\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

\RAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~217_q\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~217_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~89_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~209_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~81_q\,
	datab => \RAM|ALT_INV_ram~209_q\,
	datac => \RAM|ALT_INV_ram~89_q\,
	datad => \RAM|ALT_INV_ram~217_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~570_combout\);

\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

\RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~177_q\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~185_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~57_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~177_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~49_q\,
	datab => \RAM|ALT_INV_ram~177_q\,
	datac => \RAM|ALT_INV_ram~57_q\,
	datad => \RAM|ALT_INV_ram~185_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~571_combout\);

\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

\RAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~241_q\);

\RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~121_q\);

\RAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~249_q\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~249_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~121_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~241_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~113_q\,
	datab => \RAM|ALT_INV_ram~241_q\,
	datac => \RAM|ALT_INV_ram~121_q\,
	datad => \RAM|ALT_INV_ram~249_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~572_combout\);

\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~572_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~571_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~570_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~569_combout\,
	datab => \RAM|ALT_INV_ram~570_combout\,
	datac => \RAM|ALT_INV_ram~571_combout\,
	datad => \RAM|ALT_INV_ram~572_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~573_combout\);

\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~345_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~281_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~337_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~273_q\,
	datab => \RAM|ALT_INV_ram~337_q\,
	datac => \RAM|ALT_INV_ram~281_q\,
	datad => \RAM|ALT_INV_ram~345_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~574_combout\);

\RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~305_q\);

\RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~369_q\);

\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

\RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~377_q\);

\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~377_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~313_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~369_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~305_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~305_q\,
	datab => \RAM|ALT_INV_ram~369_q\,
	datac => \RAM|ALT_INV_ram~313_q\,
	datad => \RAM|ALT_INV_ram~377_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~575_combout\);

\RAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~401_q\);

\RAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~465_q\);

\RAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~409_q\);

\RAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~473_q\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~473_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~409_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~465_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~401_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~401_q\,
	datab => \RAM|ALT_INV_ram~465_q\,
	datac => \RAM|ALT_INV_ram~409_q\,
	datad => \RAM|ALT_INV_ram~473_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~433_q\);

\RAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~497_q\);

\RAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~441_q\);

\RAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~505_q\);

\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~505_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~441_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~497_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~433_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~433_q\,
	datab => \RAM|ALT_INV_ram~497_q\,
	datac => \RAM|ALT_INV_ram~441_q\,
	datad => \RAM|ALT_INV_ram~505_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~577_combout\);

\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~577_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~576_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~575_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~574_combout\,
	datab => \RAM|ALT_INV_ram~575_combout\,
	datac => \RAM|ALT_INV_ram~576_combout\,
	datad => \RAM|ALT_INV_ram~577_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~578_combout\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~73_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~41_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~65_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \RAM|ALT_INV_ram~65_q\,
	datac => \RAM|ALT_INV_ram~41_q\,
	datad => \RAM|ALT_INV_ram~73_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~579_combout\);

\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

\RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~137_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~137_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~105_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~129_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~97_q\,
	datab => \RAM|ALT_INV_ram~129_q\,
	datac => \RAM|ALT_INV_ram~105_q\,
	datad => \RAM|ALT_INV_ram~137_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~161_q\);

\RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~193_q\);

\RAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~169_q\);

\RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~201_q\);

\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~201_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~169_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~193_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~161_q\,
	datab => \RAM|ALT_INV_ram~193_q\,
	datac => \RAM|ALT_INV_ram~169_q\,
	datad => \RAM|ALT_INV_ram~201_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~581_combout\);

\RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~225_q\);

\RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~257_q\);

\RAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~233_q\);

\RAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~265_q\);

\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~265_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~233_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~257_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~225_q\,
	datab => \RAM|ALT_INV_ram~257_q\,
	datac => \RAM|ALT_INV_ram~233_q\,
	datad => \RAM|ALT_INV_ram~265_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~582_combout\);

\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~582_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~581_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~580_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~579_combout\,
	datab => \RAM|ALT_INV_ram~580_combout\,
	datac => \RAM|ALT_INV_ram~581_combout\,
	datad => \RAM|ALT_INV_ram~582_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~583_combout\);

\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

\RAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~417_q\);

\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

\RAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~425_q\);

\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~425_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~297_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~417_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~289_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~289_q\,
	datab => \RAM|ALT_INV_ram~417_q\,
	datac => \RAM|ALT_INV_ram~297_q\,
	datad => \RAM|ALT_INV_ram~425_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~584_combout\);

\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

\RAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~481_q\);

\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

\RAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~489_q\);

\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~489_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~361_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~481_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~353_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~353_q\,
	datab => \RAM|ALT_INV_ram~481_q\,
	datac => \RAM|ALT_INV_ram~361_q\,
	datad => \RAM|ALT_INV_ram~489_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~585_combout\);

\RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~321_q\);

\RAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~449_q\);

\RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~329_q\);

\RAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~457_q\);

\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~457_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~329_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~449_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~321_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~321_q\,
	datab => \RAM|ALT_INV_ram~449_q\,
	datac => \RAM|ALT_INV_ram~329_q\,
	datad => \RAM|ALT_INV_ram~457_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~586_combout\);

\RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~385_q\);

\RAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~513_q\);

\RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~393_q\);

\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~521_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~393_q\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~513_q\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~385_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~385_q\,
	datab => \RAM|ALT_INV_ram~513_q\,
	datac => \RAM|ALT_INV_ram~393_q\,
	datad => \RAM|ALT_INV_ram~521_q\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~587_combout\);

\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~587_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~586_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~585_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~584_combout\,
	datab => \RAM|ALT_INV_ram~585_combout\,
	datac => \RAM|ALT_INV_ram~586_combout\,
	datad => \RAM|ALT_INV_ram~587_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~588_combout\);

\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~588_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~583_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ 
-- & ( \RAM|ram~578_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~573_combout\,
	datab => \RAM|ALT_INV_ram~578_combout\,
	datac => \RAM|ALT_INV_ram~583_combout\,
	datad => \RAM|ALT_INV_ram~588_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~589_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\Data_IN[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[2]~1_combout\ = (!\RAM|dado_out~3_combout\ & (\comb~1_combout\ & ((\SW[2]~input_o\)))) # (\RAM|dado_out~3_combout\ & (((\comb~1_combout\ & \SW[2]~input_o\)) # (\RAM|ram~589_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~3_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \RAM|ALT_INV_ram~589_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \Data_IN[2]~1_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~64_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~32_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~48_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~48_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \RAM|ALT_INV_ram~64_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~128_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~96_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~112_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~80_q\,
	datab => \RAM|ALT_INV_ram~112_q\,
	datac => \RAM|ALT_INV_ram~96_q\,
	datad => \RAM|ALT_INV_ram~128_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~712_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~72_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~40_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~56_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~56_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datad => \RAM|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

\RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~120_q\);

\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

\RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~136_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~136_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~104_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~120_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~88_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~88_q\,
	datab => \RAM|ALT_INV_ram~120_q\,
	datac => \RAM|ALT_INV_ram~104_q\,
	datad => \RAM|ALT_INV_ram~136_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~550_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~549_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~548_combout\,
	datab => \RAM|ALT_INV_ram~549_combout\,
	datac => \RAM|ALT_INV_ram~550_combout\,
	datad => \RAM|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~352_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~288_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~336_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_q\,
	datab => \RAM|ALT_INV_ram~336_q\,
	datac => \RAM|ALT_INV_ram~288_q\,
	datad => \RAM|ALT_INV_ram~352_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~304_q\);

\RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~368_q\);

\RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~320_q\);

\RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~384_q\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~384_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~320_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~368_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~304_q\,
	datab => \RAM|ALT_INV_ram~368_q\,
	datac => \RAM|ALT_INV_ram~320_q\,
	datad => \RAM|ALT_INV_ram~384_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~360_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~296_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~344_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~280_q\,
	datab => \RAM|ALT_INV_ram~344_q\,
	datac => \RAM|ALT_INV_ram~296_q\,
	datad => \RAM|ALT_INV_ram~360_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

\RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~376_q\);

\RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~328_q\);

\RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~392_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~392_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~328_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~376_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~312_q\,
	datab => \RAM|ALT_INV_ram~376_q\,
	datac => \RAM|ALT_INV_ram~328_q\,
	datad => \RAM|ALT_INV_ram~392_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~556_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~554_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~553_combout\,
	datab => \RAM|ALT_INV_ram~554_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \RAM|ALT_INV_ram~556_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

\RAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~160_q\);

\RAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~152_q\);

\RAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~168_q\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~168_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~152_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~160_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~144_q\,
	datab => \RAM|ALT_INV_ram~160_q\,
	datac => \RAM|ALT_INV_ram~152_q\,
	datad => \RAM|ALT_INV_ram~168_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~558_combout\);

\RAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~208_q\);

\RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~224_q\);

\RAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~216_q\);

\RAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~232_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~232_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~216_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~224_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~208_q\,
	datab => \RAM|ALT_INV_ram~224_q\,
	datac => \RAM|ALT_INV_ram~216_q\,
	datad => \RAM|ALT_INV_ram~232_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~176_q\);

\RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~192_q\);

\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

\RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~200_q\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~200_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~184_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~192_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~176_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~176_q\,
	datab => \RAM|ALT_INV_ram~192_q\,
	datac => \RAM|ALT_INV_ram~184_q\,
	datad => \RAM|ALT_INV_ram~200_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~240_q\);

\RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~256_q\);

\RAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~248_q\);

\RAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~264_q\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~264_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~248_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~256_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~240_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~240_q\,
	datab => \RAM|ALT_INV_ram~256_q\,
	datac => \RAM|ALT_INV_ram~248_q\,
	datad => \RAM|ALT_INV_ram~264_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~561_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~560_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~559_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~558_combout\,
	datab => \RAM|ALT_INV_ram~559_combout\,
	datac => \RAM|ALT_INV_ram~560_combout\,
	datad => \RAM|ALT_INV_ram~561_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~562_combout\);

\RAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~400_q\);

\RAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~432_q\);

\RAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~416_q\);

\RAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~448_q\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~448_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~416_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~432_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~400_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~400_q\,
	datab => \RAM|ALT_INV_ram~432_q\,
	datac => \RAM|ALT_INV_ram~416_q\,
	datad => \RAM|ALT_INV_ram~448_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~563_combout\);

\RAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~464_q\);

\RAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~496_q\);

\RAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~480_q\);

\RAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~512_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~512_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~480_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~496_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~464_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~464_q\,
	datab => \RAM|ALT_INV_ram~496_q\,
	datac => \RAM|ALT_INV_ram~480_q\,
	datad => \RAM|ALT_INV_ram~512_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~408_q\);

\RAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~440_q\);

\RAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~424_q\);

\RAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~456_q\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~456_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~424_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~440_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~408_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~408_q\,
	datab => \RAM|ALT_INV_ram~440_q\,
	datac => \RAM|ALT_INV_ram~424_q\,
	datad => \RAM|ALT_INV_ram~456_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~565_combout\);

\RAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~472_q\);

\RAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~504_q\);

\RAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~488_q\);

\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~520_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~488_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~504_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~472_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~472_q\,
	datab => \RAM|ALT_INV_ram~504_q\,
	datac => \RAM|ALT_INV_ram~488_q\,
	datad => \RAM|ALT_INV_ram~520_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~566_combout\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~566_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~565_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~564_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~563_combout\,
	datab => \RAM|ALT_INV_ram~564_combout\,
	datac => \RAM|ALT_INV_ram~565_combout\,
	datad => \RAM|ALT_INV_ram~566_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~567_combout\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~567_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~562_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~557_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~552_combout\,
	datab => \RAM|ALT_INV_ram~557_combout\,
	datac => \RAM|ALT_INV_ram~562_combout\,
	datad => \RAM|ALT_INV_ram~567_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~568_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\Data_IN[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[1]~0_combout\ = (!\RAM|dado_out~3_combout\ & (\comb~1_combout\ & ((\SW[1]~input_o\)))) # (\RAM|dado_out~3_combout\ & (((\comb~1_combout\ & \SW[1]~input_o\)) # (\RAM|ram~568_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~3_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \RAM|ALT_INV_ram~568_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \Data_IN[1]~0_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & ((\ROM|memROM~17_combout\) # (\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5))))) ) ) ) # ( 
-- !\ROM|memROM~18_combout\ & ( \ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & ((\ROM|memROM~17_combout\) # (\CPU|PC|DOUT\(6))))) ) ) ) # ( \ROM|memROM~18_combout\ & ( !\ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(7) & ((\ROM|memROM~17_combout\) # (\CPU|PC|DOUT\(5))))) ) ) ) # ( !\ROM|memROM~18_combout\ & ( !\ROM|memROM~19_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001000001010000001000000110000000110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \ROM|memROM~20_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\RAM|dado_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~2_combout\ = ( \SW[9]~input_o\ & ( \KEY[2]~input_o\ & ( (!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & (!\SW[0]~input_o\ & \comb~0_combout\))) ) ) ) # ( !\SW[9]~input_o\ & ( \KEY[2]~input_o\ & ( (!\ROM|memROM~49_combout\ & 
-- (\comb~0_combout\ & ((!\SW[0]~input_o\) # (\ROM|memROM~26_combout\)))) ) ) ) # ( \SW[9]~input_o\ & ( !\KEY[2]~input_o\ & ( (\comb~0_combout\ & ((!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & !\SW[0]~input_o\)) # (\ROM|memROM~49_combout\ & 
-- (\ROM|memROM~26_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( !\KEY[2]~input_o\ & ( (\comb~0_combout\ & (((!\ROM|memROM~49_combout\ & !\SW[0]~input_o\)) # (\ROM|memROM~26_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110011000000001001000100000000101000100000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \RAM|dado_out[0]~2_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\switch8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch8|saida~0_combout\ = ( \CPU|DEC_instrucao|saida[3]~1_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( (!\ROM|memROM~16_combout\ & (\ROM|memROM~53_combout\ & ((!\CPU|DEC_instrucao|Equal14~1_combout\) # (!\CPU|DEC_instrucao|saida[1]~0_combout\)))) ) ) ) 
-- # ( !\CPU|DEC_instrucao|saida[3]~1_combout\ & ( \RAM|dado_out[0]~1_combout\ & ( (!\ROM|memROM~16_combout\ & (\ROM|memROM~53_combout\ & (!\CPU|DEC_instrucao|Equal14~1_combout\ & \CPU|DEC_instrucao|saida[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~53_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~1_combout\,
	combout => \switch8|saida~0_combout\);

\switch8|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \switch8|saida~1_combout\ = (!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & (!\SW[8]~input_o\ & \switch8|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \switch8|ALT_INV_saida~0_combout\,
	combout => \switch8|saida~1_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

\RAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~399_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~399_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~143_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~271_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~271_q\,
	datac => \RAM|ALT_INV_ram~143_q\,
	datad => \RAM|ALT_INV_ram~399_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

\RAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~159_q\);

\RAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~415_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~415_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~159_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~287_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \RAM|ALT_INV_ram~287_q\,
	datac => \RAM|ALT_INV_ram~159_q\,
	datad => \RAM|ALT_INV_ram~415_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

\RAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~151_q\);

\RAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~407_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~407_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~151_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~279_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \RAM|ALT_INV_ram~279_q\,
	datac => \RAM|ALT_INV_ram~151_q\,
	datad => \RAM|ALT_INV_ram~407_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

\RAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~167_q\);

\RAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~423_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~423_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~167_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~295_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~39_q\,
	datab => \RAM|ALT_INV_ram~295_q\,
	datac => \RAM|ALT_INV_ram~167_q\,
	datad => \RAM|ALT_INV_ram~423_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~530_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~529_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~528_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datad => \RAM|ALT_INV_ram~530_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

\RAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~207_q\);

\RAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~463_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~463_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~207_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~335_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~79_q\,
	datab => \RAM|ALT_INV_ram~335_q\,
	datac => \RAM|ALT_INV_ram~207_q\,
	datad => \RAM|ALT_INV_ram~463_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

\RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~223_q\);

\RAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~479_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~479_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~223_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~351_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~95_q\,
	datab => \RAM|ALT_INV_ram~351_q\,
	datac => \RAM|ALT_INV_ram~223_q\,
	datad => \RAM|ALT_INV_ram~479_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

\RAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~215_q\);

\RAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~471_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~471_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~215_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~343_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~87_q\,
	datab => \RAM|ALT_INV_ram~343_q\,
	datac => \RAM|ALT_INV_ram~215_q\,
	datad => \RAM|ALT_INV_ram~471_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

\RAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~231_q\);

\RAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~487_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~487_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~231_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~359_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~103_q\,
	datab => \RAM|ALT_INV_ram~359_q\,
	datac => \RAM|ALT_INV_ram~231_q\,
	datad => \RAM|ALT_INV_ram~487_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~534_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~533_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~532_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \RAM|ALT_INV_ram~535_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~303_q\);

\RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~175_q\);

\RAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~431_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~431_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~175_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~303_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~47_q\,
	datab => \RAM|ALT_INV_ram~303_q\,
	datac => \RAM|ALT_INV_ram~175_q\,
	datad => \RAM|ALT_INV_ram~431_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

\RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~319_q\);

\RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~191_q\);

\RAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~447_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~447_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~191_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~319_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~63_q\,
	datab => \RAM|ALT_INV_ram~319_q\,
	datac => \RAM|ALT_INV_ram~191_q\,
	datad => \RAM|ALT_INV_ram~447_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

\RAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~439_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~439_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~183_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~311_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datab => \RAM|ALT_INV_ram~311_q\,
	datac => \RAM|ALT_INV_ram~183_q\,
	datad => \RAM|ALT_INV_ram~439_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

\RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~327_q\);

\RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~199_q\);

\RAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~455_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~455_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~199_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~327_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~71_q\,
	datab => \RAM|ALT_INV_ram~327_q\,
	datac => \RAM|ALT_INV_ram~199_q\,
	datad => \RAM|ALT_INV_ram~455_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~538_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~537_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

\RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~367_q\);

\RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~119_q\);

\RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~375_q\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~375_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~119_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~367_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~111_q\,
	datab => \RAM|ALT_INV_ram~367_q\,
	datac => \RAM|ALT_INV_ram~119_q\,
	datad => \RAM|ALT_INV_ram~375_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

\RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~383_q\);

\RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~135_q\);

\RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~391_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~391_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~135_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~383_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~127_q\,
	datab => \RAM|ALT_INV_ram~383_q\,
	datac => \RAM|ALT_INV_ram~135_q\,
	datad => \RAM|ALT_INV_ram~391_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~239_q\);

\RAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~495_q\);

\RAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~247_q\);

\RAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~503_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~503_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~247_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~495_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~239_q\,
	datab => \RAM|ALT_INV_ram~495_q\,
	datac => \RAM|ALT_INV_ram~247_q\,
	datad => \RAM|ALT_INV_ram~503_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~255_q\);

\RAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~511_q\);

\RAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~263_q\);

\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~519_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~263_q\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~511_q\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~255_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~255_q\,
	datab => \RAM|ALT_INV_ram~511_q\,
	datac => \RAM|ALT_INV_ram~263_q\,
	datad => \RAM|ALT_INV_ram~519_q\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~545_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~543_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~546_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~536_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~547_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\interfaceBaseTempo|baseTempo|contador~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|contador~1_combout\ = (\interfaceBaseTempo|baseTempo|contador\(0) & !\interfaceBaseTempo|baseTempo|contador\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	combout => \interfaceBaseTempo|baseTempo|contador~1_combout\);

\interfaceBaseTempo|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(1));

\interfaceBaseTempo|baseTempo|contador~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|contador~0_combout\ = (!\interfaceBaseTempo|baseTempo|contador\(0) & !\interfaceBaseTempo|baseTempo|contador\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	combout => \interfaceBaseTempo|baseTempo|contador~0_combout\);

\interfaceBaseTempo|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(0));

\interfaceBaseTempo|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|tick~0_combout\ = !\interfaceBaseTempo|baseTempo|tick~q\ $ (((!\interfaceBaseTempo|baseTempo|contador\(1)) # (\interfaceBaseTempo|baseTempo|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100101011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\,
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	combout => \interfaceBaseTempo|baseTempo|tick~0_combout\);

\interfaceBaseTempo|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \interfaceBaseTempo|baseTempo|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|tick~q\);

\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(4)))))) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110001000001100100111100010000101100010000011001001111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~21_combout\);

\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # 
-- (\CPU|PC|DOUT\(3))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001000010011010010100000110000000010000100110100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~22_combout\);

\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(4)) # ((!\CPU|PC|DOUT\(0))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(4) & 
-- ((!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110010010101000101011000100010001100100101010001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~23_combout\);

\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # ((!\CPU|PC|DOUT\(6) & \ROM|memROM~21_combout\)))) ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~23_combout\ & ( 
-- (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)) # (\ROM|memROM~21_combout\)))) ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & \ROM|memROM~21_combout\)) # 
-- (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5))))) ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000010000000110000010000000101000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~21_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~23_combout\,
	combout => \ROM|memROM~24_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~24_combout\ & (\ROM|memROM~25_combout\ & \ROM|memROM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \ROM|ALT_INV_memROM~33_combout\,
	combout => \comb~2_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \comb~2_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\ & (\ROM|memROM~53_combout\ & \ROM|memROM~45_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~53_combout\,
	datad => \ROM|ALT_INV_memROM~45_combout\,
	datae => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \comb~3_combout\ & ( (\ROM|memROM~5_combout\ & (\ROM|memROM~35_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & \ROM|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~35_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	datae => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

\interfaceBaseTempo|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceBaseTempo|baseTempo|tick~q\,
	d => VCC,
	clrn => \ALT_INV_comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|registraUmSegundo|DOUT~q\);

\logicaKeys|FPGARESET|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|FPGARESET|saida~0_combout\ = ( !\ROM|memROM~25_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (\ROM|memROM~59_combout\ & \ROM|memROM~49_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~59_combout\,
	datad => \ROM|ALT_INV_memROM~49_combout\,
	datae => \ROM|ALT_INV_memROM~25_combout\,
	combout => \logicaKeys|FPGARESET|saida~0_combout\);

\logicaKeys|FPGARESET|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|FPGARESET|saida~1_combout\ = ( \logicaKeys|FPGARESET|saida~0_combout\ & ( (\RAM|dado_out[0]~1_combout\ & ((!\CPU|DEC_instrucao|saida[1]~0_combout\ & ((\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|saida[1]~0_combout\ & 
-- (!\CPU|DEC_instrucao|Equal14~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010111000000000000000000000000000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~1_combout\,
	datae => \logicaKeys|FPGARESET|ALT_INV_saida~0_combout\,
	combout => \logicaKeys|FPGARESET|saida~1_combout\);

\RAM|dado_out[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~4_combout\ = ( \interfaceBaseTempo|registraUmSegundo|DOUT~q\ & ( \logicaKeys|FPGARESET|saida~1_combout\ & ( (!\ROM|memROM~53_combout\ & ((!\FPGA_RESET_N~input_o\) # ((!\RAM|ram~547_combout\ & \RAM|dado_out~3_combout\)))) # 
-- (\ROM|memROM~53_combout\ & (!\RAM|ram~547_combout\ & (\RAM|dado_out~3_combout\))) ) ) ) # ( !\interfaceBaseTempo|registraUmSegundo|DOUT~q\ & ( \logicaKeys|FPGARESET|saida~1_combout\ & ( ((!\FPGA_RESET_N~input_o\) # ((!\RAM|ram~547_combout\ & 
-- \RAM|dado_out~3_combout\))) # (\ROM|memROM~53_combout\) ) ) ) # ( \interfaceBaseTempo|registraUmSegundo|DOUT~q\ & ( !\logicaKeys|FPGARESET|saida~1_combout\ & ( (!\RAM|ram~547_combout\ & \RAM|dado_out~3_combout\) ) ) ) # ( 
-- !\interfaceBaseTempo|registraUmSegundo|DOUT~q\ & ( !\logicaKeys|FPGARESET|saida~1_combout\ & ( (!\RAM|ram~547_combout\ & \RAM|dado_out~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111111010111011010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \RAM|ALT_INV_ram~547_combout\,
	datac => \RAM|ALT_INV_dado_out~3_combout\,
	datad => \ALT_INV_FPGA_RESET_N~input_o\,
	datae => \interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	dataf => \logicaKeys|FPGARESET|ALT_INV_saida~1_combout\,
	combout => \RAM|dado_out[0]~4_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\logicaKeys|KEY_1|KEY|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|KEY_1|KEY|saidaQ~q\);

\logicaKeys|KEY_1|KEY|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|KEY_1|KEY|saida~combout\ = LCELL((\KEY[1]~input_o\ & !\logicaKeys|KEY_1|KEY|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \logicaKeys|KEY_1|KEY|ALT_INV_saidaQ~q\,
	combout => \logicaKeys|KEY_1|KEY|saida~combout\);

\logicaKeys|KEY_1|FF0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \logicaKeys|KEY_1|KEY|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|KEY_1|FF0|DOUT~q\);

\RAM|dado_out[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~5_combout\ = ( \logicaKeys|KEY_1|FF0|DOUT~q\ & ( (\ROM|memROM~49_combout\ & (\ROM|memROM~26_combout\ & (\switch8|saida~0_combout\ & !\KEY[3]~input_o\))) ) ) # ( !\logicaKeys|KEY_1|FF0|DOUT~q\ & ( (\ROM|memROM~49_combout\ & 
-- (\switch8|saida~0_combout\ & ((!\ROM|memROM~26_combout\) # (!\KEY[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000100000000010000000000000101000001000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \switch8|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \logicaKeys|KEY_1|FF0|ALT_INV_DOUT~q\,
	combout => \RAM|dado_out[0]~5_combout\);

\RAM|dado_out[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~7_combout\ = (\RAM|dado_out[0]~1_combout\ & ((!\CPU|DEC_instrucao|saida[1]~0_combout\ & ((\CPU|DEC_instrucao|saida[3]~1_combout\))) # (\CPU|DEC_instrucao|saida[1]~0_combout\ & (!\CPU|DEC_instrucao|Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101110000000000010111000000000001011100000000000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_Equal14~1_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~1_combout\,
	combout => \RAM|dado_out[0]~7_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = ( \RAM|dado_out~3_combout\ & ( \RAM|dado_out[0]~7_combout\ ) ) # ( !\RAM|dado_out~3_combout\ & ( \RAM|dado_out[0]~7_combout\ & ( (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~53_combout\) # ((!\ROM|memROM~26_combout\) # 
-- (\ROM|memROM~49_combout\)))) # (\ROM|memROM~16_combout\ & (((\ROM|memROM~49_combout\ & !\ROM|memROM~26_combout\)))) ) ) ) # ( \RAM|dado_out~3_combout\ & ( !\RAM|dado_out[0]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101111100010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~53_combout\,
	datac => \ROM|ALT_INV_memROM~49_combout\,
	datad => \ROM|ALT_INV_memROM~26_combout\,
	datae => \RAM|ALT_INV_dado_out~3_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~7_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\RAM|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~9_combout\ = ( !\RAM|dado_out[0]~5_combout\ & ( \RAM|dado_out[0]~8_combout\ & ( (!\logicaKeys|KEY_0|buff|saida[0]~0_combout\ & (!\RAM|dado_out[0]~2_combout\ & (!\switch8|saida~1_combout\ & !\RAM|dado_out[0]~4_combout\))) ) ) ) # ( 
-- \RAM|dado_out[0]~5_combout\ & ( !\RAM|dado_out[0]~8_combout\ ) ) # ( !\RAM|dado_out[0]~5_combout\ & ( !\RAM|dado_out[0]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaKeys|KEY_0|buff|ALT_INV_saida[0]~0_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datac => \switch8|ALT_INV_saida~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~4_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~5_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~8_combout\,
	combout => \RAM|dado_out[0]~9_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~43_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\RAM|dado_out[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~20_combout\))) ) + ( 
-- !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|BANCO_REG|registrador~43_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\RAM|dado_out[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~20_combout\))) ) + ( !VCC 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~43_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~9_combout\,
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DEC_instrucao|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida~4_combout\ = (!\ROM|memROM~27_combout\ & (!\ROM|memROM~28_combout\ & (!\ROM|memROM~15_combout\ $ (\ROM|memROM~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100000000010000010000000001000001000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~27_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~60_combout\,
	combout => \CPU|DEC_instrucao|saida~4_combout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (!\CPU|DEC_instrucao|saida[1]~0_combout\ & (\CPU|DEC_instrucao|saida[3]~1_combout\ & !\CPU|DEC_instrucao|saida~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~4_combout\,
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

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( \CPU|BANCO_REG|registrador~43_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\RAM|dado_out[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) 
-- + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( \CPU|BANCO_REG|registrador~43_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\RAM|dado_out[0]~9_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~43_combout\,
	dataf => \RAM|ALT_INV_dado_out[0]~9_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~53_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\RAM|dado_out[0]~9_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~53_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011111111100011101000000000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~53_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \RAM|ALT_INV_dado_out[0]~9_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal1~0_combout\ = ((!\CPU|DEC_instrucao|saida[1]~0_combout\ & \CPU|DEC_instrucao|saida[3]~1_combout\)) # (\CPU|DEC_instrucao|saida~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[1]~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[3]~1_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida~4_combout\,
	combout => \CPU|ULA1|Equal1~0_combout\);

\ROM|memROM~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~73_combout\ = ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(6)) # ((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000000001001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~73_combout\);

\ROM|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~74_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(4)))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(4))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111000000000000000101000000000010000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~74_combout\);

\ROM|memROM~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~75_combout\ = (!\CPU|PC|DOUT\(2) & (\ROM|memROM~73_combout\)) # (\CPU|PC|DOUT\(2) & ((\ROM|memROM~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~73_combout\,
	datab => \ROM|ALT_INV_memROM~74_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~75_combout\);

\ROM|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~70_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & 
-- !\CPU|PC|DOUT\(0))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( 
-- (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000001000000110010000001010000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~70_combout\);

\ROM|memROM~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~71_combout\ = ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000001000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~71_combout\);

\ROM|memROM~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~72_combout\ = (!\CPU|PC|DOUT\(6) & (\ROM|memROM~70_combout\)) # (\CPU|PC|DOUT\(6) & ((\ROM|memROM~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~70_combout\,
	datab => \ROM|ALT_INV_memROM~71_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~72_combout\);

\CPU|DEC_instrucao|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[5]~5_combout\ = ( \CPU|DEC_instrucao|saida~2_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~60_combout\ & (!\ROM|memROM~27_combout\ & \ROM|memROM~15_combout\))) ) ) # ( !\CPU|DEC_instrucao|saida~2_combout\ & ( 
-- ((!\ROM|memROM~15_combout\) # ((!\ROM|memROM~28_combout\ & !\ROM|memROM~60_combout\))) # (\ROM|memROM~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001111000000001000000011111111100011110000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~60_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \CPU|DEC_instrucao|ALT_INV_saida~2_combout\,
	combout => \CPU|DEC_instrucao|saida[5]~5_combout\);

\CPU|BANCO_REG|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~51_combout\ = (!\CPU|DEC_instrucao|saida[5]~5_combout\ & ((!\ROM|memROM~0_combout\) # ((!\ROM|memROM~75_combout\ & !\ROM|memROM~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000111011000000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~75_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~72_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\,
	combout => \CPU|BANCO_REG|registrador~51_combout\);

\CPU|BANCO_REG|registrador~11\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~11_q\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (\ROM|memROM~75_combout\ & \ROM|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~75_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~72_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~72_combout\,
	combout => \ROM|memROM~2_combout\);

\CPU|BANCO_REG|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~52_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & !\CPU|DEC_instrucao|saida[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\,
	combout => \CPU|BANCO_REG|registrador~52_combout\);

\CPU|BANCO_REG|registrador~19\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~19_q\);

\CPU|BANCO_REG|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~53_combout\ = (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & !\CPU|DEC_instrucao|saida[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\,
	combout => \CPU|BANCO_REG|registrador~53_combout\);

\CPU|BANCO_REG|registrador~27\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~27_q\);

\CPU|BANCO_REG|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~54_combout\ = (\ROM|memROM~1_combout\ & (\ROM|memROM~72_combout\ & !\CPU|DEC_instrucao|saida[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~72_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[5]~5_combout\,
	combout => \CPU|BANCO_REG|registrador~54_combout\);

\CPU|BANCO_REG|registrador~35\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~35_q\);

\CPU|BANCO_REG|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~43_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~35_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~27_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~19_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~11_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~19_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~27_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~35_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~43_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~44_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[1]~0_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~25_combout\))) ) + ( 
-- \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|BANCO_REG|registrador~44_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[1]~0_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~25_combout\))) ) + ( 
-- \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~44_combout\,
	dataf => \ALT_INV_Data_IN[1]~0_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( \CPU|BANCO_REG|registrador~44_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[1]~0_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( \CPU|BANCO_REG|registrador~44_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[1]~0_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~25_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~25_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~44_combout\,
	dataf => \ALT_INV_Data_IN[1]~0_combout\,
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[1]~0_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~26_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[1]~0_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~26_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[1]~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|BANCO_REG|registrador~12\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~12_q\);

\CPU|BANCO_REG|registrador~20\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~20_q\);

\CPU|BANCO_REG|registrador~28\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~28_q\);

\CPU|BANCO_REG|registrador~36\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~36_q\);

\CPU|BANCO_REG|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~44_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~36_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~28_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~20_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~12_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~20_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~28_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~36_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~44_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~45_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[2]~1_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~36_combout\))) ) + ( 
-- \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|BANCO_REG|registrador~45_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[2]~1_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~36_combout\))) ) + ( 
-- \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~36_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~45_combout\,
	dataf => \ALT_INV_Data_IN[2]~1_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( \CPU|BANCO_REG|registrador~45_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[2]~1_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~36_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( \CPU|BANCO_REG|registrador~45_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[2]~1_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~36_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~36_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~45_combout\,
	dataf => \ALT_INV_Data_IN[2]~1_combout\,
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[2]~1_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~16_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[2]~1_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[2]~1_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|BANCO_REG|registrador~13\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~13_q\);

\CPU|BANCO_REG|registrador~21\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~21_q\);

\CPU|BANCO_REG|registrador~29\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~29_q\);

\CPU|BANCO_REG|registrador~37\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~37_q\);

\CPU|BANCO_REG|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~45_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~37_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~29_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~21_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~13_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~21_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~29_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~37_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~45_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~46_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[3]~2_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~33_combout\))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|BANCO_REG|registrador~46_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[3]~2_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~33_combout\))) ) + ( 
-- \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~33_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~46_combout\,
	dataf => \ALT_INV_Data_IN[3]~2_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[3]~2_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~34_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[3]~2_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~34_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[3]~2_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|BANCO_REG|registrador~14\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~14_q\);

\CPU|BANCO_REG|registrador~22\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~22_q\);

\CPU|BANCO_REG|registrador~30\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~30_q\);

\CPU|BANCO_REG|registrador~38\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~38_q\);

\CPU|BANCO_REG|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~46_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~38_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~30_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~22_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~14_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~22_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~30_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~38_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~46_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( \CPU|BANCO_REG|registrador~46_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[3]~2_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( \CPU|BANCO_REG|registrador~46_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[3]~2_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~33_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~33_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~46_combout\,
	dataf => \ALT_INV_Data_IN[3]~2_combout\,
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \ROM|memROM~38_combout\ & ( \ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # ((\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001110010101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \ROM|ALT_INV_memROM~38_combout\,
	dataf => \ROM|ALT_INV_memROM~39_combout\,
	combout => \ROM|memROM~29_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~43_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~27_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~35_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~35_q\,
	datac => \RAM|ALT_INV_ram~27_q\,
	datad => \RAM|ALT_INV_ram~43_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~611_combout\);

\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~107_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~91_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~99_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~83_q\,
	datab => \RAM|ALT_INV_ram~99_q\,
	datac => \RAM|ALT_INV_ram~91_q\,
	datad => \RAM|ALT_INV_ram~107_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~612_combout\);

\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

\RAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~163_q\);

\RAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~155_q\);

\RAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~171_q\);

\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~171_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~155_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~163_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_q\,
	datab => \RAM|ALT_INV_ram~163_q\,
	datac => \RAM|ALT_INV_ram~155_q\,
	datad => \RAM|ALT_INV_ram~171_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~613_combout\);

\RAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~211_q\);

\RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~227_q\);

\RAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~219_q\);

\RAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~235_q\);

\RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~614_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~235_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~219_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~227_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~211_q\,
	datab => \RAM|ALT_INV_ram~227_q\,
	datac => \RAM|ALT_INV_ram~219_q\,
	datad => \RAM|ALT_INV_ram~235_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~614_combout\);

\RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~615_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~614_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~613_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~612_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~611_combout\,
	datab => \RAM|ALT_INV_ram~612_combout\,
	datac => \RAM|ALT_INV_ram~613_combout\,
	datad => \RAM|ALT_INV_ram~614_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~615_combout\);

\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~355_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~291_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~339_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~275_q\,
	datab => \RAM|ALT_INV_ram~339_q\,
	datac => \RAM|ALT_INV_ram~291_q\,
	datad => \RAM|ALT_INV_ram~355_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~616_combout\);

\RAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~403_q\);

\RAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~467_q\);

\RAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~419_q\);

\RAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~483_q\);

\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~483_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~419_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~467_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~403_q\,
	datab => \RAM|ALT_INV_ram~467_q\,
	datac => \RAM|ALT_INV_ram~419_q\,
	datad => \RAM|ALT_INV_ram~483_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~617_combout\);

\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

\RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~618_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~363_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~299_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~347_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~283_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~283_q\,
	datab => \RAM|ALT_INV_ram~347_q\,
	datac => \RAM|ALT_INV_ram~299_q\,
	datad => \RAM|ALT_INV_ram~363_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~618_combout\);

\RAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~411_q\);

\RAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~475_q\);

\RAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~427_q\);

\RAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~491_q\);

\RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~619_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~491_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~427_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~475_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~411_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~411_q\,
	datab => \RAM|ALT_INV_ram~475_q\,
	datac => \RAM|ALT_INV_ram~427_q\,
	datad => \RAM|ALT_INV_ram~491_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~619_combout\);

\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = ( \ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~619_combout\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~618_combout\ ) ) ) # ( \ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~617_combout\ ) ) ) # ( !\ROM|memROM~45_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~616_combout\,
	datab => \RAM|ALT_INV_ram~617_combout\,
	datac => \RAM|ALT_INV_ram~618_combout\,
	datad => \RAM|ALT_INV_ram~619_combout\,
	datae => \ROM|ALT_INV_memROM~45_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~620_combout\);

\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

\RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~179_q\);

\RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~195_q\);

\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~195_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~179_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~67_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~51_q\,
	datab => \RAM|ALT_INV_ram~67_q\,
	datac => \RAM|ALT_INV_ram~179_q\,
	datad => \RAM|ALT_INV_ram~195_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~621_combout\);

\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

\RAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~243_q\);

\RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~259_q\);

\RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~622_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~259_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~243_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~131_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~115_q\,
	datab => \RAM|ALT_INV_ram~131_q\,
	datac => \RAM|ALT_INV_ram~243_q\,
	datad => \RAM|ALT_INV_ram~259_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~622_combout\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

\RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~203_q\);

\RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~623_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~203_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~187_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~75_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~59_q\,
	datab => \RAM|ALT_INV_ram~75_q\,
	datac => \RAM|ALT_INV_ram~187_q\,
	datad => \RAM|ALT_INV_ram~203_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~623_combout\);

\RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~123_q\);

\RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~139_q\);

\RAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~251_q\);

\RAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~267_q\);

\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~267_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~251_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~139_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~123_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~123_q\,
	datab => \RAM|ALT_INV_ram~139_q\,
	datac => \RAM|ALT_INV_ram~251_q\,
	datad => \RAM|ALT_INV_ram~267_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~624_combout\);

\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~624_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~623_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~622_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~621_combout\,
	datab => \RAM|ALT_INV_ram~622_combout\,
	datac => \RAM|ALT_INV_ram~623_combout\,
	datad => \RAM|ALT_INV_ram~624_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~625_combout\);

\RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~307_q\);

\RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~323_q\);

\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

\RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~331_q\);

\RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~626_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~331_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~315_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~323_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~307_q\,
	datab => \RAM|ALT_INV_ram~323_q\,
	datac => \RAM|ALT_INV_ram~315_q\,
	datad => \RAM|ALT_INV_ram~331_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~626_combout\);

\RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~371_q\);

\RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~387_q\);

\RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~379_q\);

\RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~395_q\);

\RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~627_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~395_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~379_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~387_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~371_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~371_q\,
	datab => \RAM|ALT_INV_ram~387_q\,
	datac => \RAM|ALT_INV_ram~379_q\,
	datad => \RAM|ALT_INV_ram~395_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~627_combout\);

\RAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~435_q\);

\RAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~451_q\);

\RAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~443_q\);

\RAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~459_q\);

\RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~628_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~459_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~443_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~451_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~435_q\,
	datab => \RAM|ALT_INV_ram~451_q\,
	datac => \RAM|ALT_INV_ram~443_q\,
	datad => \RAM|ALT_INV_ram~459_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~628_combout\);

\RAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~499_q\);

\RAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~515_q\);

\RAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~507_q\);

\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~523_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~507_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~515_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~499_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~499_q\,
	datab => \RAM|ALT_INV_ram~515_q\,
	datac => \RAM|ALT_INV_ram~507_q\,
	datad => \RAM|ALT_INV_ram~523_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~629_combout\);

\RAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~630_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~629_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~628_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~627_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~626_combout\,
	datab => \RAM|ALT_INV_ram~627_combout\,
	datac => \RAM|ALT_INV_ram~628_combout\,
	datad => \RAM|ALT_INV_ram~629_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~630_combout\);

\RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~631_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~630_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~625_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~16_combout\ 
-- & ( \RAM|ram~620_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~615_combout\,
	datab => \RAM|ALT_INV_ram~620_combout\,
	datac => \RAM|ALT_INV_ram~625_combout\,
	datad => \RAM|ALT_INV_ram~630_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~631_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\Data_IN[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[4]~3_combout\ = ( \RAM|ram~631_combout\ & ( \SW[4]~input_o\ & ( ((!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & \comb~0_combout\))) # (\RAM|dado_out~3_combout\) ) ) ) # ( !\RAM|ram~631_combout\ & ( \SW[4]~input_o\ & ( 
-- (!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & \comb~0_combout\)) ) ) ) # ( \RAM|ram~631_combout\ & ( !\SW[4]~input_o\ & ( \RAM|dado_out~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000100010000000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \RAM|ALT_INV_dado_out~3_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \RAM|ALT_INV_ram~631_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \Data_IN[4]~3_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~47_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[4]~3_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~29_combout\))) ) + ( 
-- \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|BANCO_REG|registrador~47_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[4]~3_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~29_combout\))) ) + ( 
-- \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~47_combout\,
	dataf => \ALT_INV_Data_IN[4]~3_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[4]~3_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~45_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[4]~3_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~45_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~45_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[4]~3_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|BANCO_REG|registrador~15\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~15_q\);

\CPU|BANCO_REG|registrador~23\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~23_q\);

\CPU|BANCO_REG|registrador~31\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~31_q\);

\CPU|BANCO_REG|registrador~39\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~39_q\);

\CPU|BANCO_REG|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~47_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~39_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~31_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~23_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~15_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~23_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~31_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~39_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~47_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( \CPU|BANCO_REG|registrador~47_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[4]~3_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( \CPU|BANCO_REG|registrador~47_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[4]~3_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~47_combout\,
	dataf => \ALT_INV_Data_IN[4]~3_combout\,
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~712_combout\,
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
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~632_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~60_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~28_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~52_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datab => \RAM|ALT_INV_ram~52_q\,
	datac => \RAM|ALT_INV_ram~28_q\,
	datad => \RAM|ALT_INV_ram~60_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~632_combout\);

\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

\RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~124_q\);

\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~124_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~92_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~116_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~84_q\,
	datab => \RAM|ALT_INV_ram~116_q\,
	datac => \RAM|ALT_INV_ram~92_q\,
	datad => \RAM|ALT_INV_ram~124_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~633_combout\);

\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

\RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~180_q\);

\RAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~156_q\);

\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

\RAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~634_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~188_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~156_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~180_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~148_q\,
	datab => \RAM|ALT_INV_ram~180_q\,
	datac => \RAM|ALT_INV_ram~156_q\,
	datad => \RAM|ALT_INV_ram~188_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~634_combout\);

\RAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~212_q\);

\RAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~244_q\);

\RAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~220_q\);

\RAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~252_q\);

\RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~635_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~252_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~220_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~244_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~212_q\,
	datab => \RAM|ALT_INV_ram~244_q\,
	datac => \RAM|ALT_INV_ram~220_q\,
	datad => \RAM|ALT_INV_ram~252_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~635_combout\);

\RAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~636_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~635_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~634_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~633_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~632_combout\,
	datab => \RAM|ALT_INV_ram~633_combout\,
	datac => \RAM|ALT_INV_ram~634_combout\,
	datad => \RAM|ALT_INV_ram~635_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~636_combout\);

\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

\RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~308_q\);

\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

\RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~637_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~316_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~284_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~308_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~276_q\,
	datab => \RAM|ALT_INV_ram~308_q\,
	datac => \RAM|ALT_INV_ram~284_q\,
	datad => \RAM|ALT_INV_ram~316_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~637_combout\);

\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

\RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~372_q\);

\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

\RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~380_q\);

\RAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~638_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~380_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~348_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~372_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~340_q\,
	datab => \RAM|ALT_INV_ram~372_q\,
	datac => \RAM|ALT_INV_ram~348_q\,
	datad => \RAM|ALT_INV_ram~380_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~638_combout\);

\RAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~404_q\);

\RAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~436_q\);

\RAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~412_q\);

\RAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~444_q\);

\RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~639_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~444_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~412_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~436_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~404_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~404_q\,
	datab => \RAM|ALT_INV_ram~436_q\,
	datac => \RAM|ALT_INV_ram~412_q\,
	datad => \RAM|ALT_INV_ram~444_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~639_combout\);

\RAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~468_q\);

\RAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~500_q\);

\RAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~476_q\);

\RAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~508_q\);

\RAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~640_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~508_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~476_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~500_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~468_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~468_q\,
	datab => \RAM|ALT_INV_ram~500_q\,
	datac => \RAM|ALT_INV_ram~476_q\,
	datad => \RAM|ALT_INV_ram~508_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~640_combout\);

\RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~641_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~640_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~639_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~638_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~637_combout\,
	datab => \RAM|ALT_INV_ram~638_combout\,
	datac => \RAM|ALT_INV_ram~639_combout\,
	datad => \RAM|ALT_INV_ram~640_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~641_combout\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

\RAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~642_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~108_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~44_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~100_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datab => \RAM|ALT_INV_ram~100_q\,
	datac => \RAM|ALT_INV_ram~44_q\,
	datad => \RAM|ALT_INV_ram~108_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~642_combout\);

\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

\RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~140_q\);

\RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~643_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~140_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~76_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~132_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~68_q\,
	datab => \RAM|ALT_INV_ram~132_q\,
	datac => \RAM|ALT_INV_ram~76_q\,
	datad => \RAM|ALT_INV_ram~140_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~643_combout\);

\RAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~164_q\);

\RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~228_q\);

\RAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~172_q\);

\RAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~236_q\);

\RAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~644_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~236_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~172_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~228_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~164_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~164_q\,
	datab => \RAM|ALT_INV_ram~228_q\,
	datac => \RAM|ALT_INV_ram~172_q\,
	datad => \RAM|ALT_INV_ram~236_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~644_combout\);

\RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~196_q\);

\RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~260_q\);

\RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~204_q\);

\RAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~268_q\);

\RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~645_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~268_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~204_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~260_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~196_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~196_q\,
	datab => \RAM|ALT_INV_ram~260_q\,
	datac => \RAM|ALT_INV_ram~204_q\,
	datad => \RAM|ALT_INV_ram~268_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~645_combout\);

\RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~646_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~645_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~644_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~643_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~642_combout\,
	datab => \RAM|ALT_INV_ram~643_combout\,
	datac => \RAM|ALT_INV_ram~644_combout\,
	datad => \RAM|ALT_INV_ram~645_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~646_combout\);

\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

\RAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~420_q\);

\RAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~484_q\);

\RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~647_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~484_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~420_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~356_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~292_q\,
	datab => \RAM|ALT_INV_ram~356_q\,
	datac => \RAM|ALT_INV_ram~420_q\,
	datad => \RAM|ALT_INV_ram~484_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~647_combout\);

\RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~324_q\);

\RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~388_q\);

\RAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~452_q\);

\RAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~516_q\);

\RAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~648_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~516_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~452_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~388_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~324_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~324_q\,
	datab => \RAM|ALT_INV_ram~388_q\,
	datac => \RAM|ALT_INV_ram~452_q\,
	datad => \RAM|ALT_INV_ram~516_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~648_combout\);

\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

\RAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~428_q\);

\RAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~492_q\);

\RAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~649_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~492_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~428_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~364_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~300_q\,
	datab => \RAM|ALT_INV_ram~364_q\,
	datac => \RAM|ALT_INV_ram~428_q\,
	datad => \RAM|ALT_INV_ram~492_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~649_combout\);

\RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~332_q\);

\RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~396_q\);

\RAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~460_q\);

\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

\RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~650_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~524_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~460_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~396_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~332_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~332_q\,
	datab => \RAM|ALT_INV_ram~396_q\,
	datac => \RAM|ALT_INV_ram~460_q\,
	datad => \RAM|ALT_INV_ram~524_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~650_combout\);

\RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~651_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~650_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~649_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~648_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~647_combout\,
	datab => \RAM|ALT_INV_ram~648_combout\,
	datac => \RAM|ALT_INV_ram~649_combout\,
	datad => \RAM|ALT_INV_ram~650_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~651_combout\);

\RAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~652_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~651_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~646_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ 
-- & ( \RAM|ram~641_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~636_combout\,
	datab => \RAM|ALT_INV_ram~641_combout\,
	datac => \RAM|ALT_INV_ram~646_combout\,
	datad => \RAM|ALT_INV_ram~651_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~652_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\Data_IN[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[5]~4_combout\ = (!\RAM|dado_out~3_combout\ & (\comb~1_combout\ & ((\SW[5]~input_o\)))) # (\RAM|dado_out~3_combout\ & (((\comb~1_combout\ & \SW[5]~input_o\)) # (\RAM|ram~652_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~3_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \RAM|ALT_INV_ram~652_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \Data_IN[5]~4_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~48_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[5]~4_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~24_combout\))) ) + ( 
-- \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|BANCO_REG|registrador~48_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[5]~4_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~24_combout\))) ) + ( 
-- \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~48_combout\,
	dataf => \ALT_INV_Data_IN[5]~4_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[5]~4_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~49_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[5]~4_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~49_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[5]~4_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|BANCO_REG|registrador~16\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~16_q\);

\CPU|BANCO_REG|registrador~24\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~24_q\);

\CPU|BANCO_REG|registrador~32\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~32_q\);

\CPU|BANCO_REG|registrador~40\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~40_q\);

\CPU|BANCO_REG|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~48_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~40_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~32_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~24_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~16_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~24_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~32_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~40_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~48_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|BANCO_REG|registrador~48_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[5]~4_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~24_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|BANCO_REG|registrador~48_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[5]~4_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~24_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~48_combout\,
	dataf => \ALT_INV_Data_IN[5]~4_combout\,
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\ROM|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~37_combout\ = (!\CPU|PC|DOUT\(7) & \ROM|memROM~69_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \ROM|ALT_INV_memROM~69_combout\,
	combout => \ROM|memROM~37_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

\RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~181_q\);

\RAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~653_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~181_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~149_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~53_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~53_q\,
	datac => \RAM|ALT_INV_ram~149_q\,
	datad => \RAM|ALT_INV_ram~181_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~653_combout\);

\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

\RAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~213_q\);

\RAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~245_q\);

\RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~654_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~245_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~213_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~117_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~85_q\,
	datab => \RAM|ALT_INV_ram~117_q\,
	datac => \RAM|ALT_INV_ram~213_q\,
	datad => \RAM|ALT_INV_ram~245_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~654_combout\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

\RAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~165_q\);

\RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~197_q\);

\RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~655_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~197_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~165_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~69_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datab => \RAM|ALT_INV_ram~69_q\,
	datac => \RAM|ALT_INV_ram~165_q\,
	datad => \RAM|ALT_INV_ram~197_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~655_combout\);

\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

\RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~229_q\);

\RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~261_q\);

\RAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~656_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~261_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~229_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~133_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~101_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~101_q\,
	datab => \RAM|ALT_INV_ram~133_q\,
	datac => \RAM|ALT_INV_ram~229_q\,
	datad => \RAM|ALT_INV_ram~261_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~656_combout\);

\RAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~657_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~656_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~655_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ 
-- & ( \RAM|ram~654_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~653_combout\,
	datab => \RAM|ALT_INV_ram~654_combout\,
	datac => \RAM|ALT_INV_ram~655_combout\,
	datad => \RAM|ALT_INV_ram~656_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~657_combout\);

\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

\RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~309_q\);

\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

\RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~325_q\);

\RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~658_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~325_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~293_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~309_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~277_q\,
	datab => \RAM|ALT_INV_ram~309_q\,
	datac => \RAM|ALT_INV_ram~293_q\,
	datad => \RAM|ALT_INV_ram~325_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~658_combout\);

\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

\RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~373_q\);

\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

\RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~389_q\);

\RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~659_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~389_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~357_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~373_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~341_q\,
	datab => \RAM|ALT_INV_ram~373_q\,
	datac => \RAM|ALT_INV_ram~357_q\,
	datad => \RAM|ALT_INV_ram~389_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~659_combout\);

\RAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~405_q\);

\RAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~437_q\);

\RAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~421_q\);

\RAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~453_q\);

\RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~660_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~453_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~421_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~437_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~405_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~405_q\,
	datab => \RAM|ALT_INV_ram~437_q\,
	datac => \RAM|ALT_INV_ram~421_q\,
	datad => \RAM|ALT_INV_ram~453_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~660_combout\);

\RAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~469_q\);

\RAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~501_q\);

\RAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~485_q\);

\RAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~517_q\);

\RAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~661_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~517_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~485_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( 
-- \RAM|ram~501_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~469_q\,
	datab => \RAM|ALT_INV_ram~501_q\,
	datac => \RAM|ALT_INV_ram~485_q\,
	datad => \RAM|ALT_INV_ram~517_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~661_combout\);

\RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~662_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~661_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~660_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~659_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~658_combout\,
	datab => \RAM|ALT_INV_ram~659_combout\,
	datac => \RAM|ALT_INV_ram~660_combout\,
	datad => \RAM|ALT_INV_ram~661_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~662_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~125_q\);

\RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~663_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~125_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~61_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~93_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~93_q\,
	datac => \RAM|ALT_INV_ram~61_q\,
	datad => \RAM|ALT_INV_ram~125_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~663_combout\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

\RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~141_q\);

\RAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~664_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~141_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~77_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~109_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~45_q\,
	datab => \RAM|ALT_INV_ram~109_q\,
	datac => \RAM|ALT_INV_ram~77_q\,
	datad => \RAM|ALT_INV_ram~141_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~664_combout\);

\RAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~157_q\);

\RAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~221_q\);

\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

\RAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~253_q\);

\RAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~665_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~253_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~189_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~221_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~157_q\,
	datab => \RAM|ALT_INV_ram~221_q\,
	datac => \RAM|ALT_INV_ram~189_q\,
	datad => \RAM|ALT_INV_ram~253_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~665_combout\);

\RAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~173_q\);

\RAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~237_q\);

\RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~205_q\);

\RAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~269_q\);

\RAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~666_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~269_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~16_combout\ & ( \RAM|ram~205_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( 
-- \RAM|ram~237_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~16_combout\ & ( \RAM|ram~173_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~173_q\,
	datab => \RAM|ALT_INV_ram~237_q\,
	datac => \RAM|ALT_INV_ram~205_q\,
	datad => \RAM|ALT_INV_ram~269_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~666_combout\);

\RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~667_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~666_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~665_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~664_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~663_combout\,
	datab => \RAM|ALT_INV_ram~664_combout\,
	datac => \RAM|ALT_INV_ram~665_combout\,
	datad => \RAM|ALT_INV_ram~666_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~667_combout\);

\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

\RAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~413_q\);

\RAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~445_q\);

\RAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~668_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~445_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~413_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~317_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~285_q\,
	datab => \RAM|ALT_INV_ram~317_q\,
	datac => \RAM|ALT_INV_ram~413_q\,
	datad => \RAM|ALT_INV_ram~445_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~668_combout\);

\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

\RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~381_q\);

\RAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~477_q\);

\RAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~509_q\);

\RAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~669_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~509_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~477_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~381_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~349_q\,
	datab => \RAM|ALT_INV_ram~381_q\,
	datac => \RAM|ALT_INV_ram~477_q\,
	datad => \RAM|ALT_INV_ram~509_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~669_combout\);

\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

\RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~333_q\);

\RAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~429_q\);

\RAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~461_q\);

\RAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~670_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~461_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~429_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~333_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~301_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~301_q\,
	datab => \RAM|ALT_INV_ram~333_q\,
	datac => \RAM|ALT_INV_ram~429_q\,
	datad => \RAM|ALT_INV_ram~461_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~670_combout\);

\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

\RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~397_q\);

\RAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~493_q\);

\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

\RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~671_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~525_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~493_q\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~397_q\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~365_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~365_q\,
	datab => \RAM|ALT_INV_ram~397_q\,
	datac => \RAM|ALT_INV_ram~493_q\,
	datad => \RAM|ALT_INV_ram~525_q\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~671_combout\);

\RAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~672_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~671_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~26_combout\ & ( \RAM|ram~670_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ 
-- & ( \RAM|ram~669_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~26_combout\ & ( \RAM|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~668_combout\,
	datab => \RAM|ALT_INV_ram~669_combout\,
	datac => \RAM|ALT_INV_ram~670_combout\,
	datad => \RAM|ALT_INV_ram~671_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \RAM|ram~672_combout\);

\RAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~673_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~672_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~667_combout\ ) ) ) # ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~662_combout\ ) ) ) # ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~657_combout\,
	datab => \RAM|ALT_INV_ram~662_combout\,
	datac => \RAM|ALT_INV_ram~667_combout\,
	datad => \RAM|ALT_INV_ram~672_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~673_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\Data_IN[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[6]~5_combout\ = (!\RAM|dado_out~3_combout\ & (\comb~1_combout\ & ((\SW[6]~input_o\)))) # (\RAM|dado_out~3_combout\ & (((\comb~1_combout\ & \SW[6]~input_o\)) # (\RAM|ram~673_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~3_combout\,
	datab => \ALT_INV_comb~1_combout\,
	datac => \RAM|ALT_INV_ram~673_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	combout => \Data_IN[6]~5_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~49_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[6]~5_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~37_combout\))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|BANCO_REG|registrador~49_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[6]~5_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~37_combout\))) ) + ( 
-- \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~37_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~49_combout\,
	dataf => \ALT_INV_Data_IN[6]~5_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[6]~5_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~35_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & ((!\CPU|DEC_instrucao|saida[6]~3_combout\ & ((\Data_IN[6]~5_combout\))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (\ROM|memROM~35_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111111101111100010000110100000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~35_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Data_IN[6]~5_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|BANCO_REG|registrador~17\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~17_q\);

\CPU|BANCO_REG|registrador~25\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~25_q\);

\CPU|BANCO_REG|registrador~33\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~33_q\);

\CPU|BANCO_REG|registrador~41\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~41_q\);

\CPU|BANCO_REG|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~49_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~41_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~33_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~25_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~17_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~25_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~33_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~41_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~49_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( \CPU|BANCO_REG|registrador~49_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[6]~5_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~37_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( \CPU|BANCO_REG|registrador~49_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[6]~5_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~37_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~37_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~49_combout\,
	dataf => \ALT_INV_Data_IN[6]~5_combout\,
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

\RAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~214_q\);

\RAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~674_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~214_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~150_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~86_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~86_q\,
	datac => \RAM|ALT_INV_ram~150_q\,
	datad => \RAM|ALT_INV_ram~214_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~674_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

\RAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~166_q\);

\RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~230_q\);

\RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~675_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~230_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~166_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~102_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datab => \RAM|ALT_INV_ram~102_q\,
	datac => \RAM|ALT_INV_ram~166_q\,
	datad => \RAM|ALT_INV_ram~230_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~675_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

\RAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~158_q\);

\RAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~222_q\);

\RAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~676_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~222_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~158_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~94_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~94_q\,
	datac => \RAM|ALT_INV_ram~158_q\,
	datad => \RAM|ALT_INV_ram~222_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~676_combout\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

\RAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~174_q\);

\RAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~238_q\);

\RAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~677_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~238_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~174_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~110_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~46_q\,
	datab => \RAM|ALT_INV_ram~110_q\,
	datac => \RAM|ALT_INV_ram~174_q\,
	datad => \RAM|ALT_INV_ram~238_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~677_combout\);

\RAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~678_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~677_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~676_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~675_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~674_combout\,
	datab => \RAM|ALT_INV_ram~675_combout\,
	datac => \RAM|ALT_INV_ram~676_combout\,
	datad => \RAM|ALT_INV_ram~677_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~678_combout\);

\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

\RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~679_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~78_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~62_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~70_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~54_q\,
	datab => \RAM|ALT_INV_ram~70_q\,
	datac => \RAM|ALT_INV_ram~62_q\,
	datad => \RAM|ALT_INV_ram~78_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~679_combout\);

\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

\RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~126_q\);

\RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~142_q\);

\RAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~680_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~142_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~126_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~134_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~118_q\,
	datab => \RAM|ALT_INV_ram~134_q\,
	datac => \RAM|ALT_INV_ram~126_q\,
	datad => \RAM|ALT_INV_ram~142_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~680_combout\);

\RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~182_q\);

\RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~198_q\);

\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

\RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~206_q\);

\RAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~681_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~206_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~190_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~198_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~182_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~182_q\,
	datab => \RAM|ALT_INV_ram~198_q\,
	datac => \RAM|ALT_INV_ram~190_q\,
	datad => \RAM|ALT_INV_ram~206_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~681_combout\);

\RAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~246_q\);

\RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~262_q\);

\RAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~254_q\);

\RAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~270_q\);

\RAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~682_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~270_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~254_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~262_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~246_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~246_q\,
	datab => \RAM|ALT_INV_ram~262_q\,
	datac => \RAM|ALT_INV_ram~254_q\,
	datad => \RAM|ALT_INV_ram~270_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~682_combout\);

\RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~683_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~682_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~681_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~680_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~679_combout\,
	datab => \RAM|ALT_INV_ram~680_combout\,
	datac => \RAM|ALT_INV_ram~681_combout\,
	datad => \RAM|ALT_INV_ram~682_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~683_combout\);

\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

\RAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~406_q\);

\RAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~470_q\);

\RAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~684_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~470_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~406_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~342_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~278_q\,
	datab => \RAM|ALT_INV_ram~342_q\,
	datac => \RAM|ALT_INV_ram~406_q\,
	datad => \RAM|ALT_INV_ram~470_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~684_combout\);

\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

\RAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~422_q\);

\RAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~486_q\);

\RAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~685_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~486_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~422_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~358_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~294_q\,
	datab => \RAM|ALT_INV_ram~358_q\,
	datac => \RAM|ALT_INV_ram~422_q\,
	datad => \RAM|ALT_INV_ram~486_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~685_combout\);

\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

\RAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~414_q\);

\RAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~478_q\);

\RAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~686_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~478_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~414_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~350_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~286_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~286_q\,
	datab => \RAM|ALT_INV_ram~350_q\,
	datac => \RAM|ALT_INV_ram~414_q\,
	datad => \RAM|ALT_INV_ram~478_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~686_combout\);

\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

\RAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~430_q\);

\RAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~494_q\);

\RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~687_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~494_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~430_q\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( 
-- \RAM|ram~366_q\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~302_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~302_q\,
	datab => \RAM|ALT_INV_ram~366_q\,
	datac => \RAM|ALT_INV_ram~430_q\,
	datad => \RAM|ALT_INV_ram~494_q\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~687_combout\);

\RAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~688_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~687_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~686_combout\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ 
-- & ( \RAM|ram~685_combout\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~684_combout\,
	datab => \RAM|ALT_INV_ram~685_combout\,
	datac => \RAM|ALT_INV_ram~686_combout\,
	datad => \RAM|ALT_INV_ram~687_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~688_combout\);

\RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~310_q\);

\RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~326_q\);

\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

\RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~334_q\);

\RAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~689_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~334_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~318_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~326_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~310_q\,
	datab => \RAM|ALT_INV_ram~326_q\,
	datac => \RAM|ALT_INV_ram~318_q\,
	datad => \RAM|ALT_INV_ram~334_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~689_combout\);

\RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~374_q\);

\RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~390_q\);

\RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~382_q\);

\RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~398_q\);

\RAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~690_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~398_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~382_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~390_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~374_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~374_q\,
	datab => \RAM|ALT_INV_ram~390_q\,
	datac => \RAM|ALT_INV_ram~382_q\,
	datad => \RAM|ALT_INV_ram~398_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~690_combout\);

\RAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~438_q\);

\RAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~454_q\);

\RAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~446_q\);

\RAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~462_q\);

\RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~691_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~462_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~446_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~454_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~438_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~438_q\,
	datab => \RAM|ALT_INV_ram~454_q\,
	datac => \RAM|ALT_INV_ram~446_q\,
	datad => \RAM|ALT_INV_ram~462_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~691_combout\);

\RAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~502_q\);

\RAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~518_q\);

\RAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~510_q\);

\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

\RAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~692_combout\ = ( \ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~526_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( \ROM|memROM~53_combout\ & ( \RAM|ram~510_q\ ) ) ) # ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( 
-- \RAM|ram~518_q\ ) ) ) # ( !\ROM|memROM~26_combout\ & ( !\ROM|memROM~53_combout\ & ( \RAM|ram~502_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~502_q\,
	datab => \RAM|ALT_INV_ram~518_q\,
	datac => \RAM|ALT_INV_ram~510_q\,
	datad => \RAM|ALT_INV_ram~526_q\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~53_combout\,
	combout => \RAM|ram~692_combout\);

\RAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~693_combout\ = ( \ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~692_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( \ROM|memROM~45_combout\ & ( \RAM|ram~691_combout\ ) ) ) # ( \ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ 
-- & ( \RAM|ram~690_combout\ ) ) ) # ( !\ROM|memROM~34_combout\ & ( !\ROM|memROM~45_combout\ & ( \RAM|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~689_combout\,
	datab => \RAM|ALT_INV_ram~690_combout\,
	datac => \RAM|ALT_INV_ram~691_combout\,
	datad => \RAM|ALT_INV_ram~692_combout\,
	datae => \ROM|ALT_INV_memROM~34_combout\,
	dataf => \ROM|ALT_INV_memROM~45_combout\,
	combout => \RAM|ram~693_combout\);

\RAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~694_combout\ = ( \ROM|memROM~16_combout\ & ( \ROM|memROM~49_combout\ & ( \RAM|ram~693_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( \ROM|memROM~49_combout\ & ( \RAM|ram~688_combout\ ) ) ) # ( \ROM|memROM~16_combout\ & ( !\ROM|memROM~49_combout\ 
-- & ( \RAM|ram~683_combout\ ) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~49_combout\ & ( \RAM|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~678_combout\,
	datab => \RAM|ALT_INV_ram~683_combout\,
	datac => \RAM|ALT_INV_ram~688_combout\,
	datad => \RAM|ALT_INV_ram~693_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \ROM|ALT_INV_memROM~49_combout\,
	combout => \RAM|ram~694_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\Data_IN[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~6_combout\ = ( \RAM|ram~694_combout\ & ( \SW[7]~input_o\ & ( ((!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & \comb~0_combout\))) # (\RAM|dado_out~3_combout\) ) ) ) # ( !\RAM|ram~694_combout\ & ( \SW[7]~input_o\ & ( 
-- (!\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & \comb~0_combout\)) ) ) ) # ( \RAM|ram~694_combout\ & ( !\SW[7]~input_o\ & ( \RAM|dado_out~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000100010000000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \RAM|ALT_INV_dado_out~3_combout\,
	datad => \ALT_INV_comb~0_combout\,
	datae => \RAM|ALT_INV_ram~694_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \Data_IN[7]~6_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~50_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((\Data_IN[7]~6_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\))) ) + ( 
-- \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~50_combout\,
	dataf => \ALT_INV_Data_IN[7]~6_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \Data_IN[7]~6_combout\ & ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DEC_instrucao|saida[6]~3_combout\) # (((!\CPU|PC|DOUT\(8) & \ROM|memROM~7_combout\)) # (\CPU|ULA1|Equal0~0_combout\)) ) ) ) # ( !\Data_IN[7]~6_combout\ & ( 
-- \CPU|ULA1|Add1~29_sumout\ & ( ((!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\ & \CPU|DEC_instrucao|saida[6]~3_combout\))) # (\CPU|ULA1|Equal0~0_combout\) ) ) ) # ( \Data_IN[7]~6_combout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Equal0~0_combout\ & 
-- ((!\CPU|DEC_instrucao|saida[6]~3_combout\) # ((!\CPU|PC|DOUT\(8) & \ROM|memROM~7_combout\)))) ) ) ) # ( !\Data_IN[7]~6_combout\ & ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\ & (\CPU|DEC_instrucao|saida[6]~3_combout\ & 
-- !\CPU|ULA1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111100100000000000000010111111111111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datad => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Data_IN[7]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|BANCO_REG|registrador~18\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~18_q\);

\CPU|BANCO_REG|registrador~26\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~26_q\);

\CPU|BANCO_REG|registrador~34\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~34_q\);

\CPU|BANCO_REG|registrador~42\ : dffeas
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
	ena => \CPU|BANCO_REG|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|BANCO_REG|registrador~42_q\);

\CPU|BANCO_REG|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|BANCO_REG|registrador~50_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~42_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~34_q\ ) ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~26_q\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( \CPU|BANCO_REG|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|BANCO_REG|ALT_INV_registrador~18_q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~26_q\,
	datac => \CPU|BANCO_REG|ALT_INV_registrador~34_q\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~42_q\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|BANCO_REG|registrador~50_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( \CPU|BANCO_REG|registrador~50_combout\ ) + ( (!\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\Data_IN[7]~6_combout\)))) # (\CPU|DEC_instrucao|saida[6]~3_combout\ & (((!\ROM|memROM~7_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( 
-- \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DEC_instrucao|ALT_INV_saida[6]~3_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \CPU|BANCO_REG|ALT_INV_registrador~50_combout\,
	dataf => \ALT_INV_Data_IN[7]~6_combout\,
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|flagzero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagzero~0_combout\ = (\CPU|ULA1|Equal0~0_combout\ & (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & !\CPU|ULA1|Add1~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|flagzero~0_combout\);

\CPU|ULA1|flagzero\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagzero~combout\ = ( !\CPU|ULA1|Add1~29_sumout\ & ( \CPU|ULA1|flagzero~0_combout\ & ( (!\CPU|ULA1|Add1~13_sumout\ & (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|ULA1|ALT_INV_flagzero~0_combout\,
	combout => \CPU|ULA1|flagzero~combout\);

\CPU|DEC_instrucao|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida[2]~6_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~66_combout\ & (!\ROM|memROM~60_combout\ & \ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~66_combout\,
	datac => \ROM|ALT_INV_memROM~60_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|DEC_instrucao|saida[2]~6_combout\);

\CPU|REG_FLAG_ZERO|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|flagzero~combout\,
	ena => \CPU|DEC_instrucao|saida[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_ZERO|DOUT~q\);

\CPU|ULA1|flagless\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|flagless~combout\ = (\CPU|ULA1|Equal0~0_combout\ & \CPU|ULA1|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|flagless~combout\);

\CPU|REG_FLAG_LESS|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|flagless~combout\,
	ena => \CPU|DEC_instrucao|saida[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_FLAG_LESS|DOUT~q\);

\CPU|DEC_instrucao|saida_desvio[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DEC_instrucao|saida_desvio[0]~0_combout\ = ( \CPU|REG_FLAG_ZERO|DOUT~q\ & ( \CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~60_combout\ & (\ROM|memROM~27_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~27_combout\ & 
-- !\ROM|memROM~15_combout\)))) ) ) ) # ( !\CPU|REG_FLAG_ZERO|DOUT~q\ & ( \CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~60_combout\ & (\ROM|memROM~28_combout\ & (!\ROM|memROM~27_combout\ & !\ROM|memROM~15_combout\))) # (\ROM|memROM~60_combout\ & 
-- (\ROM|memROM~27_combout\ & ((!\ROM|memROM~28_combout\) # (\ROM|memROM~15_combout\)))) ) ) ) # ( \CPU|REG_FLAG_ZERO|DOUT~q\ & ( !\CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~60_combout\ & (\ROM|memROM~27_combout\ & 
-- \ROM|memROM~15_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~27_combout\ & !\ROM|memROM~15_combout\)))) ) ) ) # ( !\CPU|REG_FLAG_ZERO|DOUT~q\ & ( !\CPU|REG_FLAG_LESS|DOUT~q\ & ( (!\ROM|memROM~60_combout\ & (\ROM|memROM~28_combout\ & 
-- (!\ROM|memROM~27_combout\ & !\ROM|memROM~15_combout\))) # (\ROM|memROM~60_combout\ & (((\ROM|memROM~27_combout\ & \ROM|memROM~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000011010100000000001001000010000000110101001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~60_combout\,
	datac => \ROM|ALT_INV_memROM~27_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \CPU|REG_FLAG_ZERO|ALT_INV_DOUT~q\,
	dataf => \CPU|REG_FLAG_LESS|ALT_INV_DOUT~q\,
	combout => \CPU|DEC_instrucao|saida_desvio[0]~0_combout\);

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|REG_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(5));

\CPU|MUX_PC|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[5]~6_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(5))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~49_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(5))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~49_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(5),
	datae => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[5]~6_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~30_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(1))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000100001100001000001100111111000001000011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~30_combout\);

\ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~31_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000100001100100101111010010110010001000011001001011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~31_combout\);

\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(3))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(4)))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110101110100001110000000000110001101011101000011100000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~32_combout\);

\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = ( \ROM|memROM~31_combout\ & ( \ROM|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & ((\ROM|memROM~30_combout\) # (\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5))))) ) ) ) # ( 
-- !\ROM|memROM~31_combout\ & ( \ROM|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & ((\ROM|memROM~30_combout\) # (\CPU|PC|DOUT\(6))))) ) ) ) # ( \ROM|memROM~31_combout\ & ( !\ROM|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(7) & ((\ROM|memROM~30_combout\) # (\CPU|PC|DOUT\(5))))) ) ) ) # ( !\ROM|memROM~31_combout\ & ( !\ROM|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001000001010000001000000110000000110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~30_combout\,
	datae => \ROM|ALT_INV_memROM~31_combout\,
	dataf => \ROM|ALT_INV_memROM~32_combout\,
	combout => \ROM|memROM~33_combout\);

\ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~34_combout\ = (!\CPU|PC|DOUT\(8) & \ROM|memROM~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~33_combout\,
	combout => \ROM|memROM~34_combout\);

\CPU|REG_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(3));

\CPU|MUX_PC|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[3]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(3))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~34_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|REG_RETORNO|DOUT\(3) & \CPU|DEC_instrucao|Equal14~2_combout\)))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~34_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|REG_RETORNO|ALT_INV_DOUT\(3),
	datad => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[3]~0_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~67_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( 
-- (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000010101000000000001101001100000010010001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~67_combout\);

\ROM|memROM~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~68_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~68_combout\);

\ROM|memROM~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~69_combout\ = (!\CPU|PC|DOUT\(5) & (\ROM|memROM~67_combout\)) # (\CPU|PC|DOUT\(5) & ((\ROM|memROM~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~67_combout\,
	datab => \ROM|ALT_INV_memROM~68_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~69_combout\);

\ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~35_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & \ROM|memROM~69_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~69_combout\,
	combout => \ROM|memROM~35_combout\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|REG_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(6));

\CPU|MUX_PC|saida_MUX[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[6]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(6))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~35_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(6))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~35_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~35_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(6),
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[6]~2_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000001100000000010000000000100110000011000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(6)) # (!\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(6))))) ) ) 
-- ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) $ (((\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( 
-- !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100000001110000010000101100101010010000101000001100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT\(5)) # ((!\CPU|PC|DOUT\(6) & \ROM|memROM~3_combout\)))) ) ) # ( !\ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & (\ROM|memROM~0_combout\ & 
-- \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000011000000111000000000000000100000110000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~5_combout\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\);

\CPU|REG_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(8));

\CPU|MUX_PC|saida_MUX[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[8]~7_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\) # (\CPU|REG_RETORNO|DOUT\(8))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~5_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\ & \CPU|REG_RETORNO|DOUT\(8))))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & 
-- (\ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datad => \CPU|REG_RETORNO|ALT_INV_DOUT\(8),
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[8]~7_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\CPU|REG_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DEC_instrucao|Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_RETORNO|DOUT\(7));

\CPU|MUX_PC|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_PC|saida_MUX[7]~8_combout\ = ( \CPU|REG_RETORNO|DOUT\(7) & ( \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\) # ((!\CPU|PC|DOUT\(8) & \ROM|memROM~7_combout\)) ) ) ) # ( !\CPU|REG_RETORNO|DOUT\(7) & ( 
-- \CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((!\CPU|DEC_instrucao|Equal14~2_combout\)))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\))) ) ) ) # ( 
-- \CPU|REG_RETORNO|DOUT\(7) & ( !\CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (((\CPU|DEC_instrucao|Equal14~2_combout\)))) # (\CPU|DEC_instrucao|saida_desvio[0]~0_combout\ & (!\CPU|PC|DOUT\(8) & 
-- (\ROM|memROM~7_combout\))) ) ) ) # ( !\CPU|REG_RETORNO|DOUT\(7) & ( !\CPU|incrementaPC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\ & \CPU|DEC_instrucao|saida_desvio[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101111001011110010000000101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \CPU|DEC_instrucao|ALT_INV_saida_desvio[0]~0_combout\,
	datad => \CPU|DEC_instrucao|ALT_INV_Equal14~2_combout\,
	datae => \CPU|REG_RETORNO|ALT_INV_DOUT\(7),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX_PC|saida_MUX[7]~8_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX_PC|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~49_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & ((\ROM|memROM~23_combout\))) # (\CPU|PC|DOUT\(6) & (\ROM|memROM~22_combout\))))) ) ) # ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(8) & (\ROM|memROM~21_combout\ & ((!\CPU|PC|DOUT\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000010001000000010000000100000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \ROM|ALT_INV_memROM~23_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	datag => \ROM|ALT_INV_memROM~22_combout\,
	combout => \ROM|memROM~49_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\logicaKeys|KEY_0|KEY|saidaQ\ : dffeas
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
	q => \logicaKeys|KEY_0|KEY|saidaQ~q\);

\logicaKeys|KEY_0|KEY|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|KEY_0|KEY|saida~combout\ = LCELL((\KEY[0]~input_o\ & !\logicaKeys|KEY_0|KEY|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \logicaKeys|KEY_0|KEY|ALT_INV_saidaQ~q\,
	combout => \logicaKeys|KEY_0|KEY|saida~combout\);

\logicaKeys|KEY_0|FF0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \logicaKeys|KEY_0|KEY|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logicaKeys|KEY_0|FF0|DOUT~q\);

\logicaKeys|KEY_0|buff|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logicaKeys|KEY_0|buff|saida[0]~0_combout\ = (\ROM|memROM~49_combout\ & (!\ROM|memROM~26_combout\ & (\comb~0_combout\ & !\logicaKeys|KEY_0|FF0|DOUT~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~49_combout\,
	datab => \ROM|ALT_INV_memROM~26_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \logicaKeys|KEY_0|FF0|ALT_INV_DOUT~q\,
	combout => \logicaKeys|KEY_0|buff|saida[0]~0_combout\);

\RAM|dado_out[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~6_combout\ = ( !\RAM|dado_out[0]~5_combout\ & ( (!\logicaKeys|KEY_0|buff|saida[0]~0_combout\ & (!\RAM|dado_out[0]~2_combout\ & (!\switch8|saida~1_combout\ & !\RAM|dado_out[0]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logicaKeys|KEY_0|buff|ALT_INV_saida[0]~0_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~2_combout\,
	datac => \switch8|ALT_INV_saida~1_combout\,
	datad => \RAM|ALT_INV_dado_out[0]~4_combout\,
	datae => \RAM|ALT_INV_dado_out[0]~5_combout\,
	combout => \RAM|dado_out[0]~6_combout\);

\DEC_Blocos|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_Blocos|Equal6~0_combout\ = ( \ROM|memROM~7_combout\ & ( (\CPU|PC|DOUT\(8) & \ROM|memROM~5_combout\) ) ) # ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~5_combout\ & (((!\ROM|memROM~69_combout\) # (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000001010000010100001111000001110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~69_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	combout => \DEC_Blocos|Equal6~0_combout\);

\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( !\ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \logica_LED|comb~0_combout\);

\logica_LED|LED0to7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~47_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~48_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~49_combout\,
	ena => \logica_LED|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~50_combout\,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|LED0to7|DOUT\(7));

\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	combout => \logica_LED|comb~1_combout\);

\logica_LED|LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED8|DOUT~0_combout\ = ( \logica_LED|comb~1_combout\ & ( (!\ROM|memROM~49_combout\ & ((!\ROM|memROM~26_combout\ & ((\CPU|BANCO_REG|registrador~43_combout\))) # (\ROM|memROM~26_combout\ & (\logica_LED|LED8|DOUT~q\)))) # (\ROM|memROM~49_combout\ 
-- & (\logica_LED|LED8|DOUT~q\)) ) ) # ( !\logica_LED|comb~1_combout\ & ( \logica_LED|LED8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001101010101010101010101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|LED8|ALT_INV_DOUT~q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~43_combout\,
	datac => \ROM|ALT_INV_memROM~49_combout\,
	datad => \ROM|ALT_INV_memROM~26_combout\,
	datae => \logica_LED|ALT_INV_comb~1_combout\,
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

\logica_LED|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~2_combout\ = (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	combout => \logica_LED|comb~2_combout\);

\logica_LED|LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|LED9|DOUT~0_combout\ = ( \ROM|memROM~26_combout\ & ( (!\logica_LED|comb~2_combout\ & (\logica_LED|LED9|DOUT~q\)) # (\logica_LED|comb~2_combout\ & ((!\ROM|memROM~49_combout\ & ((\CPU|BANCO_REG|registrador~43_combout\))) # 
-- (\ROM|memROM~49_combout\ & (\logica_LED|LED9|DOUT~q\)))) ) ) # ( !\ROM|memROM~26_combout\ & ( \logica_LED|LED9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100110101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|LED9|ALT_INV_DOUT~q\,
	datab => \CPU|BANCO_REG|ALT_INV_registrador~43_combout\,
	datac => \logica_LED|ALT_INV_comb~2_combout\,
	datad => \ROM|ALT_INV_memROM~49_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
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
-- \comp_HEX0|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX0|comb~0_combout\);

\comp_HEX0|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
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
-- \comp_HEX1|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX1|comb~0_combout\);

\comp_HEX1|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
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
-- \comp_HEX2|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX2|comb~0_combout\);

\comp_HEX2|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
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
-- \comp_HEX3|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( \ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (!\ROM|memROM~16_combout\ & \ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX3|comb~0_combout\);

\comp_HEX3|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
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

\comp_HEX4|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX4|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (\ROM|memROM~16_combout\ & !\ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX4|comb~0_combout\);

\comp_HEX4|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
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

\comp_HEX5|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comp_HEX5|comb~0_combout\ = ( \ROM|memROM~49_combout\ & ( !\ROM|memROM~26_combout\ & ( (\DEC_Blocos|Equal6~0_combout\ & (\CPU|DEC_instrucao|Equal14~0_combout\ & (\ROM|memROM~16_combout\ & \ROM|memROM~53_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC_Blocos|ALT_INV_Equal6~0_combout\,
	datab => \CPU|DEC_instrucao|ALT_INV_Equal14~0_combout\,
	datac => \ROM|ALT_INV_memROM~16_combout\,
	datad => \ROM|ALT_INV_memROM~53_combout\,
	datae => \ROM|ALT_INV_memROM~49_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \comp_HEX5|comb~0_combout\);

\comp_HEX5|REG|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|BANCO_REG|registrador~43_combout\,
	ena => \comp_HEX5|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~46_combout\,
	ena => \comp_HEX5|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~44_combout\,
	ena => \comp_HEX5|comb~0_combout\,
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
	d => \CPU|BANCO_REG|registrador~45_combout\,
	ena => \comp_HEX5|comb~0_combout\,
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

ww_clockSegundo <= \clockSegundo~output_o\;
END structure;


