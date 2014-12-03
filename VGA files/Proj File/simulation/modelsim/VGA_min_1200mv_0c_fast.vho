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

-- DATE "12/02/2014 20:31:07"

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
	rgb : OUT std_logic_vector(2 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg2 : OUT std_logic_vector(6 DOWNTO 0);
	seg3 : OUT std_logic_vector(6 DOWNTO 0);
	seg4 : OUT std_logic_vector(6 DOWNTO 0);
	seg5 : OUT std_logic_vector(6 DOWNTO 0);
	seg6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END playGame;

-- Design Ports Information
-- rgb[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- keys[2]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \drawMod|Add0~0_combout\ : std_logic;
SIGNAL \drawMod|Add0~1\ : std_logic;
SIGNAL \drawMod|Add0~2_combout\ : std_logic;
SIGNAL \drawMod|Add0~3\ : std_logic;
SIGNAL \drawMod|Add0~4_combout\ : std_logic;
SIGNAL \drawMod|Add0~5\ : std_logic;
SIGNAL \drawMod|Add0~6_combout\ : std_logic;
SIGNAL \drawMod|Add0~7\ : std_logic;
SIGNAL \drawMod|Add0~8_combout\ : std_logic;
SIGNAL \drawMod|Add0~9\ : std_logic;
SIGNAL \drawMod|Add0~10_combout\ : std_logic;
SIGNAL \drawMod|Add0~11\ : std_logic;
SIGNAL \drawMod|Add0~12_combout\ : std_logic;
SIGNAL \drawMod|Add0~13\ : std_logic;
SIGNAL \drawMod|Add0~14_combout\ : std_logic;
SIGNAL \drawMod|Add0~15\ : std_logic;
SIGNAL \drawMod|Add0~16_combout\ : std_logic;
SIGNAL \drawMod|Add0~17\ : std_logic;
SIGNAL \drawMod|Add0~18_combout\ : std_logic;
SIGNAL \drawMod|Add0~19\ : std_logic;
SIGNAL \drawMod|Add0~20_combout\ : std_logic;
SIGNAL \drawMod|Add0~21\ : std_logic;
SIGNAL \drawMod|Add0~22_combout\ : std_logic;
SIGNAL \drawMod|Add0~23\ : std_logic;
SIGNAL \drawMod|Add0~24_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~3_combout\ : std_logic;
SIGNAL \drawMod|Equal0~1_combout\ : std_logic;
SIGNAL \drawMod|Equal0~2_combout\ : std_logic;
SIGNAL \drawMod|Add0~31\ : std_logic;
SIGNAL \drawMod|Add0~32_combout\ : std_logic;
SIGNAL \drawMod|Add0~25\ : std_logic;
SIGNAL \drawMod|Add0~26_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~2_combout\ : std_logic;
SIGNAL \drawMod|Equal0~0_combout\ : std_logic;
SIGNAL \drawMod|Equal0~3_combout\ : std_logic;
SIGNAL \drawMod|Equal0~4_combout\ : std_logic;
SIGNAL \drawMod|Add0~27\ : std_logic;
SIGNAL \drawMod|Add0~28_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~1_combout\ : std_logic;
SIGNAL \drawMod|Add0~29\ : std_logic;
SIGNAL \drawMod|Add0~30_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~0_combout\ : std_logic;
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \syncMod|int_a~0_combout\ : std_logic;
SIGNAL \syncMod|int_a~q\ : std_logic;
SIGNAL \syncMod|sync_a~0_combout\ : std_logic;
SIGNAL \syncMod|sync_a~q\ : std_logic;
SIGNAL \syncMod|delay_a~feeder_combout\ : std_logic;
SIGNAL \syncMod|delay_a~q\ : std_logic;
SIGNAL \fsmMod|presentState.idle~feeder_combout\ : std_logic;
SIGNAL \syncMod|rise_a~combout\ : std_logic;
SIGNAL \fsmMod|presentState.idle~q\ : std_logic;
SIGNAL \fsmMod|presentState.menu~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.menu~q\ : std_logic;
SIGNAL \fsmMod|presentState.rungame~0_combout\ : std_logic;
SIGNAL \fsmMod|presentState.rungame~q\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \arrowMod|keys2[1]~feeder_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \arrowMod|keys2[0]~feeder_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \arrowMod|keys2[2]~feeder_combout\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \arrowMod|keys2[3]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~10_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~0_combout\ : std_logic;
SIGNAL \arrowMod|Add3~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~1_combout\ : std_logic;
SIGNAL \arrowMod|Add3~3\ : std_logic;
SIGNAL \arrowMod|Add3~4_combout\ : std_logic;
SIGNAL \arrowMod|Add1~1\ : std_logic;
SIGNAL \arrowMod|Add1~2_combout\ : std_logic;
SIGNAL \arrowMod|Add0~1\ : std_logic;
SIGNAL \arrowMod|Add0~2_combout\ : std_logic;
SIGNAL \arrowMod|Add2~1\ : std_logic;
SIGNAL \arrowMod|Add2~3\ : std_logic;
SIGNAL \arrowMod|Add2~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~26_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~27_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~28_combout\ : std_logic;
SIGNAL \arrowMod|Add2~5\ : std_logic;
SIGNAL \arrowMod|Add2~6_combout\ : std_logic;
SIGNAL \arrowMod|Add3~5\ : std_logic;
SIGNAL \arrowMod|Add3~6_combout\ : std_logic;
SIGNAL \arrowMod|Add0~3\ : std_logic;
SIGNAL \arrowMod|Add0~4_combout\ : std_logic;
SIGNAL \arrowMod|Add1~3\ : std_logic;
SIGNAL \arrowMod|Add1~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~29_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~30_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~31_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~16_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~17_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~1_combout\ : std_logic;
SIGNAL \arrowMod|Add2~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~18_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~19_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[0]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|Add3~1\ : std_logic;
SIGNAL \arrowMod|Add3~2_combout\ : std_logic;
SIGNAL \arrowMod|Add0~0_combout\ : std_logic;
SIGNAL \arrowMod|Add1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~23_combout\ : std_logic;
SIGNAL \arrowMod|Add2~2_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~24_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~25_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~9_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~6_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~5_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~7_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~13_combout\ : std_logic;
SIGNAL \arrowMod|Add1~5\ : std_logic;
SIGNAL \arrowMod|Add1~6_combout\ : std_logic;
SIGNAL \arrowMod|Add3~7\ : std_logic;
SIGNAL \arrowMod|Add3~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~5\ : std_logic;
SIGNAL \arrowMod|Add0~6_combout\ : std_logic;
SIGNAL \arrowMod|Add2~7\ : std_logic;
SIGNAL \arrowMod|Add2~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~20_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~21_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~22_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~11_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~12_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~14_combout\ : std_logic;
SIGNAL \arrowMod|Add3~9\ : std_logic;
SIGNAL \arrowMod|Add3~10_combout\ : std_logic;
SIGNAL \arrowMod|Add1~7\ : std_logic;
SIGNAL \arrowMod|Add1~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~7\ : std_logic;
SIGNAL \arrowMod|Add0~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~2_combout\ : std_logic;
SIGNAL \arrowMod|Add2~9\ : std_logic;
SIGNAL \arrowMod|Add2~10_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~3_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~15_combout\ : std_logic;
SIGNAL \segMod1|WideOr6~0_combout\ : std_logic;
SIGNAL \segMod1|WideOr6~1_combout\ : std_logic;
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
SIGNAL \arrowMod|currentMem\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \arrowMod|keys1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drawMod|dpm_addr_A\ : std_logic_vector(16 DOWNTO 0);
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

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\;

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\);

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a1\;

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\);

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a2\;

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\);

\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a1\ <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a2\ <= \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\segMod1|ALT_INV_WideOr11~0_combout\ <= NOT \segMod1|WideOr11~0_combout\;

-- Location: IOOBUF_X38_Y0_N16
\rgb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \rgb[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\rgb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \rgb[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\rgb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
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

-- Location: LCCOMB_X39_Y3_N16
\drawMod|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~0_combout\ = \drawMod|dpm_addr_A\(0) $ (VCC)
-- \drawMod|Add0~1\ = CARRY(\drawMod|dpm_addr_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(0),
	datad => VCC,
	combout => \drawMod|Add0~0_combout\,
	cout => \drawMod|Add0~1\);

-- Location: FF_X39_Y3_N17
\drawMod|dpm_addr_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(0));

-- Location: LCCOMB_X39_Y3_N18
\drawMod|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~2_combout\ = (\drawMod|dpm_addr_A\(1) & (!\drawMod|Add0~1\)) # (!\drawMod|dpm_addr_A\(1) & ((\drawMod|Add0~1\) # (GND)))
-- \drawMod|Add0~3\ = CARRY((!\drawMod|Add0~1\) # (!\drawMod|dpm_addr_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(1),
	datad => VCC,
	cin => \drawMod|Add0~1\,
	combout => \drawMod|Add0~2_combout\,
	cout => \drawMod|Add0~3\);

-- Location: FF_X39_Y3_N19
\drawMod|dpm_addr_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(1));

-- Location: LCCOMB_X39_Y3_N20
\drawMod|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~4_combout\ = (\drawMod|dpm_addr_A\(2) & (\drawMod|Add0~3\ $ (GND))) # (!\drawMod|dpm_addr_A\(2) & (!\drawMod|Add0~3\ & VCC))
-- \drawMod|Add0~5\ = CARRY((\drawMod|dpm_addr_A\(2) & !\drawMod|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(2),
	datad => VCC,
	cin => \drawMod|Add0~3\,
	combout => \drawMod|Add0~4_combout\,
	cout => \drawMod|Add0~5\);

-- Location: FF_X39_Y3_N21
\drawMod|dpm_addr_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(2));

-- Location: LCCOMB_X39_Y3_N22
\drawMod|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~6_combout\ = (\drawMod|dpm_addr_A\(3) & (!\drawMod|Add0~5\)) # (!\drawMod|dpm_addr_A\(3) & ((\drawMod|Add0~5\) # (GND)))
-- \drawMod|Add0~7\ = CARRY((!\drawMod|Add0~5\) # (!\drawMod|dpm_addr_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(3),
	datad => VCC,
	cin => \drawMod|Add0~5\,
	combout => \drawMod|Add0~6_combout\,
	cout => \drawMod|Add0~7\);

-- Location: FF_X39_Y3_N23
\drawMod|dpm_addr_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(3));

-- Location: LCCOMB_X39_Y3_N24
\drawMod|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~8_combout\ = (\drawMod|dpm_addr_A\(4) & (\drawMod|Add0~7\ $ (GND))) # (!\drawMod|dpm_addr_A\(4) & (!\drawMod|Add0~7\ & VCC))
-- \drawMod|Add0~9\ = CARRY((\drawMod|dpm_addr_A\(4) & !\drawMod|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(4),
	datad => VCC,
	cin => \drawMod|Add0~7\,
	combout => \drawMod|Add0~8_combout\,
	cout => \drawMod|Add0~9\);

-- Location: FF_X39_Y3_N25
\drawMod|dpm_addr_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(4));

-- Location: LCCOMB_X39_Y3_N26
\drawMod|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~10_combout\ = (\drawMod|dpm_addr_A\(5) & (!\drawMod|Add0~9\)) # (!\drawMod|dpm_addr_A\(5) & ((\drawMod|Add0~9\) # (GND)))
-- \drawMod|Add0~11\ = CARRY((!\drawMod|Add0~9\) # (!\drawMod|dpm_addr_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(5),
	datad => VCC,
	cin => \drawMod|Add0~9\,
	combout => \drawMod|Add0~10_combout\,
	cout => \drawMod|Add0~11\);

-- Location: FF_X39_Y3_N27
\drawMod|dpm_addr_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(5));

-- Location: LCCOMB_X39_Y3_N28
\drawMod|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~12_combout\ = (\drawMod|dpm_addr_A\(6) & (\drawMod|Add0~11\ $ (GND))) # (!\drawMod|dpm_addr_A\(6) & (!\drawMod|Add0~11\ & VCC))
-- \drawMod|Add0~13\ = CARRY((\drawMod|dpm_addr_A\(6) & !\drawMod|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(6),
	datad => VCC,
	cin => \drawMod|Add0~11\,
	combout => \drawMod|Add0~12_combout\,
	cout => \drawMod|Add0~13\);

-- Location: FF_X39_Y3_N29
\drawMod|dpm_addr_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(6));

-- Location: LCCOMB_X39_Y3_N30
\drawMod|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~14_combout\ = (\drawMod|dpm_addr_A\(7) & (!\drawMod|Add0~13\)) # (!\drawMod|dpm_addr_A\(7) & ((\drawMod|Add0~13\) # (GND)))
-- \drawMod|Add0~15\ = CARRY((!\drawMod|Add0~13\) # (!\drawMod|dpm_addr_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(7),
	datad => VCC,
	cin => \drawMod|Add0~13\,
	combout => \drawMod|Add0~14_combout\,
	cout => \drawMod|Add0~15\);

-- Location: FF_X39_Y3_N31
\drawMod|dpm_addr_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(7));

-- Location: LCCOMB_X39_Y2_N0
\drawMod|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~16_combout\ = (\drawMod|dpm_addr_A\(8) & (\drawMod|Add0~15\ $ (GND))) # (!\drawMod|dpm_addr_A\(8) & (!\drawMod|Add0~15\ & VCC))
-- \drawMod|Add0~17\ = CARRY((\drawMod|dpm_addr_A\(8) & !\drawMod|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(8),
	datad => VCC,
	cin => \drawMod|Add0~15\,
	combout => \drawMod|Add0~16_combout\,
	cout => \drawMod|Add0~17\);

-- Location: FF_X39_Y2_N1
\drawMod|dpm_addr_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(8));

-- Location: LCCOMB_X39_Y2_N2
\drawMod|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~18_combout\ = (\drawMod|dpm_addr_A\(9) & (!\drawMod|Add0~17\)) # (!\drawMod|dpm_addr_A\(9) & ((\drawMod|Add0~17\) # (GND)))
-- \drawMod|Add0~19\ = CARRY((!\drawMod|Add0~17\) # (!\drawMod|dpm_addr_A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(9),
	datad => VCC,
	cin => \drawMod|Add0~17\,
	combout => \drawMod|Add0~18_combout\,
	cout => \drawMod|Add0~19\);

-- Location: FF_X39_Y2_N3
\drawMod|dpm_addr_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(9));

-- Location: LCCOMB_X39_Y2_N4
\drawMod|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~20_combout\ = (\drawMod|dpm_addr_A\(10) & (\drawMod|Add0~19\ $ (GND))) # (!\drawMod|dpm_addr_A\(10) & (!\drawMod|Add0~19\ & VCC))
-- \drawMod|Add0~21\ = CARRY((\drawMod|dpm_addr_A\(10) & !\drawMod|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(10),
	datad => VCC,
	cin => \drawMod|Add0~19\,
	combout => \drawMod|Add0~20_combout\,
	cout => \drawMod|Add0~21\);

-- Location: FF_X39_Y2_N5
\drawMod|dpm_addr_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(10));

-- Location: LCCOMB_X39_Y2_N6
\drawMod|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~22_combout\ = (\drawMod|dpm_addr_A\(11) & (!\drawMod|Add0~21\)) # (!\drawMod|dpm_addr_A\(11) & ((\drawMod|Add0~21\) # (GND)))
-- \drawMod|Add0~23\ = CARRY((!\drawMod|Add0~21\) # (!\drawMod|dpm_addr_A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(11),
	datad => VCC,
	cin => \drawMod|Add0~21\,
	combout => \drawMod|Add0~22_combout\,
	cout => \drawMod|Add0~23\);

-- Location: FF_X39_Y2_N7
\drawMod|dpm_addr_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(11));

-- Location: LCCOMB_X39_Y2_N8
\drawMod|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~24_combout\ = (\drawMod|dpm_addr_A\(12) & (\drawMod|Add0~23\ $ (GND))) # (!\drawMod|dpm_addr_A\(12) & (!\drawMod|Add0~23\ & VCC))
-- \drawMod|Add0~25\ = CARRY((\drawMod|dpm_addr_A\(12) & !\drawMod|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(12),
	datad => VCC,
	cin => \drawMod|Add0~23\,
	combout => \drawMod|Add0~24_combout\,
	cout => \drawMod|Add0~25\);

-- Location: LCCOMB_X39_Y2_N30
\drawMod|dpm_addr_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~3_combout\ = (\drawMod|Add0~24_combout\ & ((!\drawMod|Equal0~4_combout\) # (!\drawMod|dpm_addr_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(0),
	datac => \drawMod|Add0~24_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~3_combout\);

-- Location: FF_X39_Y2_N31
\drawMod|dpm_addr_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|dpm_addr_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(12));

-- Location: LCCOMB_X38_Y2_N14
\drawMod|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~1_combout\ = (\drawMod|dpm_addr_A\(10) & (\drawMod|dpm_addr_A\(11) & (!\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(10),
	datab => \drawMod|dpm_addr_A\(11),
	datac => \drawMod|dpm_addr_A\(12),
	datad => \drawMod|dpm_addr_A\(9),
	combout => \drawMod|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y2_N24
\drawMod|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~2_combout\ = (\drawMod|dpm_addr_A\(6) & (\drawMod|dpm_addr_A\(5) & (\drawMod|dpm_addr_A\(7) & \drawMod|dpm_addr_A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(6),
	datab => \drawMod|dpm_addr_A\(5),
	datac => \drawMod|dpm_addr_A\(7),
	datad => \drawMod|dpm_addr_A\(8),
	combout => \drawMod|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y2_N14
\drawMod|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~30_combout\ = (\drawMod|dpm_addr_A\(15) & (!\drawMod|Add0~29\)) # (!\drawMod|dpm_addr_A\(15) & ((\drawMod|Add0~29\) # (GND)))
-- \drawMod|Add0~31\ = CARRY((!\drawMod|Add0~29\) # (!\drawMod|dpm_addr_A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datad => VCC,
	cin => \drawMod|Add0~29\,
	combout => \drawMod|Add0~30_combout\,
	cout => \drawMod|Add0~31\);

-- Location: LCCOMB_X39_Y2_N16
\drawMod|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~32_combout\ = \drawMod|Add0~31\ $ (!\drawMod|dpm_addr_A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \drawMod|dpm_addr_A\(16),
	cin => \drawMod|Add0~31\,
	combout => \drawMod|Add0~32_combout\);

-- Location: FF_X39_Y2_N17
\drawMod|dpm_addr_A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(16));

-- Location: LCCOMB_X39_Y2_N10
\drawMod|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~26_combout\ = (\drawMod|dpm_addr_A\(13) & (!\drawMod|Add0~25\)) # (!\drawMod|dpm_addr_A\(13) & ((\drawMod|Add0~25\) # (GND)))
-- \drawMod|Add0~27\ = CARRY((!\drawMod|Add0~25\) # (!\drawMod|dpm_addr_A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(13),
	datad => VCC,
	cin => \drawMod|Add0~25\,
	combout => \drawMod|Add0~26_combout\,
	cout => \drawMod|Add0~27\);

-- Location: LCCOMB_X39_Y2_N22
\drawMod|dpm_addr_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~2_combout\ = (\drawMod|Add0~26_combout\ & ((!\drawMod|dpm_addr_A\(0)) # (!\drawMod|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|Equal0~4_combout\,
	datac => \drawMod|dpm_addr_A\(0),
	datad => \drawMod|Add0~26_combout\,
	combout => \drawMod|dpm_addr_A~2_combout\);

-- Location: FF_X39_Y2_N23
\drawMod|dpm_addr_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|dpm_addr_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(13));

-- Location: LCCOMB_X38_Y2_N16
\drawMod|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~0_combout\ = (!\drawMod|dpm_addr_A\(16) & (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(14) & \drawMod|dpm_addr_A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(16),
	datab => \drawMod|dpm_addr_A\(15),
	datac => \drawMod|dpm_addr_A\(14),
	datad => \drawMod|dpm_addr_A\(13),
	combout => \drawMod|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y3_N12
\drawMod|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~3_combout\ = (\drawMod|dpm_addr_A\(2) & (\drawMod|dpm_addr_A\(1) & (\drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(2),
	datab => \drawMod|dpm_addr_A\(1),
	datac => \drawMod|dpm_addr_A\(3),
	datad => \drawMod|dpm_addr_A\(4),
	combout => \drawMod|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y2_N18
\drawMod|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~4_combout\ = (\drawMod|Equal0~1_combout\ & (\drawMod|Equal0~2_combout\ & (\drawMod|Equal0~0_combout\ & \drawMod|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Equal0~1_combout\,
	datab => \drawMod|Equal0~2_combout\,
	datac => \drawMod|Equal0~0_combout\,
	datad => \drawMod|Equal0~3_combout\,
	combout => \drawMod|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y2_N12
\drawMod|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~28_combout\ = (\drawMod|dpm_addr_A\(14) & (\drawMod|Add0~27\ $ (GND))) # (!\drawMod|dpm_addr_A\(14) & (!\drawMod|Add0~27\ & VCC))
-- \drawMod|Add0~29\ = CARRY((\drawMod|dpm_addr_A\(14) & !\drawMod|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(14),
	datad => VCC,
	cin => \drawMod|Add0~27\,
	combout => \drawMod|Add0~28_combout\,
	cout => \drawMod|Add0~29\);

-- Location: LCCOMB_X39_Y2_N28
\drawMod|dpm_addr_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~1_combout\ = (\drawMod|Add0~28_combout\ & ((!\drawMod|dpm_addr_A\(0)) # (!\drawMod|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|Equal0~4_combout\,
	datac => \drawMod|dpm_addr_A\(0),
	datad => \drawMod|Add0~28_combout\,
	combout => \drawMod|dpm_addr_A~1_combout\);

-- Location: FF_X39_Y2_N29
\drawMod|dpm_addr_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|dpm_addr_A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(14));

-- Location: LCCOMB_X39_Y2_N26
\drawMod|dpm_addr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~0_combout\ = (\drawMod|Add0~30_combout\ & ((!\drawMod|Equal0~4_combout\) # (!\drawMod|dpm_addr_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(0),
	datac => \drawMod|Add0~30_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~0_combout\);

-- Location: FF_X39_Y2_N27
\drawMod|dpm_addr_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|dpm_addr_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_addr_A\(15));

-- Location: LCCOMB_X39_Y2_N20
\drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (!\drawMod|dpm_addr_A\(16) & (!\drawMod|dpm_addr_A\(13) & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \drawMod|dpm_addr_A\(13),
	datad => \drawMod|dpm_addr_A\(14),
	combout => \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\);

-- Location: LCCOMB_X41_Y3_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X40_Y4_N0
\drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0001C0007",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_circle_e6e899d7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:drawMod|circle:circle_1|altsyncram:ram_rtl_0|altsyncram_id61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 1,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portaaddr => \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \drawMod|circle_1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X40_Y1_N0
\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "draw:drawMod|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_29h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 131072,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 131072,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y3_N0
\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "draw:drawMod|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_29h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 131072,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 131072,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y2_N0
\drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "draw:drawMod|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_29h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 131072,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 131072,
	port_b_logical_ram_width => 3,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \drawMod|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \drawMod|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X67_Y29_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X66_Y29_N20
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

-- Location: FF_X66_Y29_N21
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

-- Location: LCCOMB_X66_Y29_N2
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

-- Location: FF_X66_Y29_N3
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

-- Location: LCCOMB_X66_Y29_N12
\syncMod|delay_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|delay_a~feeder_combout\ = \syncMod|sync_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \syncMod|sync_a~q\,
	combout => \syncMod|delay_a~feeder_combout\);

-- Location: FF_X66_Y29_N13
\syncMod|delay_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \syncMod|delay_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncMod|delay_a~q\);

-- Location: LCCOMB_X66_Y29_N24
\fsmMod|presentState.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|presentState.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fsmMod|presentState.idle~feeder_combout\);

-- Location: LCCOMB_X66_Y29_N14
\syncMod|rise_a\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|rise_a~combout\ = (\syncMod|delay_a~q\) # (!\syncMod|sync_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|delay_a~q\,
	datad => \syncMod|sync_a~q\,
	combout => \syncMod|rise_a~combout\);

-- Location: FF_X66_Y29_N25
\fsmMod|presentState.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|presentState.idle~feeder_combout\,
	ena => \syncMod|rise_a~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.idle~q\);

-- Location: LCCOMB_X66_Y29_N22
\fsmMod|presentState.menu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|presentState.menu~0_combout\ = !\fsmMod|presentState.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fsmMod|presentState.idle~q\,
	combout => \fsmMod|presentState.menu~0_combout\);

-- Location: FF_X66_Y29_N23
\fsmMod|presentState.menu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|presentState.menu~0_combout\,
	ena => \syncMod|rise_a~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.menu~q\);

-- Location: LCCOMB_X66_Y29_N0
\fsmMod|presentState.rungame~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|presentState.rungame~0_combout\ = (\fsmMod|presentState.rungame~q\) # ((\fsmMod|presentState.menu~q\ & ((\syncMod|delay_a~q\) # (!\syncMod|sync_a~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|delay_a~q\,
	datab => \syncMod|sync_a~q\,
	datac => \fsmMod|presentState.rungame~q\,
	datad => \fsmMod|presentState.menu~q\,
	combout => \fsmMod|presentState.rungame~0_combout\);

-- Location: FF_X66_Y29_N1
\fsmMod|presentState.rungame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fsmMod|presentState.rungame~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsmMod|presentState.rungame~q\);

-- Location: IOIBUF_X67_Y30_N8
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: FF_X62_Y30_N27
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

-- Location: LCCOMB_X61_Y30_N2
\arrowMod|keys2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys2[1]~feeder_combout\ = \arrowMod|keys1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|keys1\(1),
	combout => \arrowMod|keys2[1]~feeder_combout\);

-- Location: FF_X61_Y30_N3
\arrowMod|keys2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(1));

-- Location: IOIBUF_X67_Y30_N1
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: FF_X62_Y30_N21
\arrowMod|keys1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \keys[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(0));

-- Location: LCCOMB_X61_Y30_N22
\arrowMod|keys2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys2[0]~feeder_combout\ = \arrowMod|keys1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|keys1\(0),
	combout => \arrowMod|keys2[0]~feeder_combout\);

-- Location: FF_X61_Y30_N23
\arrowMod|keys2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(0));

-- Location: IOIBUF_X67_Y30_N22
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: FF_X61_Y30_N21
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

-- Location: LCCOMB_X61_Y30_N18
\arrowMod|keys2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys2[2]~feeder_combout\ = \arrowMod|keys1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|keys1\(2),
	combout => \arrowMod|keys2[2]~feeder_combout\);

-- Location: FF_X61_Y30_N19
\arrowMod|keys2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(2));

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

-- Location: FF_X60_Y30_N25
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

-- Location: LCCOMB_X61_Y30_N8
\arrowMod|keys2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys2[3]~feeder_combout\ = \arrowMod|keys1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|keys1\(3),
	combout => \arrowMod|keys2[3]~feeder_combout\);

-- Location: FF_X61_Y30_N9
\arrowMod|keys2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys2\(3));

-- Location: LCCOMB_X61_Y30_N16
\arrowMod|mem6x6[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~10_combout\ = (\arrowMod|keys2\(2) & ((\arrowMod|keys2\(0)) # ((\arrowMod|keys2\(3)) # (\arrowMod|keys2\(1))))) # (!\arrowMod|keys2\(2) & (\arrowMod|keys2\(3) & ((\arrowMod|keys2\(0)) # (\arrowMod|keys2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(0),
	datab => \arrowMod|keys2\(2),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|mem6x6[5]~10_combout\);

-- Location: LCCOMB_X61_Y30_N26
\arrowMod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~0_combout\ = (!\arrowMod|keys2\(0) & (!\arrowMod|keys2\(1) & (\arrowMod|keys2\(2) $ (\arrowMod|keys2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(0),
	datab => \arrowMod|keys2\(2),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y30_N12
\arrowMod|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~0_combout\ = \arrowMod|currentMem\(0) $ (VCC)
-- \arrowMod|Add3~1\ = CARRY(\arrowMod|currentMem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(0),
	datad => VCC,
	combout => \arrowMod|Add3~0_combout\,
	cout => \arrowMod|Add3~1\);

-- Location: FF_X63_Y30_N21
\arrowMod|currentMem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(5));

-- Location: LCCOMB_X61_Y30_N20
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

-- Location: LCCOMB_X61_Y30_N0
\arrowMod|mem6x6[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~1_combout\ = (\arrowMod|keys2\(3)) # ((!\arrowMod|keys2\(2) & \arrowMod|keys2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|keys2\(2),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|mem6x6[5]~1_combout\);

-- Location: LCCOMB_X64_Y30_N14
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

-- Location: LCCOMB_X64_Y30_N16
\arrowMod|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~4_combout\ = (\arrowMod|currentMem\(2) & (\arrowMod|Add3~3\ $ (GND))) # (!\arrowMod|currentMem\(2) & (!\arrowMod|Add3~3\ & VCC))
-- \arrowMod|Add3~5\ = CARRY((\arrowMod|currentMem\(2) & !\arrowMod|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add3~3\,
	combout => \arrowMod|Add3~4_combout\,
	cout => \arrowMod|Add3~5\);

-- Location: LCCOMB_X64_Y30_N0
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

-- Location: LCCOMB_X64_Y30_N2
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

-- Location: LCCOMB_X63_Y30_N8
\arrowMod|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~0_combout\ = \arrowMod|currentMem\(1) $ (VCC)
-- \arrowMod|Add0~1\ = CARRY(\arrowMod|currentMem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datad => VCC,
	combout => \arrowMod|Add0~0_combout\,
	cout => \arrowMod|Add0~1\);

-- Location: LCCOMB_X63_Y30_N10
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

-- Location: LCCOMB_X62_Y30_N14
\arrowMod|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~0_combout\ = \arrowMod|currentMem\(0) $ (VCC)
-- \arrowMod|Add2~1\ = CARRY(\arrowMod|currentMem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(0),
	datad => VCC,
	combout => \arrowMod|Add2~0_combout\,
	cout => \arrowMod|Add2~1\);

-- Location: LCCOMB_X62_Y30_N16
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

-- Location: LCCOMB_X62_Y30_N18
\arrowMod|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~4_combout\ = (\arrowMod|currentMem\(2) & ((GND) # (!\arrowMod|Add2~3\))) # (!\arrowMod|currentMem\(2) & (\arrowMod|Add2~3\ $ (GND)))
-- \arrowMod|Add2~5\ = CARRY((\arrowMod|currentMem\(2)) # (!\arrowMod|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add2~3\,
	combout => \arrowMod|Add2~4_combout\,
	cout => \arrowMod|Add2~5\);

-- Location: LCCOMB_X62_Y30_N12
\arrowMod|mem6x6[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~26_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|mem6x6[5]~0_combout\)) # (!\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|Add2~4_combout\))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
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
	combout => \arrowMod|mem6x6[2]~26_combout\);

-- Location: LCCOMB_X62_Y30_N10
\arrowMod|mem6x6[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~27_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[2]~26_combout\ & (\arrowMod|Add3~4_combout\)) # (!\arrowMod|mem6x6[2]~26_combout\ & ((\arrowMod|Add1~2_combout\))))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (((\arrowMod|mem6x6[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~1_combout\,
	datab => \arrowMod|Add3~4_combout\,
	datac => \arrowMod|Add1~2_combout\,
	datad => \arrowMod|mem6x6[2]~26_combout\,
	combout => \arrowMod|mem6x6[2]~27_combout\);

-- Location: LCCOMB_X62_Y30_N4
\arrowMod|mem6x6[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~28_combout\ = (\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|mem6x6[2]~27_combout\) # ((\arrowMod|mem6x6[5]~14_combout\ & \arrowMod|currentMem\(2))))) # (!\arrowMod|mem6x6[5]~13_combout\ & (\arrowMod|mem6x6[5]~14_combout\ & 
-- (\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~13_combout\,
	datab => \arrowMod|mem6x6[5]~14_combout\,
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|mem6x6[2]~27_combout\,
	combout => \arrowMod|mem6x6[2]~28_combout\);

-- Location: FF_X62_Y30_N5
\arrowMod|currentMem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(2));

-- Location: LCCOMB_X62_Y30_N20
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

-- Location: LCCOMB_X64_Y30_N18
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

-- Location: LCCOMB_X63_Y30_N12
\arrowMod|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~4_combout\ = (\arrowMod|currentMem\(3) & ((GND) # (!\arrowMod|Add0~3\))) # (!\arrowMod|currentMem\(3) & (\arrowMod|Add0~3\ $ (GND)))
-- \arrowMod|Add0~5\ = CARRY((\arrowMod|currentMem\(3)) # (!\arrowMod|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add0~3\,
	combout => \arrowMod|Add0~4_combout\,
	cout => \arrowMod|Add0~5\);

-- Location: LCCOMB_X64_Y30_N4
\arrowMod|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~4_combout\ = (\arrowMod|currentMem\(3) & (\arrowMod|Add1~3\ $ (GND))) # (!\arrowMod|currentMem\(3) & (!\arrowMod|Add1~3\ & VCC))
-- \arrowMod|Add1~5\ = CARRY((\arrowMod|currentMem\(3) & !\arrowMod|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(3),
	datad => VCC,
	cin => \arrowMod|Add1~3\,
	combout => \arrowMod|Add1~4_combout\,
	cout => \arrowMod|Add1~5\);

-- Location: LCCOMB_X63_Y30_N6
\arrowMod|mem6x6[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~29_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & (((\arrowMod|mem6x6[5]~1_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|Add1~4_combout\))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (\arrowMod|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~4_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|mem6x6[5]~1_combout\,
	datad => \arrowMod|Add1~4_combout\,
	combout => \arrowMod|mem6x6[3]~29_combout\);

-- Location: LCCOMB_X63_Y30_N28
\arrowMod|mem6x6[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~30_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[3]~29_combout\ & ((\arrowMod|Add3~6_combout\))) # (!\arrowMod|mem6x6[3]~29_combout\ & (\arrowMod|Add2~6_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|Add2~6_combout\,
	datac => \arrowMod|Add3~6_combout\,
	datad => \arrowMod|mem6x6[3]~29_combout\,
	combout => \arrowMod|mem6x6[3]~30_combout\);

-- Location: LCCOMB_X63_Y30_N30
\arrowMod|mem6x6[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~31_combout\ = (\arrowMod|currentMem\(3) & ((\arrowMod|mem6x6[5]~14_combout\) # ((\arrowMod|mem6x6[5]~13_combout\ & \arrowMod|mem6x6[3]~30_combout\)))) # (!\arrowMod|currentMem\(3) & (\arrowMod|mem6x6[5]~13_combout\ & 
-- ((\arrowMod|mem6x6[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(3),
	datab => \arrowMod|mem6x6[5]~13_combout\,
	datac => \arrowMod|mem6x6[5]~14_combout\,
	datad => \arrowMod|mem6x6[3]~30_combout\,
	combout => \arrowMod|mem6x6[3]~31_combout\);

-- Location: FF_X63_Y30_N5
\arrowMod|currentMem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(3));

-- Location: LCCOMB_X61_Y30_N6
\arrowMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~0_combout\ = (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(2) & !\arrowMod|currentMem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(4),
	combout => \arrowMod|Equal1~0_combout\);

-- Location: LCCOMB_X61_Y30_N24
\arrowMod|mem6x6[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~16_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(5) & \arrowMod|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|mem6x6[0]~16_combout\);

-- Location: LCCOMB_X64_Y30_N24
\arrowMod|mem6x6[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~17_combout\ = (\arrowMod|Mux5~0_combout\ & ((\arrowMod|Add3~0_combout\) # ((\arrowMod|currentMem\(0) & \arrowMod|mem6x6[0]~16_combout\)))) # (!\arrowMod|Mux5~0_combout\ & (\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(0),
	datab => \arrowMod|Add3~0_combout\,
	datac => \arrowMod|Mux5~0_combout\,
	datad => \arrowMod|mem6x6[0]~16_combout\,
	combout => \arrowMod|mem6x6[0]~17_combout\);

-- Location: LCCOMB_X61_Y30_N4
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

-- Location: LCCOMB_X64_Y30_N10
\arrowMod|mem6x6[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~18_combout\ = (\arrowMod|keys2\(3) & (((\arrowMod|mem6x6[0]~17_combout\)))) # (!\arrowMod|keys2\(3) & (!\arrowMod|Equal1~1_combout\ & (\arrowMod|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Equal1~1_combout\,
	datab => \arrowMod|keys2\(3),
	datac => \arrowMod|Add2~0_combout\,
	datad => \arrowMod|mem6x6[0]~17_combout\,
	combout => \arrowMod|mem6x6[0]~18_combout\);

-- Location: LCCOMB_X64_Y30_N28
\arrowMod|mem6x6[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~19_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|Mux5~0_combout\ & ((\arrowMod|mem6x6[0]~18_combout\))) # (!\arrowMod|Mux5~0_combout\ & (\arrowMod|mem6x6[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Mux5~0_combout\,
	datab => \arrowMod|mem6x6[0]~17_combout\,
	datac => \fsmMod|presentState.rungame~q\,
	datad => \arrowMod|mem6x6[0]~18_combout\,
	combout => \arrowMod|mem6x6[0]~19_combout\);

-- Location: LCCOMB_X64_Y30_N26
\arrowMod|currentMem[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[0]~feeder_combout\ = \arrowMod|mem6x6[0]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[0]~19_combout\,
	combout => \arrowMod|currentMem[0]~feeder_combout\);

-- Location: FF_X64_Y30_N27
\arrowMod|currentMem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|currentMem[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(0));

-- Location: LCCOMB_X63_Y30_N0
\arrowMod|mem6x6[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~23_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & (((\arrowMod|mem6x6[5]~1_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|Add1~0_combout\))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (\arrowMod|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|Add0~0_combout\,
	datac => \arrowMod|Add1~0_combout\,
	datad => \arrowMod|mem6x6[5]~1_combout\,
	combout => \arrowMod|mem6x6[1]~23_combout\);

-- Location: LCCOMB_X62_Y30_N2
\arrowMod|mem6x6[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~24_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[1]~23_combout\ & (\arrowMod|Add3~2_combout\)) # (!\arrowMod|mem6x6[1]~23_combout\ & ((\arrowMod|Add2~2_combout\))))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add3~2_combout\,
	datab => \arrowMod|mem6x6[5]~0_combout\,
	datac => \arrowMod|mem6x6[1]~23_combout\,
	datad => \arrowMod|Add2~2_combout\,
	combout => \arrowMod|mem6x6[1]~24_combout\);

-- Location: LCCOMB_X62_Y30_N30
\arrowMod|mem6x6[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~25_combout\ = (\arrowMod|mem6x6[5]~13_combout\ & ((\arrowMod|mem6x6[1]~24_combout\) # ((\arrowMod|currentMem\(1) & \arrowMod|mem6x6[5]~14_combout\)))) # (!\arrowMod|mem6x6[5]~13_combout\ & (((\arrowMod|currentMem\(1) & 
-- \arrowMod|mem6x6[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~13_combout\,
	datab => \arrowMod|mem6x6[1]~24_combout\,
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|mem6x6[5]~14_combout\,
	combout => \arrowMod|mem6x6[1]~25_combout\);

-- Location: FF_X62_Y30_N31
\arrowMod|currentMem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(1));

-- Location: LCCOMB_X62_Y30_N28
\arrowMod|mem6x6[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~8_combout\ = (\arrowMod|keys2\(1) & (\arrowMod|currentMem\(4) & (\arrowMod|currentMem\(3) & !\arrowMod|currentMem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(3),
	datad => \arrowMod|currentMem\(5),
	combout => \arrowMod|mem6x6[5]~8_combout\);

-- Location: LCCOMB_X62_Y30_N26
\arrowMod|mem6x6[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~9_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(2) & \arrowMod|mem6x6[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datab => \arrowMod|currentMem\(2),
	datad => \arrowMod|mem6x6[5]~8_combout\,
	combout => \arrowMod|mem6x6[5]~9_combout\);

-- Location: LCCOMB_X61_Y30_N30
\arrowMod|mem6x6[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~6_combout\ = (!\arrowMod|keys2\(3) & (!\arrowMod|keys2\(0) & !\arrowMod|keys2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|keys2\(3),
	datac => \arrowMod|keys2\(0),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|mem6x6[5]~6_combout\);

-- Location: LCCOMB_X61_Y30_N28
\arrowMod|mem6x6[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~4_combout\ = (\arrowMod|keys2\(1)) # ((\arrowMod|currentMem\(1) & (\arrowMod|keys2\(3) & \arrowMod|currentMem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datab => \arrowMod|keys2\(1),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|currentMem\(0),
	combout => \arrowMod|mem6x6[5]~4_combout\);

-- Location: LCCOMB_X61_Y30_N12
\arrowMod|mem6x6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~5_combout\ = (\arrowMod|Equal1~0_combout\ & ((\arrowMod|currentMem\(5) & ((\arrowMod|mem6x6[5]~4_combout\))) # (!\arrowMod|currentMem\(5) & (\arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(0),
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|mem6x6[5]~5_combout\);

-- Location: LCCOMB_X61_Y30_N14
\arrowMod|mem6x6[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~7_combout\ = (\arrowMod|mem6x6[5]~5_combout\) # ((\arrowMod|mem6x6[5]~6_combout\ & ((\arrowMod|Equal1~1_combout\) # (!\arrowMod|keys2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~6_combout\,
	datab => \arrowMod|keys2\(2),
	datac => \arrowMod|Equal1~1_combout\,
	datad => \arrowMod|mem6x6[5]~5_combout\,
	combout => \arrowMod|mem6x6[5]~7_combout\);

-- Location: LCCOMB_X62_Y30_N6
\arrowMod|mem6x6[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~13_combout\ = (\fsmMod|presentState.rungame~q\ & (!\arrowMod|mem6x6[5]~12_combout\ & (!\arrowMod|mem6x6[5]~9_combout\ & !\arrowMod|mem6x6[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|mem6x6[5]~12_combout\,
	datac => \arrowMod|mem6x6[5]~9_combout\,
	datad => \arrowMod|mem6x6[5]~7_combout\,
	combout => \arrowMod|mem6x6[5]~13_combout\);

-- Location: LCCOMB_X64_Y30_N6
\arrowMod|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~6_combout\ = (\arrowMod|currentMem\(4) & (!\arrowMod|Add1~5\)) # (!\arrowMod|currentMem\(4) & ((\arrowMod|Add1~5\) # (GND)))
-- \arrowMod|Add1~7\ = CARRY((!\arrowMod|Add1~5\) # (!\arrowMod|currentMem\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add1~5\,
	combout => \arrowMod|Add1~6_combout\,
	cout => \arrowMod|Add1~7\);

-- Location: LCCOMB_X64_Y30_N20
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

-- Location: LCCOMB_X63_Y30_N14
\arrowMod|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~6_combout\ = (\arrowMod|currentMem\(4) & (\arrowMod|Add0~5\ & VCC)) # (!\arrowMod|currentMem\(4) & (!\arrowMod|Add0~5\))
-- \arrowMod|Add0~7\ = CARRY((!\arrowMod|currentMem\(4) & !\arrowMod|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add0~5\,
	combout => \arrowMod|Add0~6_combout\,
	cout => \arrowMod|Add0~7\);

-- Location: LCCOMB_X62_Y30_N22
\arrowMod|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~8_combout\ = (\arrowMod|currentMem\(4) & ((GND) # (!\arrowMod|Add2~7\))) # (!\arrowMod|currentMem\(4) & (\arrowMod|Add2~7\ $ (GND)))
-- \arrowMod|Add2~9\ = CARRY((\arrowMod|currentMem\(4)) # (!\arrowMod|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(4),
	datad => VCC,
	cin => \arrowMod|Add2~7\,
	combout => \arrowMod|Add2~8_combout\,
	cout => \arrowMod|Add2~9\);

-- Location: LCCOMB_X63_Y30_N24
\arrowMod|mem6x6[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~20_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~1_combout\) # ((\arrowMod|Add2~8_combout\)))) # (!\arrowMod|mem6x6[5]~0_combout\ & (!\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|mem6x6[5]~1_combout\,
	datac => \arrowMod|Add0~6_combout\,
	datad => \arrowMod|Add2~8_combout\,
	combout => \arrowMod|mem6x6[4]~20_combout\);

-- Location: LCCOMB_X63_Y30_N2
\arrowMod|mem6x6[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~21_combout\ = (\arrowMod|mem6x6[5]~1_combout\ & ((\arrowMod|mem6x6[4]~20_combout\ & ((\arrowMod|Add3~8_combout\))) # (!\arrowMod|mem6x6[4]~20_combout\ & (\arrowMod|Add1~6_combout\)))) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- (((\arrowMod|mem6x6[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add1~6_combout\,
	datab => \arrowMod|mem6x6[5]~1_combout\,
	datac => \arrowMod|Add3~8_combout\,
	datad => \arrowMod|mem6x6[4]~20_combout\,
	combout => \arrowMod|mem6x6[4]~21_combout\);

-- Location: LCCOMB_X63_Y30_N26
\arrowMod|mem6x6[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~22_combout\ = (\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|currentMem\(4)) # ((\arrowMod|mem6x6[5]~13_combout\ & \arrowMod|mem6x6[4]~21_combout\)))) # (!\arrowMod|mem6x6[5]~14_combout\ & (\arrowMod|mem6x6[5]~13_combout\ & 
-- ((\arrowMod|mem6x6[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[5]~13_combout\,
	datac => \arrowMod|currentMem\(4),
	datad => \arrowMod|mem6x6[4]~21_combout\,
	combout => \arrowMod|mem6x6[4]~22_combout\);

-- Location: FF_X63_Y30_N27
\arrowMod|currentMem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(4));

-- Location: LCCOMB_X63_Y30_N4
\arrowMod|mem6x6[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~11_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(5) & (!\arrowMod|currentMem\(3) & !\arrowMod|currentMem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(5),
	datac => \arrowMod|currentMem\(3),
	datad => \arrowMod|currentMem\(1),
	combout => \arrowMod|mem6x6[5]~11_combout\);

-- Location: LCCOMB_X62_Y30_N8
\arrowMod|mem6x6[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~12_combout\ = (\arrowMod|mem6x6[5]~10_combout\) # ((\arrowMod|keys2\(0) & ((\arrowMod|keys2\(1)) # (\arrowMod|mem6x6[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|mem6x6[5]~10_combout\,
	datad => \arrowMod|mem6x6[5]~11_combout\,
	combout => \arrowMod|mem6x6[5]~12_combout\);

-- Location: LCCOMB_X62_Y30_N0
\arrowMod|mem6x6[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~14_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~12_combout\) # ((\arrowMod|mem6x6[5]~9_combout\) # (\arrowMod|mem6x6[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|mem6x6[5]~12_combout\,
	datac => \arrowMod|mem6x6[5]~9_combout\,
	datad => \arrowMod|mem6x6[5]~7_combout\,
	combout => \arrowMod|mem6x6[5]~14_combout\);

-- Location: LCCOMB_X64_Y30_N22
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

-- Location: LCCOMB_X64_Y30_N8
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

-- Location: LCCOMB_X63_Y30_N16
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

-- Location: LCCOMB_X63_Y30_N22
\arrowMod|mem6x6[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~2_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & (\arrowMod|mem6x6[5]~1_combout\)) # (!\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~1_combout\ & (\arrowMod|Add1~8_combout\)) # (!\arrowMod|mem6x6[5]~1_combout\ & 
-- ((\arrowMod|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|mem6x6[5]~1_combout\,
	datac => \arrowMod|Add1~8_combout\,
	datad => \arrowMod|Add0~8_combout\,
	combout => \arrowMod|mem6x6[5]~2_combout\);

-- Location: LCCOMB_X62_Y30_N24
\arrowMod|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~10_combout\ = \arrowMod|currentMem\(5) $ (!\arrowMod|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add2~9\,
	combout => \arrowMod|Add2~10_combout\);

-- Location: LCCOMB_X63_Y30_N18
\arrowMod|mem6x6[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~3_combout\ = (\arrowMod|mem6x6[5]~0_combout\ & ((\arrowMod|mem6x6[5]~2_combout\ & (\arrowMod|Add3~10_combout\)) # (!\arrowMod|mem6x6[5]~2_combout\ & ((\arrowMod|Add2~10_combout\))))) # (!\arrowMod|mem6x6[5]~0_combout\ & 
-- (((\arrowMod|mem6x6[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~0_combout\,
	datab => \arrowMod|Add3~10_combout\,
	datac => \arrowMod|mem6x6[5]~2_combout\,
	datad => \arrowMod|Add2~10_combout\,
	combout => \arrowMod|mem6x6[5]~3_combout\);

-- Location: LCCOMB_X63_Y30_N20
\arrowMod|mem6x6[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~15_combout\ = (\arrowMod|mem6x6[5]~14_combout\ & ((\arrowMod|currentMem\(5)) # ((\arrowMod|mem6x6[5]~13_combout\ & \arrowMod|mem6x6[5]~3_combout\)))) # (!\arrowMod|mem6x6[5]~14_combout\ & (\arrowMod|mem6x6[5]~13_combout\ & 
-- ((\arrowMod|mem6x6[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~14_combout\,
	datab => \arrowMod|mem6x6[5]~13_combout\,
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|mem6x6[5]~3_combout\,
	combout => \arrowMod|mem6x6[5]~15_combout\);

-- Location: LCCOMB_X65_Y30_N4
\segMod1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & ((\arrowMod|mem6x6[1]~25_combout\ $ (\arrowMod|mem6x6[3]~31_combout\)) # (!\arrowMod|mem6x6[2]~28_combout\))) # (!\arrowMod|mem6x6[4]~22_combout\ & ((\arrowMod|mem6x6[2]~28_combout\) # 
-- (\arrowMod|mem6x6[1]~25_combout\ $ (\arrowMod|mem6x6[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr6~0_combout\);

-- Location: LCCOMB_X65_Y30_N26
\segMod1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~1_combout\ = (\arrowMod|mem6x6[1]~25_combout\ & (\arrowMod|mem6x6[3]~31_combout\ $ (((\arrowMod|mem6x6[4]~22_combout\) # (!\arrowMod|mem6x6[2]~28_combout\))))) # (!\arrowMod|mem6x6[1]~25_combout\ & ((\arrowMod|mem6x6[3]~31_combout\) # 
-- ((!\arrowMod|mem6x6[4]~22_combout\ & \arrowMod|mem6x6[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr6~1_combout\);

-- Location: LCCOMB_X66_Y30_N0
\segMod1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr6~2_combout\ = (\arrowMod|mem6x6[5]~15_combout\) # ((\arrowMod|mem6x6[0]~19_combout\ & ((!\segMod1|WideOr6~1_combout\))) # (!\arrowMod|mem6x6[0]~19_combout\ & (!\segMod1|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~15_combout\,
	datab => \segMod1|WideOr6~0_combout\,
	datac => \segMod1|WideOr6~1_combout\,
	datad => \arrowMod|mem6x6[0]~19_combout\,
	combout => \segMod1|WideOr6~2_combout\);

-- Location: LCCOMB_X65_Y30_N22
\segMod1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~1_combout\ = (\arrowMod|mem6x6[1]~25_combout\ & ((\arrowMod|mem6x6[4]~22_combout\ & (!\arrowMod|mem6x6[2]~28_combout\ & !\arrowMod|mem6x6[3]~31_combout\)) # (!\arrowMod|mem6x6[4]~22_combout\ & (\arrowMod|mem6x6[2]~28_combout\ & 
-- \arrowMod|mem6x6[3]~31_combout\)))) # (!\arrowMod|mem6x6[1]~25_combout\ & (\arrowMod|mem6x6[3]~31_combout\ $ (((!\arrowMod|mem6x6[4]~22_combout\ & \arrowMod|mem6x6[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr5~1_combout\);

-- Location: LCCOMB_X65_Y30_N24
\segMod1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~0_combout\ = (\arrowMod|mem6x6[1]~25_combout\ & (!\arrowMod|mem6x6[3]~31_combout\ & (\arrowMod|mem6x6[4]~22_combout\ $ (!\arrowMod|mem6x6[2]~28_combout\)))) # (!\arrowMod|mem6x6[1]~25_combout\ & (!\arrowMod|mem6x6[4]~22_combout\ & 
-- (\arrowMod|mem6x6[2]~28_combout\ & \arrowMod|mem6x6[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr5~0_combout\);

-- Location: LCCOMB_X66_Y30_N18
\segMod1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr5~2_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[0]~19_combout\ & (!\segMod1|WideOr5~1_combout\)) # (!\arrowMod|mem6x6[0]~19_combout\ & ((\segMod1|WideOr5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~15_combout\,
	datab => \segMod1|WideOr5~1_combout\,
	datac => \arrowMod|mem6x6[0]~19_combout\,
	datad => \segMod1|WideOr5~0_combout\,
	combout => \segMod1|WideOr5~2_combout\);

-- Location: LCCOMB_X65_Y30_N8
\segMod1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr4~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & (!\arrowMod|mem6x6[1]~25_combout\ & (!\arrowMod|mem6x6[2]~28_combout\ & \arrowMod|mem6x6[3]~31_combout\))) # (!\arrowMod|mem6x6[4]~22_combout\ & (\arrowMod|mem6x6[2]~28_combout\ & 
-- (\arrowMod|mem6x6[1]~25_combout\ $ (!\arrowMod|mem6x6[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr4~0_combout\);

-- Location: LCCOMB_X66_Y30_N8
\segMod1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr4~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[0]~19_combout\) # (\segMod1|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~15_combout\,
	datac => \arrowMod|mem6x6[0]~19_combout\,
	datad => \segMod1|WideOr4~0_combout\,
	combout => \segMod1|WideOr4~1_combout\);

-- Location: LCCOMB_X66_Y30_N2
\segMod1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr3~0_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[0]~19_combout\ & (!\segMod1|WideOr6~1_combout\)) # (!\arrowMod|mem6x6[0]~19_combout\ & ((\segMod1|WideOr4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~15_combout\,
	datab => \arrowMod|mem6x6[0]~19_combout\,
	datac => \segMod1|WideOr6~1_combout\,
	datad => \segMod1|WideOr4~0_combout\,
	combout => \segMod1|WideOr3~0_combout\);

-- Location: LCCOMB_X65_Y30_N10
\segMod1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr2~0_combout\ = (!\arrowMod|mem6x6[0]~19_combout\ & (!\arrowMod|mem6x6[5]~15_combout\ & \segMod1|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|mem6x6[0]~19_combout\,
	datac => \arrowMod|mem6x6[5]~15_combout\,
	datad => \segMod1|WideOr5~0_combout\,
	combout => \segMod1|WideOr2~0_combout\);

-- Location: LCCOMB_X65_Y30_N20
\segMod1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr1~0_combout\ = (\arrowMod|mem6x6[1]~25_combout\ & ((\arrowMod|mem6x6[0]~19_combout\ & ((\arrowMod|mem6x6[4]~22_combout\) # (\arrowMod|mem6x6[3]~31_combout\))) # (!\arrowMod|mem6x6[0]~19_combout\ & ((!\arrowMod|mem6x6[3]~31_combout\))))) # 
-- (!\arrowMod|mem6x6[1]~25_combout\ & ((\arrowMod|mem6x6[0]~19_combout\ & ((!\arrowMod|mem6x6[3]~31_combout\))) # (!\arrowMod|mem6x6[0]~19_combout\ & (\arrowMod|mem6x6[4]~22_combout\ & \arrowMod|mem6x6[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[0]~19_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr1~0_combout\);

-- Location: LCCOMB_X65_Y30_N30
\segMod1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr1~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[4]~22_combout\ & (!\arrowMod|mem6x6[2]~28_combout\ & !\segMod1|WideOr1~0_combout\)) # (!\arrowMod|mem6x6[4]~22_combout\ & (\arrowMod|mem6x6[2]~28_combout\ & 
-- \segMod1|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[5]~15_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \segMod1|WideOr1~0_combout\,
	combout => \segMod1|WideOr1~1_combout\);

-- Location: LCCOMB_X65_Y30_N16
\segMod1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~0_combout\ = (\arrowMod|mem6x6[0]~19_combout\ & (\arrowMod|mem6x6[2]~28_combout\ & (\arrowMod|mem6x6[3]~31_combout\ $ (!\arrowMod|mem6x6[1]~25_combout\)))) # (!\arrowMod|mem6x6[0]~19_combout\ & (\arrowMod|mem6x6[3]~31_combout\ & 
-- (!\arrowMod|mem6x6[2]~28_combout\ & !\arrowMod|mem6x6[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~19_combout\,
	datab => \arrowMod|mem6x6[3]~31_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[1]~25_combout\,
	combout => \segMod1|WideOr0~0_combout\);

-- Location: LCCOMB_X65_Y30_N6
\segMod1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~1_combout\ = (\arrowMod|mem6x6[0]~19_combout\ & (!\arrowMod|mem6x6[2]~28_combout\ & (\arrowMod|mem6x6[3]~31_combout\ $ (!\arrowMod|mem6x6[1]~25_combout\)))) # (!\arrowMod|mem6x6[0]~19_combout\ & (\arrowMod|mem6x6[2]~28_combout\ & 
-- (\arrowMod|mem6x6[3]~31_combout\ $ (!\arrowMod|mem6x6[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~19_combout\,
	datab => \arrowMod|mem6x6[3]~31_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[1]~25_combout\,
	combout => \segMod1|WideOr0~1_combout\);

-- Location: LCCOMB_X65_Y30_N0
\segMod1|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr0~2_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[4]~22_combout\ & (\segMod1|WideOr0~0_combout\)) # (!\arrowMod|mem6x6[4]~22_combout\ & ((\segMod1|WideOr0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \segMod1|WideOr0~0_combout\,
	datac => \arrowMod|mem6x6[5]~15_combout\,
	datad => \segMod1|WideOr0~1_combout\,
	combout => \segMod1|WideOr0~2_combout\);

-- Location: LCCOMB_X65_Y30_N18
\segMod1|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr11~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & (!\arrowMod|mem6x6[5]~15_combout\ & ((\arrowMod|mem6x6[3]~31_combout\) # (\arrowMod|mem6x6[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[3]~31_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[5]~15_combout\,
	combout => \segMod1|WideOr11~0_combout\);

-- Location: LCCOMB_X65_Y30_N12
\segMod1|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr10~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\) # ((\arrowMod|mem6x6[3]~31_combout\ & ((\arrowMod|mem6x6[1]~25_combout\) # (\arrowMod|mem6x6[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr10~0_combout\);

-- Location: LCCOMB_X66_Y30_N24
\segMod1|WideOr10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr10~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & \segMod1|WideOr10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~15_combout\,
	datad => \segMod1|WideOr10~0_combout\,
	combout => \segMod1|WideOr10~1_combout\);

-- Location: LCCOMB_X65_Y30_N2
\segMod1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr9~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & ((\arrowMod|mem6x6[2]~28_combout\ & (\arrowMod|mem6x6[1]~25_combout\ & \arrowMod|mem6x6[3]~31_combout\)) # (!\arrowMod|mem6x6[2]~28_combout\ & ((!\arrowMod|mem6x6[3]~31_combout\))))) # 
-- (!\arrowMod|mem6x6[4]~22_combout\ & (\arrowMod|mem6x6[3]~31_combout\ & ((\arrowMod|mem6x6[1]~25_combout\) # (\arrowMod|mem6x6[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr9~0_combout\);

-- Location: LCCOMB_X66_Y30_N30
\segMod1|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr9~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & \segMod1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~15_combout\,
	datad => \segMod1|WideOr9~0_combout\,
	combout => \segMod1|WideOr9~1_combout\);

-- Location: LCCOMB_X65_Y30_N28
\segMod1|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr7~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & (((!\arrowMod|mem6x6[2]~28_combout\ & !\arrowMod|mem6x6[3]~31_combout\)))) # (!\arrowMod|mem6x6[4]~22_combout\ & (\arrowMod|mem6x6[3]~31_combout\ & ((\arrowMod|mem6x6[1]~25_combout\) # 
-- (\arrowMod|mem6x6[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr7~0_combout\);

-- Location: LCCOMB_X66_Y30_N12
\segMod1|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr7~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & \segMod1|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~15_combout\,
	datad => \segMod1|WideOr7~0_combout\,
	combout => \segMod1|WideOr7~1_combout\);

-- Location: LCCOMB_X65_Y30_N14
\segMod1|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr8~0_combout\ = (\arrowMod|mem6x6[4]~22_combout\ & ((\arrowMod|mem6x6[2]~28_combout\ & ((!\arrowMod|mem6x6[3]~31_combout\) # (!\arrowMod|mem6x6[1]~25_combout\))) # (!\arrowMod|mem6x6[2]~28_combout\ & ((\arrowMod|mem6x6[3]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~22_combout\,
	datab => \arrowMod|mem6x6[1]~25_combout\,
	datac => \arrowMod|mem6x6[2]~28_combout\,
	datad => \arrowMod|mem6x6[3]~31_combout\,
	combout => \segMod1|WideOr8~0_combout\);

-- Location: LCCOMB_X66_Y30_N6
\segMod1|WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \segMod1|WideOr8~1_combout\ = (!\arrowMod|mem6x6[5]~15_combout\ & \segMod1|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|mem6x6[5]~15_combout\,
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


