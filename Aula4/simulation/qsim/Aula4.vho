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

-- DATE "09/05/2022 23:20:21"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic;
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula4;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula4 IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \KEY~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderGeneric|Equal5~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \memoriaRAM|process_0~0_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4130_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2066_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4131_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2074_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \decoderGeneric|saida[5]~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \decoderGeneric|saida[3]~2_combout\ : std_logic;
SIGNAL \decoderGeneric|saida[4]~0_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2075_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4115_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2067_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4114_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \memoriaRAM|ram~2076_q\ : std_logic;
SIGNAL \memoriaRAM|ram~2068_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4116_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \memoriaRAM|ram~2069_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4117_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2077_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4118_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4119_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2070_q\ : std_logic;
SIGNAL \memoriaRAM|ram~2078_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4120_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4121_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2071_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4122_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2079_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4123_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4124_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2072_q\ : std_logic;
SIGNAL \memoriaRAM|ram~2080_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4125_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4126_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2073_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4127_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~2081_q\ : std_logic;
SIGNAL \memoriaRAM|ram~4128_combout\ : std_logic;
SIGNAL \memoriaRAM|ram~4129_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \decoderGeneric|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4129_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4128_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2081_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4127_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2073_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4126_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4125_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2080_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2072_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4124_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4123_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2079_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4122_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2071_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4121_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4120_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2078_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2070_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4119_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4118_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2077_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4117_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2069_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4116_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2076_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2068_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4115_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2075_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~4114_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2067_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2074_q\ : std_logic;
SIGNAL \memoriaRAM|ALT_INV_ram~2066_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \decoderGeneric|ALT_INV_saida[5]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \REGA|DOUT[2]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGA|DOUT[1]~DUPLICATE_q\;
\memoriaRAM|ALT_INV_process_0~0_combout\ <= NOT \memoriaRAM|process_0~0_combout\;
\MUX1|ALT_INV_saida_MUX[0]~7_combout\ <= NOT \MUX1|saida_MUX[0]~7_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ULA1|ALT_INV_Equal1~0_combout\ <= NOT \ULA1|Equal1~0_combout\;
\decoderGeneric|ALT_INV_Equal5~0_combout\ <= NOT \decoderGeneric|Equal5~0_combout\;
\memoriaRAM|ALT_INV_ram~4129_combout\ <= NOT \memoriaRAM|ram~4129_combout\;
\memoriaRAM|ALT_INV_ram~4128_combout\ <= NOT \memoriaRAM|ram~4128_combout\;
\memoriaRAM|ALT_INV_ram~2081_q\ <= NOT \memoriaRAM|ram~2081_q\;
\memoriaRAM|ALT_INV_ram~4127_combout\ <= NOT \memoriaRAM|ram~4127_combout\;
\memoriaRAM|ALT_INV_ram~2073_q\ <= NOT \memoriaRAM|ram~2073_q\;
\memoriaRAM|ALT_INV_ram~4126_combout\ <= NOT \memoriaRAM|ram~4126_combout\;
\memoriaRAM|ALT_INV_ram~4125_combout\ <= NOT \memoriaRAM|ram~4125_combout\;
\memoriaRAM|ALT_INV_ram~2080_q\ <= NOT \memoriaRAM|ram~2080_q\;
\memoriaRAM|ALT_INV_ram~2072_q\ <= NOT \memoriaRAM|ram~2072_q\;
\memoriaRAM|ALT_INV_ram~4124_combout\ <= NOT \memoriaRAM|ram~4124_combout\;
\memoriaRAM|ALT_INV_ram~4123_combout\ <= NOT \memoriaRAM|ram~4123_combout\;
\memoriaRAM|ALT_INV_ram~2079_q\ <= NOT \memoriaRAM|ram~2079_q\;
\memoriaRAM|ALT_INV_ram~4122_combout\ <= NOT \memoriaRAM|ram~4122_combout\;
\memoriaRAM|ALT_INV_ram~2071_q\ <= NOT \memoriaRAM|ram~2071_q\;
\memoriaRAM|ALT_INV_ram~4121_combout\ <= NOT \memoriaRAM|ram~4121_combout\;
\memoriaRAM|ALT_INV_ram~4120_combout\ <= NOT \memoriaRAM|ram~4120_combout\;
\memoriaRAM|ALT_INV_ram~2078_q\ <= NOT \memoriaRAM|ram~2078_q\;
\memoriaRAM|ALT_INV_ram~2070_q\ <= NOT \memoriaRAM|ram~2070_q\;
\memoriaRAM|ALT_INV_ram~4119_combout\ <= NOT \memoriaRAM|ram~4119_combout\;
\memoriaRAM|ALT_INV_ram~4118_combout\ <= NOT \memoriaRAM|ram~4118_combout\;
\memoriaRAM|ALT_INV_ram~2077_q\ <= NOT \memoriaRAM|ram~2077_q\;
\memoriaRAM|ALT_INV_ram~4117_combout\ <= NOT \memoriaRAM|ram~4117_combout\;
\memoriaRAM|ALT_INV_ram~2069_q\ <= NOT \memoriaRAM|ram~2069_q\;
\MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \MUX1|saida_MUX[2]~1_combout\;
\memoriaRAM|ALT_INV_ram~4116_combout\ <= NOT \memoriaRAM|ram~4116_combout\;
\memoriaRAM|ALT_INV_ram~2076_q\ <= NOT \memoriaRAM|ram~2076_q\;
\memoriaRAM|ALT_INV_ram~2068_q\ <= NOT \memoriaRAM|ram~2068_q\;
\memoriaRAM|ALT_INV_ram~4115_combout\ <= NOT \memoriaRAM|ram~4115_combout\;
\memoriaRAM|ALT_INV_ram~2075_q\ <= NOT \memoriaRAM|ram~2075_q\;
\memoriaRAM|ALT_INV_ram~4114_combout\ <= NOT \memoriaRAM|ram~4114_combout\;
\memoriaRAM|ALT_INV_ram~2067_q\ <= NOT \memoriaRAM|ram~2067_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\memoriaRAM|ALT_INV_ram~2074_q\ <= NOT \memoriaRAM|ram~2074_q\;
\memoriaRAM|ALT_INV_ram~2066_q\ <= NOT \memoriaRAM|ram~2066_q\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\decoderGeneric|ALT_INV_saida[5]~1_combout\ <= NOT \decoderGeneric|saida[5]~1_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\MUX1|ALT_INV_saida_MUX[1]~8_combout\ <= NOT \MUX1|saida_MUX[1]~8_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);

-- Location: IOOBUF_X54_Y19_N56
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X54_Y18_N96
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X54_Y17_N39
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

-- Location: IOOBUF_X54_Y20_N56
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X54_Y20_N22
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y20_N5
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

-- Location: IOOBUF_X54_Y20_N39
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X54_Y19_N22
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X54_Y18_N45
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X54_Y18_N79
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X54_Y21_N5
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X54_Y19_N5
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X54_Y19_N39
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X54_Y17_N22
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X54_Y21_N39
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X54_Y17_N56
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderGeneric|saida[4]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X54_Y21_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderGeneric|saida[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X54_Y18_N61
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

-- Location: LABCELL_X50_Y20_N24
\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = ( !\PC|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

-- Location: FF_X53_Y20_N11
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \PC|DOUT[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X53_Y20_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(1) ) + ( \PC|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X53_Y20_N32
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X53_Y20_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X53_Y20_N34
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X53_Y20_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X53_Y20_N37
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X53_Y20_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X53_Y20_N40
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X53_Y20_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X53_Y20_N43
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X53_Y20_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X53_Y20_N46
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X53_Y20_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X53_Y20_N50
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X53_Y20_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\);

-- Location: FF_X53_Y20_N52
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X53_Y20_N35
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X53_Y20_N38
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y20_N54
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (!\PC|DOUT[2]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X53_Y20_N0
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(0) & (\PC|DOUT[2]~DUPLICATE_q\ & 
-- !\PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X53_Y20_N3
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & !\PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X53_Y20_N44
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X53_Y20_N41
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X53_Y20_N47
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y20_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[4]~DUPLICATE_q\ & !\PC|DOUT[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X53_Y21_N3
\ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal1~0_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & !\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~2_combout\ & (!\PC|DOUT\(8) & 
-- \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ULA1|Equal1~0_combout\);

-- Location: FF_X53_Y20_N53
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y20_N12
\decoderGeneric|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderGeneric|Equal5~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~1_combout\) # (\PC|DOUT[8]~DUPLICATE_q\) ) ) # ( !\ROM1|memROM~0_combout\ & ( ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\))) # 
-- (\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010101111111111101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \decoderGeneric|Equal5~0_combout\);

-- Location: LABCELL_X53_Y20_N9
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT\(3) & !\PC|DOUT\(0))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT\(3) $ (!\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X52_Y20_N24
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( \ROM1|memROM~11_combout\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[8]~DUPLICATE_q\ & !\PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X53_Y20_N12
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( (!\PC|DOUT\(7) & (!\PC|DOUT[4]~DUPLICATE_q\ & (!\PC|DOUT[8]~DUPLICATE_q\ & !\PC|DOUT[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X53_Y20_N6
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC|DOUT\(0) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X53_Y20_N57
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(1) & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X53_Y20_N18
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT[3]~DUPLICATE_q\ & ((\PC|DOUT[2]~DUPLICATE_q\) # (\PC|DOUT\(0)))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ & \PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT\(0) & 
-- ((!\PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000000001100111100000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X53_Y20_N24
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X53_Y20_N15
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~4_combout\ & \PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X53_Y21_N45
\memoriaRAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|process_0~0_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & \PC|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \memoriaRAM|process_0~0_combout\);

-- Location: LABCELL_X52_Y21_N42
\memoriaRAM|ram~4130\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4130_combout\ = ( \ROM1|memROM~10_combout\ & ( (\memoriaRAM|process_0~0_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \memoriaRAM|ram~4130_combout\);

-- Location: FF_X52_Y21_N44
\memoriaRAM|ram~2066\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2066_q\);

-- Location: LABCELL_X52_Y21_N39
\memoriaRAM|ram~4131\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4131_combout\ = ( \memoriaRAM|process_0~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (\ROM1|memROM~10_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \memoriaRAM|ram~4131_combout\);

-- Location: FF_X52_Y20_N5
\memoriaRAM|ram~2074\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2074_q\);

-- Location: LABCELL_X52_Y20_N3
\MUX1|saida_MUX[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~7_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~7_combout\ & \memoriaRAM|ram~2074_q\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~7_combout\ & \memoriaRAM|ram~2066_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \memoriaRAM|ALT_INV_ram~2066_q\,
	datad => \memoriaRAM|ALT_INV_ram~2074_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \MUX1|saida_MUX[0]~7_combout\);

-- Location: LABCELL_X53_Y21_N48
\decoderGeneric|saida[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderGeneric|saida[5]~1_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderGeneric|saida[5]~1_combout\);

-- Location: LABCELL_X52_Y20_N9
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \decoderGeneric|saida[5]~1_combout\ & ( \ROM1|memROM~5_combout\ ) ) # ( !\decoderGeneric|saida[5]~1_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~10_combout\ & \MUX1|saida_MUX[0]~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~7_combout\,
	dataf => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X52_Y20_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( (!\decoderGeneric|Equal5~0_combout\ & \ULA1|Equal1~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datad => \ULA1|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X52_Y20_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(0) ) + ( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001011010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X53_Y21_N39
\decoderGeneric|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderGeneric|saida[3]~2_combout\ = ( \ROM1|memROM~0_combout\ & ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~3_combout\ & \ROM1|memROM~1_combout\) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\PC|DOUT\(8) & ( (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~1_combout\ & 
-- \ROM1|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \decoderGeneric|saida[3]~2_combout\);

-- Location: LABCELL_X53_Y21_N30
\decoderGeneric|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderGeneric|saida[4]~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & !\ROM1|memROM~0_combout\) ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~3_combout\ $ 
-- (!\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000001010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderGeneric|saida[4]~0_combout\);

-- Location: FF_X52_Y20_N34
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: FF_X53_Y19_N59
\memoriaRAM|ram~2075\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2075_q\);

-- Location: LABCELL_X53_Y19_N57
\memoriaRAM|ram~4115\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4115_combout\ = ( \memoriaRAM|ram~2075_q\ & ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\) # (\PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \memoriaRAM|ALT_INV_ram~2075_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \memoriaRAM|ram~4115_combout\);

-- Location: FF_X53_Y19_N2
\memoriaRAM|ram~2067\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2067_q\);

-- Location: LABCELL_X53_Y19_N0
\memoriaRAM|ram~4114\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4114_combout\ = ( \memoriaRAM|ram~2067_q\ & ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\) # (\PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \memoriaRAM|ALT_INV_ram~2067_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \memoriaRAM|ram~4114_combout\);

-- Location: LABCELL_X52_Y20_N21
\MUX1|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~8_combout\ = ( \decoderGeneric|saida[5]~1_combout\ & ( \ROM1|memROM~7_combout\ ) ) # ( !\decoderGeneric|saida[5]~1_combout\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~5_combout\ & ((\memoriaRAM|ram~4114_combout\))) # 
-- (\ROM1|memROM~5_combout\ & (\memoriaRAM|ram~4115_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \memoriaRAM|ALT_INV_ram~4115_combout\,
	datad => \memoriaRAM|ALT_INV_ram~4114_combout\,
	dataf => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	combout => \MUX1|saida_MUX[1]~8_combout\);

-- Location: FF_X52_Y20_N38
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~8_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y20_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[1]~8_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[1]~8_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \ULA1|ALT_INV_Equal1~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~8_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: FF_X52_Y20_N37
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~8_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X52_Y20_N20
\memoriaRAM|ram~2076\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2076_q\);

-- Location: FF_X52_Y20_N8
\memoriaRAM|ram~2068\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2068_q\);

-- Location: LABCELL_X52_Y20_N18
\memoriaRAM|ram~4116\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4116_combout\ = ( \memoriaRAM|ram~2068_q\ & ( (!\ROM1|memROM~7_combout\ & ((!\ROM1|memROM~5_combout\) # (\memoriaRAM|ram~2076_q\))) ) ) # ( !\memoriaRAM|ram~2068_q\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~7_combout\ & 
-- \memoriaRAM|ram~2076_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2076_q\,
	dataf => \memoriaRAM|ALT_INV_ram~2068_q\,
	combout => \memoriaRAM|ram~4116_combout\);

-- Location: LABCELL_X52_Y20_N0
\MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~1_combout\ = ( \decoderGeneric|saida[5]~1_combout\ & ( \ROM1|memROM~8_combout\ ) ) # ( !\decoderGeneric|saida[5]~1_combout\ & ( (\ROM1|memROM~10_combout\ & (\memoriaRAM|ram~4116_combout\ & !\ROM1|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \memoriaRAM|ALT_INV_ram~4116_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	combout => \MUX1|saida_MUX[2]~1_combout\);

-- Location: FF_X52_Y20_N41
\REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~1_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y20_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1|saida_MUX[2]~1_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1|saida_MUX[2]~1_combout\ $ (((!\ULA1|Equal1~0_combout\) # (\decoderGeneric|Equal5~0_combout\))) ) + ( \REGA|DOUT[2]~DUPLICATE_q\ ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \ULA1|ALT_INV_Equal1~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: FF_X52_Y20_N40
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~1_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X53_Y20_N23
\memoriaRAM|ram~2069\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2069_q\);

-- Location: LABCELL_X53_Y20_N21
\memoriaRAM|ram~4117\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4117_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~8_combout\ & \memoriaRAM|ram~2069_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2069_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \memoriaRAM|ram~4117_combout\);

-- Location: FF_X52_Y21_N23
\memoriaRAM|ram~2077\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2077_q\);

-- Location: LABCELL_X52_Y21_N21
\memoriaRAM|ram~4118\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4118_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~10_combout\ & \memoriaRAM|ram~2077_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2077_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaRAM|ram~4118_combout\);

-- Location: LABCELL_X52_Y21_N48
\memoriaRAM|ram~4119\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4119_combout\ = ( \memoriaRAM|ram~4118_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\memoriaRAM|ram~4117_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\memoriaRAM|ram~4118_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~7_combout\ 
-- & \memoriaRAM|ram~4117_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \memoriaRAM|ALT_INV_ram~4117_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4118_combout\,
	combout => \memoriaRAM|ram~4119_combout\);

-- Location: LABCELL_X52_Y20_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( (!\ULA1|Equal1~0_combout\ & (((\memoriaRAM|ram~4119_combout\ & !\decoderGeneric|saida[5]~1_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ (((\memoriaRAM|ram~4119_combout\ 
-- & !\decoderGeneric|saida[5]~1_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(3) ) + ( (!\ULA1|Equal1~0_combout\ & (((\memoriaRAM|ram~4119_combout\ & !\decoderGeneric|saida[5]~1_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ (((\memoriaRAM|ram~4119_combout\ & 
-- !\decoderGeneric|saida[5]~1_combout\))))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \memoriaRAM|ALT_INV_ram~4119_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	dataf => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X52_Y21_N45
\MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~2_combout\ = (!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4119_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	datad => \memoriaRAM|ALT_INV_ram~4119_combout\,
	combout => \MUX1|saida_MUX[3]~2_combout\);

-- Location: FF_X52_Y20_N43
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~2_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X52_Y21_N25
\memoriaRAM|ram~2070\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2070_q\);

-- Location: FF_X52_Y21_N5
\memoriaRAM|ram~2078\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2078_q\);

-- Location: LABCELL_X52_Y21_N3
\memoriaRAM|ram~4120\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4120_combout\ = ( \memoriaRAM|ram~2078_q\ & ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~7_combout\ ) ) ) # ( \memoriaRAM|ram~2078_q\ & ( !\ROM1|memROM~5_combout\ & ( (\memoriaRAM|ram~2070_q\ & !\ROM1|memROM~7_combout\) ) ) ) # ( 
-- !\memoriaRAM|ram~2078_q\ & ( !\ROM1|memROM~5_combout\ & ( (\memoriaRAM|ram~2070_q\ & !\ROM1|memROM~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaRAM|ALT_INV_ram~2070_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \memoriaRAM|ALT_INV_ram~2078_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \memoriaRAM|ram~4120_combout\);

-- Location: LABCELL_X52_Y20_N15
\memoriaRAM|ram~4121\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4121_combout\ = ( \memoriaRAM|ram~4120_combout\ & ( (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4120_combout\,
	combout => \memoriaRAM|ram~4121_combout\);

-- Location: LABCELL_X52_Y20_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\ULA1|Equal1~0_combout\ & (((\memoriaRAM|ram~4121_combout\ & !\decoderGeneric|saida[5]~1_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ (((\memoriaRAM|ram~4121_combout\ 
-- & !\decoderGeneric|saida[5]~1_combout\))))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\ULA1|Equal1~0_combout\ & (((\memoriaRAM|ram~4121_combout\ & !\decoderGeneric|saida[5]~1_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ (((\memoriaRAM|ram~4121_combout\ & 
-- !\decoderGeneric|saida[5]~1_combout\))))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001011101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \memoriaRAM|ALT_INV_ram~4121_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	dataf => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X52_Y20_N6
\MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~3_combout\ = ( \memoriaRAM|ram~4121_combout\ & ( !\decoderGeneric|saida[5]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4121_combout\,
	combout => \MUX1|saida_MUX[4]~3_combout\);

-- Location: FF_X52_Y20_N46
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~3_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X52_Y21_N7
\memoriaRAM|ram~2071\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2071_q\);

-- Location: LABCELL_X52_Y21_N36
\memoriaRAM|ram~4122\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4122_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\memoriaRAM|ram~2071_q\ & \ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \memoriaRAM|ALT_INV_ram~2071_q\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaRAM|ram~4122_combout\);

-- Location: FF_X52_Y21_N35
\memoriaRAM|ram~2079\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2079_q\);

-- Location: LABCELL_X52_Y21_N33
\memoriaRAM|ram~4123\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4123_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~10_combout\ & \memoriaRAM|ram~2079_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2079_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaRAM|ram~4123_combout\);

-- Location: LABCELL_X52_Y21_N6
\memoriaRAM|ram~4124\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4124_combout\ = ( \memoriaRAM|ram~4123_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\memoriaRAM|ram~4122_combout\) # (\ROM1|memROM~5_combout\))) ) ) # ( !\memoriaRAM|ram~4123_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~5_combout\ 
-- & \memoriaRAM|ram~4122_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \memoriaRAM|ALT_INV_ram~4122_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4123_combout\,
	combout => \memoriaRAM|ram~4124_combout\);

-- Location: LABCELL_X52_Y20_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (!\ULA1|Equal1~0_combout\ & (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4124_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ 
-- (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4124_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (!\ULA1|Equal1~0_combout\ & (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4124_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ 
-- (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4124_combout\))))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	dataf => \memoriaRAM|ALT_INV_ram~4124_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X52_Y21_N57
\MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~4_combout\ = ( !\decoderGeneric|saida[5]~1_combout\ & ( \memoriaRAM|ram~4124_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4124_combout\,
	combout => \MUX1|saida_MUX[5]~4_combout\);

-- Location: FF_X52_Y20_N50
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~4_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: FF_X52_Y21_N56
\memoriaRAM|ram~2072\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2072_q\);

-- Location: FF_X52_Y21_N20
\memoriaRAM|ram~2080\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2080_q\);

-- Location: LABCELL_X52_Y21_N18
\memoriaRAM|ram~4125\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4125_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\ROM1|memROM~7_combout\ & \memoriaRAM|ram~2080_q\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (\memoriaRAM|ram~2072_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaRAM|ALT_INV_ram~2072_q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2080_q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \memoriaRAM|ram~4125_combout\);

-- Location: LABCELL_X52_Y21_N9
\memoriaRAM|ram~4126\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4126_combout\ = ( \memoriaRAM|ram~4125_combout\ & ( (\ROM1|memROM~10_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4125_combout\,
	combout => \memoriaRAM|ram~4126_combout\);

-- Location: LABCELL_X52_Y20_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\ULA1|Equal1~0_combout\ & (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4126_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ 
-- (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4126_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\ULA1|Equal1~0_combout\ & (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4126_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ 
-- (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4126_combout\))))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \memoriaRAM|ALT_INV_ram~4126_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X52_Y21_N51
\MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~5_combout\ = ( \memoriaRAM|ram~4126_combout\ & ( !\decoderGeneric|saida[5]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4126_combout\,
	combout => \MUX1|saida_MUX[6]~5_combout\);

-- Location: FF_X52_Y20_N52
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~5_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X52_Y21_N17
\memoriaRAM|ram~2073\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \memoriaRAM|ram~4130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2073_q\);

-- Location: LABCELL_X52_Y21_N15
\memoriaRAM|ram~4127\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4127_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~10_combout\ & \memoriaRAM|ram~2073_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2073_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaRAM|ram~4127_combout\);

-- Location: FF_X52_Y21_N32
\memoriaRAM|ram~2081\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \memoriaRAM|ram~4131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaRAM|ram~2081_q\);

-- Location: LABCELL_X52_Y21_N30
\memoriaRAM|ram~4128\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4128_combout\ = ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~10_combout\ & \memoriaRAM|ram~2081_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \memoriaRAM|ALT_INV_ram~2081_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \memoriaRAM|ram~4128_combout\);

-- Location: LABCELL_X52_Y21_N12
\memoriaRAM|ram~4129\ : cyclonev_lcell_comb
-- Equation(s):
-- \memoriaRAM|ram~4129_combout\ = ( \memoriaRAM|ram~4128_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\ROM1|memROM~5_combout\) # (\memoriaRAM|ram~4127_combout\))) ) ) # ( !\memoriaRAM|ram~4128_combout\ & ( (\memoriaRAM|ram~4127_combout\ & 
-- (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \memoriaRAM|ALT_INV_ram~4127_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4128_combout\,
	combout => \memoriaRAM|ram~4129_combout\);

-- Location: LABCELL_X52_Y20_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (!\ULA1|Equal1~0_combout\ & (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4129_combout\)))) # (\ULA1|Equal1~0_combout\ & (!\decoderGeneric|Equal5~0_combout\ $ 
-- (((!\decoderGeneric|saida[5]~1_combout\ & \memoriaRAM|ram~4129_combout\))))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110110100101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Equal1~0_combout\,
	datab => \decoderGeneric|ALT_INV_Equal5~0_combout\,
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	dataf => \memoriaRAM|ALT_INV_ram~4129_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X52_Y21_N27
\MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~6_combout\ = ( \memoriaRAM|ram~4129_combout\ & ( !\decoderGeneric|saida[5]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderGeneric|ALT_INV_saida[5]~1_combout\,
	dataf => \memoriaRAM|ALT_INV_ram~4129_combout\,
	combout => \MUX1|saida_MUX[7]~6_combout\);

-- Location: FF_X52_Y20_N55
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~6_combout\,
	sload => \decoderGeneric|saida[3]~2_combout\,
	ena => \decoderGeneric|saida[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: IOIBUF_X18_Y0_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X36_Y30_N0
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


