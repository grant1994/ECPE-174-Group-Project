-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/29/2014 15:19:21"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	compareCards IS
    PORT (
	clock : IN std_logic;
	A : IN std_logic;
	inputState : IN std_logic;
	mem6x6 : IN std_logic_vector(5 DOWNTO 0);
	data1 : OUT std_logic_vector(4 DOWNTO 0);
	data2 : OUT std_logic_vector(4 DOWNTO 0);
	pairsFound : OUT std_logic_vector(31 DOWNTO 0);
	GO : OUT std_logic
	);
END compareCards;

-- Design Ports Information
-- data1[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[8]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[9]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[14]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[16]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[18]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[24]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[25]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[26]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[27]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[28]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[30]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pairsFound[31]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GO	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem6x6[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputState	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF compareCards IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_inputState : std_logic;
SIGNAL ww_mem6x6 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_data1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_data2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pairsFound : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_GO : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data1[0]~output_o\ : std_logic;
SIGNAL \data1[1]~output_o\ : std_logic;
SIGNAL \data1[2]~output_o\ : std_logic;
SIGNAL \data1[3]~output_o\ : std_logic;
SIGNAL \data1[4]~output_o\ : std_logic;
SIGNAL \data2[0]~output_o\ : std_logic;
SIGNAL \data2[1]~output_o\ : std_logic;
SIGNAL \data2[2]~output_o\ : std_logic;
SIGNAL \data2[3]~output_o\ : std_logic;
SIGNAL \data2[4]~output_o\ : std_logic;
SIGNAL \pairsFound[0]~output_o\ : std_logic;
SIGNAL \pairsFound[1]~output_o\ : std_logic;
SIGNAL \pairsFound[2]~output_o\ : std_logic;
SIGNAL \pairsFound[3]~output_o\ : std_logic;
SIGNAL \pairsFound[4]~output_o\ : std_logic;
SIGNAL \pairsFound[5]~output_o\ : std_logic;
SIGNAL \pairsFound[6]~output_o\ : std_logic;
SIGNAL \pairsFound[7]~output_o\ : std_logic;
SIGNAL \pairsFound[8]~output_o\ : std_logic;
SIGNAL \pairsFound[9]~output_o\ : std_logic;
SIGNAL \pairsFound[10]~output_o\ : std_logic;
SIGNAL \pairsFound[11]~output_o\ : std_logic;
SIGNAL \pairsFound[12]~output_o\ : std_logic;
SIGNAL \pairsFound[13]~output_o\ : std_logic;
SIGNAL \pairsFound[14]~output_o\ : std_logic;
SIGNAL \pairsFound[15]~output_o\ : std_logic;
SIGNAL \pairsFound[16]~output_o\ : std_logic;
SIGNAL \pairsFound[17]~output_o\ : std_logic;
SIGNAL \pairsFound[18]~output_o\ : std_logic;
SIGNAL \pairsFound[19]~output_o\ : std_logic;
SIGNAL \pairsFound[20]~output_o\ : std_logic;
SIGNAL \pairsFound[21]~output_o\ : std_logic;
SIGNAL \pairsFound[22]~output_o\ : std_logic;
SIGNAL \pairsFound[23]~output_o\ : std_logic;
SIGNAL \pairsFound[24]~output_o\ : std_logic;
SIGNAL \pairsFound[25]~output_o\ : std_logic;
SIGNAL \pairsFound[26]~output_o\ : std_logic;
SIGNAL \pairsFound[27]~output_o\ : std_logic;
SIGNAL \pairsFound[28]~output_o\ : std_logic;
SIGNAL \pairsFound[29]~output_o\ : std_logic;
SIGNAL \pairsFound[30]~output_o\ : std_logic;
SIGNAL \pairsFound[31]~output_o\ : std_logic;
SIGNAL \GO~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \mem6x6[5]~input_o\ : std_logic;
SIGNAL \mem6x6[0]~input_o\ : std_logic;
SIGNAL \mem6x6[2]~input_o\ : std_logic;
SIGNAL \mem6x6[3]~input_o\ : std_logic;
SIGNAL \mem6x6[4]~input_o\ : std_logic;
SIGNAL \mr64|ram~18_combout\ : std_logic;
SIGNAL \mem6x6[1]~input_o\ : std_logic;
SIGNAL \mr64|ram~19_combout\ : std_logic;
SIGNAL \inputState~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \data1[0]~0_combout\ : std_logic;
SIGNAL \data1~6_combout\ : std_logic;
SIGNAL \data1[0]~2_combout\ : std_logic;
SIGNAL \data1[4]~reg0_q\ : std_logic;
SIGNAL \mr64|ram~3_combout\ : std_logic;
SIGNAL \mr64|ram~0_combout\ : std_logic;
SIGNAL \mr64|ram~1_combout\ : std_logic;
SIGNAL \mr64|ram~2_combout\ : std_logic;
SIGNAL \mr64|ram~4_combout\ : std_logic;
SIGNAL \mr64|ram~5_combout\ : std_logic;
SIGNAL \mr64|ram~6_combout\ : std_logic;
SIGNAL \mr64|ram~7_combout\ : std_logic;
SIGNAL \mr64|ram~8_combout\ : std_logic;
SIGNAL \mr64|ram~9_combout\ : std_logic;
SIGNAL \data1~3_combout\ : std_logic;
SIGNAL \data1[1]~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \mr64|ram~11_combout\ : std_logic;
SIGNAL \mr64|ram~10_combout\ : std_logic;
SIGNAL \mr64|ram~12_combout\ : std_logic;
SIGNAL \mr64|ram~13_combout\ : std_logic;
SIGNAL \data1~5_combout\ : std_logic;
SIGNAL \data1[3]~reg0_q\ : std_logic;
SIGNAL \mr64|ram~14_combout\ : std_logic;
SIGNAL \mr64|ram~15_combout\ : std_logic;
SIGNAL \mr64|ram~16_combout\ : std_logic;
SIGNAL \mr64|ram~17_combout\ : std_logic;
SIGNAL \data1~4_combout\ : std_logic;
SIGNAL \data1[2]~reg0_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \data1~1_combout\ : std_logic;
SIGNAL \data1[0]~reg0_q\ : std_logic;
SIGNAL \data2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \data1[0]~7_combout\ : std_logic;
SIGNAL \data2[0]~reg0_q\ : std_logic;
SIGNAL \data2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \data2[1]~reg0_q\ : std_logic;
SIGNAL \data2[2]~reg0_q\ : std_logic;
SIGNAL \data2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \data2[3]~reg0_q\ : std_logic;
SIGNAL \data2[4]~reg0_q\ : std_logic;
SIGNAL \pairsFound[0]~31_combout\ : std_logic;
SIGNAL \pairsFound[0]~reg0_q\ : std_logic;
SIGNAL \pairsFound[1]~32_combout\ : std_logic;
SIGNAL \data1[0]~8_combout\ : std_logic;
SIGNAL \pairsFound[1]~reg0_q\ : std_logic;
SIGNAL \pairsFound[1]~33\ : std_logic;
SIGNAL \pairsFound[2]~34_combout\ : std_logic;
SIGNAL \pairsFound[2]~reg0_q\ : std_logic;
SIGNAL \pairsFound[2]~35\ : std_logic;
SIGNAL \pairsFound[3]~36_combout\ : std_logic;
SIGNAL \pairsFound[3]~reg0_q\ : std_logic;
SIGNAL \pairsFound[3]~37\ : std_logic;
SIGNAL \pairsFound[4]~38_combout\ : std_logic;
SIGNAL \pairsFound[4]~reg0_q\ : std_logic;
SIGNAL \pairsFound[4]~39\ : std_logic;
SIGNAL \pairsFound[5]~40_combout\ : std_logic;
SIGNAL \pairsFound[5]~reg0_q\ : std_logic;
SIGNAL \pairsFound[5]~41\ : std_logic;
SIGNAL \pairsFound[6]~42_combout\ : std_logic;
SIGNAL \pairsFound[6]~reg0_q\ : std_logic;
SIGNAL \pairsFound[6]~43\ : std_logic;
SIGNAL \pairsFound[7]~44_combout\ : std_logic;
SIGNAL \pairsFound[7]~reg0_q\ : std_logic;
SIGNAL \pairsFound[7]~45\ : std_logic;
SIGNAL \pairsFound[8]~46_combout\ : std_logic;
SIGNAL \pairsFound[8]~reg0_q\ : std_logic;
SIGNAL \pairsFound[8]~47\ : std_logic;
SIGNAL \pairsFound[9]~48_combout\ : std_logic;
SIGNAL \pairsFound[9]~reg0_q\ : std_logic;
SIGNAL \pairsFound[9]~49\ : std_logic;
SIGNAL \pairsFound[10]~50_combout\ : std_logic;
SIGNAL \pairsFound[10]~reg0_q\ : std_logic;
SIGNAL \pairsFound[10]~51\ : std_logic;
SIGNAL \pairsFound[11]~52_combout\ : std_logic;
SIGNAL \pairsFound[11]~reg0_q\ : std_logic;
SIGNAL \pairsFound[11]~53\ : std_logic;
SIGNAL \pairsFound[12]~54_combout\ : std_logic;
SIGNAL \pairsFound[12]~reg0_q\ : std_logic;
SIGNAL \pairsFound[12]~55\ : std_logic;
SIGNAL \pairsFound[13]~56_combout\ : std_logic;
SIGNAL \pairsFound[13]~reg0_q\ : std_logic;
SIGNAL \pairsFound[13]~57\ : std_logic;
SIGNAL \pairsFound[14]~58_combout\ : std_logic;
SIGNAL \pairsFound[14]~reg0_q\ : std_logic;
SIGNAL \pairsFound[14]~59\ : std_logic;
SIGNAL \pairsFound[15]~60_combout\ : std_logic;
SIGNAL \pairsFound[15]~reg0_q\ : std_logic;
SIGNAL \pairsFound[15]~61\ : std_logic;
SIGNAL \pairsFound[16]~62_combout\ : std_logic;
SIGNAL \pairsFound[16]~reg0_q\ : std_logic;
SIGNAL \pairsFound[16]~63\ : std_logic;
SIGNAL \pairsFound[17]~64_combout\ : std_logic;
SIGNAL \pairsFound[17]~reg0_q\ : std_logic;
SIGNAL \pairsFound[17]~65\ : std_logic;
SIGNAL \pairsFound[18]~66_combout\ : std_logic;
SIGNAL \pairsFound[18]~reg0_q\ : std_logic;
SIGNAL \pairsFound[18]~67\ : std_logic;
SIGNAL \pairsFound[19]~68_combout\ : std_logic;
SIGNAL \pairsFound[19]~reg0_q\ : std_logic;
SIGNAL \pairsFound[19]~69\ : std_logic;
SIGNAL \pairsFound[20]~70_combout\ : std_logic;
SIGNAL \pairsFound[20]~reg0_q\ : std_logic;
SIGNAL \pairsFound[20]~71\ : std_logic;
SIGNAL \pairsFound[21]~72_combout\ : std_logic;
SIGNAL \pairsFound[21]~reg0_q\ : std_logic;
SIGNAL \pairsFound[21]~73\ : std_logic;
SIGNAL \pairsFound[22]~74_combout\ : std_logic;
SIGNAL \pairsFound[22]~reg0_q\ : std_logic;
SIGNAL \pairsFound[22]~75\ : std_logic;
SIGNAL \pairsFound[23]~76_combout\ : std_logic;
SIGNAL \pairsFound[23]~reg0_q\ : std_logic;
SIGNAL \pairsFound[23]~77\ : std_logic;
SIGNAL \pairsFound[24]~78_combout\ : std_logic;
SIGNAL \pairsFound[24]~reg0_q\ : std_logic;
SIGNAL \pairsFound[24]~79\ : std_logic;
SIGNAL \pairsFound[25]~80_combout\ : std_logic;
SIGNAL \pairsFound[25]~reg0_q\ : std_logic;
SIGNAL \pairsFound[25]~81\ : std_logic;
SIGNAL \pairsFound[26]~82_combout\ : std_logic;
SIGNAL \pairsFound[26]~reg0_q\ : std_logic;
SIGNAL \pairsFound[26]~83\ : std_logic;
SIGNAL \pairsFound[27]~84_combout\ : std_logic;
SIGNAL \pairsFound[27]~reg0_q\ : std_logic;
SIGNAL \pairsFound[27]~85\ : std_logic;
SIGNAL \pairsFound[28]~86_combout\ : std_logic;
SIGNAL \pairsFound[28]~reg0_q\ : std_logic;
SIGNAL \pairsFound[28]~87\ : std_logic;
SIGNAL \pairsFound[29]~88_combout\ : std_logic;
SIGNAL \pairsFound[29]~reg0_q\ : std_logic;
SIGNAL \pairsFound[29]~89\ : std_logic;
SIGNAL \pairsFound[30]~90_combout\ : std_logic;
SIGNAL \pairsFound[30]~reg0_q\ : std_logic;
SIGNAL \pairsFound[30]~91\ : std_logic;
SIGNAL \pairsFound[31]~92_combout\ : std_logic;
SIGNAL \pairsFound[31]~reg0_q\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \GO~0_combout\ : std_logic;
SIGNAL \GO~reg0_q\ : std_logic;
SIGNAL cardmem1 : std_logic_vector(5 DOWNTO 0);
SIGNAL \mr64|dataOut\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_A <= A;
ww_inputState <= inputState;
ww_mem6x6 <= mem6x6;
data1 <= ww_data1;
data2 <= ww_data2;
pairsFound <= ww_pairsFound;
GO <= ww_GO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X40_Y34_N9
\data1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data1[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\data1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data1[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\data1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data1[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\data1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data1[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data1[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\data2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data2[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\data2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data2[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\data2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data2[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\data2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data2[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\data2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data2[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\pairsFound[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[0]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\pairsFound[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[1]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\pairsFound[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\pairsFound[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\pairsFound[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[4]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\pairsFound[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[5]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\pairsFound[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\pairsFound[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[7]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\pairsFound[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\pairsFound[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\pairsFound[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[10]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[10]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\pairsFound[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[11]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[11]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\pairsFound[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[12]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[12]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\pairsFound[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[13]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[13]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\pairsFound[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[14]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[14]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\pairsFound[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[15]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[15]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\pairsFound[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[16]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\pairsFound[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[17]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[17]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\pairsFound[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[18]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[18]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\pairsFound[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[19]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[19]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\pairsFound[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[20]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[20]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\pairsFound[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[21]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[21]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\pairsFound[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[22]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[22]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\pairsFound[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[23]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[23]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\pairsFound[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[24]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[24]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\pairsFound[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[25]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[25]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\pairsFound[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[26]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[26]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\pairsFound[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[27]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[27]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\pairsFound[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[28]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[28]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\pairsFound[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[29]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[29]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\pairsFound[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[30]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[30]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\pairsFound[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pairsFound[31]~reg0_q\,
	devoe => ww_devoe,
	o => \pairsFound[31]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\GO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GO~reg0_q\,
	devoe => ww_devoe,
	o => \GO~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y34_N8
\mem6x6[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(5),
	o => \mem6x6[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\mem6x6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(0),
	o => \mem6x6[0]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\mem6x6[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(2),
	o => \mem6x6[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\mem6x6[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(3),
	o => \mem6x6[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\mem6x6[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(4),
	o => \mem6x6[4]~input_o\);

-- Location: LCCOMB_X18_Y32_N0
\mr64|ram~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~18_combout\ = (\mem6x6[0]~input_o\ & (((\mem6x6[3]~input_o\) # (\mem6x6[4]~input_o\)))) # (!\mem6x6[0]~input_o\ & ((\mem6x6[2]~input_o\ & (!\mem6x6[3]~input_o\ & !\mem6x6[4]~input_o\)) # (!\mem6x6[2]~input_o\ & (\mem6x6[3]~input_o\ & 
-- \mem6x6[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[0]~input_o\,
	datab => \mem6x6[2]~input_o\,
	datac => \mem6x6[3]~input_o\,
	datad => \mem6x6[4]~input_o\,
	combout => \mr64|ram~18_combout\);

-- Location: IOIBUF_X34_Y34_N1
\mem6x6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem6x6(1),
	o => \mem6x6[1]~input_o\);

-- Location: LCCOMB_X17_Y32_N6
\mr64|ram~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~19_combout\ = (!\mem6x6[5]~input_o\ & ((\mr64|ram~18_combout\ & (\mem6x6[1]~input_o\ & !\mem6x6[0]~input_o\)) # (!\mr64|ram~18_combout\ & (!\mem6x6[1]~input_o\ & \mem6x6[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[5]~input_o\,
	datab => \mr64|ram~18_combout\,
	datac => \mem6x6[1]~input_o\,
	datad => \mem6x6[0]~input_o\,
	combout => \mr64|ram~19_combout\);

-- Location: FF_X17_Y32_N7
\mr64|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mr64|ram~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mr64|dataOut\(4));

-- Location: IOIBUF_X0_Y24_N15
\inputState~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputState,
	o => \inputState~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X17_Y32_N26
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\inputState~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inputState~input_o\,
	datad => \A~input_o\,
	combout => \always0~0_combout\);

-- Location: FF_X18_Y32_N27
\cardmem1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[4]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(4));

-- Location: FF_X18_Y32_N17
\cardmem1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[5]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(5));

-- Location: LCCOMB_X18_Y32_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\mem6x6[5]~input_o\ & (cardmem1(5) & (\mem6x6[4]~input_o\ $ (!cardmem1(4))))) # (!\mem6x6[5]~input_o\ & (!cardmem1(5) & (\mem6x6[4]~input_o\ $ (!cardmem1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[5]~input_o\,
	datab => \mem6x6[4]~input_o\,
	datac => cardmem1(4),
	datad => cardmem1(5),
	combout => \Equal0~2_combout\);

-- Location: FF_X18_Y32_N3
\cardmem1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[2]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(2));

-- Location: FF_X18_Y32_N1
\cardmem1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[3]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(3));

-- Location: LCCOMB_X18_Y32_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\mem6x6[3]~input_o\ & (cardmem1(3) & (\mem6x6[2]~input_o\ $ (!cardmem1(2))))) # (!\mem6x6[3]~input_o\ & (!cardmem1(3) & (\mem6x6[2]~input_o\ $ (!cardmem1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[3]~input_o\,
	datab => \mem6x6[2]~input_o\,
	datac => cardmem1(2),
	datad => cardmem1(3),
	combout => \Equal0~1_combout\);

-- Location: FF_X18_Y32_N19
\cardmem1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[0]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(0));

-- Location: FF_X18_Y32_N29
\cardmem1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem6x6[1]~input_o\,
	sload => VCC,
	ena => \always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cardmem1(1));

-- Location: LCCOMB_X18_Y32_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\mem6x6[0]~input_o\ & (cardmem1(0) & (\mem6x6[1]~input_o\ $ (!cardmem1(1))))) # (!\mem6x6[0]~input_o\ & (!cardmem1(0) & (\mem6x6[1]~input_o\ $ (!cardmem1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[0]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => cardmem1(0),
	datad => cardmem1(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y32_N8
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y32_N24
\data1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1[0]~0_combout\ = (\inputState~input_o\ & \A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inputState~input_o\,
	datad => \A~input_o\,
	combout => \data1[0]~0_combout\);

-- Location: LCCOMB_X17_Y32_N16
\data1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~6_combout\ = (\mr64|dataOut\(4) & ((\Equal0~3_combout\) # ((!\Equal1~2_combout\) # (!\data1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|dataOut\(4),
	datab => \Equal0~3_combout\,
	datac => \data1[0]~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1~6_combout\);

-- Location: LCCOMB_X17_Y32_N22
\data1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1[0]~2_combout\ = (\A~input_o\ & (((!\Equal0~3_combout\ & \Equal1~2_combout\)) # (!\inputState~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \inputState~input_o\,
	datac => \Equal0~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1[0]~2_combout\);

-- Location: FF_X17_Y32_N17
\data1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~6_combout\,
	ena => \data1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data1[4]~reg0_q\);

-- Location: LCCOMB_X19_Y32_N6
\mr64|ram~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~3_combout\ = (\mem6x6[3]~input_o\ & ((\mem6x6[4]~input_o\ & (!\mem6x6[1]~input_o\)) # (!\mem6x6[4]~input_o\ & ((!\mem6x6[0]~input_o\))))) # (!\mem6x6[3]~input_o\ & (\mem6x6[0]~input_o\ & ((\mem6x6[4]~input_o\) # (!\mem6x6[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[4]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~3_combout\);

-- Location: LCCOMB_X19_Y32_N0
\mr64|ram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~0_combout\ = (\mem6x6[4]~input_o\ & (\mem6x6[1]~input_o\ $ ((!\mem6x6[0]~input_o\)))) # (!\mem6x6[4]~input_o\ & ((\mem6x6[1]~input_o\ & (!\mem6x6[0]~input_o\)) # (!\mem6x6[1]~input_o\ & (\mem6x6[0]~input_o\ & \mem6x6[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[4]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~0_combout\);

-- Location: LCCOMB_X19_Y32_N22
\mr64|ram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~1_combout\ = (\mem6x6[4]~input_o\) # ((\mem6x6[3]~input_o\) # (\mem6x6[1]~input_o\ $ (\mem6x6[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[4]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~1_combout\);

-- Location: LCCOMB_X19_Y32_N4
\mr64|ram~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~2_combout\ = (\mem6x6[5]~input_o\ & (((!\mr64|ram~1_combout\ & !\mem6x6[2]~input_o\)))) # (!\mem6x6[5]~input_o\ & (\mr64|ram~0_combout\ & ((\mem6x6[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[5]~input_o\,
	datab => \mr64|ram~0_combout\,
	datac => \mr64|ram~1_combout\,
	datad => \mem6x6[2]~input_o\,
	combout => \mr64|ram~2_combout\);

-- Location: LCCOMB_X18_Y32_N12
\mr64|ram~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~4_combout\ = (\mr64|ram~2_combout\) # ((!\mr64|ram~3_combout\ & (!\mem6x6[5]~input_o\ & !\mem6x6[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|ram~3_combout\,
	datab => \mem6x6[5]~input_o\,
	datac => \mem6x6[2]~input_o\,
	datad => \mr64|ram~2_combout\,
	combout => \mr64|ram~4_combout\);

-- Location: FF_X17_Y32_N11
\mr64|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mr64|ram~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mr64|dataOut\(0));

-- Location: LCCOMB_X19_Y32_N20
\mr64|ram~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~5_combout\ = (\mem6x6[0]~input_o\ & (\mem6x6[2]~input_o\ & (\mem6x6[4]~input_o\ $ (!\mem6x6[1]~input_o\)))) # (!\mem6x6[0]~input_o\ & (\mem6x6[2]~input_o\ $ (((\mem6x6[4]~input_o\ & !\mem6x6[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[4]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mem6x6[2]~input_o\,
	combout => \mr64|ram~5_combout\);

-- Location: LCCOMB_X19_Y32_N26
\mr64|ram~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~6_combout\ = (\mem6x6[4]~input_o\ & (\mem6x6[1]~input_o\ $ ((!\mem6x6[0]~input_o\)))) # (!\mem6x6[4]~input_o\ & ((\mem6x6[1]~input_o\ & (!\mem6x6[0]~input_o\)) # (!\mem6x6[1]~input_o\ & ((\mem6x6[0]~input_o\) # (\mem6x6[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[4]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mem6x6[2]~input_o\,
	combout => \mr64|ram~6_combout\);

-- Location: LCCOMB_X19_Y32_N24
\mr64|ram~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~7_combout\ = (!\mem6x6[5]~input_o\ & ((\mem6x6[3]~input_o\ & (\mr64|ram~5_combout\)) # (!\mem6x6[3]~input_o\ & ((!\mr64|ram~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[5]~input_o\,
	datab => \mr64|ram~5_combout\,
	datac => \mr64|ram~6_combout\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~7_combout\);

-- Location: LCCOMB_X18_Y32_N28
\mr64|ram~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~8_combout\ = (\mem6x6[2]~input_o\) # ((\mem6x6[4]~input_o\) # ((\mem6x6[0]~input_o\ & !\mem6x6[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[0]~input_o\,
	datab => \mem6x6[2]~input_o\,
	datac => \mem6x6[1]~input_o\,
	datad => \mem6x6[4]~input_o\,
	combout => \mr64|ram~8_combout\);

-- Location: LCCOMB_X18_Y32_N30
\mr64|ram~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~9_combout\ = (\mr64|ram~7_combout\) # ((!\mem6x6[3]~input_o\ & (\mem6x6[5]~input_o\ & !\mr64|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[3]~input_o\,
	datab => \mr64|ram~7_combout\,
	datac => \mem6x6[5]~input_o\,
	datad => \mr64|ram~8_combout\,
	combout => \mr64|ram~9_combout\);

-- Location: FF_X17_Y32_N15
\mr64|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mr64|ram~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mr64|dataOut\(1));

-- Location: LCCOMB_X17_Y32_N2
\data1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~3_combout\ = (\mr64|dataOut\(1) & (((\Equal0~3_combout\) # (!\Equal1~2_combout\)) # (!\data1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1[0]~0_combout\,
	datab => \mr64|dataOut\(1),
	datac => \Equal0~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1~3_combout\);

-- Location: FF_X17_Y32_N3
\data1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~3_combout\,
	ena => \data1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data1[1]~reg0_q\);

-- Location: LCCOMB_X17_Y32_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\mr64|dataOut\(0) & (\data1[0]~reg0_q\ & (\data1[1]~reg0_q\ $ (!\mr64|dataOut\(1))))) # (!\mr64|dataOut\(0) & (!\data1[0]~reg0_q\ & (\data1[1]~reg0_q\ $ (!\mr64|dataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|dataOut\(0),
	datab => \data1[1]~reg0_q\,
	datac => \mr64|dataOut\(1),
	datad => \data1[0]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X19_Y32_N12
\mr64|ram~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~11_combout\ = (\mem6x6[3]~input_o\ & ((\mem6x6[1]~input_o\) # ((\mem6x6[2]~input_o\ & \mem6x6[4]~input_o\)))) # (!\mem6x6[3]~input_o\ & (((\mem6x6[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[2]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[4]~input_o\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~11_combout\);

-- Location: LCCOMB_X19_Y32_N10
\mr64|ram~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~10_combout\ = (\mem6x6[3]~input_o\ & (((\mem6x6[4]~input_o\) # (!\mem6x6[1]~input_o\)))) # (!\mem6x6[3]~input_o\ & (\mem6x6[2]~input_o\ & ((\mem6x6[1]~input_o\) # (!\mem6x6[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[2]~input_o\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[4]~input_o\,
	datad => \mem6x6[3]~input_o\,
	combout => \mr64|ram~10_combout\);

-- Location: LCCOMB_X19_Y32_N18
\mr64|ram~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~12_combout\ = (\mr64|ram~11_combout\ & (!\mem6x6[1]~input_o\ & (!\mem6x6[0]~input_o\ & \mr64|ram~10_combout\))) # (!\mr64|ram~11_combout\ & ((\mem6x6[1]~input_o\ & ((\mem6x6[0]~input_o\) # (!\mr64|ram~10_combout\))) # (!\mem6x6[1]~input_o\ & 
-- (\mem6x6[0]~input_o\ & !\mr64|ram~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|ram~11_combout\,
	datab => \mem6x6[1]~input_o\,
	datac => \mem6x6[0]~input_o\,
	datad => \mr64|ram~10_combout\,
	combout => \mr64|ram~12_combout\);

-- Location: LCCOMB_X17_Y32_N14
\mr64|ram~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~13_combout\ = (\mr64|ram~12_combout\ & (\mr64|ram~10_combout\ $ (\mem6x6[5]~input_o\))) # (!\mr64|ram~12_combout\ & (!\mr64|ram~10_combout\ & !\mem6x6[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|ram~12_combout\,
	datab => \mr64|ram~10_combout\,
	datad => \mem6x6[5]~input_o\,
	combout => \mr64|ram~13_combout\);

-- Location: FF_X17_Y32_N25
\mr64|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mr64|ram~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mr64|dataOut\(3));

-- Location: LCCOMB_X17_Y32_N30
\data1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~5_combout\ = (\mr64|dataOut\(3) & (((\Equal0~3_combout\) # (!\Equal1~2_combout\)) # (!\data1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1[0]~0_combout\,
	datab => \mr64|dataOut\(3),
	datac => \Equal0~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1~5_combout\);

-- Location: FF_X17_Y32_N31
\data1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~5_combout\,
	ena => \data1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data1[3]~reg0_q\);

-- Location: LCCOMB_X18_Y32_N4
\mr64|ram~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~14_combout\ = (\mem6x6[2]~input_o\ & (!\mem6x6[1]~input_o\ & ((\mem6x6[3]~input_o\) # (\mem6x6[4]~input_o\)))) # (!\mem6x6[2]~input_o\ & (((\mem6x6[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[3]~input_o\,
	datab => \mem6x6[2]~input_o\,
	datac => \mem6x6[1]~input_o\,
	datad => \mem6x6[4]~input_o\,
	combout => \mr64|ram~14_combout\);

-- Location: LCCOMB_X18_Y32_N6
\mr64|ram~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~15_combout\ = (\mem6x6[3]~input_o\ & ((\mem6x6[1]~input_o\ & ((!\mem6x6[4]~input_o\))) # (!\mem6x6[1]~input_o\ & (!\mem6x6[2]~input_o\)))) # (!\mem6x6[3]~input_o\ & ((\mem6x6[1]~input_o\) # ((\mem6x6[2]~input_o\ & \mem6x6[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem6x6[3]~input_o\,
	datab => \mem6x6[2]~input_o\,
	datac => \mem6x6[1]~input_o\,
	datad => \mem6x6[4]~input_o\,
	combout => \mr64|ram~15_combout\);

-- Location: LCCOMB_X17_Y32_N10
\mr64|ram~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~16_combout\ = (\mr64|ram~15_combout\ & ((\mem6x6[2]~input_o\) # (!\mem6x6[0]~input_o\))) # (!\mr64|ram~15_combout\ & (\mem6x6[2]~input_o\ & !\mem6x6[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|ram~15_combout\,
	datab => \mem6x6[2]~input_o\,
	datad => \mem6x6[0]~input_o\,
	combout => \mr64|ram~16_combout\);

-- Location: LCCOMB_X17_Y32_N18
\mr64|ram~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mr64|ram~17_combout\ = (\mem6x6[5]~input_o\ & (!\mr64|ram~14_combout\ & (!\mem6x6[0]~input_o\ & !\mr64|ram~16_combout\))) # (!\mem6x6[5]~input_o\ & (\mr64|ram~14_combout\ $ (\mem6x6[0]~input_o\ $ (!\mr64|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|ram~14_combout\,
	datab => \mem6x6[0]~input_o\,
	datac => \mr64|ram~16_combout\,
	datad => \mem6x6[5]~input_o\,
	combout => \mr64|ram~17_combout\);

-- Location: FF_X17_Y32_N19
\mr64|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mr64|ram~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mr64|dataOut\(2));

-- Location: LCCOMB_X17_Y32_N8
\data1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~4_combout\ = (\mr64|dataOut\(2) & (((\Equal0~3_combout\) # (!\Equal1~2_combout\)) # (!\data1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1[0]~0_combout\,
	datab => \mr64|dataOut\(2),
	datac => \Equal0~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1~4_combout\);

-- Location: FF_X17_Y32_N9
\data1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~4_combout\,
	ena => \data1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data1[2]~reg0_q\);

-- Location: LCCOMB_X17_Y32_N0
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\data1[3]~reg0_q\ & (\mr64|dataOut\(3) & (\data1[2]~reg0_q\ $ (!\mr64|dataOut\(2))))) # (!\data1[3]~reg0_q\ & (!\mr64|dataOut\(3) & (\data1[2]~reg0_q\ $ (!\mr64|dataOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1[3]~reg0_q\,
	datab => \mr64|dataOut\(3),
	datac => \data1[2]~reg0_q\,
	datad => \mr64|dataOut\(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y32_N12
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\mr64|dataOut\(4) $ (!\data1[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mr64|dataOut\(4),
	datab => \data1[4]~reg0_q\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X17_Y32_N20
\data1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1~1_combout\ = (\mr64|dataOut\(0) & (((\Equal0~3_combout\) # (!\data1[0]~0_combout\)) # (!\Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \data1[0]~0_combout\,
	datad => \mr64|dataOut\(0),
	combout => \data1~1_combout\);

-- Location: FF_X17_Y32_N21
\data1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data1~1_combout\,
	ena => \data1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data1[0]~reg0_q\);

-- Location: LCCOMB_X18_Y32_N24
\data2[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data2[0]~reg0feeder_combout\ = \mr64|dataOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mr64|dataOut\(0),
	combout => \data2[0]~reg0feeder_combout\);

-- Location: LCCOMB_X18_Y32_N22
\data1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1[0]~7_combout\ = (\data1[0]~0_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \data1[0]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \data1[0]~7_combout\);

-- Location: FF_X18_Y32_N25
\data2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2[0]~reg0feeder_combout\,
	ena => \data1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data2[0]~reg0_q\);

-- Location: LCCOMB_X18_Y32_N14
\data2[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data2[1]~reg0feeder_combout\ = \mr64|dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mr64|dataOut\(1),
	combout => \data2[1]~reg0feeder_combout\);

-- Location: FF_X18_Y32_N15
\data2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2[1]~reg0feeder_combout\,
	ena => \data1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data2[1]~reg0_q\);

-- Location: FF_X18_Y32_N9
\data2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mr64|dataOut\(2),
	sload => VCC,
	ena => \data1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data2[2]~reg0_q\);

-- Location: LCCOMB_X18_Y32_N10
\data2[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data2[3]~reg0feeder_combout\ = \mr64|dataOut\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mr64|dataOut\(3),
	combout => \data2[3]~reg0feeder_combout\);

-- Location: FF_X18_Y32_N11
\data2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data2[3]~reg0feeder_combout\,
	ena => \data1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data2[3]~reg0_q\);

-- Location: FF_X18_Y32_N21
\data2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mr64|dataOut\(4),
	sload => VCC,
	ena => \data1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data2[4]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N0
\pairsFound[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[0]~31_combout\ = \pairsFound[0]~reg0_q\ $ (((\Equal1~2_combout\ & (!\Equal0~3_combout\ & \data1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \pairsFound[0]~reg0_q\,
	datad => \data1[0]~0_combout\,
	combout => \pairsFound[0]~31_combout\);

-- Location: FF_X16_Y33_N1
\pairsFound[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[0]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N2
\pairsFound[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[1]~32_combout\ = (\pairsFound[0]~reg0_q\ & (\pairsFound[1]~reg0_q\ $ (VCC))) # (!\pairsFound[0]~reg0_q\ & (\pairsFound[1]~reg0_q\ & VCC))
-- \pairsFound[1]~33\ = CARRY((\pairsFound[0]~reg0_q\ & \pairsFound[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[0]~reg0_q\,
	datab => \pairsFound[1]~reg0_q\,
	datad => VCC,
	combout => \pairsFound[1]~32_combout\,
	cout => \pairsFound[1]~33\);

-- Location: LCCOMB_X17_Y32_N28
\data1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data1[0]~8_combout\ = (\A~input_o\ & (\inputState~input_o\ & (!\Equal0~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \inputState~input_o\,
	datac => \Equal0~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \data1[0]~8_combout\);

-- Location: FF_X16_Y33_N3
\pairsFound[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[1]~32_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[1]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N4
\pairsFound[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[2]~34_combout\ = (\pairsFound[2]~reg0_q\ & (!\pairsFound[1]~33\)) # (!\pairsFound[2]~reg0_q\ & ((\pairsFound[1]~33\) # (GND)))
-- \pairsFound[2]~35\ = CARRY((!\pairsFound[1]~33\) # (!\pairsFound[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[2]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[1]~33\,
	combout => \pairsFound[2]~34_combout\,
	cout => \pairsFound[2]~35\);

-- Location: FF_X16_Y33_N5
\pairsFound[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[2]~34_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[2]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N6
\pairsFound[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[3]~36_combout\ = (\pairsFound[3]~reg0_q\ & (\pairsFound[2]~35\ $ (GND))) # (!\pairsFound[3]~reg0_q\ & (!\pairsFound[2]~35\ & VCC))
-- \pairsFound[3]~37\ = CARRY((\pairsFound[3]~reg0_q\ & !\pairsFound[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[3]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[2]~35\,
	combout => \pairsFound[3]~36_combout\,
	cout => \pairsFound[3]~37\);

-- Location: FF_X16_Y33_N7
\pairsFound[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[3]~36_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[3]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N8
\pairsFound[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[4]~38_combout\ = (\pairsFound[4]~reg0_q\ & (!\pairsFound[3]~37\)) # (!\pairsFound[4]~reg0_q\ & ((\pairsFound[3]~37\) # (GND)))
-- \pairsFound[4]~39\ = CARRY((!\pairsFound[3]~37\) # (!\pairsFound[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[4]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[3]~37\,
	combout => \pairsFound[4]~38_combout\,
	cout => \pairsFound[4]~39\);

-- Location: FF_X16_Y33_N9
\pairsFound[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[4]~38_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[4]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N10
\pairsFound[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[5]~40_combout\ = (\pairsFound[5]~reg0_q\ & (\pairsFound[4]~39\ $ (GND))) # (!\pairsFound[5]~reg0_q\ & (!\pairsFound[4]~39\ & VCC))
-- \pairsFound[5]~41\ = CARRY((\pairsFound[5]~reg0_q\ & !\pairsFound[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[5]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[4]~39\,
	combout => \pairsFound[5]~40_combout\,
	cout => \pairsFound[5]~41\);

-- Location: FF_X16_Y33_N11
\pairsFound[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[5]~40_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[5]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N12
\pairsFound[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[6]~42_combout\ = (\pairsFound[6]~reg0_q\ & (!\pairsFound[5]~41\)) # (!\pairsFound[6]~reg0_q\ & ((\pairsFound[5]~41\) # (GND)))
-- \pairsFound[6]~43\ = CARRY((!\pairsFound[5]~41\) # (!\pairsFound[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[6]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[5]~41\,
	combout => \pairsFound[6]~42_combout\,
	cout => \pairsFound[6]~43\);

-- Location: FF_X16_Y33_N13
\pairsFound[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[6]~42_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[6]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N14
\pairsFound[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[7]~44_combout\ = (\pairsFound[7]~reg0_q\ & (\pairsFound[6]~43\ $ (GND))) # (!\pairsFound[7]~reg0_q\ & (!\pairsFound[6]~43\ & VCC))
-- \pairsFound[7]~45\ = CARRY((\pairsFound[7]~reg0_q\ & !\pairsFound[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[7]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[6]~43\,
	combout => \pairsFound[7]~44_combout\,
	cout => \pairsFound[7]~45\);

-- Location: FF_X16_Y33_N15
\pairsFound[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[7]~44_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[7]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N16
\pairsFound[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[8]~46_combout\ = (\pairsFound[8]~reg0_q\ & (!\pairsFound[7]~45\)) # (!\pairsFound[8]~reg0_q\ & ((\pairsFound[7]~45\) # (GND)))
-- \pairsFound[8]~47\ = CARRY((!\pairsFound[7]~45\) # (!\pairsFound[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[8]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[7]~45\,
	combout => \pairsFound[8]~46_combout\,
	cout => \pairsFound[8]~47\);

-- Location: FF_X16_Y33_N17
\pairsFound[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[8]~46_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[8]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N18
\pairsFound[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[9]~48_combout\ = (\pairsFound[9]~reg0_q\ & (\pairsFound[8]~47\ $ (GND))) # (!\pairsFound[9]~reg0_q\ & (!\pairsFound[8]~47\ & VCC))
-- \pairsFound[9]~49\ = CARRY((\pairsFound[9]~reg0_q\ & !\pairsFound[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[9]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[8]~47\,
	combout => \pairsFound[9]~48_combout\,
	cout => \pairsFound[9]~49\);

-- Location: FF_X16_Y33_N19
\pairsFound[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[9]~48_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[9]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N20
\pairsFound[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[10]~50_combout\ = (\pairsFound[10]~reg0_q\ & (!\pairsFound[9]~49\)) # (!\pairsFound[10]~reg0_q\ & ((\pairsFound[9]~49\) # (GND)))
-- \pairsFound[10]~51\ = CARRY((!\pairsFound[9]~49\) # (!\pairsFound[10]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[10]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[9]~49\,
	combout => \pairsFound[10]~50_combout\,
	cout => \pairsFound[10]~51\);

-- Location: FF_X16_Y33_N21
\pairsFound[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[10]~50_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[10]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N22
\pairsFound[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[11]~52_combout\ = (\pairsFound[11]~reg0_q\ & (\pairsFound[10]~51\ $ (GND))) # (!\pairsFound[11]~reg0_q\ & (!\pairsFound[10]~51\ & VCC))
-- \pairsFound[11]~53\ = CARRY((\pairsFound[11]~reg0_q\ & !\pairsFound[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[11]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[10]~51\,
	combout => \pairsFound[11]~52_combout\,
	cout => \pairsFound[11]~53\);

-- Location: FF_X16_Y33_N23
\pairsFound[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[11]~52_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[11]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N24
\pairsFound[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[12]~54_combout\ = (\pairsFound[12]~reg0_q\ & (!\pairsFound[11]~53\)) # (!\pairsFound[12]~reg0_q\ & ((\pairsFound[11]~53\) # (GND)))
-- \pairsFound[12]~55\ = CARRY((!\pairsFound[11]~53\) # (!\pairsFound[12]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[12]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[11]~53\,
	combout => \pairsFound[12]~54_combout\,
	cout => \pairsFound[12]~55\);

-- Location: FF_X16_Y33_N25
\pairsFound[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[12]~54_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[12]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N26
\pairsFound[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[13]~56_combout\ = (\pairsFound[13]~reg0_q\ & (\pairsFound[12]~55\ $ (GND))) # (!\pairsFound[13]~reg0_q\ & (!\pairsFound[12]~55\ & VCC))
-- \pairsFound[13]~57\ = CARRY((\pairsFound[13]~reg0_q\ & !\pairsFound[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[13]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[12]~55\,
	combout => \pairsFound[13]~56_combout\,
	cout => \pairsFound[13]~57\);

-- Location: FF_X16_Y33_N27
\pairsFound[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[13]~56_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[13]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N28
\pairsFound[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[14]~58_combout\ = (\pairsFound[14]~reg0_q\ & (!\pairsFound[13]~57\)) # (!\pairsFound[14]~reg0_q\ & ((\pairsFound[13]~57\) # (GND)))
-- \pairsFound[14]~59\ = CARRY((!\pairsFound[13]~57\) # (!\pairsFound[14]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[14]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[13]~57\,
	combout => \pairsFound[14]~58_combout\,
	cout => \pairsFound[14]~59\);

-- Location: FF_X16_Y33_N29
\pairsFound[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[14]~58_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[14]~reg0_q\);

-- Location: LCCOMB_X16_Y33_N30
\pairsFound[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[15]~60_combout\ = (\pairsFound[15]~reg0_q\ & (\pairsFound[14]~59\ $ (GND))) # (!\pairsFound[15]~reg0_q\ & (!\pairsFound[14]~59\ & VCC))
-- \pairsFound[15]~61\ = CARRY((\pairsFound[15]~reg0_q\ & !\pairsFound[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[15]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[14]~59\,
	combout => \pairsFound[15]~60_combout\,
	cout => \pairsFound[15]~61\);

-- Location: FF_X16_Y33_N31
\pairsFound[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[15]~60_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[15]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N0
\pairsFound[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[16]~62_combout\ = (\pairsFound[16]~reg0_q\ & (!\pairsFound[15]~61\)) # (!\pairsFound[16]~reg0_q\ & ((\pairsFound[15]~61\) # (GND)))
-- \pairsFound[16]~63\ = CARRY((!\pairsFound[15]~61\) # (!\pairsFound[16]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[16]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[15]~61\,
	combout => \pairsFound[16]~62_combout\,
	cout => \pairsFound[16]~63\);

-- Location: FF_X16_Y32_N1
\pairsFound[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[16]~62_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[16]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N2
\pairsFound[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[17]~64_combout\ = (\pairsFound[17]~reg0_q\ & (\pairsFound[16]~63\ $ (GND))) # (!\pairsFound[17]~reg0_q\ & (!\pairsFound[16]~63\ & VCC))
-- \pairsFound[17]~65\ = CARRY((\pairsFound[17]~reg0_q\ & !\pairsFound[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[17]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[16]~63\,
	combout => \pairsFound[17]~64_combout\,
	cout => \pairsFound[17]~65\);

-- Location: FF_X16_Y32_N3
\pairsFound[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[17]~64_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[17]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N4
\pairsFound[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[18]~66_combout\ = (\pairsFound[18]~reg0_q\ & (!\pairsFound[17]~65\)) # (!\pairsFound[18]~reg0_q\ & ((\pairsFound[17]~65\) # (GND)))
-- \pairsFound[18]~67\ = CARRY((!\pairsFound[17]~65\) # (!\pairsFound[18]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[18]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[17]~65\,
	combout => \pairsFound[18]~66_combout\,
	cout => \pairsFound[18]~67\);

-- Location: FF_X16_Y32_N5
\pairsFound[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[18]~66_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[18]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N6
\pairsFound[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[19]~68_combout\ = (\pairsFound[19]~reg0_q\ & (\pairsFound[18]~67\ $ (GND))) # (!\pairsFound[19]~reg0_q\ & (!\pairsFound[18]~67\ & VCC))
-- \pairsFound[19]~69\ = CARRY((\pairsFound[19]~reg0_q\ & !\pairsFound[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[19]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[18]~67\,
	combout => \pairsFound[19]~68_combout\,
	cout => \pairsFound[19]~69\);

-- Location: FF_X16_Y32_N7
\pairsFound[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[19]~68_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[19]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N8
\pairsFound[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[20]~70_combout\ = (\pairsFound[20]~reg0_q\ & (!\pairsFound[19]~69\)) # (!\pairsFound[20]~reg0_q\ & ((\pairsFound[19]~69\) # (GND)))
-- \pairsFound[20]~71\ = CARRY((!\pairsFound[19]~69\) # (!\pairsFound[20]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[20]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[19]~69\,
	combout => \pairsFound[20]~70_combout\,
	cout => \pairsFound[20]~71\);

-- Location: FF_X16_Y32_N9
\pairsFound[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[20]~70_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[20]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N10
\pairsFound[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[21]~72_combout\ = (\pairsFound[21]~reg0_q\ & (\pairsFound[20]~71\ $ (GND))) # (!\pairsFound[21]~reg0_q\ & (!\pairsFound[20]~71\ & VCC))
-- \pairsFound[21]~73\ = CARRY((\pairsFound[21]~reg0_q\ & !\pairsFound[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[21]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[20]~71\,
	combout => \pairsFound[21]~72_combout\,
	cout => \pairsFound[21]~73\);

-- Location: FF_X16_Y32_N11
\pairsFound[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[21]~72_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[21]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N12
\pairsFound[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[22]~74_combout\ = (\pairsFound[22]~reg0_q\ & (!\pairsFound[21]~73\)) # (!\pairsFound[22]~reg0_q\ & ((\pairsFound[21]~73\) # (GND)))
-- \pairsFound[22]~75\ = CARRY((!\pairsFound[21]~73\) # (!\pairsFound[22]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[22]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[21]~73\,
	combout => \pairsFound[22]~74_combout\,
	cout => \pairsFound[22]~75\);

-- Location: FF_X16_Y32_N13
\pairsFound[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[22]~74_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[22]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N14
\pairsFound[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[23]~76_combout\ = (\pairsFound[23]~reg0_q\ & (\pairsFound[22]~75\ $ (GND))) # (!\pairsFound[23]~reg0_q\ & (!\pairsFound[22]~75\ & VCC))
-- \pairsFound[23]~77\ = CARRY((\pairsFound[23]~reg0_q\ & !\pairsFound[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[23]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[22]~75\,
	combout => \pairsFound[23]~76_combout\,
	cout => \pairsFound[23]~77\);

-- Location: FF_X16_Y32_N15
\pairsFound[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[23]~76_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[23]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N16
\pairsFound[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[24]~78_combout\ = (\pairsFound[24]~reg0_q\ & (!\pairsFound[23]~77\)) # (!\pairsFound[24]~reg0_q\ & ((\pairsFound[23]~77\) # (GND)))
-- \pairsFound[24]~79\ = CARRY((!\pairsFound[23]~77\) # (!\pairsFound[24]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[24]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[23]~77\,
	combout => \pairsFound[24]~78_combout\,
	cout => \pairsFound[24]~79\);

-- Location: FF_X16_Y32_N17
\pairsFound[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[24]~78_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[24]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N18
\pairsFound[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[25]~80_combout\ = (\pairsFound[25]~reg0_q\ & (\pairsFound[24]~79\ $ (GND))) # (!\pairsFound[25]~reg0_q\ & (!\pairsFound[24]~79\ & VCC))
-- \pairsFound[25]~81\ = CARRY((\pairsFound[25]~reg0_q\ & !\pairsFound[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[25]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[24]~79\,
	combout => \pairsFound[25]~80_combout\,
	cout => \pairsFound[25]~81\);

-- Location: FF_X16_Y32_N19
\pairsFound[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[25]~80_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[25]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N20
\pairsFound[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[26]~82_combout\ = (\pairsFound[26]~reg0_q\ & (!\pairsFound[25]~81\)) # (!\pairsFound[26]~reg0_q\ & ((\pairsFound[25]~81\) # (GND)))
-- \pairsFound[26]~83\ = CARRY((!\pairsFound[25]~81\) # (!\pairsFound[26]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[26]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[25]~81\,
	combout => \pairsFound[26]~82_combout\,
	cout => \pairsFound[26]~83\);

-- Location: FF_X16_Y32_N21
\pairsFound[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[26]~82_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[26]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N22
\pairsFound[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[27]~84_combout\ = (\pairsFound[27]~reg0_q\ & (\pairsFound[26]~83\ $ (GND))) # (!\pairsFound[27]~reg0_q\ & (!\pairsFound[26]~83\ & VCC))
-- \pairsFound[27]~85\ = CARRY((\pairsFound[27]~reg0_q\ & !\pairsFound[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[27]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[26]~83\,
	combout => \pairsFound[27]~84_combout\,
	cout => \pairsFound[27]~85\);

-- Location: FF_X16_Y32_N23
\pairsFound[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[27]~84_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[27]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N24
\pairsFound[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[28]~86_combout\ = (\pairsFound[28]~reg0_q\ & (!\pairsFound[27]~85\)) # (!\pairsFound[28]~reg0_q\ & ((\pairsFound[27]~85\) # (GND)))
-- \pairsFound[28]~87\ = CARRY((!\pairsFound[27]~85\) # (!\pairsFound[28]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[28]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[27]~85\,
	combout => \pairsFound[28]~86_combout\,
	cout => \pairsFound[28]~87\);

-- Location: FF_X16_Y32_N25
\pairsFound[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[28]~86_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[28]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N26
\pairsFound[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[29]~88_combout\ = (\pairsFound[29]~reg0_q\ & (\pairsFound[28]~87\ $ (GND))) # (!\pairsFound[29]~reg0_q\ & (!\pairsFound[28]~87\ & VCC))
-- \pairsFound[29]~89\ = CARRY((\pairsFound[29]~reg0_q\ & !\pairsFound[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[29]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[28]~87\,
	combout => \pairsFound[29]~88_combout\,
	cout => \pairsFound[29]~89\);

-- Location: FF_X16_Y32_N27
\pairsFound[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[29]~88_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[29]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N28
\pairsFound[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[30]~90_combout\ = (\pairsFound[30]~reg0_q\ & (!\pairsFound[29]~89\)) # (!\pairsFound[30]~reg0_q\ & ((\pairsFound[29]~89\) # (GND)))
-- \pairsFound[30]~91\ = CARRY((!\pairsFound[29]~89\) # (!\pairsFound[30]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pairsFound[30]~reg0_q\,
	datad => VCC,
	cin => \pairsFound[29]~89\,
	combout => \pairsFound[30]~90_combout\,
	cout => \pairsFound[30]~91\);

-- Location: FF_X16_Y32_N29
\pairsFound[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[30]~90_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[30]~reg0_q\);

-- Location: LCCOMB_X16_Y32_N30
\pairsFound[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \pairsFound[31]~92_combout\ = \pairsFound[31]~reg0_q\ $ (!\pairsFound[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[31]~reg0_q\,
	cin => \pairsFound[30]~91\,
	combout => \pairsFound[31]~92_combout\);

-- Location: FF_X16_Y32_N31
\pairsFound[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pairsFound[31]~92_combout\,
	ena => \data1[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pairsFound[31]~reg0_q\);

-- Location: LCCOMB_X17_Y33_N10
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\pairsFound[15]~reg0_q\ & (!\pairsFound[12]~reg0_q\ & (!\pairsFound[13]~reg0_q\ & !\pairsFound[14]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[15]~reg0_q\,
	datab => \pairsFound[12]~reg0_q\,
	datac => \pairsFound[13]~reg0_q\,
	datad => \pairsFound[14]~reg0_q\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X17_Y33_N24
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\pairsFound[10]~reg0_q\ & (!\pairsFound[9]~reg0_q\ & (!\pairsFound[8]~reg0_q\ & !\pairsFound[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[10]~reg0_q\,
	datab => \pairsFound[9]~reg0_q\,
	datac => \pairsFound[8]~reg0_q\,
	datad => \pairsFound[11]~reg0_q\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X15_Y33_N24
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\pairsFound[5]~reg0_q\ & (!\pairsFound[6]~reg0_q\ & (\pairsFound[4]~reg0_q\ & !\pairsFound[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[5]~reg0_q\,
	datab => \pairsFound[6]~reg0_q\,
	datac => \pairsFound[4]~reg0_q\,
	datad => \pairsFound[7]~reg0_q\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X17_Y33_N2
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\pairsFound[2]~reg0_q\ & (\pairsFound[1]~reg0_q\ & (!\pairsFound[3]~reg0_q\ & !\pairsFound[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[2]~reg0_q\,
	datab => \pairsFound[1]~reg0_q\,
	datac => \pairsFound[3]~reg0_q\,
	datad => \pairsFound[0]~reg0_q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X17_Y33_N0
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X17_Y33_N6
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\pairsFound[17]~reg0_q\ & (!\pairsFound[19]~reg0_q\ & (!\pairsFound[16]~reg0_q\ & !\pairsFound[18]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[17]~reg0_q\,
	datab => \pairsFound[19]~reg0_q\,
	datac => \pairsFound[16]~reg0_q\,
	datad => \pairsFound[18]~reg0_q\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X17_Y33_N20
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!\pairsFound[20]~reg0_q\ & (!\pairsFound[22]~reg0_q\ & (!\pairsFound[21]~reg0_q\ & !\pairsFound[23]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[20]~reg0_q\,
	datab => \pairsFound[22]~reg0_q\,
	datac => \pairsFound[21]~reg0_q\,
	datad => \pairsFound[23]~reg0_q\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X15_Y33_N6
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!\pairsFound[25]~reg0_q\ & (!\pairsFound[26]~reg0_q\ & (!\pairsFound[24]~reg0_q\ & !\pairsFound[27]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[25]~reg0_q\,
	datab => \pairsFound[26]~reg0_q\,
	datac => \pairsFound[24]~reg0_q\,
	datad => \pairsFound[27]~reg0_q\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X17_Y33_N18
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!\pairsFound[30]~reg0_q\ & (!\pairsFound[29]~reg0_q\ & (!\pairsFound[28]~reg0_q\ & !\pairsFound[31]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pairsFound[30]~reg0_q\,
	datab => \pairsFound[29]~reg0_q\,
	datac => \pairsFound[28]~reg0_q\,
	datad => \pairsFound[31]~reg0_q\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X17_Y33_N12
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~5_combout\ & (\Equal2~6_combout\ & (\Equal2~7_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X17_Y33_N8
\GO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GO~0_combout\ = (\GO~reg0_q\) # ((\Equal2~4_combout\ & \Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~4_combout\,
	datac => \GO~reg0_q\,
	datad => \Equal2~9_combout\,
	combout => \GO~0_combout\);

-- Location: FF_X17_Y33_N9
\GO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \GO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GO~reg0_q\);

ww_data1(0) <= \data1[0]~output_o\;

ww_data1(1) <= \data1[1]~output_o\;

ww_data1(2) <= \data1[2]~output_o\;

ww_data1(3) <= \data1[3]~output_o\;

ww_data1(4) <= \data1[4]~output_o\;

ww_data2(0) <= \data2[0]~output_o\;

ww_data2(1) <= \data2[1]~output_o\;

ww_data2(2) <= \data2[2]~output_o\;

ww_data2(3) <= \data2[3]~output_o\;

ww_data2(4) <= \data2[4]~output_o\;

ww_pairsFound(0) <= \pairsFound[0]~output_o\;

ww_pairsFound(1) <= \pairsFound[1]~output_o\;

ww_pairsFound(2) <= \pairsFound[2]~output_o\;

ww_pairsFound(3) <= \pairsFound[3]~output_o\;

ww_pairsFound(4) <= \pairsFound[4]~output_o\;

ww_pairsFound(5) <= \pairsFound[5]~output_o\;

ww_pairsFound(6) <= \pairsFound[6]~output_o\;

ww_pairsFound(7) <= \pairsFound[7]~output_o\;

ww_pairsFound(8) <= \pairsFound[8]~output_o\;

ww_pairsFound(9) <= \pairsFound[9]~output_o\;

ww_pairsFound(10) <= \pairsFound[10]~output_o\;

ww_pairsFound(11) <= \pairsFound[11]~output_o\;

ww_pairsFound(12) <= \pairsFound[12]~output_o\;

ww_pairsFound(13) <= \pairsFound[13]~output_o\;

ww_pairsFound(14) <= \pairsFound[14]~output_o\;

ww_pairsFound(15) <= \pairsFound[15]~output_o\;

ww_pairsFound(16) <= \pairsFound[16]~output_o\;

ww_pairsFound(17) <= \pairsFound[17]~output_o\;

ww_pairsFound(18) <= \pairsFound[18]~output_o\;

ww_pairsFound(19) <= \pairsFound[19]~output_o\;

ww_pairsFound(20) <= \pairsFound[20]~output_o\;

ww_pairsFound(21) <= \pairsFound[21]~output_o\;

ww_pairsFound(22) <= \pairsFound[22]~output_o\;

ww_pairsFound(23) <= \pairsFound[23]~output_o\;

ww_pairsFound(24) <= \pairsFound[24]~output_o\;

ww_pairsFound(25) <= \pairsFound[25]~output_o\;

ww_pairsFound(26) <= \pairsFound[26]~output_o\;

ww_pairsFound(27) <= \pairsFound[27]~output_o\;

ww_pairsFound(28) <= \pairsFound[28]~output_o\;

ww_pairsFound(29) <= \pairsFound[29]~output_o\;

ww_pairsFound(30) <= \pairsFound[30]~output_o\;

ww_pairsFound(31) <= \pairsFound[31]~output_o\;

ww_GO <= \GO~output_o\;
END structure;


