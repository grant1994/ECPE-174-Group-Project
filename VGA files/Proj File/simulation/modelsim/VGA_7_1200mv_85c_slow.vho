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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/03/2014 14:52:06"

-- 
-- Device: Altera EP4CE30F29C7 Package FBGA780
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

ENTITY 	playGame IS
    PORT (
	clock : IN std_logic;
	A : IN std_logic;
	keys : IN std_logic_vector(3 DOWNTO 0);
	rgb : BUFFER std_logic_vector(2 DOWNTO 0);
	seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg2 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg3 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg4 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg5 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg6 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END playGame;

-- Design Ports Information
-- rgb[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[0]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[1]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[0]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[5]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[6]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF playGame IS
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
SIGNAL ww_keys : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rgb : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rgb[0]~output_o\ : std_logic;
SIGNAL \rgb[1]~output_o\ : std_logic;
SIGNAL \rgb[2]~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg2[0]~output_o\ : std_logic;
SIGNAL \seg2[1]~output_o\ : std_logic;
SIGNAL \seg2[2]~output_o\ : std_logic;
SIGNAL \seg2[3]~output_o\ : std_logic;
SIGNAL \seg2[4]~output_o\ : std_logic;
SIGNAL \seg2[5]~output_o\ : std_logic;
SIGNAL \seg2[6]~output_o\ : std_logic;
SIGNAL \seg3[0]~output_o\ : std_logic;
SIGNAL \seg3[1]~output_o\ : std_logic;
SIGNAL \seg3[2]~output_o\ : std_logic;
SIGNAL \seg3[3]~output_o\ : std_logic;
SIGNAL \seg3[4]~output_o\ : std_logic;
SIGNAL \seg3[5]~output_o\ : std_logic;
SIGNAL \seg3[6]~output_o\ : std_logic;
SIGNAL \seg4[0]~output_o\ : std_logic;
SIGNAL \seg4[1]~output_o\ : std_logic;
SIGNAL \seg4[2]~output_o\ : std_logic;
SIGNAL \seg4[3]~output_o\ : std_logic;
SIGNAL \seg4[4]~output_o\ : std_logic;
SIGNAL \seg4[5]~output_o\ : std_logic;
SIGNAL \seg4[6]~output_o\ : std_logic;
SIGNAL \seg5[0]~output_o\ : std_logic;
SIGNAL \seg5[1]~output_o\ : std_logic;
SIGNAL \seg5[2]~output_o\ : std_logic;
SIGNAL \seg5[3]~output_o\ : std_logic;
SIGNAL \seg5[4]~output_o\ : std_logic;
SIGNAL \seg5[5]~output_o\ : std_logic;
SIGNAL \seg5[6]~output_o\ : std_logic;
SIGNAL \seg6[0]~output_o\ : std_logic;
SIGNAL \seg6[1]~output_o\ : std_logic;
SIGNAL \seg6[2]~output_o\ : std_logic;
SIGNAL \seg6[3]~output_o\ : std_logic;
SIGNAL \seg6[4]~output_o\ : std_logic;
SIGNAL \seg6[5]~output_o\ : std_logic;
SIGNAL \seg6[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \syncMod|int_a~0_combout\ : std_logic;
SIGNAL \syncMod|int_a~q\ : std_logic;
SIGNAL \syncMod|sync_a~0_combout\ : std_logic;
SIGNAL \syncMod|sync_a~q\ : std_logic;
SIGNAL \syncMod|delay_a~q\ : std_logic;
SIGNAL \syncMod|rise_a~combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[0]~feeder_combout\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \arrowMod|Mux5~0_combout\ : std_logic;
SIGNAL \arrowMod|Add2~0_combout\ : std_logic;
SIGNAL \arrowMod|Add1~1\ : std_logic;
SIGNAL \arrowMod|Add1~2_combout\ : std_logic;
SIGNAL \arrowMod|Add3~1\ : std_logic;
SIGNAL \arrowMod|Add3~3\ : std_logic;
SIGNAL \arrowMod|Add3~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~1_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~0_combout\ : std_logic;
SIGNAL \arrowMod|Add0~1\ : std_logic;
SIGNAL \arrowMod|Add0~2_combout\ : std_logic;
SIGNAL \arrowMod|Add2~3\ : std_logic;
SIGNAL \arrowMod|Add2~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~25_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~26_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~27_combout\ : std_logic;
SIGNAL \arrowMod|Add3~5\ : std_logic;
SIGNAL \arrowMod|Add3~6_combout\ : std_logic;
SIGNAL \arrowMod|Add2~5\ : std_logic;
SIGNAL \arrowMod|Add2~6_combout\ : std_logic;
SIGNAL \arrowMod|Add1~3\ : std_logic;
SIGNAL \arrowMod|Add1~4_combout\ : std_logic;
SIGNAL \arrowMod|Add0~3\ : std_logic;
SIGNAL \arrowMod|Add0~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~28_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~29_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~30_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~11_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~9_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~10_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~12_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~6_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~5_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~7_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~13_combout\ : std_logic;
SIGNAL \arrowMod|Add2~7\ : std_logic;
SIGNAL \arrowMod|Add2~9\ : std_logic;
SIGNAL \arrowMod|Add2~10_combout\ : std_logic;
SIGNAL \arrowMod|Add1~5\ : std_logic;
SIGNAL \arrowMod|Add1~7\ : std_logic;
SIGNAL \arrowMod|Add1~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~5\ : std_logic;
SIGNAL \arrowMod|Add0~7\ : std_logic;
SIGNAL \arrowMod|Add0~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~2_combout\ : std_logic;
SIGNAL \arrowMod|Add3~7\ : std_logic;
SIGNAL \arrowMod|Add3~9\ : std_logic;
SIGNAL \arrowMod|Add3~10_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~3_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~14_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~1_combout\ : std_logic;
SIGNAL \arrowMod|Add3~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~15_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~16_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~17_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~18_combout\ : std_logic;
SIGNAL \arrowMod|Add2~1\ : std_logic;
SIGNAL \arrowMod|Add2~2_combout\ : std_logic;
SIGNAL \arrowMod|Add0~0_combout\ : std_logic;
SIGNAL \arrowMod|Add1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~22_combout\ : std_logic;
SIGNAL \arrowMod|Add3~2_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~23_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~24_combout\ : std_logic;
SIGNAL \compMod|always0~0_combout\ : std_logic;
SIGNAL \compMod|Equal1~1_combout\ : std_logic;
SIGNAL \compMod|Equal1~2_combout\ : std_logic;
SIGNAL \compMod|cardOneTwo~0_combout\ : std_logic;
SIGNAL \compMod|cardOneTwo~1_combout\ : std_logic;
SIGNAL \compMod|cardOneTwo~q\ : std_logic;
SIGNAL \compMod|always0~1_combout\ : std_logic;
SIGNAL \compMod|Equal1~0_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~18_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~19_combout\ : std_logic;
SIGNAL \compMod|data2~5_combout\ : std_logic;
SIGNAL \compMod|data2[4]~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~10_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~11_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~12_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~13_combout\ : std_logic;
SIGNAL \compMod|data2~3_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~14_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~15_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~16_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~17_combout\ : std_logic;
SIGNAL \compMod|data1[3]~feeder_combout\ : std_logic;
SIGNAL \compMod|data1[4]~0_combout\ : std_logic;
SIGNAL \compMod|data2~4_combout\ : std_logic;
SIGNAL \compMod|Equal2~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~8_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~6_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~5_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~7_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~9_combout\ : std_logic;
SIGNAL \compMod|data2~2_combout\ : std_logic;
SIGNAL \compMod|data1[1]~feeder_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~3_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~0_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~2_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~4_combout\ : std_logic;
SIGNAL \compMod|data2~0_combout\ : std_logic;
SIGNAL \compMod|Equal2~0_combout\ : std_logic;
SIGNAL \compMod|Equal2~2_combout\ : std_logic;
SIGNAL \compMod|foundPair~feeder_combout\ : std_logic;
SIGNAL \compMod|foundPair~q\ : std_logic;
SIGNAL \compMod|pairsFound[0]~33_combout\ : std_logic;
SIGNAL \compMod|pairsFound[1]~31_combout\ : std_logic;
SIGNAL \compMod|always1~0_combout\ : std_logic;
SIGNAL \compMod|pairsFound[1]~32\ : std_logic;
SIGNAL \compMod|pairsFound[2]~34_combout\ : std_logic;
SIGNAL \compMod|pairsFound[2]~35\ : std_logic;
SIGNAL \compMod|pairsFound[3]~36_combout\ : std_logic;
SIGNAL \compMod|pairsFound[3]~37\ : std_logic;
SIGNAL \compMod|pairsFound[4]~38_combout\ : std_logic;
SIGNAL \compMod|pairsFound[4]~39\ : std_logic;
SIGNAL \compMod|pairsFound[5]~40_combout\ : std_logic;
SIGNAL \compMod|pairsFound[5]~41\ : std_logic;
SIGNAL \compMod|pairsFound[6]~42_combout\ : std_logic;
SIGNAL \compMod|pairsFound[6]~43\ : std_logic;
SIGNAL \compMod|pairsFound[7]~44_combout\ : std_logic;
SIGNAL \compMod|pairsFound[7]~45\ : std_logic;
SIGNAL \compMod|pairsFound[8]~46_combout\ : std_logic;
SIGNAL \compMod|pairsFound[8]~47\ : std_logic;
SIGNAL \compMod|pairsFound[9]~48_combout\ : std_logic;
SIGNAL \compMod|pairsFound[9]~49\ : std_logic;
SIGNAL \compMod|pairsFound[10]~50_combout\ : std_logic;
SIGNAL \compMod|pairsFound[10]~51\ : std_logic;
SIGNAL \compMod|pairsFound[11]~52_combout\ : std_logic;
SIGNAL \compMod|pairsFound[11]~53\ : std_logic;
SIGNAL \compMod|pairsFound[12]~54_combout\ : std_logic;
SIGNAL \compMod|pairsFound[12]~55\ : std_logic;
SIGNAL \compMod|pairsFound[13]~56_combout\ : std_logic;
SIGNAL \compMod|pairsFound[13]~57\ : std_logic;
SIGNAL \compMod|pairsFound[14]~58_combout\ : std_logic;
SIGNAL \compMod|pairsFound[14]~59\ : std_logic;
SIGNAL \compMod|pairsFound[15]~60_combout\ : std_logic;
SIGNAL \compMod|pairsFound[15]~61\ : std_logic;
SIGNAL \compMod|pairsFound[16]~62_combout\ : std_logic;
SIGNAL \compMod|pairsFound[16]~63\ : std_logic;
SIGNAL \compMod|pairsFound[17]~64_combout\ : std_logic;
SIGNAL \compMod|pairsFound[17]~65\ : std_logic;
SIGNAL \compMod|pairsFound[18]~66_combout\ : std_logic;
SIGNAL \compMod|pairsFound[18]~67\ : std_logic;
SIGNAL \compMod|pairsFound[19]~68_combout\ : std_logic;
SIGNAL \compMod|pairsFound[19]~69\ : std_logic;
SIGNAL \compMod|pairsFound[20]~70_combout\ : std_logic;
SIGNAL \compMod|pairsFound[20]~71\ : std_logic;
SIGNAL \compMod|pairsFound[21]~72_combout\ : std_logic;
SIGNAL \compMod|pairsFound[21]~73\ : std_logic;
SIGNAL \compMod|pairsFound[22]~74_combout\ : std_logic;
SIGNAL \compMod|pairsFound[22]~75\ : std_logic;
SIGNAL \compMod|pairsFound[23]~76_combout\ : std_logic;
SIGNAL \compMod|pairsFound[23]~77\ : std_logic;
SIGNAL \compMod|pairsFound[24]~78_combout\ : std_logic;
SIGNAL \compMod|pairsFound[24]~79\ : std_logic;
SIGNAL \compMod|pairsFound[25]~80_combout\ : std_logic;
SIGNAL \compMod|pairsFound[25]~81\ : std_logic;
SIGNAL \compMod|pairsFound[26]~82_combout\ : std_logic;
SIGNAL \compMod|pairsFound[26]~83\ : std_logic;
SIGNAL \compMod|pairsFound[27]~84_combout\ : std_logic;
SIGNAL \compMod|Equal3~7_combout\ : std_logic;
SIGNAL \compMod|Equal3~5_combout\ : std_logic;
SIGNAL \compMod|pairsFound[27]~85\ : std_logic;
SIGNAL \compMod|pairsFound[28]~86_combout\ : std_logic;
SIGNAL \compMod|pairsFound[28]~87\ : std_logic;
SIGNAL \compMod|pairsFound[29]~88_combout\ : std_logic;
SIGNAL \compMod|pairsFound[29]~89\ : std_logic;
SIGNAL \compMod|pairsFound[30]~90_combout\ : std_logic;
SIGNAL \compMod|pairsFound[30]~91\ : std_logic;
SIGNAL \compMod|pairsFound[31]~92_combout\ : std_logic;
SIGNAL \compMod|Equal3~8_combout\ : std_logic;
SIGNAL \compMod|Equal3~6_combout\ : std_logic;
SIGNAL \compMod|Equal3~9_combout\ : std_logic;
SIGNAL \compMod|Equal3~0_combout\ : std_logic;
SIGNAL \compMod|Equal3~2_combout\ : std_logic;
SIGNAL \compMod|Equal3~3_combout\ : std_logic;
SIGNAL \compMod|Equal3~1_combout\ : std_logic;
SIGNAL \compMod|Equal3~4_combout\ : std_logic;
SIGNAL \compMod|GO~0_combout\ : std_logic;
SIGNAL \compMod|GO~q\ : std_logic;
SIGNAL \fsmMod|Selector3~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.gameover~q\ : std_logic;
SIGNAL \fsmMod|presentState.idle~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.idle~q\ : std_logic;
SIGNAL \fsmMod|Selector1~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.menu~q\ : std_logic;
SIGNAL \fsmMod|Selector2~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.rungame~q\ : std_logic;
SIGNAL \arrowMod|Add1~6_combout\ : std_logic;
SIGNAL \arrowMod|Add3~8_combout\ : std_logic;
SIGNAL \arrowMod|Add2~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~6_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~19_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~20_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~21_combout\ : std_logic;
SIGNAL \segMod1|WideOr6~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr6~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr6~2_combout\ : std_logic;
SIGNAL \segMod1|WideOr5~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr5~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr5~2_combout\ : std_logic;
SIGNAL \segMod1|WideOr4~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr4~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr3~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr2~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr1~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr1~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr0~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr0~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr0~2_combout\ : std_logic;
SIGNAL \segMod1|WideOr11~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr10~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr10~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr9~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr9~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr7~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr7~1_combout\ : std_logic;
SIGNAL \segMod1|WideOr8~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr8~1_combout\ : std_logic;
SIGNAL \compMod|pairsFound\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \compMod|data2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \compMod|data1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \compMod|cardmem2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \compMod|cardmem1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \compMod|mr64|dataOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \arrowMod|currentMem\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \arrowMod|keys1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \arrowMod|keys2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segMod1|ALT_INV_WideOr11~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_A <= A;
ww_keys <= keys;
rgb <= ww_rgb;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
seg4 <= ww_seg4;
seg5 <= ww_seg5;
seg6 <= ww_seg6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\segMod1|ALT_INV_WideOr11~0_combout\ <= NOT \segMod1|WideOr11~0_combout\;

-- Location: IOOBUF_X32_Y43_N23
\rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[0]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N9
\rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rgb[2]~output_o\);

-- Location: IOOBUF_X67_Y35_N23
\seg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\seg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X67_Y25_N2
\seg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr4~1_combout\,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X67_Y33_N2
\seg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X43_Y43_N2
\seg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\seg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\seg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr0~2_combout\,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X67_Y10_N23
\seg2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|ALT_INV_WideOr11~0_combout\,
	devoe => ww_devoe,
	o => \seg2[0]~output_o\);

-- Location: IOOBUF_X67_Y14_N23
\seg2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr10~1_combout\,
	devoe => ww_devoe,
	o => \seg2[1]~output_o\);

-- Location: IOOBUF_X67_Y14_N16
\seg2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr9~1_combout\,
	devoe => ww_devoe,
	o => \seg2[2]~output_o\);

-- Location: IOOBUF_X67_Y8_N9
\seg2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr7~1_combout\,
	devoe => ww_devoe,
	o => \seg2[3]~output_o\);

-- Location: IOOBUF_X67_Y9_N23
\seg2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr8~1_combout\,
	devoe => ww_devoe,
	o => \seg2[4]~output_o\);

-- Location: IOOBUF_X67_Y5_N23
\seg2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[5]~output_o\);

-- Location: IOOBUF_X67_Y24_N2
\seg2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \segMod1|WideOr7~1_combout\,
	devoe => ww_devoe,
	o => \seg2[6]~output_o\);

-- Location: IOOBUF_X67_Y12_N2
\seg3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg3[0]~output_o\);

-- Location: IOOBUF_X67_Y12_N9
\seg3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[1]~output_o\);

-- Location: IOOBUF_X67_Y11_N2
\seg3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[2]~output_o\);

-- Location: IOOBUF_X67_Y12_N16
\seg3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[3]~output_o\);

-- Location: IOOBUF_X67_Y16_N23
\seg3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[4]~output_o\);

-- Location: IOOBUF_X67_Y10_N9
\seg3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[5]~output_o\);

-- Location: IOOBUF_X67_Y13_N9
\seg3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg3[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\seg4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg4[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\seg4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[1]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\seg4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\seg4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[3]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\seg4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\seg4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\seg4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg4[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\seg5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg5[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\seg5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[1]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\seg5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\seg5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\seg5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\seg5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\seg5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg5[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\seg6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg6[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\seg6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\seg6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[2]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\seg6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\seg6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[4]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\seg6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\seg6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg6[6]~output_o\);

-- Location: IOIBUF_X36_Y0_N1
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X67_Y26_N1
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X63_Y26_N18
\syncMod|int_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|int_a~0_combout\ = !\A~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A~input_o\,
	combout => \syncMod|int_a~0_combout\);

-- Location: FF_X63_Y26_N19
\syncMod|int_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syncMod|int_a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncMod|int_a~q\);

-- Location: LCCOMB_X63_Y26_N22
\syncMod|sync_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|sync_a~0_combout\ = !\syncMod|int_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \syncMod|int_a~q\,
	combout => \syncMod|sync_a~0_combout\);

-- Location: FF_X63_Y26_N23
\syncMod|sync_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syncMod|sync_a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncMod|sync_a~q\);

-- Location: FF_X63_Y26_N25
\syncMod|delay_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \syncMod|sync_a~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncMod|delay_a~q\);

-- Location: LCCOMB_X63_Y26_N2
\syncMod|rise_a\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|rise_a~combout\ = (!\syncMod|delay_a~q\ & \syncMod|sync_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncMod|delay_a~q\,
	datac => \syncMod|sync_a~q\,
	combout => \syncMod|rise_a~combout\);

-- Location: FF_X63_Y25_N13
\arrowMod|currentMem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(1));

-- Location: IOIBUF_X67_Y25_N8
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: FF_X63_Y25_N1
\arrowMod|keys1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \keys[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(2));

-- Location: FF_X62_Y25_N11
\arrowMod|keys2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|keys1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(2));

-- Location: IOIBUF_X67_Y25_N22
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: LCCOMB_X66_Y25_N22
\arrowMod|keys1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys1[0]~feeder_combout\ = \keys[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[0]~input_o\,
	combout => \arrowMod|keys1[0]~feeder_combout\);

-- Location: FF_X66_Y25_N23
\arrowMod|keys1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(0));

-- Location: FF_X62_Y25_N25
\arrowMod|keys2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|keys1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(0));

-- Location: IOIBUF_X36_Y0_N8
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: FF_X62_Y25_N5
\arrowMod|keys1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \keys[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(3));

-- Location: FF_X62_Y25_N19
\arrowMod|keys2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|keys1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(3));

-- Location: IOIBUF_X67_Y25_N15
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: FF_X62_Y25_N31
\arrowMod|keys1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \keys[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(1));

-- Location: FF_X62_Y25_N7
\arrowMod|keys2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|keys1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(1));

-- Location: LCCOMB_X62_Y25_N18
\arrowMod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~0_combout\ = (!\arrowMod|keys2\(0) & (!\arrowMod|keys2\(1) & (\arrowMod|keys2\(2) $ (\arrowMod|keys2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(2),
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y25_N18
\arrowMod|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~0_combout\ = \arrowMod|currentMem\(0) $ (VCC)
-- \arrowMod|Add2~1\ = CARRY(\arrowMod|currentMem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(0),
	datad => VCC,
	combout => \arrowMod|Add2~0_combout\,
	cout => \arrowMod|Add2~1\);

-- Location: LCCOMB_X63_Y25_N0
\arrowMod|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~0_combout\ = \arrowMod|currentMem\(1) $ (VCC)
-- \arrowMod|Add1~1\ = CARRY(\arrowMod|currentMem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datad => VCC,
	combout => \arrowMod|Add1~0_combout\,
	cout => \arrowMod|Add1~1\);

-- Location: LCCOMB_X63_Y25_N2
\arrowMod|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~2_combout\ = (\arrowMod|currentMem\(2) & (\arrowMod|Add1~1\ & VCC)) # (!\arrowMod|currentMem\(2) & (!\arrowMod|Add1~1\))
-- \arrowMod|Add1~3\ = CARRY((!\arrowMod|currentMem\(2) & !\arrowMod|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add1~1\,
	combout => \arrowMod|Add1~2_combout\,
	cout => \arrowMod|Add1~3\);

-- Location: LCCOMB_X64_Y25_N0
\arrowMod|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~0_combout\ = \arrowMod|currentMem\(0) $ (VCC)
-- \arrowMod|Add3~1\ = CARRY(\arrowMod|currentMem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(0),
	datad => VCC,
	combout => \arrowMod|Add3~0_combout\,
	cout => \arrowMod|Add3~1\);

-- Location: LCCOMB_X64_Y25_N2
\arrowMod|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~2_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|Add3~1\)) # (!\arrowMod|currentMem\(1) & ((\arrowMod|Add3~1\) # (GND)))
-- \arrowMod|Add3~3\ = CARRY((!\arrowMod|Add3~1\) # (!\arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datad => VCC,
	cin => \arrowMod|Add3~1\,
	combout => \arrowMod|Add3~2_combout\,
	cout => \arrowMod|Add3~3\);

-- Location: LCCOMB_X64_Y25_N4
\arrowMod|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~4_combout\ = (\arrowMod|currentMem\(2) & (\arrowMod|Add3~3\ $ (GND))) # (!\arrowMod|currentMem\(2) & (!\arrowMod|Add3~3\ & VCC))
-- \arrowMod|Add3~5\ = CARRY((\arrowMod|currentMem\(2) & !\arrowMod|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add3~3\,
	combout => \arrowMod|Add3~4_combout\,
	cout => \arrowMod|Add3~5\);

-- Location: LCCOMB_X62_Y25_N22
\arrowMod|mem6x6[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~1_combout\ = (\arrowMod|keys2\(3)) # ((\arrowMod|keys2\(1) & !\arrowMod|keys2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(2),
	combout => \arrowMod|mem6x6[5]~1_combout\);

-- Location: LCCOMB_X62_Y25_N30
\arrowMod|mem6x6[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~0_combout\ = (\arrowMod|keys2\(3)) # (\arrowMod|keys2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(2),
	combout => \arrowMod|mem6x6[5]~0_combout\);

-- Location: LCCOMB_X63_Y25_N14
\arrowMod|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~0_combout\ = \arrowMod|currentMem\(1) $ (VCC)
-- \arrowMod|Add0~1\ = CARRY(\arrowMod|currentMem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datad => VCC,
	combout => \arrowMod|Add0~0_combout\,
	cout => \arrowMod|Add0~1\);

-- Location: LCCOMB_X63_Y25_N16
\arrowMod|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~2_combout\ = (\arrowMod|currentMem\(2) & (!\arrowMod|Add0~1\)) # (!\arrowMod|currentMem\(2) & ((\arrowMod|Add0~1\) # (GND)))
-- \arrowMod|Add0~3\ = CARRY((!\arrowMod|Add0~1\) # (!\arrowMod|currentMem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add0~1\,
	combout => \arrowMod|Add0~2_combout\,
	cout => \arrowMod|Add0~3\);

-- Location: LCCOMB_X64_Y25_N20
\arrowMod|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~2_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|Add2~1\ & VCC)) # (!\arrowMod|currentMem\(1) & (!\arrowMod|Add2~1\))
-- \arrowMod|Add2~3\ = CARRY((!\arrowMod|currentMem\(1) & !\arrowMod|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datad => VCC,
	cin => \arrowMod|Add2~1\,
	combout => \arrowMod|Add2~2_combout\,
	cout => \arrowMod|Add2~3\);

-- Location: LCCOMB_X64_Y25_N22
\arrowMod|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~4_combout\ = (\arrowMod|currentMem\(2) & ((GND) # (!\arrowMod|Add2~3\))) # (!\arrowMod|currentMem\(2) & (\arrowMod|Add2~3\ $ (GND)))
-- \arrowMod|Add2~5\ = CARRY((\arrowMod|currentMem\(2)) # (!\arrowMod|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add2~3\,
	combout => \arrowMod|Add2~4_combout\,
	cout => \arrowMod|Add2~5\);

-- Location: LCCOMB_X64_Y25_N12
\arrowMod|mem6x6[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~25_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|mem6x6[5]~0_combout\)) # (!\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|Add2~4_combout\))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (\arrowMod|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|Add0~2_combout\,
	datad => \arrowMod|Add2~4_combout\,
	combout => \arrowMod|mem6x6[2]~25_combout\);

-- Location: LCCOMB_X64_Y25_N30
\arrowMod|mem6x6[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~26_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[2]~25_combout\ & ((\arrowMod|Add3~4_combout\))) # (!\arrowMod|mem6x6[2]~25_combout\ & (\arrowMod|Add1~2_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (((\arrowMod|mem6x6[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add1~2_combout\,
	datab => \arrowMod|Add3~4_combout\,
	datac => \arrowMod|mem6x6[5]~1_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \arrowMod|mem6x6[2]~26_combout\);

-- Location: LCCOMB_X63_Y25_N24
\arrowMod|mem6x6[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~27_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|currentMem\(2)))) # (!\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|mem6x6[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[2]~26_combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|mem6x6[5]~13_combout\,
	combout => \arrowMod|mem6x6[2]~27_combout\);

-- Location: FF_X63_Y25_N25
\arrowMod|currentMem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(2));

-- Location: LCCOMB_X64_Y25_N6
\arrowMod|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~6_combout\ = (\arrowMod|currentMem\(3) & (!\arrowMod|Add3~5\)) # (!\arrowMod|currentMem\(3) & ((\arrowMod|Add3~5\) # (GND)))
-- \arrowMod|Add3~7\ = CARRY((!\arrowMod|Add3~5\) # (!\arrowMod|currentMem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add3~5\,
	combout => \arrowMod|Add3~6_combout\,
	cout => \arrowMod|Add3~7\);

-- Location: LCCOMB_X64_Y25_N24
\arrowMod|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~6_combout\ = (\arrowMod|currentMem\(3) & (\arrowMod|Add2~5\ & VCC)) # (!\arrowMod|currentMem\(3) & (!\arrowMod|Add2~5\))
-- \arrowMod|Add2~7\ = CARRY((!\arrowMod|currentMem\(3) & !\arrowMod|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add2~5\,
	combout => \arrowMod|Add2~6_combout\,
	cout => \arrowMod|Add2~7\);

-- Location: LCCOMB_X63_Y25_N4
\arrowMod|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~4_combout\ = (\arrowMod|currentMem\(3) & (\arrowMod|Add1~3\ $ (GND))) # (!\arrowMod|currentMem\(3) & (!\arrowMod|Add1~3\ & VCC))
-- \arrowMod|Add1~5\ = CARRY((\arrowMod|currentMem\(3) & !\arrowMod|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add1~3\,
	combout => \arrowMod|Add1~4_combout\,
	cout => \arrowMod|Add1~5\);

-- Location: LCCOMB_X63_Y25_N18
\arrowMod|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~4_combout\ = (\arrowMod|currentMem\(3) & ((GND) # (!\arrowMod|Add0~3\))) # (!\arrowMod|currentMem\(3) & (\arrowMod|Add0~3\ $ (GND)))
-- \arrowMod|Add0~5\ = CARRY((\arrowMod|currentMem\(3)) # (!\arrowMod|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add0~3\,
	combout => \arrowMod|Add0~4_combout\,
	cout => \arrowMod|Add0~5\);

-- Location: LCCOMB_X63_Y25_N28
\arrowMod|mem6x6[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~28_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[5]~0_combout\) # ((\arrowMod|Add1~4_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & (!\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|Add1~4_combout\,
	datad => \arrowMod|Add0~4_combout\,
	combout => \arrowMod|mem6x6[3]~28_combout\);

-- Location: LCCOMB_X63_Y25_N26
\arrowMod|mem6x6[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~29_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[3]~28_combout\ & (\arrowMod|Add3~6_combout\)) # (!\arrowMod|mem6x6[3]~28_combout\ & ((\arrowMod|Add2~6_combout\))))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add3~6_combout\,
	datab => \arrowMod|Add2~6_combout\,
	datac => \arrowMod|mem6x6[5]~0_combout\,
	datad => \arrowMod|mem6x6[3]~28_combout\,
	combout => \arrowMod|mem6x6[3]~29_combout\);

-- Location: LCCOMB_X63_Y25_N10
\arrowMod|mem6x6[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~30_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|currentMem\(3)))) # (!\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|mem6x6[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~29_combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \arrowMod|currentMem\(3),
	datad => \arrowMod|mem6x6[5]~13_combout\,
	combout => \arrowMod|mem6x6[3]~30_combout\);

-- Location: FF_X63_Y25_N11
\arrowMod|currentMem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(3));

-- Location: FF_X62_Y25_N29
\arrowMod|currentMem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[4]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(4));

-- Location: LCCOMB_X62_Y25_N28
\arrowMod|mem6x6[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~11_combout\ = (\arrowMod|keys2\(1) & (\arrowMod|currentMem\(3) & (\arrowMod|currentMem\(4) & !\arrowMod|currentMem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(4),
	datad => \arrowMod|currentMem\(5),
	combout => \arrowMod|mem6x6[5]~11_combout\);

-- Location: LCCOMB_X62_Y25_N14
\arrowMod|mem6x6[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~8_combout\ = (\arrowMod|keys2\(3) & ((\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(0)) # (\arrowMod|keys2\(2))))) # (!\arrowMod|keys2\(3) & (\arrowMod|keys2\(2) & ((\arrowMod|keys2\(1)) # (\arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(3),
	datac => \arrowMod|keys2\(0),
	datad => \arrowMod|keys2\(2),
	combout => \arrowMod|mem6x6[5]~8_combout\);

-- Location: LCCOMB_X62_Y25_N26
\arrowMod|mem6x6[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~9_combout\ = (!\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & !\arrowMod|currentMem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(3),
	datad => \arrowMod|currentMem\(5),
	combout => \arrowMod|mem6x6[5]~9_combout\);

-- Location: LCCOMB_X62_Y25_N20
\arrowMod|mem6x6[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~10_combout\ = (\arrowMod|mem6x6[5]~8_combout\) # ((\arrowMod|keys2\(0) & ((\arrowMod|mem6x6[5]~9_combout\) # (\arrowMod|keys2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(0),
	datab => \arrowMod|mem6x6[5]~8_combout\,
	datac => \arrowMod|mem6x6[5]~9_combout\,
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|mem6x6[5]~10_combout\);

-- Location: LCCOMB_X62_Y25_N6
\arrowMod|mem6x6[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~12_combout\ = (\arrowMod|currentMem\(1) & \arrowMod|currentMem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(2),
	combout => \arrowMod|mem6x6[5]~12_combout\);

-- Location: LCCOMB_X62_Y25_N10
\arrowMod|mem6x6[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~6_combout\ = (!\arrowMod|keys2\(0) & (!\arrowMod|keys2\(3) & !\arrowMod|keys2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(0),
	datab => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|mem6x6[5]~6_combout\);

-- Location: LCCOMB_X62_Y25_N4
\arrowMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~0_combout\ = (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(2) & !\arrowMod|currentMem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(3),
	datab => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(4),
	combout => \arrowMod|Equal1~0_combout\);

-- Location: LCCOMB_X62_Y25_N0
\arrowMod|mem6x6[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~4_combout\ = (\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(3) & (\arrowMod|currentMem\(1) & \arrowMod|currentMem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(3),
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(0),
	combout => \arrowMod|mem6x6[5]~4_combout\);

-- Location: LCCOMB_X62_Y25_N24
\arrowMod|mem6x6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~5_combout\ = (\arrowMod|Equal1~0_combout\ & ((\arrowMod|currentMem\(5) & ((\arrowMod|mem6x6[5]~4_combout\))) # (!\arrowMod|currentMem\(5) & (\arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|Equal1~0_combout\,
	datac => \arrowMod|keys2\(0),
	datad => \arrowMod|mem6x6[5]~4_combout\,
	combout => \arrowMod|mem6x6[5]~5_combout\);

-- Location: LCCOMB_X62_Y25_N2
\arrowMod|mem6x6[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~7_combout\ = (\arrowMod|mem6x6[5]~5_combout\) # ((\arrowMod|mem6x6[5]~6_combout\ & ((\arrowMod|Equal1~1_combout\) # (!\arrowMod|keys2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(2),
	datab => \arrowMod|mem6x6[5]~6_combout\,
	datac => \arrowMod|Equal1~1_combout\,
	datad => \arrowMod|mem6x6[5]~5_combout\,
	combout => \arrowMod|mem6x6[5]~7_combout\);

-- Location: LCCOMB_X62_Y25_N12
\arrowMod|mem6x6[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~13_combout\ = (\arrowMod|mem6x6[5]~10_combout\) # ((\arrowMod|mem6x6[5]~7_combout\) # ((\arrowMod|mem6x6[5]~11_combout\ & \arrowMod|mem6x6[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~11_combout\,
	datab => \arrowMod|mem6x6[5]~10_combout\,
	datac => \arrowMod|mem6x6[5]~12_combout\,
	datad => \arrowMod|mem6x6[5]~7_combout\,
	combout => \arrowMod|mem6x6[5]~13_combout\);

-- Location: LCCOMB_X64_Y25_N26
\arrowMod|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~8_combout\ = (\arrowMod|currentMem\(4) & ((GND) # (!\arrowMod|Add2~7\))) # (!\arrowMod|currentMem\(4) & (\arrowMod|Add2~7\ $ (GND)))
-- \arrowMod|Add2~9\ = CARRY((\arrowMod|currentMem\(4)) # (!\arrowMod|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add2~7\,
	combout => \arrowMod|Add2~8_combout\,
	cout => \arrowMod|Add2~9\);

-- Location: LCCOMB_X64_Y25_N28
\arrowMod|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~10_combout\ = \arrowMod|Add2~9\ $ (!\arrowMod|currentMem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add2~9\,
	combout => \arrowMod|Add2~10_combout\);

-- Location: LCCOMB_X63_Y25_N6
\arrowMod|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~6_combout\ = (\arrowMod|currentMem\(4) & (!\arrowMod|Add1~5\)) # (!\arrowMod|currentMem\(4) & ((\arrowMod|Add1~5\) # (GND)))
-- \arrowMod|Add1~7\ = CARRY((!\arrowMod|Add1~5\) # (!\arrowMod|currentMem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add1~5\,
	combout => \arrowMod|Add1~6_combout\,
	cout => \arrowMod|Add1~7\);

-- Location: LCCOMB_X63_Y25_N8
\arrowMod|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~8_combout\ = \arrowMod|Add1~7\ $ (!\arrowMod|currentMem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add1~7\,
	combout => \arrowMod|Add1~8_combout\);

-- Location: LCCOMB_X63_Y25_N20
\arrowMod|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~6_combout\ = (\arrowMod|currentMem\(4) & (\arrowMod|Add0~5\ & VCC)) # (!\arrowMod|currentMem\(4) & (!\arrowMod|Add0~5\))
-- \arrowMod|Add0~7\ = CARRY((!\arrowMod|currentMem\(4) & !\arrowMod|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add0~5\,
	combout => \arrowMod|Add0~6_combout\,
	cout => \arrowMod|Add0~7\);

-- Location: LCCOMB_X63_Y25_N22
\arrowMod|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~8_combout\ = \arrowMod|Add0~7\ $ (\arrowMod|currentMem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add0~7\,
	combout => \arrowMod|Add0~8_combout\);

-- Location: LCCOMB_X65_Y25_N4
\arrowMod|mem6x6[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~2_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[5]~0_combout\) # ((\arrowMod|Add1~8_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & (!\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|Add1~8_combout\,
	datad => \arrowMod|Add0~8_combout\,
	combout => \arrowMod|mem6x6[5]~2_combout\);

-- Location: LCCOMB_X64_Y25_N8
\arrowMod|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~8_combout\ = (\arrowMod|currentMem\(4) & (\arrowMod|Add3~7\ $ (GND))) # (!\arrowMod|currentMem\(4) & (!\arrowMod|Add3~7\ & VCC))
-- \arrowMod|Add3~9\ = CARRY((\arrowMod|currentMem\(4) & !\arrowMod|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add3~7\,
	combout => \arrowMod|Add3~8_combout\,
	cout => \arrowMod|Add3~9\);

-- Location: LCCOMB_X64_Y25_N10
\arrowMod|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~10_combout\ = \arrowMod|Add3~9\ $ (\arrowMod|currentMem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add3~9\,
	combout => \arrowMod|Add3~10_combout\);

-- Location: LCCOMB_X65_Y25_N10
\arrowMod|mem6x6[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~3_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~2_combout\ & ((\arrowMod|Add3~10_combout\))) # (!\arrowMod|mem6x6[5]~2_combout\ & (\arrowMod|Add2~10_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|Add2~10_combout\,
	datac => \arrowMod|mem6x6[5]~2_combout\,
	datad => \arrowMod|Add3~10_combout\,
	combout => \arrowMod|mem6x6[5]~3_combout\);

-- Location: LCCOMB_X65_Y25_N0
\arrowMod|mem6x6[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~14_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|currentMem\(5))) # (!\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|mem6x6[5]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|currentMem\(5),
	datac => \arrowMod|mem6x6[5]~13_combout\,
	datad => \arrowMod|mem6x6[5]~3_combout\,
	combout => \arrowMod|mem6x6[5]~14_combout\);

-- Location: FF_X62_Y25_N9
\arrowMod|currentMem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[5]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(5));

-- Location: LCCOMB_X62_Y25_N8
\arrowMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~1_combout\ = (!\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & (!\arrowMod|currentMem\(5) & \arrowMod|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datab => \arrowMod|currentMem\(0),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|Equal1~1_combout\);

-- Location: LCCOMB_X65_Y25_N6
\arrowMod|mem6x6[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~15_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(5) & \arrowMod|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|mem6x6[0]~15_combout\);

-- Location: LCCOMB_X65_Y25_N16
\arrowMod|mem6x6[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~16_combout\ = (\arrowMod|Mux5~0_combout\ & ((\arrowMod|Add3~0_combout\) # ((\arrowMod|currentMem\(0) & \arrowMod|mem6x6[0]~15_combout\)))) # (!\arrowMod|Mux5~0_combout\ & (((\arrowMod|currentMem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add3~0_combout\,
	datab => \arrowMod|Mux5~0_combout\,
	datac => \arrowMod|currentMem\(0),
	datad => \arrowMod|mem6x6[0]~15_combout\,
	combout => \arrowMod|mem6x6[0]~16_combout\);

-- Location: LCCOMB_X65_Y25_N14
\arrowMod|mem6x6[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~17_combout\ = (\arrowMod|keys2\(3) & (((\arrowMod|mem6x6[0]~16_combout\)))) # (!\arrowMod|keys2\(3) & (\arrowMod|Add2~0_combout\ & (!\arrowMod|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datab => \arrowMod|Add2~0_combout\,
	datac => \arrowMod|Equal1~1_combout\,
	datad => \arrowMod|mem6x6[0]~16_combout\,
	combout => \arrowMod|mem6x6[0]~17_combout\);

-- Location: LCCOMB_X65_Y25_N12
\arrowMod|mem6x6[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~18_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|Mux5~0_combout\ & (\arrowMod|mem6x6[0]~17_combout\)) # (!\arrowMod|Mux5~0_combout\ & ((\arrowMod|mem6x6[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|Mux5~0_combout\,
	datac => \arrowMod|mem6x6[0]~17_combout\,
	datad => \arrowMod|mem6x6[0]~16_combout\,
	combout => \arrowMod|mem6x6[0]~18_combout\);

-- Location: FF_X64_Y25_N19
\arrowMod|currentMem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(0));

-- Location: LCCOMB_X62_Y25_N16
\arrowMod|mem6x6[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~22_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & (((\arrowMod|Add1~0_combout\) # (\arrowMod|mem6x6[5]~0_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|Add0~0_combout\ & ((!\arrowMod|mem6x6[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|Add0~0_combout\,
	datac => \arrowMod|Add1~0_combout\,
	datad => \arrowMod|mem6x6[5]~0_combout\,
	combout => \arrowMod|mem6x6[1]~22_combout\);

-- Location: LCCOMB_X63_Y25_N30
\arrowMod|mem6x6[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~23_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[1]~22_combout\ & ((\arrowMod|Add3~2_combout\))) # (!\arrowMod|mem6x6[1]~22_combout\ & (\arrowMod|Add2~2_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add2~2_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|mem6x6[1]~22_combout\,
	datad => \arrowMod|Add3~2_combout\,
	combout => \arrowMod|mem6x6[1]~23_combout\);

-- Location: LCCOMB_X63_Y25_N12
\arrowMod|mem6x6[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~24_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|currentMem\(1)))) # (!\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|mem6x6[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[1]~23_combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|mem6x6[5]~13_combout\,
	combout => \arrowMod|mem6x6[1]~24_combout\);

-- Location: FF_X63_Y25_N19
\compMod|cardmem2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~30_combout\,
	sload => VCC,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(3));

-- Location: LCCOMB_X63_Y26_N10
\compMod|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always0~0_combout\ = (!\syncMod|delay_a~q\ & (\syncMod|sync_a~q\ & !\compMod|cardOneTwo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncMod|delay_a~q\,
	datac => \syncMod|sync_a~q\,
	datad => \compMod|cardOneTwo~q\,
	combout => \compMod|always0~0_combout\);

-- Location: FF_X64_Y26_N29
\compMod|cardmem1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[2]~27_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(2));

-- Location: FF_X64_Y26_N13
\compMod|cardmem1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~30_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(3));

-- Location: FF_X63_Y25_N17
\compMod|cardmem2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[2]~27_combout\,
	sload => VCC,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(2));

-- Location: LCCOMB_X63_Y26_N6
\compMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~1_combout\ = (\compMod|cardmem2\(3) & (\compMod|cardmem1\(3) & (\compMod|cardmem1\(2) $ (!\compMod|cardmem2\(2))))) # (!\compMod|cardmem2\(3) & (!\compMod|cardmem1\(3) & (\compMod|cardmem1\(2) $ (!\compMod|cardmem2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem2\(3),
	datab => \compMod|cardmem1\(2),
	datac => \compMod|cardmem1\(3),
	datad => \compMod|cardmem2\(2),
	combout => \compMod|Equal1~1_combout\);

-- Location: FF_X64_Y26_N27
\compMod|cardmem1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[5]~14_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(5));

-- Location: FF_X64_Y26_N15
\compMod|cardmem1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[4]~21_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(4));

-- Location: FF_X65_Y25_N31
\compMod|cardmem2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[4]~21_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(4));

-- Location: FF_X65_Y25_N1
\compMod|cardmem2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[5]~14_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(5));

-- Location: LCCOMB_X65_Y26_N24
\compMod|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~2_combout\ = (\compMod|cardmem1\(5) & (\compMod|cardmem2\(5) & (\compMod|cardmem1\(4) $ (!\compMod|cardmem2\(4))))) # (!\compMod|cardmem1\(5) & (!\compMod|cardmem2\(5) & (\compMod|cardmem1\(4) $ (!\compMod|cardmem2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem1\(5),
	datab => \compMod|cardmem1\(4),
	datac => \compMod|cardmem2\(4),
	datad => \compMod|cardmem2\(5),
	combout => \compMod|Equal1~2_combout\);

-- Location: LCCOMB_X65_Y26_N10
\compMod|cardOneTwo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardOneTwo~0_combout\ = ((\compMod|Equal1~0_combout\ & (\compMod|Equal1~1_combout\ & \compMod|Equal1~2_combout\))) # (!\compMod|always0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|always0~1_combout\,
	datab => \compMod|Equal1~0_combout\,
	datac => \compMod|Equal1~1_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|cardOneTwo~0_combout\);

-- Location: LCCOMB_X63_Y26_N12
\compMod|cardOneTwo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardOneTwo~1_combout\ = (\fsmMod|presentState.rungame~q\ & (\compMod|cardOneTwo~0_combout\ & ((\syncMod|rise_a~combout\) # (\compMod|cardOneTwo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \compMod|cardOneTwo~q\,
	datad => \compMod|cardOneTwo~0_combout\,
	combout => \compMod|cardOneTwo~1_combout\);

-- Location: FF_X63_Y26_N13
\compMod|cardOneTwo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|cardOneTwo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardOneTwo~q\);

-- Location: LCCOMB_X63_Y26_N20
\compMod|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always0~1_combout\ = (!\syncMod|delay_a~q\ & (\syncMod|sync_a~q\ & \compMod|cardOneTwo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncMod|delay_a~q\,
	datac => \syncMod|sync_a~q\,
	datad => \compMod|cardOneTwo~q\,
	combout => \compMod|always0~1_combout\);

-- Location: FF_X63_Y25_N15
\compMod|cardmem2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[1]~24_combout\,
	sload => VCC,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(1));

-- Location: FF_X64_Y26_N17
\compMod|cardmem1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[1]~24_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(1));

-- Location: FF_X64_Y26_N19
\compMod|cardmem1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[0]~18_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(0));

-- Location: FF_X65_Y25_N13
\compMod|cardmem2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[0]~18_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(0));

-- Location: LCCOMB_X64_Y26_N18
\compMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~0_combout\ = (\compMod|cardmem2\(1) & (\compMod|cardmem1\(1) & (\compMod|cardmem1\(0) $ (!\compMod|cardmem2\(0))))) # (!\compMod|cardmem2\(1) & (!\compMod|cardmem1\(1) & (\compMod|cardmem1\(0) $ (!\compMod|cardmem2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem2\(1),
	datab => \compMod|cardmem1\(1),
	datac => \compMod|cardmem1\(0),
	datad => \compMod|cardmem2\(0),
	combout => \compMod|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y25_N28
\compMod|mr64|ram~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~18_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[3]~30_combout\) # ((\arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[4]~21_combout\ & 
-- !\arrowMod|mem6x6[2]~27_combout\)) # (!\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[4]~21_combout\ & \arrowMod|mem6x6[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[3]~30_combout\,
	datac => \arrowMod|mem6x6[4]~21_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \compMod|mr64|ram~18_combout\);

-- Location: LCCOMB_X65_Y25_N18
\compMod|mr64|ram~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~19_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[0]~18_combout\ & (!\arrowMod|mem6x6[1]~24_combout\ & !\compMod|mr64|ram~18_combout\)) # (!\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[1]~24_combout\ & 
-- \compMod|mr64|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[5]~14_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \compMod|mr64|ram~18_combout\,
	combout => \compMod|mr64|ram~19_combout\);

-- Location: FF_X65_Y25_N19
\compMod|mr64|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|mr64|ram~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|mr64|dataOut\(4));

-- Location: LCCOMB_X66_Y26_N12
\compMod|data2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2~5_combout\ = (\compMod|mr64|dataOut\(4)) # ((\compMod|Equal1~0_combout\ & (\compMod|Equal1~1_combout\ & \compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal1~0_combout\,
	datab => \compMod|mr64|dataOut\(4),
	datac => \compMod|Equal1~1_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|data2~5_combout\);

-- Location: LCCOMB_X63_Y26_N14
\compMod|data2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2[4]~1_combout\ = (\compMod|cardOneTwo~q\ & (!\syncMod|delay_a~q\ & (\syncMod|sync_a~q\ & \fsmMod|presentState.rungame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardOneTwo~q\,
	datab => \syncMod|delay_a~q\,
	datac => \syncMod|sync_a~q\,
	datad => \fsmMod|presentState.rungame~q\,
	combout => \compMod|data2[4]~1_combout\);

-- Location: FF_X66_Y26_N13
\compMod|data2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2~5_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(4));

-- Location: LCCOMB_X66_Y25_N26
\compMod|mr64|ram~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~10_combout\ = (\arrowMod|mem6x6[2]~27_combout\ & (!\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[3]~30_combout\) # (\arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[2]~27_combout\ & (((\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \compMod|mr64|ram~10_combout\);

-- Location: LCCOMB_X66_Y25_N12
\compMod|mr64|ram~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~11_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[1]~24_combout\ & ((!\arrowMod|mem6x6[4]~21_combout\))) # (!\arrowMod|mem6x6[1]~24_combout\ & (!\arrowMod|mem6x6[2]~27_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & 
-- ((\arrowMod|mem6x6[1]~24_combout\) # ((\arrowMod|mem6x6[2]~27_combout\ & \arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \compMod|mr64|ram~11_combout\);

-- Location: LCCOMB_X66_Y25_N10
\compMod|mr64|ram~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~12_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[2]~27_combout\ & \compMod|mr64|ram~11_combout\)) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[2]~27_combout\) # (\compMod|mr64|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \compMod|mr64|ram~11_combout\,
	combout => \compMod|mr64|ram~12_combout\);

-- Location: LCCOMB_X66_Y25_N0
\compMod|mr64|ram~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~13_combout\ = (\arrowMod|mem6x6[5]~14_combout\ & (!\arrowMod|mem6x6[0]~18_combout\ & (!\compMod|mr64|ram~10_combout\ & !\compMod|mr64|ram~12_combout\))) # (!\arrowMod|mem6x6[5]~14_combout\ & (\arrowMod|mem6x6[0]~18_combout\ $ 
-- (\compMod|mr64|ram~10_combout\ $ (!\compMod|mr64|ram~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \compMod|mr64|ram~10_combout\,
	datad => \compMod|mr64|ram~12_combout\,
	combout => \compMod|mr64|ram~13_combout\);

-- Location: FF_X66_Y25_N1
\compMod|mr64|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|mr64|ram~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|mr64|dataOut\(2));

-- Location: LCCOMB_X66_Y26_N28
\compMod|data2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2~3_combout\ = (\compMod|mr64|dataOut\(2)) # ((\compMod|Equal1~1_combout\ & (\compMod|Equal1~0_combout\ & \compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|dataOut\(2),
	datab => \compMod|Equal1~1_combout\,
	datac => \compMod|Equal1~0_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|data2~3_combout\);

-- Location: FF_X66_Y26_N29
\compMod|data2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2~3_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(2));

-- Location: LCCOMB_X64_Y24_N8
\compMod|mr64|ram~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~14_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & (((\arrowMod|mem6x6[4]~21_combout\)) # (!\arrowMod|mem6x6[1]~24_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[2]~27_combout\ & ((\arrowMod|mem6x6[1]~24_combout\) # 
-- (!\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[1]~24_combout\,
	datab => \arrowMod|mem6x6[4]~21_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[3]~30_combout\,
	combout => \compMod|mr64|ram~14_combout\);

-- Location: LCCOMB_X64_Y24_N18
\compMod|mr64|ram~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~15_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[1]~24_combout\) # ((\arrowMod|mem6x6[4]~21_combout\ & \arrowMod|mem6x6[2]~27_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & (((\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[1]~24_combout\,
	datab => \arrowMod|mem6x6[4]~21_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[3]~30_combout\,
	combout => \compMod|mr64|ram~15_combout\);

-- Location: LCCOMB_X64_Y24_N12
\compMod|mr64|ram~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~16_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & (!\compMod|mr64|ram~15_combout\ & ((\arrowMod|mem6x6[1]~24_combout\) # (!\compMod|mr64|ram~14_combout\)))) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[1]~24_combout\ & 
-- (!\compMod|mr64|ram~14_combout\ & !\compMod|mr64|ram~15_combout\)) # (!\arrowMod|mem6x6[1]~24_combout\ & (\compMod|mr64|ram~14_combout\ & \compMod|mr64|ram~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \compMod|mr64|ram~14_combout\,
	datad => \compMod|mr64|ram~15_combout\,
	combout => \compMod|mr64|ram~16_combout\);

-- Location: LCCOMB_X64_Y24_N14
\compMod|mr64|ram~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~17_combout\ = (\arrowMod|mem6x6[5]~14_combout\ & (!\compMod|mr64|ram~14_combout\ & \compMod|mr64|ram~16_combout\)) # (!\arrowMod|mem6x6[5]~14_combout\ & (\compMod|mr64|ram~14_combout\ $ (!\compMod|mr64|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datac => \compMod|mr64|ram~14_combout\,
	datad => \compMod|mr64|ram~16_combout\,
	combout => \compMod|mr64|ram~17_combout\);

-- Location: FF_X64_Y24_N15
\compMod|mr64|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|mr64|ram~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|mr64|dataOut\(3));

-- Location: LCCOMB_X62_Y26_N2
\compMod|data1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data1[3]~feeder_combout\ = \compMod|mr64|dataOut\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compMod|mr64|dataOut\(3),
	combout => \compMod|data1[3]~feeder_combout\);

-- Location: LCCOMB_X63_Y26_N0
\compMod|data1[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data1[4]~0_combout\ = (!\compMod|cardOneTwo~q\ & (!\syncMod|delay_a~q\ & (\syncMod|sync_a~q\ & \fsmMod|presentState.rungame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardOneTwo~q\,
	datab => \syncMod|delay_a~q\,
	datac => \syncMod|sync_a~q\,
	datad => \fsmMod|presentState.rungame~q\,
	combout => \compMod|data1[4]~0_combout\);

-- Location: FF_X62_Y26_N3
\compMod|data1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data1[3]~feeder_combout\,
	ena => \compMod|data1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data1\(3));

-- Location: FF_X62_Y26_N17
\compMod|data1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(2),
	sload => VCC,
	ena => \compMod|data1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data1\(2));

-- Location: LCCOMB_X66_Y26_N10
\compMod|data2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2~4_combout\ = (\compMod|mr64|dataOut\(3)) # ((\compMod|Equal1~1_combout\ & (\compMod|Equal1~0_combout\ & \compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|dataOut\(3),
	datab => \compMod|Equal1~1_combout\,
	datac => \compMod|Equal1~0_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|data2~4_combout\);

-- Location: FF_X66_Y26_N11
\compMod|data2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2~4_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(3));

-- Location: LCCOMB_X62_Y26_N16
\compMod|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal2~1_combout\ = (\compMod|data2\(2) & (\compMod|data1\(2) & (\compMod|data1\(3) $ (!\compMod|data2\(3))))) # (!\compMod|data2\(2) & (!\compMod|data1\(2) & (\compMod|data1\(3) $ (!\compMod|data2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|data2\(2),
	datab => \compMod|data1\(3),
	datac => \compMod|data1\(2),
	datad => \compMod|data2\(3),
	combout => \compMod|Equal2~1_combout\);

-- Location: FF_X62_Y26_N7
\compMod|data1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(4),
	sload => VCC,
	ena => \compMod|data1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data1\(4));

-- Location: LCCOMB_X65_Y25_N22
\compMod|mr64|ram~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~8_combout\ = (\arrowMod|mem6x6[4]~21_combout\) # ((\arrowMod|mem6x6[2]~27_combout\) # ((\arrowMod|mem6x6[0]~18_combout\ & !\arrowMod|mem6x6[1]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[4]~21_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \compMod|mr64|ram~8_combout\);

-- Location: LCCOMB_X65_Y25_N26
\compMod|mr64|ram~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~6_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[1]~24_combout\ $ ((!\arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[1]~24_combout\ & (!\arrowMod|mem6x6[4]~21_combout\)) # 
-- (!\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[4]~21_combout\) # (\arrowMod|mem6x6[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[4]~21_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \compMod|mr64|ram~6_combout\);

-- Location: LCCOMB_X65_Y25_N20
\compMod|mr64|ram~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~5_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[2]~27_combout\ & (\arrowMod|mem6x6[1]~24_combout\ $ (!\arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[2]~27_combout\ $ 
-- (((!\arrowMod|mem6x6[1]~24_combout\ & \arrowMod|mem6x6[4]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~18_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[4]~21_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \compMod|mr64|ram~5_combout\);

-- Location: LCCOMB_X65_Y25_N24
\compMod|mr64|ram~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~7_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ & ((\compMod|mr64|ram~5_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & (!\compMod|mr64|ram~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[5]~14_combout\,
	datac => \compMod|mr64|ram~6_combout\,
	datad => \compMod|mr64|ram~5_combout\,
	combout => \compMod|mr64|ram~7_combout\);

-- Location: LCCOMB_X65_Y25_N8
\compMod|mr64|ram~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~9_combout\ = (\compMod|mr64|ram~7_combout\) # ((!\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[5]~14_combout\ & !\compMod|mr64|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[5]~14_combout\,
	datac => \compMod|mr64|ram~8_combout\,
	datad => \compMod|mr64|ram~7_combout\,
	combout => \compMod|mr64|ram~9_combout\);

-- Location: FF_X65_Y25_N9
\compMod|mr64|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|mr64|ram~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|mr64|dataOut\(1));

-- Location: LCCOMB_X66_Y26_N2
\compMod|data2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2~2_combout\ = (\compMod|mr64|dataOut\(1)) # ((\compMod|Equal1~1_combout\ & (\compMod|Equal1~0_combout\ & \compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|dataOut\(1),
	datab => \compMod|Equal1~1_combout\,
	datac => \compMod|Equal1~0_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|data2~2_combout\);

-- Location: FF_X66_Y26_N3
\compMod|data2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2~2_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(1));

-- Location: LCCOMB_X62_Y26_N18
\compMod|data1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data1[1]~feeder_combout\ = \compMod|mr64|dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compMod|mr64|dataOut\(1),
	combout => \compMod|data1[1]~feeder_combout\);

-- Location: FF_X62_Y26_N19
\compMod|data1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data1[1]~feeder_combout\,
	ena => \compMod|data1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data1\(1));

-- Location: LCCOMB_X64_Y26_N14
\compMod|mr64|ram~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~3_combout\ = (\arrowMod|mem6x6[3]~30_combout\) # ((\arrowMod|mem6x6[4]~21_combout\) # (\arrowMod|mem6x6[1]~24_combout\ $ (\arrowMod|mem6x6[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[4]~21_combout\,
	datad => \arrowMod|mem6x6[0]~18_combout\,
	combout => \compMod|mr64|ram~3_combout\);

-- Location: LCCOMB_X64_Y26_N8
\compMod|mr64|ram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~1_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[4]~21_combout\ & ((!\arrowMod|mem6x6[1]~24_combout\))) # (!\arrowMod|mem6x6[4]~21_combout\ & (!\arrowMod|mem6x6[0]~18_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & 
-- (\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[4]~21_combout\) # (!\arrowMod|mem6x6[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \compMod|mr64|ram~1_combout\);

-- Location: LCCOMB_X64_Y26_N16
\compMod|mr64|ram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~0_combout\ = (\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[4]~21_combout\))) # (!\arrowMod|mem6x6[1]~24_combout\ & (\arrowMod|mem6x6[3]~30_combout\ & !\arrowMod|mem6x6[4]~21_combout\)))) # 
-- (!\arrowMod|mem6x6[0]~18_combout\ & ((\arrowMod|mem6x6[1]~24_combout\ $ (\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \compMod|mr64|ram~0_combout\);

-- Location: LCCOMB_X64_Y26_N10
\compMod|mr64|ram~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~2_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[2]~27_combout\ & ((\compMod|mr64|ram~0_combout\))) # (!\arrowMod|mem6x6[2]~27_combout\ & (!\compMod|mr64|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \compMod|mr64|ram~1_combout\,
	datad => \compMod|mr64|ram~0_combout\,
	combout => \compMod|mr64|ram~2_combout\);

-- Location: LCCOMB_X64_Y26_N4
\compMod|mr64|ram~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~4_combout\ = (\compMod|mr64|ram~2_combout\) # ((\arrowMod|mem6x6[5]~14_combout\ & (!\arrowMod|mem6x6[2]~27_combout\ & !\compMod|mr64|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \compMod|mr64|ram~3_combout\,
	datad => \compMod|mr64|ram~2_combout\,
	combout => \compMod|mr64|ram~4_combout\);

-- Location: FF_X64_Y26_N5
\compMod|mr64|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|mr64|ram~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|mr64|dataOut\(0));

-- Location: FF_X62_Y26_N1
\compMod|data1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(0),
	sload => VCC,
	ena => \compMod|data1[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data1\(0));

-- Location: LCCOMB_X66_Y26_N24
\compMod|data2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2~0_combout\ = (\compMod|mr64|dataOut\(0)) # ((\compMod|Equal1~1_combout\ & (\compMod|Equal1~0_combout\ & \compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|dataOut\(0),
	datab => \compMod|Equal1~1_combout\,
	datac => \compMod|Equal1~0_combout\,
	datad => \compMod|Equal1~2_combout\,
	combout => \compMod|data2~0_combout\);

-- Location: FF_X66_Y26_N25
\compMod|data2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2~0_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(0));

-- Location: LCCOMB_X62_Y26_N0
\compMod|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal2~0_combout\ = (\compMod|data2\(1) & (\compMod|data1\(1) & (\compMod|data1\(0) $ (!\compMod|data2\(0))))) # (!\compMod|data2\(1) & (!\compMod|data1\(1) & (\compMod|data1\(0) $ (!\compMod|data2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|data2\(1),
	datab => \compMod|data1\(1),
	datac => \compMod|data1\(0),
	datad => \compMod|data2\(0),
	combout => \compMod|Equal2~0_combout\);

-- Location: LCCOMB_X62_Y26_N6
\compMod|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal2~2_combout\ = (\compMod|Equal2~1_combout\ & (\compMod|Equal2~0_combout\ & (\compMod|data2\(4) $ (!\compMod|data1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|data2\(4),
	datab => \compMod|Equal2~1_combout\,
	datac => \compMod|data1\(4),
	datad => \compMod|Equal2~0_combout\,
	combout => \compMod|Equal2~2_combout\);

-- Location: LCCOMB_X62_Y26_N4
\compMod|foundPair~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|foundPair~feeder_combout\ = \compMod|Equal2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compMod|Equal2~2_combout\,
	combout => \compMod|foundPair~feeder_combout\);

-- Location: FF_X62_Y26_N5
\compMod|foundPair\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|foundPair~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|foundPair~q\);

-- Location: LCCOMB_X61_Y26_N0
\compMod|pairsFound[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[0]~33_combout\ = \compMod|pairsFound\(0) $ (((!\compMod|foundPair~q\ & \compMod|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|foundPair~q\,
	datac => \compMod|pairsFound\(0),
	datad => \compMod|Equal2~2_combout\,
	combout => \compMod|pairsFound[0]~33_combout\);

-- Location: FF_X61_Y26_N1
\compMod|pairsFound[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(0));

-- Location: LCCOMB_X61_Y26_N2
\compMod|pairsFound[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[1]~31_combout\ = (\compMod|pairsFound\(1) & (\compMod|pairsFound\(0) $ (VCC))) # (!\compMod|pairsFound\(1) & (\compMod|pairsFound\(0) & VCC))
-- \compMod|pairsFound[1]~32\ = CARRY((\compMod|pairsFound\(1) & \compMod|pairsFound\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(1),
	datab => \compMod|pairsFound\(0),
	datad => VCC,
	combout => \compMod|pairsFound[1]~31_combout\,
	cout => \compMod|pairsFound[1]~32\);

-- Location: LCCOMB_X62_Y26_N30
\compMod|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always1~0_combout\ = (!\compMod|foundPair~q\ & \compMod|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \compMod|foundPair~q\,
	datad => \compMod|Equal2~2_combout\,
	combout => \compMod|always1~0_combout\);

-- Location: FF_X61_Y26_N3
\compMod|pairsFound[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[1]~31_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(1));

-- Location: LCCOMB_X61_Y26_N4
\compMod|pairsFound[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[2]~34_combout\ = (\compMod|pairsFound\(2) & (!\compMod|pairsFound[1]~32\)) # (!\compMod|pairsFound\(2) & ((\compMod|pairsFound[1]~32\) # (GND)))
-- \compMod|pairsFound[2]~35\ = CARRY((!\compMod|pairsFound[1]~32\) # (!\compMod|pairsFound\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(2),
	datad => VCC,
	cin => \compMod|pairsFound[1]~32\,
	combout => \compMod|pairsFound[2]~34_combout\,
	cout => \compMod|pairsFound[2]~35\);

-- Location: FF_X61_Y26_N5
\compMod|pairsFound[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[2]~34_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(2));

-- Location: LCCOMB_X61_Y26_N6
\compMod|pairsFound[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[3]~36_combout\ = (\compMod|pairsFound\(3) & (\compMod|pairsFound[2]~35\ $ (GND))) # (!\compMod|pairsFound\(3) & (!\compMod|pairsFound[2]~35\ & VCC))
-- \compMod|pairsFound[3]~37\ = CARRY((\compMod|pairsFound\(3) & !\compMod|pairsFound[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(3),
	datad => VCC,
	cin => \compMod|pairsFound[2]~35\,
	combout => \compMod|pairsFound[3]~36_combout\,
	cout => \compMod|pairsFound[3]~37\);

-- Location: FF_X61_Y26_N7
\compMod|pairsFound[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[3]~36_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(3));

-- Location: LCCOMB_X61_Y26_N8
\compMod|pairsFound[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[4]~38_combout\ = (\compMod|pairsFound\(4) & (!\compMod|pairsFound[3]~37\)) # (!\compMod|pairsFound\(4) & ((\compMod|pairsFound[3]~37\) # (GND)))
-- \compMod|pairsFound[4]~39\ = CARRY((!\compMod|pairsFound[3]~37\) # (!\compMod|pairsFound\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(4),
	datad => VCC,
	cin => \compMod|pairsFound[3]~37\,
	combout => \compMod|pairsFound[4]~38_combout\,
	cout => \compMod|pairsFound[4]~39\);

-- Location: FF_X61_Y26_N9
\compMod|pairsFound[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[4]~38_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(4));

-- Location: LCCOMB_X61_Y26_N10
\compMod|pairsFound[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[5]~40_combout\ = (\compMod|pairsFound\(5) & (\compMod|pairsFound[4]~39\ $ (GND))) # (!\compMod|pairsFound\(5) & (!\compMod|pairsFound[4]~39\ & VCC))
-- \compMod|pairsFound[5]~41\ = CARRY((\compMod|pairsFound\(5) & !\compMod|pairsFound[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(5),
	datad => VCC,
	cin => \compMod|pairsFound[4]~39\,
	combout => \compMod|pairsFound[5]~40_combout\,
	cout => \compMod|pairsFound[5]~41\);

-- Location: FF_X61_Y26_N11
\compMod|pairsFound[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[5]~40_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(5));

-- Location: LCCOMB_X61_Y26_N12
\compMod|pairsFound[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[6]~42_combout\ = (\compMod|pairsFound\(6) & (!\compMod|pairsFound[5]~41\)) # (!\compMod|pairsFound\(6) & ((\compMod|pairsFound[5]~41\) # (GND)))
-- \compMod|pairsFound[6]~43\ = CARRY((!\compMod|pairsFound[5]~41\) # (!\compMod|pairsFound\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(6),
	datad => VCC,
	cin => \compMod|pairsFound[5]~41\,
	combout => \compMod|pairsFound[6]~42_combout\,
	cout => \compMod|pairsFound[6]~43\);

-- Location: FF_X61_Y26_N13
\compMod|pairsFound[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[6]~42_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(6));

-- Location: LCCOMB_X61_Y26_N14
\compMod|pairsFound[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[7]~44_combout\ = (\compMod|pairsFound\(7) & (\compMod|pairsFound[6]~43\ $ (GND))) # (!\compMod|pairsFound\(7) & (!\compMod|pairsFound[6]~43\ & VCC))
-- \compMod|pairsFound[7]~45\ = CARRY((\compMod|pairsFound\(7) & !\compMod|pairsFound[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(7),
	datad => VCC,
	cin => \compMod|pairsFound[6]~43\,
	combout => \compMod|pairsFound[7]~44_combout\,
	cout => \compMod|pairsFound[7]~45\);

-- Location: FF_X61_Y26_N15
\compMod|pairsFound[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[7]~44_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(7));

-- Location: LCCOMB_X61_Y26_N16
\compMod|pairsFound[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[8]~46_combout\ = (\compMod|pairsFound\(8) & (!\compMod|pairsFound[7]~45\)) # (!\compMod|pairsFound\(8) & ((\compMod|pairsFound[7]~45\) # (GND)))
-- \compMod|pairsFound[8]~47\ = CARRY((!\compMod|pairsFound[7]~45\) # (!\compMod|pairsFound\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(8),
	datad => VCC,
	cin => \compMod|pairsFound[7]~45\,
	combout => \compMod|pairsFound[8]~46_combout\,
	cout => \compMod|pairsFound[8]~47\);

-- Location: FF_X61_Y26_N17
\compMod|pairsFound[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[8]~46_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(8));

-- Location: LCCOMB_X61_Y26_N18
\compMod|pairsFound[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[9]~48_combout\ = (\compMod|pairsFound\(9) & (\compMod|pairsFound[8]~47\ $ (GND))) # (!\compMod|pairsFound\(9) & (!\compMod|pairsFound[8]~47\ & VCC))
-- \compMod|pairsFound[9]~49\ = CARRY((\compMod|pairsFound\(9) & !\compMod|pairsFound[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(9),
	datad => VCC,
	cin => \compMod|pairsFound[8]~47\,
	combout => \compMod|pairsFound[9]~48_combout\,
	cout => \compMod|pairsFound[9]~49\);

-- Location: FF_X61_Y26_N19
\compMod|pairsFound[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[9]~48_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(9));

-- Location: LCCOMB_X61_Y26_N20
\compMod|pairsFound[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[10]~50_combout\ = (\compMod|pairsFound\(10) & (!\compMod|pairsFound[9]~49\)) # (!\compMod|pairsFound\(10) & ((\compMod|pairsFound[9]~49\) # (GND)))
-- \compMod|pairsFound[10]~51\ = CARRY((!\compMod|pairsFound[9]~49\) # (!\compMod|pairsFound\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(10),
	datad => VCC,
	cin => \compMod|pairsFound[9]~49\,
	combout => \compMod|pairsFound[10]~50_combout\,
	cout => \compMod|pairsFound[10]~51\);

-- Location: FF_X61_Y26_N21
\compMod|pairsFound[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[10]~50_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(10));

-- Location: LCCOMB_X61_Y26_N22
\compMod|pairsFound[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[11]~52_combout\ = (\compMod|pairsFound\(11) & (\compMod|pairsFound[10]~51\ $ (GND))) # (!\compMod|pairsFound\(11) & (!\compMod|pairsFound[10]~51\ & VCC))
-- \compMod|pairsFound[11]~53\ = CARRY((\compMod|pairsFound\(11) & !\compMod|pairsFound[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(11),
	datad => VCC,
	cin => \compMod|pairsFound[10]~51\,
	combout => \compMod|pairsFound[11]~52_combout\,
	cout => \compMod|pairsFound[11]~53\);

-- Location: FF_X61_Y26_N23
\compMod|pairsFound[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[11]~52_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(11));

-- Location: LCCOMB_X61_Y26_N24
\compMod|pairsFound[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[12]~54_combout\ = (\compMod|pairsFound\(12) & (!\compMod|pairsFound[11]~53\)) # (!\compMod|pairsFound\(12) & ((\compMod|pairsFound[11]~53\) # (GND)))
-- \compMod|pairsFound[12]~55\ = CARRY((!\compMod|pairsFound[11]~53\) # (!\compMod|pairsFound\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(12),
	datad => VCC,
	cin => \compMod|pairsFound[11]~53\,
	combout => \compMod|pairsFound[12]~54_combout\,
	cout => \compMod|pairsFound[12]~55\);

-- Location: FF_X61_Y26_N25
\compMod|pairsFound[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[12]~54_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(12));

-- Location: LCCOMB_X61_Y26_N26
\compMod|pairsFound[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[13]~56_combout\ = (\compMod|pairsFound\(13) & (\compMod|pairsFound[12]~55\ $ (GND))) # (!\compMod|pairsFound\(13) & (!\compMod|pairsFound[12]~55\ & VCC))
-- \compMod|pairsFound[13]~57\ = CARRY((\compMod|pairsFound\(13) & !\compMod|pairsFound[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(13),
	datad => VCC,
	cin => \compMod|pairsFound[12]~55\,
	combout => \compMod|pairsFound[13]~56_combout\,
	cout => \compMod|pairsFound[13]~57\);

-- Location: FF_X61_Y26_N27
\compMod|pairsFound[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[13]~56_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(13));

-- Location: LCCOMB_X61_Y26_N28
\compMod|pairsFound[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[14]~58_combout\ = (\compMod|pairsFound\(14) & (!\compMod|pairsFound[13]~57\)) # (!\compMod|pairsFound\(14) & ((\compMod|pairsFound[13]~57\) # (GND)))
-- \compMod|pairsFound[14]~59\ = CARRY((!\compMod|pairsFound[13]~57\) # (!\compMod|pairsFound\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(14),
	datad => VCC,
	cin => \compMod|pairsFound[13]~57\,
	combout => \compMod|pairsFound[14]~58_combout\,
	cout => \compMod|pairsFound[14]~59\);

-- Location: FF_X61_Y26_N29
\compMod|pairsFound[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[14]~58_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(14));

-- Location: LCCOMB_X61_Y26_N30
\compMod|pairsFound[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[15]~60_combout\ = (\compMod|pairsFound\(15) & (\compMod|pairsFound[14]~59\ $ (GND))) # (!\compMod|pairsFound\(15) & (!\compMod|pairsFound[14]~59\ & VCC))
-- \compMod|pairsFound[15]~61\ = CARRY((\compMod|pairsFound\(15) & !\compMod|pairsFound[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(15),
	datad => VCC,
	cin => \compMod|pairsFound[14]~59\,
	combout => \compMod|pairsFound[15]~60_combout\,
	cout => \compMod|pairsFound[15]~61\);

-- Location: FF_X61_Y26_N31
\compMod|pairsFound[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[15]~60_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(15));

-- Location: LCCOMB_X61_Y25_N0
\compMod|pairsFound[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[16]~62_combout\ = (\compMod|pairsFound\(16) & (!\compMod|pairsFound[15]~61\)) # (!\compMod|pairsFound\(16) & ((\compMod|pairsFound[15]~61\) # (GND)))
-- \compMod|pairsFound[16]~63\ = CARRY((!\compMod|pairsFound[15]~61\) # (!\compMod|pairsFound\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(16),
	datad => VCC,
	cin => \compMod|pairsFound[15]~61\,
	combout => \compMod|pairsFound[16]~62_combout\,
	cout => \compMod|pairsFound[16]~63\);

-- Location: FF_X61_Y25_N1
\compMod|pairsFound[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[16]~62_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(16));

-- Location: LCCOMB_X61_Y25_N2
\compMod|pairsFound[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[17]~64_combout\ = (\compMod|pairsFound\(17) & (\compMod|pairsFound[16]~63\ $ (GND))) # (!\compMod|pairsFound\(17) & (!\compMod|pairsFound[16]~63\ & VCC))
-- \compMod|pairsFound[17]~65\ = CARRY((\compMod|pairsFound\(17) & !\compMod|pairsFound[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(17),
	datad => VCC,
	cin => \compMod|pairsFound[16]~63\,
	combout => \compMod|pairsFound[17]~64_combout\,
	cout => \compMod|pairsFound[17]~65\);

-- Location: FF_X61_Y25_N3
\compMod|pairsFound[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[17]~64_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(17));

-- Location: LCCOMB_X61_Y25_N4
\compMod|pairsFound[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[18]~66_combout\ = (\compMod|pairsFound\(18) & (!\compMod|pairsFound[17]~65\)) # (!\compMod|pairsFound\(18) & ((\compMod|pairsFound[17]~65\) # (GND)))
-- \compMod|pairsFound[18]~67\ = CARRY((!\compMod|pairsFound[17]~65\) # (!\compMod|pairsFound\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(18),
	datad => VCC,
	cin => \compMod|pairsFound[17]~65\,
	combout => \compMod|pairsFound[18]~66_combout\,
	cout => \compMod|pairsFound[18]~67\);

-- Location: FF_X61_Y25_N5
\compMod|pairsFound[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[18]~66_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(18));

-- Location: LCCOMB_X61_Y25_N6
\compMod|pairsFound[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[19]~68_combout\ = (\compMod|pairsFound\(19) & (\compMod|pairsFound[18]~67\ $ (GND))) # (!\compMod|pairsFound\(19) & (!\compMod|pairsFound[18]~67\ & VCC))
-- \compMod|pairsFound[19]~69\ = CARRY((\compMod|pairsFound\(19) & !\compMod|pairsFound[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(19),
	datad => VCC,
	cin => \compMod|pairsFound[18]~67\,
	combout => \compMod|pairsFound[19]~68_combout\,
	cout => \compMod|pairsFound[19]~69\);

-- Location: FF_X61_Y25_N7
\compMod|pairsFound[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[19]~68_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(19));

-- Location: LCCOMB_X61_Y25_N8
\compMod|pairsFound[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[20]~70_combout\ = (\compMod|pairsFound\(20) & (!\compMod|pairsFound[19]~69\)) # (!\compMod|pairsFound\(20) & ((\compMod|pairsFound[19]~69\) # (GND)))
-- \compMod|pairsFound[20]~71\ = CARRY((!\compMod|pairsFound[19]~69\) # (!\compMod|pairsFound\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(20),
	datad => VCC,
	cin => \compMod|pairsFound[19]~69\,
	combout => \compMod|pairsFound[20]~70_combout\,
	cout => \compMod|pairsFound[20]~71\);

-- Location: FF_X61_Y25_N9
\compMod|pairsFound[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[20]~70_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(20));

-- Location: LCCOMB_X61_Y25_N10
\compMod|pairsFound[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[21]~72_combout\ = (\compMod|pairsFound\(21) & (\compMod|pairsFound[20]~71\ $ (GND))) # (!\compMod|pairsFound\(21) & (!\compMod|pairsFound[20]~71\ & VCC))
-- \compMod|pairsFound[21]~73\ = CARRY((\compMod|pairsFound\(21) & !\compMod|pairsFound[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(21),
	datad => VCC,
	cin => \compMod|pairsFound[20]~71\,
	combout => \compMod|pairsFound[21]~72_combout\,
	cout => \compMod|pairsFound[21]~73\);

-- Location: FF_X61_Y25_N11
\compMod|pairsFound[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[21]~72_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(21));

-- Location: LCCOMB_X61_Y25_N12
\compMod|pairsFound[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[22]~74_combout\ = (\compMod|pairsFound\(22) & (!\compMod|pairsFound[21]~73\)) # (!\compMod|pairsFound\(22) & ((\compMod|pairsFound[21]~73\) # (GND)))
-- \compMod|pairsFound[22]~75\ = CARRY((!\compMod|pairsFound[21]~73\) # (!\compMod|pairsFound\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(22),
	datad => VCC,
	cin => \compMod|pairsFound[21]~73\,
	combout => \compMod|pairsFound[22]~74_combout\,
	cout => \compMod|pairsFound[22]~75\);

-- Location: FF_X61_Y25_N13
\compMod|pairsFound[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[22]~74_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(22));

-- Location: LCCOMB_X61_Y25_N14
\compMod|pairsFound[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[23]~76_combout\ = (\compMod|pairsFound\(23) & (\compMod|pairsFound[22]~75\ $ (GND))) # (!\compMod|pairsFound\(23) & (!\compMod|pairsFound[22]~75\ & VCC))
-- \compMod|pairsFound[23]~77\ = CARRY((\compMod|pairsFound\(23) & !\compMod|pairsFound[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(23),
	datad => VCC,
	cin => \compMod|pairsFound[22]~75\,
	combout => \compMod|pairsFound[23]~76_combout\,
	cout => \compMod|pairsFound[23]~77\);

-- Location: FF_X61_Y25_N15
\compMod|pairsFound[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[23]~76_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(23));

-- Location: LCCOMB_X61_Y25_N16
\compMod|pairsFound[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[24]~78_combout\ = (\compMod|pairsFound\(24) & (!\compMod|pairsFound[23]~77\)) # (!\compMod|pairsFound\(24) & ((\compMod|pairsFound[23]~77\) # (GND)))
-- \compMod|pairsFound[24]~79\ = CARRY((!\compMod|pairsFound[23]~77\) # (!\compMod|pairsFound\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(24),
	datad => VCC,
	cin => \compMod|pairsFound[23]~77\,
	combout => \compMod|pairsFound[24]~78_combout\,
	cout => \compMod|pairsFound[24]~79\);

-- Location: FF_X61_Y25_N17
\compMod|pairsFound[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[24]~78_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(24));

-- Location: LCCOMB_X61_Y25_N18
\compMod|pairsFound[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[25]~80_combout\ = (\compMod|pairsFound\(25) & (\compMod|pairsFound[24]~79\ $ (GND))) # (!\compMod|pairsFound\(25) & (!\compMod|pairsFound[24]~79\ & VCC))
-- \compMod|pairsFound[25]~81\ = CARRY((\compMod|pairsFound\(25) & !\compMod|pairsFound[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(25),
	datad => VCC,
	cin => \compMod|pairsFound[24]~79\,
	combout => \compMod|pairsFound[25]~80_combout\,
	cout => \compMod|pairsFound[25]~81\);

-- Location: FF_X61_Y25_N19
\compMod|pairsFound[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[25]~80_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(25));

-- Location: LCCOMB_X61_Y25_N20
\compMod|pairsFound[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[26]~82_combout\ = (\compMod|pairsFound\(26) & (!\compMod|pairsFound[25]~81\)) # (!\compMod|pairsFound\(26) & ((\compMod|pairsFound[25]~81\) # (GND)))
-- \compMod|pairsFound[26]~83\ = CARRY((!\compMod|pairsFound[25]~81\) # (!\compMod|pairsFound\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(26),
	datad => VCC,
	cin => \compMod|pairsFound[25]~81\,
	combout => \compMod|pairsFound[26]~82_combout\,
	cout => \compMod|pairsFound[26]~83\);

-- Location: FF_X61_Y25_N21
\compMod|pairsFound[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[26]~82_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(26));

-- Location: LCCOMB_X61_Y25_N22
\compMod|pairsFound[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[27]~84_combout\ = (\compMod|pairsFound\(27) & (\compMod|pairsFound[26]~83\ $ (GND))) # (!\compMod|pairsFound\(27) & (!\compMod|pairsFound[26]~83\ & VCC))
-- \compMod|pairsFound[27]~85\ = CARRY((\compMod|pairsFound\(27) & !\compMod|pairsFound[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(27),
	datad => VCC,
	cin => \compMod|pairsFound[26]~83\,
	combout => \compMod|pairsFound[27]~84_combout\,
	cout => \compMod|pairsFound[27]~85\);

-- Location: FF_X61_Y25_N23
\compMod|pairsFound[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[27]~84_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(27));

-- Location: LCCOMB_X60_Y25_N12
\compMod|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~7_combout\ = (!\compMod|pairsFound\(27) & (!\compMod|pairsFound\(25) & (!\compMod|pairsFound\(26) & !\compMod|pairsFound\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(27),
	datab => \compMod|pairsFound\(25),
	datac => \compMod|pairsFound\(26),
	datad => \compMod|pairsFound\(24),
	combout => \compMod|Equal3~7_combout\);

-- Location: LCCOMB_X60_Y25_N16
\compMod|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~5_combout\ = (!\compMod|pairsFound\(17) & (!\compMod|pairsFound\(19) & (!\compMod|pairsFound\(16) & !\compMod|pairsFound\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(17),
	datab => \compMod|pairsFound\(19),
	datac => \compMod|pairsFound\(16),
	datad => \compMod|pairsFound\(18),
	combout => \compMod|Equal3~5_combout\);

-- Location: LCCOMB_X61_Y25_N24
\compMod|pairsFound[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[28]~86_combout\ = (\compMod|pairsFound\(28) & (!\compMod|pairsFound[27]~85\)) # (!\compMod|pairsFound\(28) & ((\compMod|pairsFound[27]~85\) # (GND)))
-- \compMod|pairsFound[28]~87\ = CARRY((!\compMod|pairsFound[27]~85\) # (!\compMod|pairsFound\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(28),
	datad => VCC,
	cin => \compMod|pairsFound[27]~85\,
	combout => \compMod|pairsFound[28]~86_combout\,
	cout => \compMod|pairsFound[28]~87\);

-- Location: FF_X61_Y25_N25
\compMod|pairsFound[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[28]~86_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(28));

-- Location: LCCOMB_X61_Y25_N26
\compMod|pairsFound[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[29]~88_combout\ = (\compMod|pairsFound\(29) & (\compMod|pairsFound[28]~87\ $ (GND))) # (!\compMod|pairsFound\(29) & (!\compMod|pairsFound[28]~87\ & VCC))
-- \compMod|pairsFound[29]~89\ = CARRY((\compMod|pairsFound\(29) & !\compMod|pairsFound[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(29),
	datad => VCC,
	cin => \compMod|pairsFound[28]~87\,
	combout => \compMod|pairsFound[29]~88_combout\,
	cout => \compMod|pairsFound[29]~89\);

-- Location: FF_X61_Y25_N27
\compMod|pairsFound[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[29]~88_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(29));

-- Location: LCCOMB_X61_Y25_N28
\compMod|pairsFound[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[30]~90_combout\ = (\compMod|pairsFound\(30) & (!\compMod|pairsFound[29]~89\)) # (!\compMod|pairsFound\(30) & ((\compMod|pairsFound[29]~89\) # (GND)))
-- \compMod|pairsFound[30]~91\ = CARRY((!\compMod|pairsFound[29]~89\) # (!\compMod|pairsFound\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \compMod|pairsFound\(30),
	datad => VCC,
	cin => \compMod|pairsFound[29]~89\,
	combout => \compMod|pairsFound[30]~90_combout\,
	cout => \compMod|pairsFound[30]~91\);

-- Location: FF_X61_Y25_N29
\compMod|pairsFound[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[30]~90_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(30));

-- Location: LCCOMB_X61_Y25_N30
\compMod|pairsFound[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[31]~92_combout\ = \compMod|pairsFound\(31) $ (!\compMod|pairsFound[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(31),
	cin => \compMod|pairsFound[30]~91\,
	combout => \compMod|pairsFound[31]~92_combout\);

-- Location: FF_X61_Y25_N31
\compMod|pairsFound[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[31]~92_combout\,
	ena => \compMod|always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(31));

-- Location: LCCOMB_X60_Y25_N22
\compMod|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~8_combout\ = (!\compMod|pairsFound\(29) & (!\compMod|pairsFound\(30) & (!\compMod|pairsFound\(31) & !\compMod|pairsFound\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(29),
	datab => \compMod|pairsFound\(30),
	datac => \compMod|pairsFound\(31),
	datad => \compMod|pairsFound\(28),
	combout => \compMod|Equal3~8_combout\);

-- Location: LCCOMB_X60_Y25_N2
\compMod|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~6_combout\ = (!\compMod|pairsFound\(23) & (!\compMod|pairsFound\(21) & (!\compMod|pairsFound\(20) & !\compMod|pairsFound\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(23),
	datab => \compMod|pairsFound\(21),
	datac => \compMod|pairsFound\(20),
	datad => \compMod|pairsFound\(22),
	combout => \compMod|Equal3~6_combout\);

-- Location: LCCOMB_X60_Y25_N0
\compMod|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~9_combout\ = (\compMod|Equal3~7_combout\ & (\compMod|Equal3~5_combout\ & (\compMod|Equal3~8_combout\ & \compMod|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal3~7_combout\,
	datab => \compMod|Equal3~5_combout\,
	datac => \compMod|Equal3~8_combout\,
	datad => \compMod|Equal3~6_combout\,
	combout => \compMod|Equal3~9_combout\);

-- Location: LCCOMB_X62_Y26_N12
\compMod|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~0_combout\ = (!\compMod|pairsFound\(0) & (!\compMod|pairsFound\(3) & (!\compMod|pairsFound\(2) & \compMod|pairsFound\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(0),
	datab => \compMod|pairsFound\(3),
	datac => \compMod|pairsFound\(2),
	datad => \compMod|pairsFound\(1),
	combout => \compMod|Equal3~0_combout\);

-- Location: LCCOMB_X62_Y26_N20
\compMod|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~2_combout\ = (!\compMod|pairsFound\(11) & (!\compMod|pairsFound\(10) & (!\compMod|pairsFound\(8) & !\compMod|pairsFound\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(11),
	datab => \compMod|pairsFound\(10),
	datac => \compMod|pairsFound\(8),
	datad => \compMod|pairsFound\(9),
	combout => \compMod|Equal3~2_combout\);

-- Location: LCCOMB_X62_Y26_N22
\compMod|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~3_combout\ = (!\compMod|pairsFound\(15) & (!\compMod|pairsFound\(14) & (!\compMod|pairsFound\(13) & !\compMod|pairsFound\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(15),
	datab => \compMod|pairsFound\(14),
	datac => \compMod|pairsFound\(13),
	datad => \compMod|pairsFound\(12),
	combout => \compMod|Equal3~3_combout\);

-- Location: LCCOMB_X62_Y26_N10
\compMod|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~1_combout\ = (!\compMod|pairsFound\(7) & (!\compMod|pairsFound\(5) & (!\compMod|pairsFound\(6) & \compMod|pairsFound\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(7),
	datab => \compMod|pairsFound\(5),
	datac => \compMod|pairsFound\(6),
	datad => \compMod|pairsFound\(4),
	combout => \compMod|Equal3~1_combout\);

-- Location: LCCOMB_X62_Y26_N24
\compMod|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~4_combout\ = (\compMod|Equal3~0_combout\ & (\compMod|Equal3~2_combout\ & (\compMod|Equal3~3_combout\ & \compMod|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal3~0_combout\,
	datab => \compMod|Equal3~2_combout\,
	datac => \compMod|Equal3~3_combout\,
	datad => \compMod|Equal3~1_combout\,
	combout => \compMod|Equal3~4_combout\);

-- Location: LCCOMB_X63_Y26_N8
\compMod|GO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|GO~0_combout\ = (\compMod|GO~q\) # ((\compMod|Equal3~9_combout\ & \compMod|Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal3~9_combout\,
	datac => \compMod|GO~q\,
	datad => \compMod|Equal3~4_combout\,
	combout => \compMod|GO~0_combout\);

-- Location: FF_X63_Y26_N9
\compMod|GO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|GO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|GO~q\);

-- Location: LCCOMB_X63_Y26_N28
\fsmMod|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector3~0_combout\ = (\syncMod|rise_a~combout\ & ((\fsmMod|presentState.gameover~q\) # ((\compMod|GO~q\ & \fsmMod|presentState.rungame~q\)))) # (!\syncMod|rise_a~combout\ & (\compMod|GO~q\ & ((\fsmMod|presentState.rungame~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|GO~q\,
	datac => \fsmMod|presentState.gameover~q\,
	datad => \fsmMod|presentState.rungame~q\,
	combout => \fsmMod|Selector3~0_combout\);

-- Location: FF_X63_Y26_N29
\fsmMod|presentState.gameover\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.gameover~q\);

-- Location: LCCOMB_X63_Y26_N4
\fsmMod|presentState.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|presentState.idle~0_combout\ = (\syncMod|sync_a~q\ & ((\syncMod|delay_a~q\ & (!\fsmMod|presentState.gameover~q\)) # (!\syncMod|delay_a~q\ & ((\fsmMod|presentState.idle~q\))))) # (!\syncMod|sync_a~q\ & (!\fsmMod|presentState.gameover~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datab => \fsmMod|presentState.gameover~q\,
	datac => \fsmMod|presentState.idle~q\,
	datad => \syncMod|delay_a~q\,
	combout => \fsmMod|presentState.idle~0_combout\);

-- Location: FF_X63_Y26_N5
\fsmMod|presentState.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|presentState.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.idle~q\);

-- Location: LCCOMB_X63_Y26_N26
\fsmMod|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector1~0_combout\ = (\syncMod|sync_a~q\ & ((\syncMod|delay_a~q\ & (!\fsmMod|presentState.idle~q\)) # (!\syncMod|delay_a~q\ & ((\fsmMod|presentState.menu~q\))))) # (!\syncMod|sync_a~q\ & (!\fsmMod|presentState.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datab => \fsmMod|presentState.idle~q\,
	datac => \fsmMod|presentState.menu~q\,
	datad => \syncMod|delay_a~q\,
	combout => \fsmMod|Selector1~0_combout\);

-- Location: FF_X63_Y26_N27
\fsmMod|presentState.menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.menu~q\);

-- Location: LCCOMB_X63_Y26_N16
\fsmMod|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector2~0_combout\ = (\fsmMod|presentState.menu~q\ & (((!\compMod|GO~q\ & \fsmMod|presentState.rungame~q\)) # (!\syncMod|rise_a~combout\))) # (!\fsmMod|presentState.menu~q\ & (!\compMod|GO~q\ & (\fsmMod|presentState.rungame~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.menu~q\,
	datab => \compMod|GO~q\,
	datac => \fsmMod|presentState.rungame~q\,
	datad => \syncMod|rise_a~combout\,
	combout => \fsmMod|Selector2~0_combout\);

-- Location: FF_X63_Y26_N17
\fsmMod|presentState.rungame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.rungame~q\);

-- Location: LCCOMB_X64_Y25_N16
\arrowMod|mem6x6[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~19_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|mem6x6[5]~0_combout\)) # (!\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[5]~0_combout\ & (\arrowMod|Add2~8_combout\)) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- ((\arrowMod|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|Add2~8_combout\,
	datad => \arrowMod|Add0~6_combout\,
	combout => \arrowMod|mem6x6[4]~19_combout\);

-- Location: LCCOMB_X64_Y25_N14
\arrowMod|mem6x6[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~20_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[4]~19_combout\ & ((\arrowMod|Add3~8_combout\))) # (!\arrowMod|mem6x6[4]~19_combout\ & (\arrowMod|Add1~6_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (((\arrowMod|mem6x6[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|Add1~6_combout\,
	datac => \arrowMod|Add3~8_combout\,
	datad => \arrowMod|mem6x6[4]~19_combout\,
	combout => \arrowMod|mem6x6[4]~20_combout\);

-- Location: LCCOMB_X65_Y25_N30
\arrowMod|mem6x6[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~21_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|currentMem\(4))) # (!\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|mem6x6[4]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|mem6x6[5]~13_combout\,
	datad => \arrowMod|mem6x6[4]~20_combout\,
	combout => \arrowMod|mem6x6[4]~21_combout\);

-- Location: LCCOMB_X64_Y26_N22
\segMod1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~1_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & (((!\arrowMod|mem6x6[4]~21_combout\ & \arrowMod|mem6x6[2]~27_combout\)) # (!\arrowMod|mem6x6[1]~24_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[1]~24_combout\ $ 
-- (((!\arrowMod|mem6x6[4]~21_combout\ & \arrowMod|mem6x6[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \arrowMod|mem6x6[3]~30_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \segMod1|WideOr6~1_combout\);

-- Location: LCCOMB_X64_Y26_N0
\segMod1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~0_combout\ = (\arrowMod|mem6x6[4]~21_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ $ (\arrowMod|mem6x6[1]~24_combout\)) # (!\arrowMod|mem6x6[2]~27_combout\))) # (!\arrowMod|mem6x6[4]~21_combout\ & ((\arrowMod|mem6x6[2]~27_combout\) # 
-- (\arrowMod|mem6x6[3]~30_combout\ $ (\arrowMod|mem6x6[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \arrowMod|mem6x6[3]~30_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \segMod1|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y26_N24
\segMod1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~2_combout\ = (\arrowMod|mem6x6[5]~14_combout\) # ((\arrowMod|mem6x6[0]~18_combout\ & (!\segMod1|WideOr6~1_combout\)) # (!\arrowMod|mem6x6[0]~18_combout\ & ((!\segMod1|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segMod1|WideOr6~1_combout\,
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr6~0_combout\,
	combout => \segMod1|WideOr6~2_combout\);

-- Location: LCCOMB_X64_Y26_N12
\segMod1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~1_combout\ = (\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[2]~27_combout\ & (\arrowMod|mem6x6[3]~30_combout\ & !\arrowMod|mem6x6[4]~21_combout\)) # (!\arrowMod|mem6x6[2]~27_combout\ & (!\arrowMod|mem6x6[3]~30_combout\ & 
-- \arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[1]~24_combout\ & (\arrowMod|mem6x6[3]~30_combout\ $ (((\arrowMod|mem6x6[2]~27_combout\ & !\arrowMod|mem6x6[4]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[2]~27_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[3]~30_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr5~1_combout\);

-- Location: LCCOMB_X64_Y26_N2
\segMod1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~0_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[4]~21_combout\ & (!\arrowMod|mem6x6[1]~24_combout\ & \arrowMod|mem6x6[2]~27_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[1]~24_combout\ & 
-- (\arrowMod|mem6x6[4]~21_combout\ $ (!\arrowMod|mem6x6[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \arrowMod|mem6x6[3]~30_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \segMod1|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y26_N6
\segMod1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~2_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[0]~18_combout\ & (!\segMod1|WideOr5~1_combout\)) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\segMod1|WideOr5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segMod1|WideOr5~1_combout\,
	datab => \arrowMod|mem6x6[5]~14_combout\,
	datac => \arrowMod|mem6x6[0]~18_combout\,
	datad => \segMod1|WideOr5~0_combout\,
	combout => \segMod1|WideOr5~2_combout\);

-- Location: LCCOMB_X64_Y26_N28
\segMod1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr4~0_combout\ = (\arrowMod|mem6x6[4]~21_combout\ & (!\arrowMod|mem6x6[1]~24_combout\ & (!\arrowMod|mem6x6[2]~27_combout\ & \arrowMod|mem6x6[3]~30_combout\))) # (!\arrowMod|mem6x6[4]~21_combout\ & (\arrowMod|mem6x6[2]~27_combout\ & 
-- (\arrowMod|mem6x6[1]~24_combout\ $ (!\arrowMod|mem6x6[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[3]~30_combout\,
	combout => \segMod1|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y26_N30
\segMod1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr4~1_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[0]~18_combout\) # (\segMod1|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr4~0_combout\,
	combout => \segMod1|WideOr4~1_combout\);

-- Location: LCCOMB_X64_Y26_N20
\segMod1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr3~0_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[0]~18_combout\ & (!\segMod1|WideOr6~1_combout\)) # (!\arrowMod|mem6x6[0]~18_combout\ & ((\segMod1|WideOr4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segMod1|WideOr6~1_combout\,
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr4~0_combout\,
	combout => \segMod1|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y26_N26
\segMod1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr2~0_combout\ = (!\arrowMod|mem6x6[0]~18_combout\ & (!\arrowMod|mem6x6[5]~14_combout\ & \segMod1|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|mem6x6[0]~18_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr5~0_combout\,
	combout => \segMod1|WideOr2~0_combout\);

-- Location: LCCOMB_X66_Y25_N16
\segMod1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr1~0_combout\ = (\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[0]~18_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[4]~21_combout\) # (!\arrowMod|mem6x6[0]~18_combout\))))) # 
-- (!\arrowMod|mem6x6[1]~24_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[4]~21_combout\ & !\arrowMod|mem6x6[0]~18_combout\)) # (!\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[0]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[3]~30_combout\,
	datad => \arrowMod|mem6x6[0]~18_combout\,
	combout => \segMod1|WideOr1~0_combout\);

-- Location: LCCOMB_X66_Y25_N2
\segMod1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr1~1_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[4]~21_combout\ & (!\segMod1|WideOr1~0_combout\ & !\arrowMod|mem6x6[2]~27_combout\)) # (!\arrowMod|mem6x6[4]~21_combout\ & (\segMod1|WideOr1~0_combout\ & 
-- \arrowMod|mem6x6[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~21_combout\,
	datab => \segMod1|WideOr1~0_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[5]~14_combout\,
	combout => \segMod1|WideOr1~1_combout\);

-- Location: LCCOMB_X66_Y25_N24
\segMod1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~0_combout\ = (\arrowMod|mem6x6[2]~27_combout\ & (\arrowMod|mem6x6[0]~18_combout\ & (\arrowMod|mem6x6[3]~30_combout\ $ (!\arrowMod|mem6x6[1]~24_combout\)))) # (!\arrowMod|mem6x6[2]~27_combout\ & (\arrowMod|mem6x6[3]~30_combout\ & 
-- (!\arrowMod|mem6x6[1]~24_combout\ & !\arrowMod|mem6x6[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[0]~18_combout\,
	combout => \segMod1|WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y25_N30
\segMod1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~1_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[1]~24_combout\ & (\arrowMod|mem6x6[2]~27_combout\ $ (\arrowMod|mem6x6[0]~18_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[1]~24_combout\ & 
-- (\arrowMod|mem6x6[2]~27_combout\ $ (\arrowMod|mem6x6[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[0]~18_combout\,
	combout => \segMod1|WideOr0~1_combout\);

-- Location: LCCOMB_X66_Y25_N8
\segMod1|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~2_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|mem6x6[4]~21_combout\ & (\segMod1|WideOr0~0_combout\)) # (!\arrowMod|mem6x6[4]~21_combout\ & ((\segMod1|WideOr0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \segMod1|WideOr0~0_combout\,
	datac => \segMod1|WideOr0~1_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr0~2_combout\);

-- Location: LCCOMB_X64_Y24_N16
\segMod1|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr11~0_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & (\arrowMod|mem6x6[4]~21_combout\ & ((\arrowMod|mem6x6[3]~30_combout\) # (\arrowMod|mem6x6[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[3]~30_combout\,
	datac => \arrowMod|mem6x6[2]~27_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr11~0_combout\);

-- Location: LCCOMB_X64_Y24_N22
\segMod1|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr10~0_combout\ = (\arrowMod|mem6x6[4]~21_combout\) # ((\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[2]~27_combout\) # (\arrowMod|mem6x6[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr10~0_combout\);

-- Location: LCCOMB_X64_Y24_N20
\segMod1|WideOr10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr10~1_combout\ = (\segMod1|WideOr10~0_combout\ & !\arrowMod|mem6x6[5]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segMod1|WideOr10~0_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	combout => \segMod1|WideOr10~1_combout\);

-- Location: LCCOMB_X64_Y24_N26
\segMod1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr9~0_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & ((\arrowMod|mem6x6[2]~27_combout\ & ((\arrowMod|mem6x6[1]~24_combout\) # (!\arrowMod|mem6x6[4]~21_combout\))) # (!\arrowMod|mem6x6[2]~27_combout\ & (\arrowMod|mem6x6[1]~24_combout\ & 
-- !\arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[2]~27_combout\ & ((\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr9~0_combout\);

-- Location: LCCOMB_X64_Y24_N24
\segMod1|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr9~1_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & \segMod1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr9~0_combout\,
	combout => \segMod1|WideOr9~1_combout\);

-- Location: LCCOMB_X64_Y24_N30
\segMod1|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr7~0_combout\ = (\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[4]~21_combout\ & ((\arrowMod|mem6x6[2]~27_combout\) # (\arrowMod|mem6x6[1]~24_combout\)))) # (!\arrowMod|mem6x6[3]~30_combout\ & (!\arrowMod|mem6x6[2]~27_combout\ & 
-- ((\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr7~0_combout\);

-- Location: LCCOMB_X64_Y24_N4
\segMod1|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr7~1_combout\ = (\segMod1|WideOr7~0_combout\ & !\arrowMod|mem6x6[5]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \segMod1|WideOr7~0_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	combout => \segMod1|WideOr7~1_combout\);

-- Location: LCCOMB_X64_Y24_N2
\segMod1|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr8~0_combout\ = (\arrowMod|mem6x6[4]~21_combout\ & ((\arrowMod|mem6x6[3]~30_combout\ & ((!\arrowMod|mem6x6[1]~24_combout\) # (!\arrowMod|mem6x6[2]~27_combout\))) # (!\arrowMod|mem6x6[3]~30_combout\ & (\arrowMod|mem6x6[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[3]~30_combout\,
	datab => \arrowMod|mem6x6[2]~27_combout\,
	datac => \arrowMod|mem6x6[1]~24_combout\,
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \segMod1|WideOr8~0_combout\);

-- Location: LCCOMB_X64_Y24_N28
\segMod1|WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr8~1_combout\ = (!\arrowMod|mem6x6[5]~14_combout\ & \segMod1|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \segMod1|WideOr8~0_combout\,
	combout => \segMod1|WideOr8~1_combout\);

ww_rgb(0) <= \rgb[0]~output_o\;

ww_rgb(1) <= \rgb[1]~output_o\;

ww_rgb(2) <= \rgb[2]~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg2(0) <= \seg2[0]~output_o\;

ww_seg2(1) <= \seg2[1]~output_o\;

ww_seg2(2) <= \seg2[2]~output_o\;

ww_seg2(3) <= \seg2[3]~output_o\;

ww_seg2(4) <= \seg2[4]~output_o\;

ww_seg2(5) <= \seg2[5]~output_o\;

ww_seg2(6) <= \seg2[6]~output_o\;

ww_seg3(0) <= \seg3[0]~output_o\;

ww_seg3(1) <= \seg3[1]~output_o\;

ww_seg3(2) <= \seg3[2]~output_o\;

ww_seg3(3) <= \seg3[3]~output_o\;

ww_seg3(4) <= \seg3[4]~output_o\;

ww_seg3(5) <= \seg3[5]~output_o\;

ww_seg3(6) <= \seg3[6]~output_o\;

ww_seg4(0) <= \seg4[0]~output_o\;

ww_seg4(1) <= \seg4[1]~output_o\;

ww_seg4(2) <= \seg4[2]~output_o\;

ww_seg4(3) <= \seg4[3]~output_o\;

ww_seg4(4) <= \seg4[4]~output_o\;

ww_seg4(5) <= \seg4[5]~output_o\;

ww_seg4(6) <= \seg4[6]~output_o\;

ww_seg5(0) <= \seg5[0]~output_o\;

ww_seg5(1) <= \seg5[1]~output_o\;

ww_seg5(2) <= \seg5[2]~output_o\;

ww_seg5(3) <= \seg5[3]~output_o\;

ww_seg5(4) <= \seg5[4]~output_o\;

ww_seg5(5) <= \seg5[5]~output_o\;

ww_seg5(6) <= \seg5[6]~output_o\;

ww_seg6(0) <= \seg6[0]~output_o\;

ww_seg6(1) <= \seg6[1]~output_o\;

ww_seg6(2) <= \seg6[2]~output_o\;

ww_seg6(3) <= \seg6[3]~output_o\;

ww_seg6(4) <= \seg6[4]~output_o\;

ww_seg6(5) <= \seg6[5]~output_o\;

ww_seg6(6) <= \seg6[6]~output_o\;
END structure;


