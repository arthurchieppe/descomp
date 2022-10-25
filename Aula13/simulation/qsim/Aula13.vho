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

-- DATE "10/25/2022 20:25:29"

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

ENTITY 	Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	OP_ULA : IN std_logic;
	WR_REG3 : IN std_logic;
	UC : OUT std_logic_vector(5 DOWNTO 0);
	ULA_OUT_req : OUT std_logic_vector(31 DOWNTO 0);
	PC_OUT_req : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula13;

ARCHITECTURE structure OF Aula13 IS
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
SIGNAL ww_OP_ULA : std_logic;
SIGNAL ww_WR_REG3 : std_logic;
SIGNAL ww_UC : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ULA_OUT_req : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_OUT_req : std_logic_vector(31 DOWNTO 0);
SIGNAL \WR_REG3~input_o\ : std_logic;
SIGNAL \UC[0]~output_o\ : std_logic;
SIGNAL \UC[1]~output_o\ : std_logic;
SIGNAL \UC[2]~output_o\ : std_logic;
SIGNAL \UC[3]~output_o\ : std_logic;
SIGNAL \UC[4]~output_o\ : std_logic;
SIGNAL \UC[5]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[0]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[1]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[2]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[3]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[4]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[5]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[6]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[7]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[8]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[9]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[10]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[11]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[12]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[13]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[14]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[15]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[16]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[17]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[18]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[19]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[20]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[21]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[22]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[23]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[24]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[25]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[26]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[27]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[28]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[29]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[30]~output_o\ : std_logic;
SIGNAL \ULA_OUT_req[31]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[0]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[1]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[2]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[3]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[4]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[5]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[6]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[7]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[8]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[9]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[10]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[11]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[12]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[13]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[14]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[15]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[16]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[17]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[18]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[19]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[20]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[21]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[22]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[23]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[24]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[25]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[26]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[27]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[28]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[29]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[30]~output_o\ : std_logic;
SIGNAL \PC_OUT_req[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \SOMA_PC|Add0~1_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~2\ : std_logic;
SIGNAL \SOMA_PC|Add0~5_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~6\ : std_logic;
SIGNAL \SOMA_PC|Add0~9_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~10\ : std_logic;
SIGNAL \SOMA_PC|Add0~13_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~14\ : std_logic;
SIGNAL \SOMA_PC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \OP_ULA~input_o\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~18\ : std_logic;
SIGNAL \SOMA_PC|Add0~21_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~22\ : std_logic;
SIGNAL \SOMA_PC|Add0~25_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~26\ : std_logic;
SIGNAL \SOMA_PC|Add0~29_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~30\ : std_logic;
SIGNAL \SOMA_PC|Add0~33_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~34\ : std_logic;
SIGNAL \SOMA_PC|Add0~37_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~38\ : std_logic;
SIGNAL \SOMA_PC|Add0~41_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~42\ : std_logic;
SIGNAL \SOMA_PC|Add0~45_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~46\ : std_logic;
SIGNAL \SOMA_PC|Add0~49_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~50\ : std_logic;
SIGNAL \SOMA_PC|Add0~53_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~54\ : std_logic;
SIGNAL \SOMA_PC|Add0~57_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~58\ : std_logic;
SIGNAL \SOMA_PC|Add0~61_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~62\ : std_logic;
SIGNAL \SOMA_PC|Add0~65_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~66\ : std_logic;
SIGNAL \SOMA_PC|Add0~69_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~70\ : std_logic;
SIGNAL \SOMA_PC|Add0~73_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~74\ : std_logic;
SIGNAL \SOMA_PC|Add0~77_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~78\ : std_logic;
SIGNAL \SOMA_PC|Add0~81_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~82\ : std_logic;
SIGNAL \SOMA_PC|Add0~85_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~86\ : std_logic;
SIGNAL \SOMA_PC|Add0~89_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~90\ : std_logic;
SIGNAL \SOMA_PC|Add0~93_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~94\ : std_logic;
SIGNAL \SOMA_PC|Add0~97_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~98\ : std_logic;
SIGNAL \SOMA_PC|Add0~101_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~102\ : std_logic;
SIGNAL \SOMA_PC|Add0~105_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~106\ : std_logic;
SIGNAL \SOMA_PC|Add0~109_sumout\ : std_logic;
SIGNAL \SOMA_PC|Add0~110\ : std_logic;
SIGNAL \SOMA_PC|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_OP_ULA~input_o\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_OP_ULA <= OP_ULA;
ww_WR_REG3 <= WR_REG3;
UC <= ww_UC;
ULA_OUT_req <= ww_ULA_OUT_req;
PC_OUT_req <= ww_PC_OUT_req;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OP_ULA~input_o\ <= NOT \OP_ULA~input_o\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);

\UC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[0]~output_o\);

\UC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[1]~output_o\);

\UC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[2]~output_o\);

\UC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[3]~output_o\);

\UC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[4]~output_o\);

\UC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UC[5]~output_o\);

\ULA_OUT_req[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[0]~output_o\);

\ULA_OUT_req[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[1]~output_o\);

\ULA_OUT_req[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[2]~output_o\);

\ULA_OUT_req[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[3]~output_o\);

\ULA_OUT_req[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[4]~output_o\);

\ULA_OUT_req[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[5]~output_o\);

\ULA_OUT_req[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[6]~output_o\);

\ULA_OUT_req[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[7]~output_o\);

\ULA_OUT_req[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[8]~output_o\);

\ULA_OUT_req[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[9]~output_o\);

\ULA_OUT_req[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[10]~output_o\);

\ULA_OUT_req[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[11]~output_o\);

\ULA_OUT_req[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[12]~output_o\);

\ULA_OUT_req[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[13]~output_o\);

\ULA_OUT_req[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[14]~output_o\);

\ULA_OUT_req[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[15]~output_o\);

\ULA_OUT_req[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[16]~output_o\);

\ULA_OUT_req[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[17]~output_o\);

\ULA_OUT_req[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[18]~output_o\);

\ULA_OUT_req[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[19]~output_o\);

\ULA_OUT_req[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[20]~output_o\);

\ULA_OUT_req[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[21]~output_o\);

\ULA_OUT_req[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[22]~output_o\);

\ULA_OUT_req[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[23]~output_o\);

\ULA_OUT_req[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[24]~output_o\);

\ULA_OUT_req[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[25]~output_o\);

\ULA_OUT_req[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[26]~output_o\);

\ULA_OUT_req[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[27]~output_o\);

\ULA_OUT_req[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[28]~output_o\);

\ULA_OUT_req[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[29]~output_o\);

\ULA_OUT_req[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[30]~output_o\);

\ULA_OUT_req[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT_req[31]~output_o\);

\PC_OUT_req[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT_req[0]~output_o\);

\PC_OUT_req[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT_req[1]~output_o\);

\PC_OUT_req[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT_req[2]~output_o\);

\PC_OUT_req[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT_req[3]~output_o\);

\PC_OUT_req[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT_req[4]~output_o\);

\PC_OUT_req[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT_req[5]~output_o\);

\PC_OUT_req[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT_req[6]~output_o\);

\PC_OUT_req[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT_req[7]~output_o\);

\PC_OUT_req[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT_req[8]~output_o\);

\PC_OUT_req[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT_req[9]~output_o\);

\PC_OUT_req[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT_req[10]~output_o\);

\PC_OUT_req[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT_req[11]~output_o\);

\PC_OUT_req[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT_req[12]~output_o\);

\PC_OUT_req[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT_req[13]~output_o\);

\PC_OUT_req[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT_req[14]~output_o\);

\PC_OUT_req[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT_req[15]~output_o\);

\PC_OUT_req[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT_req[16]~output_o\);

\PC_OUT_req[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT_req[17]~output_o\);

\PC_OUT_req[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT_req[18]~output_o\);

\PC_OUT_req[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT_req[19]~output_o\);

\PC_OUT_req[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT_req[20]~output_o\);

\PC_OUT_req[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT_req[21]~output_o\);

\PC_OUT_req[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT_req[22]~output_o\);

\PC_OUT_req[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT_req[23]~output_o\);

\PC_OUT_req[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT_req[24]~output_o\);

\PC_OUT_req[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT_req[25]~output_o\);

\PC_OUT_req[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT_req[26]~output_o\);

\PC_OUT_req[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT_req[27]~output_o\);

\PC_OUT_req[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT_req[28]~output_o\);

\PC_OUT_req[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT_req[29]~output_o\);

\PC_OUT_req[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT_req[30]~output_o\);

\PC_OUT_req[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT_req[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\SOMA_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \SOMA_PC|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \SOMA_PC|Add0~1_sumout\,
	cout => \SOMA_PC|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\SOMA_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMA_PC|Add0~2\ ))
-- \SOMA_PC|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \SOMA_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \SOMA_PC|Add0~2\,
	sumout => \SOMA_PC|Add0~5_sumout\,
	cout => \SOMA_PC|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\SOMA_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMA_PC|Add0~6\ ))
-- \SOMA_PC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \SOMA_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \SOMA_PC|Add0~6\,
	sumout => \SOMA_PC|Add0~9_sumout\,
	cout => \SOMA_PC|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\SOMA_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMA_PC|Add0~10\ ))
-- \SOMA_PC|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \SOMA_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \SOMA_PC|Add0~10\,
	sumout => \SOMA_PC|Add0~13_sumout\,
	cout => \SOMA_PC|Add0~14\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\SOMA_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMA_PC|Add0~14\ ))
-- \SOMA_PC|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \SOMA_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \SOMA_PC|Add0~14\,
	sumout => \SOMA_PC|Add0~17_sumout\,
	cout => \SOMA_PC|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

\OP_ULA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_ULA,
	o => \OP_ULA~input_o\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\OP_ULA~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_OP_ULA~input_o\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \ROM|memROM~0_combout\ ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\SOMA_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMA_PC|Add0~18\ ))
-- \SOMA_PC|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \SOMA_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \SOMA_PC|Add0~18\,
	sumout => \SOMA_PC|Add0~21_sumout\,
	cout => \SOMA_PC|Add0~22\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\SOMA_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMA_PC|Add0~22\ ))
-- \SOMA_PC|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \SOMA_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \SOMA_PC|Add0~22\,
	sumout => \SOMA_PC|Add0~25_sumout\,
	cout => \SOMA_PC|Add0~26\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\SOMA_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMA_PC|Add0~26\ ))
-- \SOMA_PC|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \SOMA_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \SOMA_PC|Add0~26\,
	sumout => \SOMA_PC|Add0~29_sumout\,
	cout => \SOMA_PC|Add0~30\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\SOMA_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMA_PC|Add0~30\ ))
-- \SOMA_PC|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \SOMA_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \SOMA_PC|Add0~30\,
	sumout => \SOMA_PC|Add0~33_sumout\,
	cout => \SOMA_PC|Add0~34\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\SOMA_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMA_PC|Add0~34\ ))
-- \SOMA_PC|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \SOMA_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \SOMA_PC|Add0~34\,
	sumout => \SOMA_PC|Add0~37_sumout\,
	cout => \SOMA_PC|Add0~38\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\SOMA_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMA_PC|Add0~38\ ))
-- \SOMA_PC|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \SOMA_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \SOMA_PC|Add0~38\,
	sumout => \SOMA_PC|Add0~41_sumout\,
	cout => \SOMA_PC|Add0~42\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\SOMA_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMA_PC|Add0~42\ ))
-- \SOMA_PC|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \SOMA_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \SOMA_PC|Add0~42\,
	sumout => \SOMA_PC|Add0~45_sumout\,
	cout => \SOMA_PC|Add0~46\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\SOMA_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMA_PC|Add0~46\ ))
-- \SOMA_PC|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \SOMA_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \SOMA_PC|Add0~46\,
	sumout => \SOMA_PC|Add0~49_sumout\,
	cout => \SOMA_PC|Add0~50\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\SOMA_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMA_PC|Add0~50\ ))
-- \SOMA_PC|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \SOMA_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \SOMA_PC|Add0~50\,
	sumout => \SOMA_PC|Add0~53_sumout\,
	cout => \SOMA_PC|Add0~54\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\SOMA_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMA_PC|Add0~54\ ))
-- \SOMA_PC|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \SOMA_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \SOMA_PC|Add0~54\,
	sumout => \SOMA_PC|Add0~57_sumout\,
	cout => \SOMA_PC|Add0~58\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\SOMA_PC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMA_PC|Add0~58\ ))
-- \SOMA_PC|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \SOMA_PC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \SOMA_PC|Add0~58\,
	sumout => \SOMA_PC|Add0~61_sumout\,
	cout => \SOMA_PC|Add0~62\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\SOMA_PC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMA_PC|Add0~62\ ))
-- \SOMA_PC|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \SOMA_PC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \SOMA_PC|Add0~62\,
	sumout => \SOMA_PC|Add0~65_sumout\,
	cout => \SOMA_PC|Add0~66\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\SOMA_PC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMA_PC|Add0~66\ ))
-- \SOMA_PC|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \SOMA_PC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \SOMA_PC|Add0~66\,
	sumout => \SOMA_PC|Add0~69_sumout\,
	cout => \SOMA_PC|Add0~70\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\SOMA_PC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~73_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMA_PC|Add0~70\ ))
-- \SOMA_PC|Add0~74\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \SOMA_PC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \SOMA_PC|Add0~70\,
	sumout => \SOMA_PC|Add0~73_sumout\,
	cout => \SOMA_PC|Add0~74\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\SOMA_PC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMA_PC|Add0~74\ ))
-- \SOMA_PC|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \SOMA_PC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \SOMA_PC|Add0~74\,
	sumout => \SOMA_PC|Add0~77_sumout\,
	cout => \SOMA_PC|Add0~78\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\SOMA_PC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMA_PC|Add0~78\ ))
-- \SOMA_PC|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \SOMA_PC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \SOMA_PC|Add0~78\,
	sumout => \SOMA_PC|Add0~81_sumout\,
	cout => \SOMA_PC|Add0~82\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\SOMA_PC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMA_PC|Add0~82\ ))
-- \SOMA_PC|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \SOMA_PC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \SOMA_PC|Add0~82\,
	sumout => \SOMA_PC|Add0~85_sumout\,
	cout => \SOMA_PC|Add0~86\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\SOMA_PC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMA_PC|Add0~86\ ))
-- \SOMA_PC|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \SOMA_PC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \SOMA_PC|Add0~86\,
	sumout => \SOMA_PC|Add0~89_sumout\,
	cout => \SOMA_PC|Add0~90\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\SOMA_PC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMA_PC|Add0~90\ ))
-- \SOMA_PC|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \SOMA_PC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \SOMA_PC|Add0~90\,
	sumout => \SOMA_PC|Add0~93_sumout\,
	cout => \SOMA_PC|Add0~94\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\SOMA_PC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMA_PC|Add0~94\ ))
-- \SOMA_PC|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \SOMA_PC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \SOMA_PC|Add0~94\,
	sumout => \SOMA_PC|Add0~97_sumout\,
	cout => \SOMA_PC|Add0~98\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\SOMA_PC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMA_PC|Add0~98\ ))
-- \SOMA_PC|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \SOMA_PC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \SOMA_PC|Add0~98\,
	sumout => \SOMA_PC|Add0~101_sumout\,
	cout => \SOMA_PC|Add0~102\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\SOMA_PC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMA_PC|Add0~102\ ))
-- \SOMA_PC|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \SOMA_PC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \SOMA_PC|Add0~102\,
	sumout => \SOMA_PC|Add0~105_sumout\,
	cout => \SOMA_PC|Add0~106\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\SOMA_PC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMA_PC|Add0~106\ ))
-- \SOMA_PC|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \SOMA_PC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \SOMA_PC|Add0~106\,
	sumout => \SOMA_PC|Add0~109_sumout\,
	cout => \SOMA_PC|Add0~110\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\SOMA_PC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_PC|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \SOMA_PC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \SOMA_PC|Add0~110\,
	sumout => \SOMA_PC|Add0~113_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \SOMA_PC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\WR_REG3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_REG3,
	o => \WR_REG3~input_o\);

ww_UC(0) <= \UC[0]~output_o\;

ww_UC(1) <= \UC[1]~output_o\;

ww_UC(2) <= \UC[2]~output_o\;

ww_UC(3) <= \UC[3]~output_o\;

ww_UC(4) <= \UC[4]~output_o\;

ww_UC(5) <= \UC[5]~output_o\;

ww_ULA_OUT_req(0) <= \ULA_OUT_req[0]~output_o\;

ww_ULA_OUT_req(1) <= \ULA_OUT_req[1]~output_o\;

ww_ULA_OUT_req(2) <= \ULA_OUT_req[2]~output_o\;

ww_ULA_OUT_req(3) <= \ULA_OUT_req[3]~output_o\;

ww_ULA_OUT_req(4) <= \ULA_OUT_req[4]~output_o\;

ww_ULA_OUT_req(5) <= \ULA_OUT_req[5]~output_o\;

ww_ULA_OUT_req(6) <= \ULA_OUT_req[6]~output_o\;

ww_ULA_OUT_req(7) <= \ULA_OUT_req[7]~output_o\;

ww_ULA_OUT_req(8) <= \ULA_OUT_req[8]~output_o\;

ww_ULA_OUT_req(9) <= \ULA_OUT_req[9]~output_o\;

ww_ULA_OUT_req(10) <= \ULA_OUT_req[10]~output_o\;

ww_ULA_OUT_req(11) <= \ULA_OUT_req[11]~output_o\;

ww_ULA_OUT_req(12) <= \ULA_OUT_req[12]~output_o\;

ww_ULA_OUT_req(13) <= \ULA_OUT_req[13]~output_o\;

ww_ULA_OUT_req(14) <= \ULA_OUT_req[14]~output_o\;

ww_ULA_OUT_req(15) <= \ULA_OUT_req[15]~output_o\;

ww_ULA_OUT_req(16) <= \ULA_OUT_req[16]~output_o\;

ww_ULA_OUT_req(17) <= \ULA_OUT_req[17]~output_o\;

ww_ULA_OUT_req(18) <= \ULA_OUT_req[18]~output_o\;

ww_ULA_OUT_req(19) <= \ULA_OUT_req[19]~output_o\;

ww_ULA_OUT_req(20) <= \ULA_OUT_req[20]~output_o\;

ww_ULA_OUT_req(21) <= \ULA_OUT_req[21]~output_o\;

ww_ULA_OUT_req(22) <= \ULA_OUT_req[22]~output_o\;

ww_ULA_OUT_req(23) <= \ULA_OUT_req[23]~output_o\;

ww_ULA_OUT_req(24) <= \ULA_OUT_req[24]~output_o\;

ww_ULA_OUT_req(25) <= \ULA_OUT_req[25]~output_o\;

ww_ULA_OUT_req(26) <= \ULA_OUT_req[26]~output_o\;

ww_ULA_OUT_req(27) <= \ULA_OUT_req[27]~output_o\;

ww_ULA_OUT_req(28) <= \ULA_OUT_req[28]~output_o\;

ww_ULA_OUT_req(29) <= \ULA_OUT_req[29]~output_o\;

ww_ULA_OUT_req(30) <= \ULA_OUT_req[30]~output_o\;

ww_ULA_OUT_req(31) <= \ULA_OUT_req[31]~output_o\;

ww_PC_OUT_req(0) <= \PC_OUT_req[0]~output_o\;

ww_PC_OUT_req(1) <= \PC_OUT_req[1]~output_o\;

ww_PC_OUT_req(2) <= \PC_OUT_req[2]~output_o\;

ww_PC_OUT_req(3) <= \PC_OUT_req[3]~output_o\;

ww_PC_OUT_req(4) <= \PC_OUT_req[4]~output_o\;

ww_PC_OUT_req(5) <= \PC_OUT_req[5]~output_o\;

ww_PC_OUT_req(6) <= \PC_OUT_req[6]~output_o\;

ww_PC_OUT_req(7) <= \PC_OUT_req[7]~output_o\;

ww_PC_OUT_req(8) <= \PC_OUT_req[8]~output_o\;

ww_PC_OUT_req(9) <= \PC_OUT_req[9]~output_o\;

ww_PC_OUT_req(10) <= \PC_OUT_req[10]~output_o\;

ww_PC_OUT_req(11) <= \PC_OUT_req[11]~output_o\;

ww_PC_OUT_req(12) <= \PC_OUT_req[12]~output_o\;

ww_PC_OUT_req(13) <= \PC_OUT_req[13]~output_o\;

ww_PC_OUT_req(14) <= \PC_OUT_req[14]~output_o\;

ww_PC_OUT_req(15) <= \PC_OUT_req[15]~output_o\;

ww_PC_OUT_req(16) <= \PC_OUT_req[16]~output_o\;

ww_PC_OUT_req(17) <= \PC_OUT_req[17]~output_o\;

ww_PC_OUT_req(18) <= \PC_OUT_req[18]~output_o\;

ww_PC_OUT_req(19) <= \PC_OUT_req[19]~output_o\;

ww_PC_OUT_req(20) <= \PC_OUT_req[20]~output_o\;

ww_PC_OUT_req(21) <= \PC_OUT_req[21]~output_o\;

ww_PC_OUT_req(22) <= \PC_OUT_req[22]~output_o\;

ww_PC_OUT_req(23) <= \PC_OUT_req[23]~output_o\;

ww_PC_OUT_req(24) <= \PC_OUT_req[24]~output_o\;

ww_PC_OUT_req(25) <= \PC_OUT_req[25]~output_o\;

ww_PC_OUT_req(26) <= \PC_OUT_req[26]~output_o\;

ww_PC_OUT_req(27) <= \PC_OUT_req[27]~output_o\;

ww_PC_OUT_req(28) <= \PC_OUT_req[28]~output_o\;

ww_PC_OUT_req(29) <= \PC_OUT_req[29]~output_o\;

ww_PC_OUT_req(30) <= \PC_OUT_req[30]~output_o\;

ww_PC_OUT_req(31) <= \PC_OUT_req[31]~output_o\;
END structure;


