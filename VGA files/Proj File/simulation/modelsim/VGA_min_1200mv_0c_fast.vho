-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/04/2014 11:42:10"

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

ENTITY 	playGame IS
    PORT (
	clock : IN std_logic;
	A : IN std_logic;
	keys : IN std_logic_vector(3 DOWNTO 0);
	gameState : BUFFER std_logic_vector(2 DOWNTO 0);
	keysVoltage : BUFFER std_logic_vector(3 DOWNTO 0);
	seg1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg2 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg3 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg4 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg5 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg6 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDs : BUFFER std_logic_vector(35 DOWNTO 0);
	VGA_R : BUFFER std_logic;
	VGA_G : BUFFER std_logic;
	VGA_B : BUFFER std_logic;
	VGA_HSync : BUFFER std_logic;
	VGA_VSync : BUFFER std_logic
	);
END playGame;

-- Design Ports Information
-- gameState[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameState[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gameState[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keysVoltage[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keysVoltage[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keysVoltage[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keysVoltage[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg4[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg5[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg6[6]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[10]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[14]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[16]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[18]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[19]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[20]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[21]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[22]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[23]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[25]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[26]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[27]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[28]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[29]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[30]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[31]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[32]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[33]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[34]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[35]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HSync	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VSync	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_gameState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_keysVoltage : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic;
SIGNAL ww_VGA_G : std_logic;
SIGNAL ww_VGA_B : std_logic;
SIGNAL ww_VGA_HSync : std_logic;
SIGNAL ww_VGA_VSync : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cd|clkstate~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gameState[0]~output_o\ : std_logic;
SIGNAL \gameState[1]~output_o\ : std_logic;
SIGNAL \gameState[2]~output_o\ : std_logic;
SIGNAL \keysVoltage[0]~output_o\ : std_logic;
SIGNAL \keysVoltage[1]~output_o\ : std_logic;
SIGNAL \keysVoltage[2]~output_o\ : std_logic;
SIGNAL \keysVoltage[3]~output_o\ : std_logic;
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
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \LEDs[10]~output_o\ : std_logic;
SIGNAL \LEDs[11]~output_o\ : std_logic;
SIGNAL \LEDs[12]~output_o\ : std_logic;
SIGNAL \LEDs[13]~output_o\ : std_logic;
SIGNAL \LEDs[14]~output_o\ : std_logic;
SIGNAL \LEDs[15]~output_o\ : std_logic;
SIGNAL \LEDs[16]~output_o\ : std_logic;
SIGNAL \LEDs[17]~output_o\ : std_logic;
SIGNAL \LEDs[18]~output_o\ : std_logic;
SIGNAL \LEDs[19]~output_o\ : std_logic;
SIGNAL \LEDs[20]~output_o\ : std_logic;
SIGNAL \LEDs[21]~output_o\ : std_logic;
SIGNAL \LEDs[22]~output_o\ : std_logic;
SIGNAL \LEDs[23]~output_o\ : std_logic;
SIGNAL \LEDs[24]~output_o\ : std_logic;
SIGNAL \LEDs[25]~output_o\ : std_logic;
SIGNAL \LEDs[26]~output_o\ : std_logic;
SIGNAL \LEDs[27]~output_o\ : std_logic;
SIGNAL \LEDs[28]~output_o\ : std_logic;
SIGNAL \LEDs[29]~output_o\ : std_logic;
SIGNAL \LEDs[30]~output_o\ : std_logic;
SIGNAL \LEDs[31]~output_o\ : std_logic;
SIGNAL \LEDs[32]~output_o\ : std_logic;
SIGNAL \LEDs[33]~output_o\ : std_logic;
SIGNAL \LEDs[34]~output_o\ : std_logic;
SIGNAL \LEDs[35]~output_o\ : std_logic;
SIGNAL \VGA_R~output_o\ : std_logic;
SIGNAL \VGA_G~output_o\ : std_logic;
SIGNAL \VGA_B~output_o\ : std_logic;
SIGNAL \VGA_HSync~output_o\ : std_logic;
SIGNAL \VGA_VSync~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[3]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|keys2[3]~feeder_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[2]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|keys2[2]~feeder_combout\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[1]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|keys2[1]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[1]~0_combout\ : std_logic;
SIGNAL \arrowMod|Add0~0_combout\ : std_logic;
SIGNAL \arrowMod|Add1~0_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[1]~1_combout\ : std_logic;
SIGNAL \arrowMod|Mux4~0_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[0]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|keys2[0]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|WideOr0~0_combout\ : std_logic;
SIGNAL \arrowMod|pressOnce~q\ : std_logic;
SIGNAL \arrowMod|Mux5~2_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[0]~10_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[0]~11_combout\ : std_logic;
SIGNAL \arrowMod|Add2~0_combout\ : std_logic;
SIGNAL \arrowMod|Add0~1\ : std_logic;
SIGNAL \arrowMod|Add0~2_combout\ : std_logic;
SIGNAL \arrowMod|Add1~1\ : std_logic;
SIGNAL \arrowMod|Add1~2_combout\ : std_logic;
SIGNAL \arrowMod|Mux3~0_combout\ : std_logic;
SIGNAL \arrowMod|Add2~3\ : std_logic;
SIGNAL \arrowMod|Add2~4_combout\ : std_logic;
SIGNAL \arrowMod|Add3~1\ : std_logic;
SIGNAL \arrowMod|Add3~3\ : std_logic;
SIGNAL \arrowMod|Add3~4_combout\ : std_logic;
SIGNAL \arrowMod|Mux3~1_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~6_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~7_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[0]~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~3\ : std_logic;
SIGNAL \arrowMod|Add0~5\ : std_logic;
SIGNAL \arrowMod|Add0~7\ : std_logic;
SIGNAL \arrowMod|Add0~8_combout\ : std_logic;
SIGNAL \arrowMod|Add2~9\ : std_logic;
SIGNAL \arrowMod|Add2~10_combout\ : std_logic;
SIGNAL \arrowMod|Mux0~0_combout\ : std_logic;
SIGNAL \arrowMod|Add1~5\ : std_logic;
SIGNAL \arrowMod|Add1~7\ : std_logic;
SIGNAL \arrowMod|Add1~8_combout\ : std_logic;
SIGNAL \arrowMod|Add3~5\ : std_logic;
SIGNAL \arrowMod|Add3~7\ : std_logic;
SIGNAL \arrowMod|Add3~9\ : std_logic;
SIGNAL \arrowMod|Add3~10_combout\ : std_logic;
SIGNAL \arrowMod|Mux0~1_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~0_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~2_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~3_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~22_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~1_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~4_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~5_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[5]~9_combout\ : std_logic;
SIGNAL \arrowMod|Add1~3\ : std_logic;
SIGNAL \arrowMod|Add1~4_combout\ : std_logic;
SIGNAL \arrowMod|Add3~6_combout\ : std_logic;
SIGNAL \arrowMod|Add0~4_combout\ : std_logic;
SIGNAL \arrowMod|Add2~5\ : std_logic;
SIGNAL \arrowMod|Add2~6_combout\ : std_logic;
SIGNAL \arrowMod|Mux2~0_combout\ : std_logic;
SIGNAL \arrowMod|Mux2~1_combout\ : std_logic;
SIGNAL \arrowMod|Add2~7\ : std_logic;
SIGNAL \arrowMod|Add2~8_combout\ : std_logic;
SIGNAL \arrowMod|Add3~8_combout\ : std_logic;
SIGNAL \arrowMod|Add0~6_combout\ : std_logic;
SIGNAL \arrowMod|Add1~6_combout\ : std_logic;
SIGNAL \arrowMod|Mux1~0_combout\ : std_logic;
SIGNAL \arrowMod|Mux1~1_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~0_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~1_combout\ : std_logic;
SIGNAL \arrowMod|Add3~0_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~3_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~4_combout\ : std_logic;
SIGNAL \arrowMod|currentMem[0]~12_combout\ : std_logic;
SIGNAL \arrowMod|Add2~1\ : std_logic;
SIGNAL \arrowMod|Add2~2_combout\ : std_logic;
SIGNAL \arrowMod|Add3~2_combout\ : std_logic;
SIGNAL \arrowMod|Mux4~1_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~18_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~19_combout\ : std_logic;
SIGNAL \ledMod|LEDs[0]~0_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~20_combout\ : std_logic;
SIGNAL \ledMod|LEDs[1]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~21_combout\ : std_logic;
SIGNAL \ledMod|LEDs[2]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~55_combout\ : std_logic;
SIGNAL \ledMod|LEDs[3]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~23_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~24_combout\ : std_logic;
SIGNAL \ledMod|LEDs[4]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~25_combout\ : std_logic;
SIGNAL \ledMod|LEDs[5]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~26_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~56_combout\ : std_logic;
SIGNAL \ledMod|LEDs[7]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~27_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~28_combout\ : std_logic;
SIGNAL \ledMod|LEDs[8]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~29_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~30_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~57_combout\ : std_logic;
SIGNAL \ledMod|LEDs[11]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~31_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~32_combout\ : std_logic;
SIGNAL \ledMod|LEDs[12]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~33_combout\ : std_logic;
SIGNAL \ledMod|LEDs[13]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~34_combout\ : std_logic;
SIGNAL \ledMod|LEDs[14]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~58_combout\ : std_logic;
SIGNAL \ledMod|LEDs[15]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~35_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~36_combout\ : std_logic;
SIGNAL \ledMod|LEDs[16]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~37_combout\ : std_logic;
SIGNAL \ledMod|LEDs[17]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~38_combout\ : std_logic;
SIGNAL \ledMod|LEDs[18]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~59_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~39_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~40_combout\ : std_logic;
SIGNAL \ledMod|LEDs[20]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~41_combout\ : std_logic;
SIGNAL \ledMod|LEDs[21]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~42_combout\ : std_logic;
SIGNAL \ledMod|LEDs[22]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~60_combout\ : std_logic;
SIGNAL \ledMod|LEDs[23]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~43_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~44_combout\ : std_logic;
SIGNAL \ledMod|LEDs[24]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~45_combout\ : std_logic;
SIGNAL \ledMod|LEDs[25]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~46_combout\ : std_logic;
SIGNAL \ledMod|LEDs[26]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~61_combout\ : std_logic;
SIGNAL \ledMod|LEDs[27]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~47_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~48_combout\ : std_logic;
SIGNAL \ledMod|LEDs[28]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~49_combout\ : std_logic;
SIGNAL \ledMod|LEDs[29]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~50_combout\ : std_logic;
SIGNAL \ledMod|LEDs[30]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~62_combout\ : std_logic;
SIGNAL \ledMod|LEDs[31]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~51_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~52_combout\ : std_logic;
SIGNAL \ledMod|LEDs[32]~feeder_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~53_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~54_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~63_combout\ : std_logic;
SIGNAL \dw|Add0~0_combout\ : std_logic;
SIGNAL \cd|Add0~0_combout\ : std_logic;
SIGNAL \cd|Add0~1\ : std_logic;
SIGNAL \cd|Add0~2_combout\ : std_logic;
SIGNAL \cd|Add0~3\ : std_logic;
SIGNAL \cd|Add0~4_combout\ : std_logic;
SIGNAL \cd|Add0~5\ : std_logic;
SIGNAL \cd|Add0~6_combout\ : std_logic;
SIGNAL \cd|Add0~7\ : std_logic;
SIGNAL \cd|Add0~8_combout\ : std_logic;
SIGNAL \cd|count~2_combout\ : std_logic;
SIGNAL \cd|Add0~9\ : std_logic;
SIGNAL \cd|Add0~10_combout\ : std_logic;
SIGNAL \cd|Add0~11\ : std_logic;
SIGNAL \cd|Add0~12_combout\ : std_logic;
SIGNAL \cd|Add0~13\ : std_logic;
SIGNAL \cd|Add0~14_combout\ : std_logic;
SIGNAL \cd|Add0~15\ : std_logic;
SIGNAL \cd|Add0~16_combout\ : std_logic;
SIGNAL \cd|Add0~17\ : std_logic;
SIGNAL \cd|Add0~18_combout\ : std_logic;
SIGNAL \cd|count~1_combout\ : std_logic;
SIGNAL \cd|Add0~19\ : std_logic;
SIGNAL \cd|Add0~20_combout\ : std_logic;
SIGNAL \cd|count~0_combout\ : std_logic;
SIGNAL \cd|Add0~21\ : std_logic;
SIGNAL \cd|Add0~22_combout\ : std_logic;
SIGNAL \cd|count~3_combout\ : std_logic;
SIGNAL \cd|Add0~23\ : std_logic;
SIGNAL \cd|Add0~24_combout\ : std_logic;
SIGNAL \cd|count~4_combout\ : std_logic;
SIGNAL \cd|Add0~25\ : std_logic;
SIGNAL \cd|Add0~26_combout\ : std_logic;
SIGNAL \cd|Add0~27\ : std_logic;
SIGNAL \cd|Add0~28_combout\ : std_logic;
SIGNAL \cd|count~5_combout\ : std_logic;
SIGNAL \cd|Add0~29\ : std_logic;
SIGNAL \cd|Add0~30_combout\ : std_logic;
SIGNAL \cd|Add0~31\ : std_logic;
SIGNAL \cd|Add0~32_combout\ : std_logic;
SIGNAL \cd|count~6_combout\ : std_logic;
SIGNAL \cd|Add0~33\ : std_logic;
SIGNAL \cd|Add0~34_combout\ : std_logic;
SIGNAL \cd|count~7_combout\ : std_logic;
SIGNAL \cd|Add0~35\ : std_logic;
SIGNAL \cd|Add0~36_combout\ : std_logic;
SIGNAL \cd|count~8_combout\ : std_logic;
SIGNAL \cd|Add0~37\ : std_logic;
SIGNAL \cd|Add0~38_combout\ : std_logic;
SIGNAL \cd|count~9_combout\ : std_logic;
SIGNAL \cd|Add0~39\ : std_logic;
SIGNAL \cd|Add0~40_combout\ : std_logic;
SIGNAL \cd|count~10_combout\ : std_logic;
SIGNAL \cd|Add0~41\ : std_logic;
SIGNAL \cd|Add0~42_combout\ : std_logic;
SIGNAL \cd|Add0~43\ : std_logic;
SIGNAL \cd|Add0~44_combout\ : std_logic;
SIGNAL \cd|count~11_combout\ : std_logic;
SIGNAL \cd|Add0~45\ : std_logic;
SIGNAL \cd|Add0~46_combout\ : std_logic;
SIGNAL \cd|Add0~47\ : std_logic;
SIGNAL \cd|Add0~48_combout\ : std_logic;
SIGNAL \cd|Add0~49\ : std_logic;
SIGNAL \cd|Add0~50_combout\ : std_logic;
SIGNAL \cd|Add0~51\ : std_logic;
SIGNAL \cd|Add0~52_combout\ : std_logic;
SIGNAL \cd|Add0~53\ : std_logic;
SIGNAL \cd|Add0~54_combout\ : std_logic;
SIGNAL \cd|Add0~55\ : std_logic;
SIGNAL \cd|Add0~56_combout\ : std_logic;
SIGNAL \cd|Add0~57\ : std_logic;
SIGNAL \cd|Add0~58_combout\ : std_logic;
SIGNAL \cd|Add0~59\ : std_logic;
SIGNAL \cd|Add0~60_combout\ : std_logic;
SIGNAL \cd|Equal0~9_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \cd|Equal0~8_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|Equal0~10_combout\ : std_logic;
SIGNAL \cd|clkstate~0_combout\ : std_logic;
SIGNAL \cd|clkstate~feeder_combout\ : std_logic;
SIGNAL \cd|clkstate~q\ : std_logic;
SIGNAL \cd|clkstate~clkctrl_outclk\ : std_logic;
SIGNAL \syncgen|Add0~0_combout\ : std_logic;
SIGNAL \syncgen|Add0~1\ : std_logic;
SIGNAL \syncgen|Add0~2_combout\ : std_logic;
SIGNAL \syncgen|Add0~3\ : std_logic;
SIGNAL \syncgen|Add0~4_combout\ : std_logic;
SIGNAL \syncgen|Add0~5\ : std_logic;
SIGNAL \syncgen|Add0~6_combout\ : std_logic;
SIGNAL \syncgen|Add0~7\ : std_logic;
SIGNAL \syncgen|Add0~8_combout\ : std_logic;
SIGNAL \syncgen|Add0~9\ : std_logic;
SIGNAL \syncgen|Add0~10_combout\ : std_logic;
SIGNAL \syncgen|Equal0~0_combout\ : std_logic;
SIGNAL \syncgen|Add0~11\ : std_logic;
SIGNAL \syncgen|Add0~12_combout\ : std_logic;
SIGNAL \syncgen|Add0~13\ : std_logic;
SIGNAL \syncgen|Add0~14_combout\ : std_logic;
SIGNAL \syncgen|Add0~15\ : std_logic;
SIGNAL \syncgen|Add0~16_combout\ : std_logic;
SIGNAL \syncgen|CounterX~0_combout\ : std_logic;
SIGNAL \syncgen|Add0~17\ : std_logic;
SIGNAL \syncgen|Add0~18_combout\ : std_logic;
SIGNAL \syncgen|CounterX~1_combout\ : std_logic;
SIGNAL \syncgen|Equal1~0_combout\ : std_logic;
SIGNAL \syncgen|Equal0~1_combout\ : std_logic;
SIGNAL \syncgen|CounterY[0]~22_combout\ : std_logic;
SIGNAL \syncgen|CounterY[1]~8_combout\ : std_logic;
SIGNAL \syncgen|Equal0~2_combout\ : std_logic;
SIGNAL \syncgen|Equal0~3_combout\ : std_logic;
SIGNAL \syncgen|CounterY[1]~9\ : std_logic;
SIGNAL \syncgen|CounterY[2]~10_combout\ : std_logic;
SIGNAL \syncgen|CounterY[2]~11\ : std_logic;
SIGNAL \syncgen|CounterY[3]~12_combout\ : std_logic;
SIGNAL \syncgen|CounterY[3]~13\ : std_logic;
SIGNAL \syncgen|CounterY[4]~14_combout\ : std_logic;
SIGNAL \syncgen|CounterY[4]~15\ : std_logic;
SIGNAL \syncgen|CounterY[5]~16_combout\ : std_logic;
SIGNAL \syncgen|CounterY[5]~17\ : std_logic;
SIGNAL \syncgen|CounterY[6]~18_combout\ : std_logic;
SIGNAL \syncgen|CounterY[6]~19\ : std_logic;
SIGNAL \syncgen|CounterY[7]~20_combout\ : std_logic;
SIGNAL \syncgen|CounterY[7]~21\ : std_logic;
SIGNAL \syncgen|CounterY[8]~23_combout\ : std_logic;
SIGNAL \syncgen|Equal2~0_combout\ : std_logic;
SIGNAL \syncgen|inDisplayArea~0_combout\ : std_logic;
SIGNAL \syncgen|inDisplayArea~q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \dw|mem_col[0]~10_combout\ : std_logic;
SIGNAL \dw|im|always2~0_combout\ : std_logic;
SIGNAL \dw|Add0~1\ : std_logic;
SIGNAL \dw|Add0~2_combout\ : std_logic;
SIGNAL \dw|Add0~3\ : std_logic;
SIGNAL \dw|Add0~4_combout\ : std_logic;
SIGNAL \dw|Add0~5\ : std_logic;
SIGNAL \dw|Add0~6_combout\ : std_logic;
SIGNAL \dw|Add0~7\ : std_logic;
SIGNAL \dw|Add0~8_combout\ : std_logic;
SIGNAL \dw|Add0~9\ : std_logic;
SIGNAL \dw|Add0~10_combout\ : std_logic;
SIGNAL \dw|Add0~11\ : std_logic;
SIGNAL \dw|Add0~12_combout\ : std_logic;
SIGNAL \dw|Add0~13\ : std_logic;
SIGNAL \dw|Add0~14_combout\ : std_logic;
SIGNAL \dw|Add0~15\ : std_logic;
SIGNAL \dw|Add0~16_combout\ : std_logic;
SIGNAL \dw|Add0~17\ : std_logic;
SIGNAL \dw|Add0~18_combout\ : std_logic;
SIGNAL \dw|Add0~19\ : std_logic;
SIGNAL \dw|Add0~20_combout\ : std_logic;
SIGNAL \dw|Add0~21\ : std_logic;
SIGNAL \dw|Add0~22_combout\ : std_logic;
SIGNAL \dw|Add0~23\ : std_logic;
SIGNAL \dw|Add0~24_combout\ : std_logic;
SIGNAL \dw|dpm_addr_A~3_combout\ : std_logic;
SIGNAL \dw|Add0~25\ : std_logic;
SIGNAL \dw|Add0~26_combout\ : std_logic;
SIGNAL \dw|dpm_addr_A~0_combout\ : std_logic;
SIGNAL \dw|Equal0~3_combout\ : std_logic;
SIGNAL \dw|Equal0~2_combout\ : std_logic;
SIGNAL \dw|Equal0~0_combout\ : std_logic;
SIGNAL \dw|Add0~27\ : std_logic;
SIGNAL \dw|Add0~28_combout\ : std_logic;
SIGNAL \dw|dpm_addr_A~1_combout\ : std_logic;
SIGNAL \dw|Add0~29\ : std_logic;
SIGNAL \dw|Add0~30_combout\ : std_logic;
SIGNAL \dw|dpm_addr_A~2_combout\ : std_logic;
SIGNAL \dw|Add0~31\ : std_logic;
SIGNAL \dw|Add0~32_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2_combout\ : std_logic;
SIGNAL \dw|Equal0~1_combout\ : std_logic;
SIGNAL \dw|Equal0~4_combout\ : std_logic;
SIGNAL \dw|mem_col[6]~23\ : std_logic;
SIGNAL \dw|mem_col[7]~24_combout\ : std_logic;
SIGNAL \dw|Equal1~0_combout\ : std_logic;
SIGNAL \dw|mem_col[7]~26_combout\ : std_logic;
SIGNAL \dw|mem_col[0]~11\ : std_logic;
SIGNAL \dw|mem_col[1]~12_combout\ : std_logic;
SIGNAL \dw|mem_col[1]~13\ : std_logic;
SIGNAL \dw|mem_col[2]~14_combout\ : std_logic;
SIGNAL \dw|mem_col[2]~15\ : std_logic;
SIGNAL \dw|mem_col[3]~16_combout\ : std_logic;
SIGNAL \dw|mem_col[3]~17\ : std_logic;
SIGNAL \dw|mem_col[4]~18_combout\ : std_logic;
SIGNAL \dw|mem_col[4]~19\ : std_logic;
SIGNAL \dw|mem_col[5]~20_combout\ : std_logic;
SIGNAL \dw|mem_col[5]~21\ : std_logic;
SIGNAL \dw|mem_col[6]~22_combout\ : std_logic;
SIGNAL \dw|im|X~0_combout\ : std_logic;
SIGNAL \dw|im|X~1_combout\ : std_logic;
SIGNAL \dw|im|LessThan4~5_combout\ : std_logic;
SIGNAL \dw|im|LessThan4~3_combout\ : std_logic;
SIGNAL \dw|im|LessThan4~4_combout\ : std_logic;
SIGNAL \dw|im|LessThan4~6_combout\ : std_logic;
SIGNAL \dw|mem_row[0]~8_combout\ : std_logic;
SIGNAL \dw|Equal1~1_combout\ : std_logic;
SIGNAL \dw|mem_row[0]~9\ : std_logic;
SIGNAL \dw|mem_row[1]~10_combout\ : std_logic;
SIGNAL \dw|mem_row[1]~11\ : std_logic;
SIGNAL \dw|mem_row[2]~12_combout\ : std_logic;
SIGNAL \dw|mem_row[2]~13\ : std_logic;
SIGNAL \dw|mem_row[3]~14_combout\ : std_logic;
SIGNAL \dw|mem_row[3]~15\ : std_logic;
SIGNAL \dw|mem_row[4]~16_combout\ : std_logic;
SIGNAL \dw|mem_row[4]~17\ : std_logic;
SIGNAL \dw|mem_row[5]~18_combout\ : std_logic;
SIGNAL \dw|im|LessThan7~0_combout\ : std_logic;
SIGNAL \dw|im|always2~4_combout\ : std_logic;
SIGNAL \dw|mem_row[5]~19\ : std_logic;
SIGNAL \dw|mem_row[6]~20_combout\ : std_logic;
SIGNAL \dw|im|LessThan7~1_combout\ : std_logic;
SIGNAL \dw|im|always2~5_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \syncMod|int_a~0_combout\ : std_logic;
SIGNAL \syncMod|int_a~q\ : std_logic;
SIGNAL \syncMod|sync_a~0_combout\ : std_logic;
SIGNAL \syncMod|sync_a~q\ : std_logic;
SIGNAL \syncMod|delay_a~q\ : std_logic;
SIGNAL \dw|im|update~0_combout\ : std_logic;
SIGNAL \dw|mem_row[6]~21\ : std_logic;
SIGNAL \dw|mem_row[7]~22_combout\ : std_logic;
SIGNAL \dw|im|always2~10_combout\ : std_logic;
SIGNAL \dw|im|always2~2_combout\ : std_logic;
SIGNAL \dw|im|always2~11_combout\ : std_logic;
SIGNAL \dw|enable~0_combout\ : std_logic;
SIGNAL \dw|enable~q\ : std_logic;
SIGNAL \dw|im|sc_addr[0]~0_combout\ : std_logic;
SIGNAL \dw|im|Add3~0_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[0]~3_combout\ : std_logic;
SIGNAL \dw|im|Add3~1\ : std_logic;
SIGNAL \dw|im|Add3~2_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[1]~4_combout\ : std_logic;
SIGNAL \dw|im|Add3~3\ : std_logic;
SIGNAL \dw|im|Add3~4_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[2]~5_combout\ : std_logic;
SIGNAL \dw|im|Add3~5\ : std_logic;
SIGNAL \dw|im|Add3~6_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[3]~6_combout\ : std_logic;
SIGNAL \dw|im|Add3~7\ : std_logic;
SIGNAL \dw|im|Add3~8_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[4]~9_combout\ : std_logic;
SIGNAL \dw|im|Add3~9\ : std_logic;
SIGNAL \dw|im|Add3~10_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[5]~10_combout\ : std_logic;
SIGNAL \dw|im|Add3~11\ : std_logic;
SIGNAL \dw|im|Add3~12_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[6]~1_combout\ : std_logic;
SIGNAL \dw|im|Add3~13\ : std_logic;
SIGNAL \dw|im|Add3~14_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[7]~8_combout\ : std_logic;
SIGNAL \dw|im|Equal1~1_combout\ : std_logic;
SIGNAL \dw|im|Add3~15\ : std_logic;
SIGNAL \dw|im|Add3~16_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[8]~2_combout\ : std_logic;
SIGNAL \dw|im|Equal1~0_combout\ : std_logic;
SIGNAL \dw|im|Equal1~2_combout\ : std_logic;
SIGNAL \dw|im|update~2_combout\ : std_logic;
SIGNAL \dw|im|LessThan2~1_combout\ : std_logic;
SIGNAL \dw|im|LessThan2~0_combout\ : std_logic;
SIGNAL \dw|im|LessThan2~2_combout\ : std_logic;
SIGNAL \dw|im|always2~6_combout\ : std_logic;
SIGNAL \dw|im|always2~7_combout\ : std_logic;
SIGNAL \dw|im|always2~8_combout\ : std_logic;
SIGNAL \dw|im|LessThan4~2_combout\ : std_logic;
SIGNAL \dw|im|LessThan5~0_combout\ : std_logic;
SIGNAL \dw|im|LessThan5~1_combout\ : std_logic;
SIGNAL \dw|im|LessThan5~2_combout\ : std_logic;
SIGNAL \dw|im|LessThan5~3_combout\ : std_logic;
SIGNAL \dw|im|always2~9_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[0]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[1]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[2]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[3]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[4]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[5]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[6]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[7]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc_addr[8]~_wirecell_combout\ : std_logic;
SIGNAL \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dw|im|Add0~0_combout\ : std_logic;
SIGNAL \dw|im|LessThan3~0_combout\ : std_logic;
SIGNAL \dw|im|always2~1_combout\ : std_logic;
SIGNAL \dw|im|LessThan1~1_combout\ : std_logic;
SIGNAL \dw|im|LessThan1~0_combout\ : std_logic;
SIGNAL \dw|im|LessThan1~2_combout\ : std_logic;
SIGNAL \dw|im|update~1_combout\ : std_logic;
SIGNAL \dw|im|always2~3_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[13]~0_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[0]~3_combout\ : std_logic;
SIGNAL \dw|im|Add0~1\ : std_logic;
SIGNAL \dw|im|Add0~2_combout\ : std_logic;
SIGNAL \dw|im|Add0~3\ : std_logic;
SIGNAL \dw|im|Add0~4_combout\ : std_logic;
SIGNAL \dw|im|Add0~5\ : std_logic;
SIGNAL \dw|im|Add0~6_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[3]~2_combout\ : std_logic;
SIGNAL \dw|im|Add0~7\ : std_logic;
SIGNAL \dw|im|Add0~8_combout\ : std_logic;
SIGNAL \dw|im|Add0~9\ : std_logic;
SIGNAL \dw|im|Add0~10_combout\ : std_logic;
SIGNAL \dw|im|Add0~11\ : std_logic;
SIGNAL \dw|im|Add0~12_combout\ : std_logic;
SIGNAL \dw|im|Add0~13\ : std_logic;
SIGNAL \dw|im|Add0~14_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[7]~4_combout\ : std_logic;
SIGNAL \dw|im|Add0~15\ : std_logic;
SIGNAL \dw|im|Add0~16_combout\ : std_logic;
SIGNAL \dw|im|Add0~17\ : std_logic;
SIGNAL \dw|im|Add0~18_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[9]~5_combout\ : std_logic;
SIGNAL \dw|im|Add0~19\ : std_logic;
SIGNAL \dw|im|Add0~20_combout\ : std_logic;
SIGNAL \dw|im|Add0~21\ : std_logic;
SIGNAL \dw|im|Add0~22_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[11]~6_combout\ : std_logic;
SIGNAL \dw|im|Add0~23\ : std_logic;
SIGNAL \dw|im|Add0~24_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[12]~7_combout\ : std_logic;
SIGNAL \dw|im|Equal0~3_combout\ : std_logic;
SIGNAL \dw|im|Equal0~0_combout\ : std_logic;
SIGNAL \dw|im|Equal0~1_combout\ : std_logic;
SIGNAL \dw|im|Equal0~2_combout\ : std_logic;
SIGNAL \dw|im|Equal0~4_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[0]~1_combout\ : std_logic;
SIGNAL \dw|im|Add0~25\ : std_logic;
SIGNAL \dw|im|Add0~26_combout\ : std_logic;
SIGNAL \dw|im|cd6x6_addr_B[13]~8_combout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \dw|im|image~0_combout\ : std_logic;
SIGNAL \dw|im|image~1_combout\ : std_logic;
SIGNAL \dw|im|image[0]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[35]~1_combout\ : std_logic;
SIGNAL \dw|im|WideOr1~combout\ : std_logic;
SIGNAL \dw|Add4~0_combout\ : std_logic;
SIGNAL \dw|Add4~1_combout\ : std_logic;
SIGNAL \dw|Add4~2_combout\ : std_logic;
SIGNAL \dw|Add3~1\ : std_logic;
SIGNAL \dw|Add3~3\ : std_logic;
SIGNAL \dw|Add3~5\ : std_logic;
SIGNAL \dw|Add3~7\ : std_logic;
SIGNAL \dw|Add3~9\ : std_logic;
SIGNAL \dw|Add3~11\ : std_logic;
SIGNAL \dw|Add3~13\ : std_logic;
SIGNAL \dw|Add3~15\ : std_logic;
SIGNAL \dw|Add3~16_combout\ : std_logic;
SIGNAL \dw|Add3~14_combout\ : std_logic;
SIGNAL \dw|Add3~12_combout\ : std_logic;
SIGNAL \dw|Add3~10_combout\ : std_logic;
SIGNAL \dw|Add3~8_combout\ : std_logic;
SIGNAL \dw|Add3~6_combout\ : std_logic;
SIGNAL \dw|Add3~4_combout\ : std_logic;
SIGNAL \dw|Add3~2_combout\ : std_logic;
SIGNAL \dw|Add3~0_combout\ : std_logic;
SIGNAL \dw|Add5~1\ : std_logic;
SIGNAL \dw|Add5~3\ : std_logic;
SIGNAL \dw|Add5~5\ : std_logic;
SIGNAL \dw|Add5~7\ : std_logic;
SIGNAL \dw|Add5~9\ : std_logic;
SIGNAL \dw|Add5~11\ : std_logic;
SIGNAL \dw|Add5~13\ : std_logic;
SIGNAL \dw|Add5~15\ : std_logic;
SIGNAL \dw|Add5~16_combout\ : std_logic;
SIGNAL \dw|dpm|ram~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \dw|dpm|ram~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \dw|Add4~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[14]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram~4_combout\ : std_logic;
SIGNAL \dw|Add5~6_combout\ : std_logic;
SIGNAL \dw|Add5~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram~7_combout\ : std_logic;
SIGNAL \dw|Add5~14_combout\ : std_logic;
SIGNAL \dw|Add5~12_combout\ : std_logic;
SIGNAL \dw|dpm|ram~9_combout\ : std_logic;
SIGNAL \dw|Add5~10_combout\ : std_logic;
SIGNAL \dw|Add5~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \dw|Add5~0_combout\ : std_logic;
SIGNAL \dw|Add5~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram~6_combout\ : std_logic;
SIGNAL \dw|dpm|ram~10_combout\ : std_logic;
SIGNAL \dw|dpm|ram~11_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\ : std_logic;
SIGNAL \syncgen|CounterX[6]~_wirecell_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ : std_logic;
SIGNAL \dw|dpm|ram~12_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \dw|dpm_re~q\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R~reg0_q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \dw|im|image~3_combout\ : std_logic;
SIGNAL \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dw|im|image~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[37]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\ : std_logic;
SIGNAL \dw|dpm|ram~13_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_G~reg0_q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \dw|im|image~5_combout\ : std_logic;
SIGNAL \dw|im|image~6_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ : std_logic;
SIGNAL \dw|dpm|ram~14_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \VGA_B~reg0_q\ : std_logic;
SIGNAL \syncgen|Equal1~1_combout\ : std_logic;
SIGNAL \syncgen|vga_HS~q\ : std_logic;
SIGNAL \syncgen|Equal2~1_combout\ : std_logic;
SIGNAL \syncgen|Equal2~2_combout\ : std_logic;
SIGNAL \syncgen|vga_VS~q\ : std_logic;
SIGNAL \dw|im|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dw|mem_col\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dw|dpm_addr_A\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \dw|dpm|dataOut_B\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dw|im|image\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \arrowMod|keys1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \syncgen|CounterX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \syncgen|CounterY\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dw|im|readenable\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \dw|im|update\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \dw|im|cd6x6_addr_B\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \dw|im|sc_addr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \arrowMod|keys2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledMod|LEDs\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ledMod|memPosition\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \arrowMod|currentMem\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dw|mem_row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \cd|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dw|ALT_INV_enable~q\ : std_logic;
SIGNAL \syncgen|ALT_INV_vga_VS~q\ : std_logic;
SIGNAL \syncgen|ALT_INV_vga_HS~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_A <= A;
ww_keys <= keys;
gameState <= ww_gameState;
keysVoltage <= ww_keysVoltage;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
seg4 <= ww_seg4;
seg5 <= ww_seg5;
seg6 <= ww_seg6;
LEDs <= ww_LEDs;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HSync <= ww_VGA_HSync;
VGA_VSync <= ww_VGA_VSync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dw|im|image\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \dw|im|image\(1);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \dw|im|image\(2);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\dw|dpm_addr_A\(12) & \dw|dpm_addr_A\(11) & \dw|dpm_addr_A\(10) & \dw|dpm_addr_A\(9) & \dw|dpm_addr_A\(8) & \dw|dpm_addr_A\(7) & \dw|dpm_addr_A\(6) & \dw|dpm_addr_A\(5) & 
\dw|dpm_addr_A\(4) & \dw|dpm_addr_A\(3) & \dw|dpm_addr_A\(2) & \dw|dpm_addr_A\(1) & \dw|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\dw|Add5~8_combout\ & \dw|Add5~6_combout\ & \dw|Add5~4_combout\ & \dw|Add5~2_combout\ & \dw|Add5~0_combout\ & \dw|Add4~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dw|im|sc_addr[8]~_wirecell_combout\ & \dw|im|sc_addr[7]~_wirecell_combout\ & \dw|im|sc_addr[6]~_wirecell_combout\ & \dw|im|sc_addr[5]~_wirecell_combout\ & 
\dw|im|sc_addr[4]~_wirecell_combout\ & \dw|im|sc_addr[3]~_wirecell_combout\ & \dw|im|sc_addr[2]~_wirecell_combout\ & \dw|im|sc_addr[1]~_wirecell_combout\ & \dw|im|sc_addr[0]~_wirecell_combout\);

\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a1\ <= \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a2\ <= \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(11) & \dw|im|cd6x6_addr_B\(10) & \dw|im|cd6x6_addr_B\(9) & \dw|im|cd6x6_addr_B\(8) & \dw|im|cd6x6_addr_B\(7) & 
\dw|im|cd6x6_addr_B\(6) & \dw|im|cd6x6_addr_B\(5) & \dw|im|cd6x6_addr_B\(4) & \dw|im|cd6x6_addr_B\(3) & \dw|im|cd6x6_addr_B\(2) & \dw|im|cd6x6_addr_B\(1) & \dw|im|cd6x6_addr_B\(0));

\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\cd|clkstate~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cd|clkstate~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\dw|ALT_INV_enable~q\ <= NOT \dw|enable~q\;
\syncgen|ALT_INV_vga_VS~q\ <= NOT \syncgen|vga_VS~q\;
\syncgen|ALT_INV_vga_HS~q\ <= NOT \syncgen|vga_HS~q\;

-- Location: IOOBUF_X31_Y34_N2
\gameState[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gameState[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\gameState[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gameState[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\gameState[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \gameState[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\keysVoltage[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \keysVoltage[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\keysVoltage[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \keysVoltage[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\keysVoltage[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \keysVoltage[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\keysVoltage[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \keysVoltage[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\seg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\seg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\seg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\seg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\seg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\seg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\seg2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\seg2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\seg2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\seg2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\seg2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOOBUF_X5_Y34_N16
\seg2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg2[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X53_Y11_N2
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

-- Location: IOOBUF_X23_Y34_N16
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X53_Y11_N9
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X53_Y25_N2
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X43_Y34_N23
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X38_Y34_N2
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

-- Location: IOOBUF_X49_Y34_N9
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X20_Y0_N9
\LEDs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(0),
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\LEDs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(1),
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\LEDs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(2),
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\LEDs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(3),
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\LEDs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(4),
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\LEDs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(5),
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\LEDs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(6),
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\LEDs[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(7),
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\LEDs[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(8),
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\LEDs[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(9),
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\LEDs[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(10),
	devoe => ww_devoe,
	o => \LEDs[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\LEDs[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(11),
	devoe => ww_devoe,
	o => \LEDs[11]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\LEDs[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(12),
	devoe => ww_devoe,
	o => \LEDs[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\LEDs[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(13),
	devoe => ww_devoe,
	o => \LEDs[13]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\LEDs[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(14),
	devoe => ww_devoe,
	o => \LEDs[14]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\LEDs[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(15),
	devoe => ww_devoe,
	o => \LEDs[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\LEDs[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(16),
	devoe => ww_devoe,
	o => \LEDs[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\LEDs[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(17),
	devoe => ww_devoe,
	o => \LEDs[17]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\LEDs[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(18),
	devoe => ww_devoe,
	o => \LEDs[18]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\LEDs[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(19),
	devoe => ww_devoe,
	o => \LEDs[19]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\LEDs[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(20),
	devoe => ww_devoe,
	o => \LEDs[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\LEDs[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(21),
	devoe => ww_devoe,
	o => \LEDs[21]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\LEDs[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(22),
	devoe => ww_devoe,
	o => \LEDs[22]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\LEDs[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(23),
	devoe => ww_devoe,
	o => \LEDs[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\LEDs[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(24),
	devoe => ww_devoe,
	o => \LEDs[24]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\LEDs[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(25),
	devoe => ww_devoe,
	o => \LEDs[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LEDs[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(26),
	devoe => ww_devoe,
	o => \LEDs[26]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\LEDs[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(27),
	devoe => ww_devoe,
	o => \LEDs[27]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\LEDs[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(28),
	devoe => ww_devoe,
	o => \LEDs[28]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\LEDs[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(29),
	devoe => ww_devoe,
	o => \LEDs[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\LEDs[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(30),
	devoe => ww_devoe,
	o => \LEDs[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\LEDs[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(31),
	devoe => ww_devoe,
	o => \LEDs[31]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\LEDs[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(32),
	devoe => ww_devoe,
	o => \LEDs[32]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\LEDs[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(33),
	devoe => ww_devoe,
	o => \LEDs[33]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\LEDs[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(34),
	devoe => ww_devoe,
	o => \LEDs[34]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\LEDs[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledMod|LEDs\(35),
	devoe => ww_devoe,
	o => \LEDs[35]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\VGA_R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\VGA_G~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\VGA_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\VGA_HSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \syncgen|ALT_INV_vga_HS~q\,
	devoe => ww_devoe,
	o => \VGA_HSync~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\VGA_VSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \syncgen|ALT_INV_vga_VS~q\,
	devoe => ww_devoe,
	o => \VGA_VSync~output_o\);

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

-- Location: LCCOMB_X32_Y5_N0
\arrowMod|keys1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys1[3]~feeder_combout\ = \keys[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[3]~input_o\,
	combout => \arrowMod|keys1[3]~feeder_combout\);

-- Location: FF_X32_Y5_N1
\arrowMod|keys1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(3));

-- Location: LCCOMB_X32_Y5_N26
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

-- Location: FF_X32_Y5_N27
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

-- Location: IOIBUF_X36_Y0_N22
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: LCCOMB_X32_Y4_N18
\arrowMod|keys1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys1[2]~feeder_combout\ = \keys[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[2]~input_o\,
	combout => \arrowMod|keys1[2]~feeder_combout\);

-- Location: FF_X32_Y4_N19
\arrowMod|keys1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(2));

-- Location: LCCOMB_X32_Y4_N22
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

-- Location: FF_X32_Y4_N23
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

-- Location: IOIBUF_X34_Y0_N1
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: LCCOMB_X32_Y4_N28
\arrowMod|keys1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys1[1]~feeder_combout\ = \keys[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[1]~input_o\,
	combout => \arrowMod|keys1[1]~feeder_combout\);

-- Location: FF_X32_Y4_N29
\arrowMod|keys1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|keys1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|keys1\(1));

-- Location: LCCOMB_X32_Y4_N0
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

-- Location: FF_X32_Y4_N1
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

-- Location: LCCOMB_X32_Y5_N16
\arrowMod|currentMem[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[1]~0_combout\ = (\arrowMod|keys2\(3)) # ((!\arrowMod|keys2\(2) & \arrowMod|keys2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|currentMem[1]~0_combout\);

-- Location: LCCOMB_X29_Y5_N4
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

-- Location: LCCOMB_X29_Y5_N22
\arrowMod|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~0_combout\ = \arrowMod|currentMem\(1) $ (VCC)
-- \arrowMod|Add1~1\ = CARRY(\arrowMod|currentMem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datad => VCC,
	combout => \arrowMod|Add1~0_combout\,
	cout => \arrowMod|Add1~1\);

-- Location: LCCOMB_X32_Y5_N22
\arrowMod|currentMem[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[1]~1_combout\ = (!\arrowMod|keys2\(3) & !\arrowMod|keys2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datac => \arrowMod|keys2\(2),
	combout => \arrowMod|currentMem[1]~1_combout\);

-- Location: LCCOMB_X29_Y5_N14
\arrowMod|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux4~0_combout\ = (\arrowMod|currentMem[1]~0_combout\ & (((\arrowMod|Add1~0_combout\) # (!\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & (\arrowMod|Add0~0_combout\ & ((\arrowMod|currentMem[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem[1]~0_combout\,
	datab => \arrowMod|Add0~0_combout\,
	datac => \arrowMod|Add1~0_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux4~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: LCCOMB_X34_Y4_N18
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

-- Location: FF_X34_Y4_N19
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

-- Location: LCCOMB_X34_Y4_N0
\arrowMod|keys2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|keys2[0]~feeder_combout\ = \arrowMod|keys1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|keys1\(0),
	combout => \arrowMod|keys2[0]~feeder_combout\);

-- Location: FF_X34_Y4_N1
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

-- Location: LCCOMB_X32_Y5_N8
\arrowMod|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|WideOr0~0_combout\ = (\arrowMod|keys2\(3)) # ((\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(2)) # (\arrowMod|keys2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datab => \arrowMod|keys2\(1),
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(0),
	combout => \arrowMod|WideOr0~0_combout\);

-- Location: FF_X32_Y5_N31
\arrowMod|pressOnce\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|WideOr0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|pressOnce~q\);

-- Location: LCCOMB_X32_Y5_N10
\arrowMod|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~2_combout\ = (\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(0)) # (\arrowMod|keys2\(3) $ (!\arrowMod|keys2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datab => \arrowMod|keys2\(1),
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(0),
	combout => \arrowMod|Mux5~2_combout\);

-- Location: LCCOMB_X32_Y5_N12
\arrowMod|currentMem[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[0]~10_combout\ = (\arrowMod|currentMem\(0) & ((\arrowMod|pressOnce~q\) # ((\arrowMod|Mux5~2_combout\) # (!\arrowMod|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|pressOnce~q\,
	datab => \arrowMod|currentMem\(0),
	datac => \arrowMod|WideOr0~0_combout\,
	datad => \arrowMod|Mux5~2_combout\,
	combout => \arrowMod|currentMem[0]~10_combout\);

-- Location: LCCOMB_X32_Y5_N14
\arrowMod|currentMem[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[0]~11_combout\ = (!\arrowMod|keys2\(1) & (!\arrowMod|keys2\(0) & (\arrowMod|keys2\(3) $ (\arrowMod|keys2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datab => \arrowMod|keys2\(1),
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(0),
	combout => \arrowMod|currentMem[0]~11_combout\);

-- Location: LCCOMB_X30_Y5_N14
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

-- Location: LCCOMB_X29_Y5_N6
\arrowMod|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~2_combout\ = (\arrowMod|currentMem\(2) & (!\arrowMod|Add0~1\)) # (!\arrowMod|currentMem\(2) & ((\arrowMod|Add0~1\) # (GND)))
-- \arrowMod|Add0~3\ = CARRY((!\arrowMod|Add0~1\) # (!\arrowMod|currentMem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add0~1\,
	combout => \arrowMod|Add0~2_combout\,
	cout => \arrowMod|Add0~3\);

-- Location: LCCOMB_X29_Y5_N24
\arrowMod|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~2_combout\ = (\arrowMod|currentMem\(2) & (\arrowMod|Add1~1\ & VCC)) # (!\arrowMod|currentMem\(2) & (!\arrowMod|Add1~1\))
-- \arrowMod|Add1~3\ = CARRY((!\arrowMod|currentMem\(2) & !\arrowMod|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(2),
	datad => VCC,
	cin => \arrowMod|Add1~1\,
	combout => \arrowMod|Add1~2_combout\,
	cout => \arrowMod|Add1~3\);

-- Location: LCCOMB_X29_Y5_N16
\arrowMod|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux3~0_combout\ = (\arrowMod|currentMem[1]~0_combout\ & (((\arrowMod|Add1~2_combout\) # (!\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & (\arrowMod|Add0~2_combout\ & ((\arrowMod|currentMem[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~2_combout\,
	datab => \arrowMod|Add1~2_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y5_N16
\arrowMod|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~2_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|Add2~1\ & VCC)) # (!\arrowMod|currentMem\(1) & (!\arrowMod|Add2~1\))
-- \arrowMod|Add2~3\ = CARRY((!\arrowMod|currentMem\(1) & !\arrowMod|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datad => VCC,
	cin => \arrowMod|Add2~1\,
	combout => \arrowMod|Add2~2_combout\,
	cout => \arrowMod|Add2~3\);

-- Location: LCCOMB_X30_Y5_N18
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

-- Location: LCCOMB_X31_Y5_N6
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

-- Location: LCCOMB_X31_Y5_N8
\arrowMod|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~2_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|Add3~1\)) # (!\arrowMod|currentMem\(1) & ((\arrowMod|Add3~1\) # (GND)))
-- \arrowMod|Add3~3\ = CARRY((!\arrowMod|Add3~1\) # (!\arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datad => VCC,
	cin => \arrowMod|Add3~1\,
	combout => \arrowMod|Add3~2_combout\,
	cout => \arrowMod|Add3~3\);

-- Location: LCCOMB_X31_Y5_N10
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

-- Location: LCCOMB_X30_Y5_N6
\arrowMod|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux3~1_combout\ = (\arrowMod|Mux3~0_combout\ & (((\arrowMod|Add3~4_combout\) # (\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|Mux3~0_combout\ & (\arrowMod|Add2~4_combout\ & ((!\arrowMod|currentMem[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Mux3~0_combout\,
	datab => \arrowMod|Add2~4_combout\,
	datac => \arrowMod|Add3~4_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y5_N28
\arrowMod|currentMem[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~6_combout\ = ((\arrowMod|currentMem\(1) & \arrowMod|currentMem\(2))) # (!\arrowMod|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Equal1~0_combout\,
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(2),
	combout => \arrowMod|currentMem[5]~6_combout\);

-- Location: LCCOMB_X32_Y5_N6
\arrowMod|currentMem[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~7_combout\ = (\arrowMod|keys2\(2) & (!\arrowMod|Equal1~1_combout\ & ((!\arrowMod|keys2\(0))))) # (!\arrowMod|keys2\(2) & (((\arrowMod|currentMem[5]~6_combout\ & \arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Equal1~1_combout\,
	datab => \arrowMod|currentMem[5]~6_combout\,
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(0),
	combout => \arrowMod|currentMem[5]~7_combout\);

-- Location: LCCOMB_X32_Y5_N18
\arrowMod|currentMem[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[0]~8_combout\ = (!\arrowMod|pressOnce~q\ & (\arrowMod|WideOr0~0_combout\ & !\arrowMod|keys2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|pressOnce~q\,
	datac => \arrowMod|WideOr0~0_combout\,
	datad => \arrowMod|keys2\(1),
	combout => \arrowMod|currentMem[0]~8_combout\);

-- Location: LCCOMB_X29_Y5_N8
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

-- Location: LCCOMB_X29_Y5_N10
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

-- Location: LCCOMB_X29_Y5_N12
\arrowMod|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~8_combout\ = \arrowMod|currentMem\(5) $ (\arrowMod|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add0~7\,
	combout => \arrowMod|Add0~8_combout\);

-- Location: LCCOMB_X30_Y5_N22
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

-- Location: LCCOMB_X30_Y5_N24
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

-- Location: LCCOMB_X30_Y5_N10
\arrowMod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux0~0_combout\ = (\arrowMod|currentMem[1]~0_combout\ & (((!\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & ((\arrowMod|currentMem[1]~1_combout\ & (\arrowMod|Add0~8_combout\)) # 
-- (!\arrowMod|currentMem[1]~1_combout\ & ((\arrowMod|Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~8_combout\,
	datab => \arrowMod|Add2~10_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y5_N26
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

-- Location: LCCOMB_X29_Y5_N28
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

-- Location: LCCOMB_X29_Y5_N30
\arrowMod|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~8_combout\ = \arrowMod|currentMem\(5) $ (!\arrowMod|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add1~7\,
	combout => \arrowMod|Add1~8_combout\);

-- Location: LCCOMB_X31_Y5_N12
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

-- Location: LCCOMB_X31_Y5_N14
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

-- Location: LCCOMB_X31_Y5_N16
\arrowMod|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~10_combout\ = \arrowMod|currentMem\(5) $ (\arrowMod|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	cin => \arrowMod|Add3~9\,
	combout => \arrowMod|Add3~10_combout\);

-- Location: LCCOMB_X30_Y5_N0
\arrowMod|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux0~1_combout\ = (\arrowMod|Mux0~0_combout\ & (((\arrowMod|Add3~10_combout\) # (!\arrowMod|currentMem[1]~0_combout\)))) # (!\arrowMod|Mux0~0_combout\ & (\arrowMod|Add1~8_combout\ & (\arrowMod|currentMem[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Mux0~0_combout\,
	datab => \arrowMod|Add1~8_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|Add3~10_combout\,
	combout => \arrowMod|Mux0~1_combout\);

-- Location: FF_X30_Y5_N1
\arrowMod|currentMem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|Mux0~1_combout\,
	ena => \arrowMod|currentMem[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(5));

-- Location: LCCOMB_X31_Y5_N0
\arrowMod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~0_combout\ = (!\arrowMod|currentMem\(2) & !\arrowMod|currentMem\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(3),
	combout => \arrowMod|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y5_N30
\arrowMod|currentMem[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~2_combout\ = (!\arrowMod|currentMem\(5) & (((!\arrowMod|currentMem\(3)) # (!\arrowMod|currentMem\(1))) # (!\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|currentMem\(2),
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(3),
	combout => \arrowMod|currentMem[5]~2_combout\);

-- Location: LCCOMB_X31_Y5_N18
\arrowMod|currentMem[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~3_combout\ = (\arrowMod|currentMem[5]~2_combout\) # ((\arrowMod|currentMem\(4) & (\arrowMod|currentMem\(5))) # (!\arrowMod|currentMem\(4) & ((!\arrowMod|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|Mux5~0_combout\,
	datac => \arrowMod|currentMem[5]~2_combout\,
	datad => \arrowMod|currentMem\(4),
	combout => \arrowMod|currentMem[5]~3_combout\);

-- Location: LCCOMB_X31_Y5_N20
\ledMod|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~22_combout\ = (\arrowMod|currentMem\(1) & \arrowMod|currentMem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~22_combout\);

-- Location: LCCOMB_X31_Y5_N24
\arrowMod|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~1_combout\ = (!\arrowMod|currentMem\(4) & (\arrowMod|Mux5~0_combout\ & (\arrowMod|currentMem\(5) & \ledMod|Decoder0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|Mux5~0_combout\,
	datac => \arrowMod|currentMem\(5),
	datad => \ledMod|Decoder0~22_combout\,
	combout => \arrowMod|Mux5~1_combout\);

-- Location: LCCOMB_X32_Y5_N24
\arrowMod|currentMem[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~4_combout\ = (\arrowMod|keys2\(3) & (!\arrowMod|keys2\(1) & ((!\arrowMod|Mux5~1_combout\)))) # (!\arrowMod|keys2\(3) & (\arrowMod|keys2\(1) & (\arrowMod|currentMem[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(3),
	datab => \arrowMod|keys2\(1),
	datac => \arrowMod|currentMem[5]~3_combout\,
	datad => \arrowMod|Mux5~1_combout\,
	combout => \arrowMod|currentMem[5]~4_combout\);

-- Location: LCCOMB_X32_Y5_N20
\arrowMod|currentMem[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~5_combout\ = (!\arrowMod|pressOnce~q\ & (\arrowMod|currentMem[5]~4_combout\ & (!\arrowMod|keys2\(2) & !\arrowMod|keys2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|pressOnce~q\,
	datab => \arrowMod|currentMem[5]~4_combout\,
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(0),
	combout => \arrowMod|currentMem[5]~5_combout\);

-- Location: LCCOMB_X32_Y5_N28
\arrowMod|currentMem[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[5]~9_combout\ = (\arrowMod|currentMem[5]~5_combout\) # ((\arrowMod|currentMem[5]~7_combout\ & (\arrowMod|currentMem[0]~8_combout\ & !\arrowMod|keys2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem[5]~7_combout\,
	datab => \arrowMod|currentMem[0]~8_combout\,
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|currentMem[5]~5_combout\,
	combout => \arrowMod|currentMem[5]~9_combout\);

-- Location: FF_X30_Y5_N7
\arrowMod|currentMem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|Mux3~1_combout\,
	ena => \arrowMod|currentMem[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(2));

-- Location: LCCOMB_X30_Y5_N20
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

-- Location: LCCOMB_X30_Y5_N12
\arrowMod|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux2~0_combout\ = (\arrowMod|currentMem[1]~0_combout\ & (((!\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & ((\arrowMod|currentMem[1]~1_combout\ & (\arrowMod|Add0~4_combout\)) # 
-- (!\arrowMod|currentMem[1]~1_combout\ & ((\arrowMod|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~4_combout\,
	datab => \arrowMod|Add2~6_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y5_N28
\arrowMod|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux2~1_combout\ = (\arrowMod|currentMem[1]~0_combout\ & ((\arrowMod|Mux2~0_combout\ & ((\arrowMod|Add3~6_combout\))) # (!\arrowMod|Mux2~0_combout\ & (\arrowMod|Add1~4_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & 
-- (((\arrowMod|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add1~4_combout\,
	datab => \arrowMod|Add3~6_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|Mux2~0_combout\,
	combout => \arrowMod|Mux2~1_combout\);

-- Location: FF_X30_Y5_N29
\arrowMod|currentMem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|Mux2~1_combout\,
	ena => \arrowMod|currentMem[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(3));

-- Location: LCCOMB_X29_Y5_N18
\arrowMod|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux1~0_combout\ = (\arrowMod|currentMem[1]~0_combout\ & (((\arrowMod|Add1~6_combout\) # (!\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|currentMem[1]~0_combout\ & (\arrowMod|Add0~6_combout\ & ((\arrowMod|currentMem[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~6_combout\,
	datab => \arrowMod|Add1~6_combout\,
	datac => \arrowMod|currentMem[1]~0_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y5_N2
\arrowMod|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux1~1_combout\ = (\arrowMod|currentMem[1]~1_combout\ & (((\arrowMod|Mux1~0_combout\)))) # (!\arrowMod|currentMem[1]~1_combout\ & ((\arrowMod|Mux1~0_combout\ & ((\arrowMod|Add3~8_combout\))) # (!\arrowMod|Mux1~0_combout\ & 
-- (\arrowMod|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add2~8_combout\,
	datab => \arrowMod|currentMem[1]~1_combout\,
	datac => \arrowMod|Add3~8_combout\,
	datad => \arrowMod|Mux1~0_combout\,
	combout => \arrowMod|Mux1~1_combout\);

-- Location: FF_X30_Y5_N3
\arrowMod|currentMem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|Mux1~1_combout\,
	ena => \arrowMod|currentMem[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(4));

-- Location: LCCOMB_X31_Y5_N22
\arrowMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~0_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(5) & !\arrowMod|currentMem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(3),
	combout => \arrowMod|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y5_N2
\arrowMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~1_combout\ = (\arrowMod|Equal1~0_combout\ & (!\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(2) & !\arrowMod|currentMem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Equal1~0_combout\,
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(0),
	combout => \arrowMod|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y5_N4
\arrowMod|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~3_combout\ = (\arrowMod|keys2\(3) & ((\arrowMod|Add3~0_combout\) # (\arrowMod|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add3~0_combout\,
	datab => \arrowMod|Mux5~1_combout\,
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|Mux5~3_combout\);

-- Location: LCCOMB_X31_Y5_N26
\arrowMod|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~4_combout\ = (\arrowMod|Mux5~3_combout\) # ((\arrowMod|Add2~0_combout\ & (!\arrowMod|Equal1~1_combout\ & !\arrowMod|keys2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add2~0_combout\,
	datab => \arrowMod|Equal1~1_combout\,
	datac => \arrowMod|Mux5~3_combout\,
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|Mux5~4_combout\);

-- Location: LCCOMB_X32_Y5_N4
\arrowMod|currentMem[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|currentMem[0]~12_combout\ = (\arrowMod|currentMem[0]~10_combout\) # ((\arrowMod|currentMem[0]~11_combout\ & (\arrowMod|Mux5~4_combout\ & \arrowMod|currentMem[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem[0]~10_combout\,
	datab => \arrowMod|currentMem[0]~11_combout\,
	datac => \arrowMod|Mux5~4_combout\,
	datad => \arrowMod|currentMem[0]~8_combout\,
	combout => \arrowMod|currentMem[0]~12_combout\);

-- Location: FF_X32_Y5_N5
\arrowMod|currentMem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|currentMem[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(0));

-- Location: LCCOMB_X30_Y5_N4
\arrowMod|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux4~1_combout\ = (\arrowMod|Mux4~0_combout\ & (((\arrowMod|Add3~2_combout\) # (\arrowMod|currentMem[1]~1_combout\)))) # (!\arrowMod|Mux4~0_combout\ & (\arrowMod|Add2~2_combout\ & ((!\arrowMod|currentMem[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Mux4~0_combout\,
	datab => \arrowMod|Add2~2_combout\,
	datac => \arrowMod|Add3~2_combout\,
	datad => \arrowMod|currentMem[1]~1_combout\,
	combout => \arrowMod|Mux4~1_combout\);

-- Location: FF_X30_Y5_N5
\arrowMod|currentMem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \arrowMod|Mux4~1_combout\,
	ena => \arrowMod|currentMem[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \arrowMod|currentMem\(1));

-- Location: LCCOMB_X31_Y4_N26
\ledMod|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~18_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(5) & !\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~18_combout\);

-- Location: LCCOMB_X30_Y4_N24
\ledMod|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~19_combout\ = (\arrowMod|currentMem\(1)) # ((\arrowMod|currentMem\(0)) # (!\ledMod|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~18_combout\,
	combout => \ledMod|Decoder0~19_combout\);

-- Location: FF_X30_Y4_N25
\ledMod|memPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(0));

-- Location: LCCOMB_X29_Y4_N12
\ledMod|LEDs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[0]~0_combout\ = !\ledMod|memPosition\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(0),
	combout => \ledMod|LEDs[0]~0_combout\);

-- Location: FF_X29_Y4_N13
\ledMod|LEDs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(0));

-- Location: LCCOMB_X30_Y4_N22
\ledMod|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~20_combout\ = (!\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~18_combout\,
	combout => \ledMod|Decoder0~20_combout\);

-- Location: FF_X30_Y4_N23
\dw|im|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|X\(0));

-- Location: LCCOMB_X30_Y8_N0
\ledMod|LEDs[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[1]~feeder_combout\ = \dw|im|X\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|X\(0),
	combout => \ledMod|LEDs[1]~feeder_combout\);

-- Location: FF_X30_Y8_N1
\ledMod|LEDs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(1));

-- Location: LCCOMB_X30_Y4_N12
\ledMod|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~21_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~18_combout\,
	combout => \ledMod|Decoder0~21_combout\);

-- Location: FF_X30_Y4_N13
\dw|im|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|X\(2));

-- Location: LCCOMB_X30_Y4_N28
\ledMod|LEDs[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[2]~feeder_combout\ = \dw|im|X\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|X\(2),
	combout => \ledMod|LEDs[2]~feeder_combout\);

-- Location: FF_X30_Y4_N29
\ledMod|LEDs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(2));

-- Location: LCCOMB_X30_Y4_N18
\ledMod|Decoder0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~55_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~18_combout\,
	combout => \ledMod|Decoder0~55_combout\);

-- Location: FF_X30_Y4_N19
\ledMod|memPosition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(3));

-- Location: LCCOMB_X30_Y4_N30
\ledMod|LEDs[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[3]~feeder_combout\ = \ledMod|memPosition\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(3),
	combout => \ledMod|LEDs[3]~feeder_combout\);

-- Location: FF_X30_Y4_N31
\ledMod|LEDs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(3));

-- Location: LCCOMB_X31_Y4_N4
\ledMod|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~23_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(5) & \arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~23_combout\);

-- Location: LCCOMB_X39_Y4_N6
\ledMod|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~24_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~23_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~23_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~24_combout\);

-- Location: FF_X39_Y4_N7
\ledMod|memPosition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(4));

-- Location: LCCOMB_X46_Y4_N16
\ledMod|LEDs[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[4]~feeder_combout\ = \ledMod|memPosition\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(4),
	combout => \ledMod|LEDs[4]~feeder_combout\);

-- Location: FF_X46_Y4_N17
\ledMod|LEDs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(4));

-- Location: LCCOMB_X39_Y4_N20
\ledMod|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~25_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~23_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~23_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~25_combout\);

-- Location: FF_X39_Y4_N21
\ledMod|memPosition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(5));

-- Location: LCCOMB_X39_Y4_N28
\ledMod|LEDs[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[5]~feeder_combout\ = \ledMod|memPosition\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(5),
	combout => \ledMod|LEDs[5]~feeder_combout\);

-- Location: FF_X39_Y4_N29
\ledMod|LEDs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(5));

-- Location: LCCOMB_X39_Y4_N26
\ledMod|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~26_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~23_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~23_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~26_combout\);

-- Location: FF_X39_Y4_N27
\ledMod|memPosition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(6));

-- Location: FF_X39_Y4_N15
\ledMod|LEDs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(6));

-- Location: LCCOMB_X39_Y4_N0
\ledMod|Decoder0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~56_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~23_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~23_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~56_combout\);

-- Location: FF_X39_Y4_N1
\ledMod|memPosition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(7));

-- Location: LCCOMB_X39_Y4_N8
\ledMod|LEDs[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[7]~feeder_combout\ = \ledMod|memPosition\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(7),
	combout => \ledMod|LEDs[7]~feeder_combout\);

-- Location: FF_X39_Y4_N9
\ledMod|LEDs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(7));

-- Location: LCCOMB_X29_Y4_N4
\ledMod|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~27_combout\ = (!\arrowMod|currentMem\(5) & (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(2) & \arrowMod|currentMem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(3),
	combout => \ledMod|Decoder0~27_combout\);

-- Location: LCCOMB_X17_Y4_N4
\ledMod|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~28_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~27_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~27_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~28_combout\);

-- Location: FF_X17_Y4_N5
\ledMod|memPosition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(8));

-- Location: LCCOMB_X16_Y4_N8
\ledMod|LEDs[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[8]~feeder_combout\ = \ledMod|memPosition\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(8),
	combout => \ledMod|LEDs[8]~feeder_combout\);

-- Location: FF_X16_Y4_N9
\ledMod|LEDs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(8));

-- Location: LCCOMB_X17_Y4_N22
\ledMod|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~29_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~27_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~27_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~29_combout\);

-- Location: FF_X17_Y4_N23
\ledMod|memPosition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(9));

-- Location: FF_X17_Y4_N13
\ledMod|LEDs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(9));

-- Location: LCCOMB_X17_Y4_N8
\ledMod|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~30_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~27_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~27_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~30_combout\);

-- Location: FF_X17_Y4_N9
\ledMod|memPosition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(10));

-- Location: FF_X16_Y4_N27
\ledMod|LEDs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(10));

-- Location: LCCOMB_X17_Y4_N6
\ledMod|Decoder0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~57_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~27_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~27_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~57_combout\);

-- Location: FF_X17_Y4_N7
\ledMod|memPosition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(11));

-- Location: LCCOMB_X16_Y4_N12
\ledMod|LEDs[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[11]~feeder_combout\ = \ledMod|memPosition\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(11),
	combout => \ledMod|LEDs[11]~feeder_combout\);

-- Location: FF_X16_Y4_N13
\ledMod|LEDs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(11));

-- Location: LCCOMB_X29_Y4_N6
\ledMod|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~31_combout\ = (!\arrowMod|currentMem\(5) & (!\arrowMod|currentMem\(4) & (\arrowMod|currentMem\(2) & \arrowMod|currentMem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(3),
	combout => \ledMod|Decoder0~31_combout\);

-- Location: LCCOMB_X17_Y4_N20
\ledMod|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~32_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~31_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~31_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~32_combout\);

-- Location: FF_X17_Y4_N21
\ledMod|memPosition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(12));

-- Location: LCCOMB_X17_Y4_N10
\ledMod|LEDs[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[12]~feeder_combout\ = \ledMod|memPosition\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(12),
	combout => \ledMod|LEDs[12]~feeder_combout\);

-- Location: FF_X17_Y4_N11
\ledMod|LEDs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(12));

-- Location: LCCOMB_X17_Y4_N26
\ledMod|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~33_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~31_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~31_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~33_combout\);

-- Location: FF_X17_Y4_N27
\ledMod|memPosition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(13));

-- Location: LCCOMB_X16_Y4_N10
\ledMod|LEDs[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[13]~feeder_combout\ = \ledMod|memPosition\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(13),
	combout => \ledMod|LEDs[13]~feeder_combout\);

-- Location: FF_X16_Y4_N11
\ledMod|LEDs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(13));

-- Location: LCCOMB_X17_Y4_N16
\ledMod|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~34_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~31_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~31_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~34_combout\);

-- Location: FF_X17_Y4_N17
\ledMod|memPosition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(14));

-- Location: LCCOMB_X17_Y4_N28
\ledMod|LEDs[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[14]~feeder_combout\ = \ledMod|memPosition\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(14),
	combout => \ledMod|LEDs[14]~feeder_combout\);

-- Location: FF_X17_Y4_N29
\ledMod|LEDs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(14));

-- Location: LCCOMB_X17_Y4_N18
\ledMod|Decoder0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~58_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~31_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~31_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~58_combout\);

-- Location: FF_X17_Y4_N19
\ledMod|memPosition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(15));

-- Location: LCCOMB_X17_Y4_N30
\ledMod|LEDs[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[15]~feeder_combout\ = \ledMod|memPosition\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(15),
	combout => \ledMod|LEDs[15]~feeder_combout\);

-- Location: FF_X17_Y4_N31
\ledMod|LEDs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(15));

-- Location: LCCOMB_X31_Y4_N18
\ledMod|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~35_combout\ = (\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(5) & !\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~35_combout\);

-- Location: LCCOMB_X31_Y4_N10
\ledMod|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~36_combout\ = (\ledMod|Decoder0~35_combout\ & (!\arrowMod|currentMem\(1) & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~35_combout\,
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~36_combout\);

-- Location: FF_X31_Y4_N11
\ledMod|memPosition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(16));

-- Location: LCCOMB_X31_Y4_N28
\ledMod|LEDs[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[16]~feeder_combout\ = \ledMod|memPosition\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(16),
	combout => \ledMod|LEDs[16]~feeder_combout\);

-- Location: FF_X31_Y4_N29
\ledMod|LEDs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(16));

-- Location: LCCOMB_X30_Y4_N16
\ledMod|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~37_combout\ = (!\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~35_combout\,
	combout => \ledMod|Decoder0~37_combout\);

-- Location: FF_X30_Y4_N17
\ledMod|memPosition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(17));

-- Location: LCCOMB_X30_Y4_N20
\ledMod|LEDs[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[17]~feeder_combout\ = \ledMod|memPosition\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(17),
	combout => \ledMod|LEDs[17]~feeder_combout\);

-- Location: FF_X30_Y4_N21
\ledMod|LEDs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(17));

-- Location: LCCOMB_X30_Y4_N6
\ledMod|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~38_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~35_combout\,
	combout => \ledMod|Decoder0~38_combout\);

-- Location: FF_X30_Y4_N7
\ledMod|memPosition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(18));

-- Location: LCCOMB_X29_Y4_N22
\ledMod|LEDs[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[18]~feeder_combout\ = \ledMod|memPosition\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(18),
	combout => \ledMod|LEDs[18]~feeder_combout\);

-- Location: FF_X29_Y4_N23
\ledMod|LEDs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(18));

-- Location: LCCOMB_X31_Y4_N0
\ledMod|Decoder0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~59_combout\ = (\ledMod|Decoder0~35_combout\ & (\arrowMod|currentMem\(1) & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~35_combout\,
	datac => \arrowMod|currentMem\(1),
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~59_combout\);

-- Location: FF_X31_Y4_N1
\ledMod|memPosition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(19));

-- Location: FF_X31_Y5_N17
\ledMod|LEDs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(19));

-- Location: LCCOMB_X31_Y4_N24
\ledMod|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~39_combout\ = (\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(5) & \arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~39_combout\);

-- Location: LCCOMB_X46_Y4_N24
\ledMod|Decoder0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~40_combout\ = (!\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~39_combout\,
	combout => \ledMod|Decoder0~40_combout\);

-- Location: FF_X46_Y4_N25
\ledMod|memPosition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(20));

-- Location: LCCOMB_X47_Y4_N24
\ledMod|LEDs[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[20]~feeder_combout\ = \ledMod|memPosition\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(20),
	combout => \ledMod|LEDs[20]~feeder_combout\);

-- Location: FF_X47_Y4_N25
\ledMod|LEDs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(20));

-- Location: LCCOMB_X46_Y4_N10
\ledMod|Decoder0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~41_combout\ = (!\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~39_combout\,
	combout => \ledMod|Decoder0~41_combout\);

-- Location: FF_X46_Y4_N11
\ledMod|memPosition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(21));

-- Location: LCCOMB_X46_Y4_N6
\ledMod|LEDs[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[21]~feeder_combout\ = \ledMod|memPosition\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(21),
	combout => \ledMod|LEDs[21]~feeder_combout\);

-- Location: FF_X46_Y4_N7
\ledMod|LEDs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(21));

-- Location: LCCOMB_X46_Y4_N12
\ledMod|Decoder0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~42_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~39_combout\,
	combout => \ledMod|Decoder0~42_combout\);

-- Location: FF_X46_Y4_N13
\ledMod|memPosition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(22));

-- Location: LCCOMB_X46_Y4_N0
\ledMod|LEDs[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[22]~feeder_combout\ = \ledMod|memPosition\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(22),
	combout => \ledMod|LEDs[22]~feeder_combout\);

-- Location: FF_X46_Y4_N1
\ledMod|LEDs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(22));

-- Location: LCCOMB_X46_Y4_N18
\ledMod|Decoder0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~60_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~39_combout\,
	combout => \ledMod|Decoder0~60_combout\);

-- Location: FF_X46_Y4_N19
\ledMod|memPosition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(23));

-- Location: LCCOMB_X46_Y4_N22
\ledMod|LEDs[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[23]~feeder_combout\ = \ledMod|memPosition\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(23),
	combout => \ledMod|LEDs[23]~feeder_combout\);

-- Location: FF_X46_Y4_N23
\ledMod|LEDs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(23));

-- Location: LCCOMB_X31_Y4_N14
\ledMod|Decoder0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~43_combout\ = (\arrowMod|currentMem\(4) & (\arrowMod|currentMem\(3) & (!\arrowMod|currentMem\(5) & !\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~43_combout\);

-- Location: LCCOMB_X39_Y4_N2
\ledMod|Decoder0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~44_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~43_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~43_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~44_combout\);

-- Location: FF_X39_Y4_N3
\ledMod|memPosition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(24));

-- Location: LCCOMB_X39_Y4_N18
\ledMod|LEDs[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[24]~feeder_combout\ = \ledMod|memPosition\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(24),
	combout => \ledMod|LEDs[24]~feeder_combout\);

-- Location: FF_X39_Y4_N19
\ledMod|LEDs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(24));

-- Location: LCCOMB_X39_Y4_N12
\ledMod|Decoder0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~45_combout\ = (!\arrowMod|currentMem\(1) & (\ledMod|Decoder0~43_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~43_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~45_combout\);

-- Location: FF_X39_Y4_N13
\ledMod|memPosition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(25));

-- Location: LCCOMB_X39_Y4_N4
\ledMod|LEDs[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[25]~feeder_combout\ = \ledMod|memPosition\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(25),
	combout => \ledMod|LEDs[25]~feeder_combout\);

-- Location: FF_X39_Y4_N5
\ledMod|LEDs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(25));

-- Location: LCCOMB_X39_Y4_N10
\ledMod|Decoder0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~46_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~43_combout\ & !\arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~43_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~46_combout\);

-- Location: FF_X39_Y4_N11
\ledMod|memPosition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(26));

-- Location: LCCOMB_X39_Y4_N22
\ledMod|LEDs[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[26]~feeder_combout\ = \ledMod|memPosition\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(26),
	combout => \ledMod|LEDs[26]~feeder_combout\);

-- Location: FF_X39_Y4_N23
\ledMod|LEDs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(26));

-- Location: LCCOMB_X39_Y4_N24
\ledMod|Decoder0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~61_combout\ = (\arrowMod|currentMem\(1) & (\ledMod|Decoder0~43_combout\ & \arrowMod|currentMem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \ledMod|Decoder0~43_combout\,
	datad => \arrowMod|currentMem\(0),
	combout => \ledMod|Decoder0~61_combout\);

-- Location: FF_X39_Y4_N25
\ledMod|memPosition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(27));

-- Location: LCCOMB_X39_Y4_N16
\ledMod|LEDs[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[27]~feeder_combout\ = \ledMod|memPosition\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(27),
	combout => \ledMod|LEDs[27]~feeder_combout\);

-- Location: FF_X39_Y4_N17
\ledMod|LEDs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(27));

-- Location: LCCOMB_X29_Y4_N24
\ledMod|Decoder0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~47_combout\ = (!\arrowMod|currentMem\(5) & (\arrowMod|currentMem\(4) & (\arrowMod|currentMem\(2) & \arrowMod|currentMem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(5),
	datab => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(2),
	datad => \arrowMod|currentMem\(3),
	combout => \ledMod|Decoder0~47_combout\);

-- Location: LCCOMB_X30_Y4_N0
\ledMod|Decoder0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~48_combout\ = (\ledMod|Decoder0~47_combout\ & (!\arrowMod|currentMem\(0) & !\arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~47_combout\,
	datac => \arrowMod|currentMem\(0),
	datad => \arrowMod|currentMem\(1),
	combout => \ledMod|Decoder0~48_combout\);

-- Location: FF_X30_Y4_N1
\ledMod|memPosition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(28));

-- Location: LCCOMB_X30_Y4_N14
\ledMod|LEDs[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[28]~feeder_combout\ = \ledMod|memPosition\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(28),
	combout => \ledMod|LEDs[28]~feeder_combout\);

-- Location: FF_X30_Y4_N15
\ledMod|LEDs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(28));

-- Location: LCCOMB_X30_Y4_N10
\ledMod|Decoder0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~49_combout\ = (\ledMod|Decoder0~47_combout\ & (\arrowMod|currentMem\(0) & !\arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~47_combout\,
	datac => \arrowMod|currentMem\(0),
	datad => \arrowMod|currentMem\(1),
	combout => \ledMod|Decoder0~49_combout\);

-- Location: FF_X30_Y4_N11
\ledMod|memPosition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(29));

-- Location: LCCOMB_X30_Y4_N4
\ledMod|LEDs[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[29]~feeder_combout\ = \ledMod|memPosition\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(29),
	combout => \ledMod|LEDs[29]~feeder_combout\);

-- Location: FF_X30_Y4_N5
\ledMod|LEDs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(29));

-- Location: LCCOMB_X30_Y4_N8
\ledMod|Decoder0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~50_combout\ = (\ledMod|Decoder0~47_combout\ & (!\arrowMod|currentMem\(0) & \arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~47_combout\,
	datac => \arrowMod|currentMem\(0),
	datad => \arrowMod|currentMem\(1),
	combout => \ledMod|Decoder0~50_combout\);

-- Location: FF_X30_Y4_N9
\ledMod|memPosition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(30));

-- Location: LCCOMB_X27_Y4_N4
\ledMod|LEDs[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[30]~feeder_combout\ = \ledMod|memPosition\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(30),
	combout => \ledMod|LEDs[30]~feeder_combout\);

-- Location: FF_X27_Y4_N5
\ledMod|LEDs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(30));

-- Location: LCCOMB_X30_Y4_N2
\ledMod|Decoder0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~62_combout\ = (\ledMod|Decoder0~47_combout\ & (\arrowMod|currentMem\(0) & \arrowMod|currentMem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|Decoder0~47_combout\,
	datac => \arrowMod|currentMem\(0),
	datad => \arrowMod|currentMem\(1),
	combout => \ledMod|Decoder0~62_combout\);

-- Location: FF_X30_Y4_N3
\ledMod|memPosition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(31));

-- Location: LCCOMB_X30_Y4_N26
\ledMod|LEDs[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[31]~feeder_combout\ = \ledMod|memPosition\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(31),
	combout => \ledMod|LEDs[31]~feeder_combout\);

-- Location: FF_X30_Y4_N27
\ledMod|LEDs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(31));

-- Location: LCCOMB_X31_Y4_N12
\ledMod|Decoder0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~51_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(3) & (\arrowMod|currentMem\(5) & !\arrowMod|currentMem\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datab => \arrowMod|currentMem\(3),
	datac => \arrowMod|currentMem\(5),
	datad => \arrowMod|currentMem\(2),
	combout => \ledMod|Decoder0~51_combout\);

-- Location: LCCOMB_X46_Y4_N28
\ledMod|Decoder0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~52_combout\ = (!\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~51_combout\,
	combout => \ledMod|Decoder0~52_combout\);

-- Location: FF_X46_Y4_N29
\ledMod|memPosition[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(32));

-- Location: LCCOMB_X46_Y4_N20
\ledMod|LEDs[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[32]~feeder_combout\ = \ledMod|memPosition\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|memPosition\(32),
	combout => \ledMod|LEDs[32]~feeder_combout\);

-- Location: FF_X46_Y4_N21
\ledMod|LEDs[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(32));

-- Location: LCCOMB_X46_Y4_N26
\ledMod|Decoder0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~53_combout\ = (!\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~51_combout\,
	combout => \ledMod|Decoder0~53_combout\);

-- Location: FF_X46_Y4_N27
\ledMod|memPosition[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(33));

-- Location: FF_X46_Y4_N3
\ledMod|LEDs[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(33));

-- Location: LCCOMB_X46_Y4_N8
\ledMod|Decoder0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~54_combout\ = (\arrowMod|currentMem\(1) & (!\arrowMod|currentMem\(0) & \ledMod|Decoder0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~51_combout\,
	combout => \ledMod|Decoder0~54_combout\);

-- Location: FF_X46_Y4_N9
\ledMod|memPosition[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(34));

-- Location: FF_X46_Y4_N5
\ledMod|LEDs[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(34));

-- Location: LCCOMB_X46_Y4_N30
\ledMod|Decoder0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~63_combout\ = (\arrowMod|currentMem\(1) & (\arrowMod|currentMem\(0) & \ledMod|Decoder0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|currentMem\(1),
	datac => \arrowMod|currentMem\(0),
	datad => \ledMod|Decoder0~51_combout\,
	combout => \ledMod|Decoder0~63_combout\);

-- Location: FF_X46_Y4_N31
\ledMod|memPosition[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|Decoder0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|memPosition\(35));

-- Location: FF_X46_Y4_N15
\ledMod|LEDs[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|memPosition\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(35));

-- Location: LCCOMB_X30_Y11_N16
\dw|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~0_combout\ = \dw|dpm_addr_A\(0) $ (VCC)
-- \dw|Add0~1\ = CARRY(\dw|dpm_addr_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(0),
	datad => VCC,
	combout => \dw|Add0~0_combout\,
	cout => \dw|Add0~1\);

-- Location: FF_X30_Y11_N17
\dw|dpm_addr_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(0));

-- Location: LCCOMB_X36_Y24_N2
\cd|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~0_combout\ = (\dw|dpm_addr_A\(0) & (\cd|count\(1) $ (VCC))) # (!\dw|dpm_addr_A\(0) & (\cd|count\(1) & VCC))
-- \cd|Add0~1\ = CARRY((\dw|dpm_addr_A\(0) & \cd|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(0),
	datab => \cd|count\(1),
	datad => VCC,
	combout => \cd|Add0~0_combout\,
	cout => \cd|Add0~1\);

-- Location: FF_X36_Y24_N3
\cd|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(1));

-- Location: LCCOMB_X36_Y24_N4
\cd|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~2_combout\ = (\cd|count\(2) & (!\cd|Add0~1\)) # (!\cd|count\(2) & ((\cd|Add0~1\) # (GND)))
-- \cd|Add0~3\ = CARRY((!\cd|Add0~1\) # (!\cd|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(2),
	datad => VCC,
	cin => \cd|Add0~1\,
	combout => \cd|Add0~2_combout\,
	cout => \cd|Add0~3\);

-- Location: FF_X36_Y24_N5
\cd|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(2));

-- Location: LCCOMB_X36_Y24_N6
\cd|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~4_combout\ = (\cd|count\(3) & (\cd|Add0~3\ $ (GND))) # (!\cd|count\(3) & (!\cd|Add0~3\ & VCC))
-- \cd|Add0~5\ = CARRY((\cd|count\(3) & !\cd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(3),
	datad => VCC,
	cin => \cd|Add0~3\,
	combout => \cd|Add0~4_combout\,
	cout => \cd|Add0~5\);

-- Location: FF_X36_Y24_N7
\cd|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(3));

-- Location: LCCOMB_X36_Y24_N8
\cd|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~6_combout\ = (\cd|count\(4) & (!\cd|Add0~5\)) # (!\cd|count\(4) & ((\cd|Add0~5\) # (GND)))
-- \cd|Add0~7\ = CARRY((!\cd|Add0~5\) # (!\cd|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(4),
	datad => VCC,
	cin => \cd|Add0~5\,
	combout => \cd|Add0~6_combout\,
	cout => \cd|Add0~7\);

-- Location: FF_X36_Y24_N9
\cd|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(4));

-- Location: LCCOMB_X36_Y24_N10
\cd|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~8_combout\ = (\cd|count\(5) & (\cd|Add0~7\ $ (GND))) # (!\cd|count\(5) & (!\cd|Add0~7\ & VCC))
-- \cd|Add0~9\ = CARRY((\cd|count\(5) & !\cd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(5),
	datad => VCC,
	cin => \cd|Add0~7\,
	combout => \cd|Add0~8_combout\,
	cout => \cd|Add0~9\);

-- Location: LCCOMB_X37_Y24_N2
\cd|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~2_combout\ = (\cd|Add0~8_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Add0~8_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~2_combout\);

-- Location: FF_X37_Y24_N3
\cd|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(5));

-- Location: LCCOMB_X36_Y24_N12
\cd|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~10_combout\ = (\cd|count\(6) & (!\cd|Add0~9\)) # (!\cd|count\(6) & ((\cd|Add0~9\) # (GND)))
-- \cd|Add0~11\ = CARRY((!\cd|Add0~9\) # (!\cd|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(6),
	datad => VCC,
	cin => \cd|Add0~9\,
	combout => \cd|Add0~10_combout\,
	cout => \cd|Add0~11\);

-- Location: FF_X36_Y24_N13
\cd|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(6));

-- Location: LCCOMB_X36_Y24_N14
\cd|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~12_combout\ = (\cd|count\(7) & (\cd|Add0~11\ $ (GND))) # (!\cd|count\(7) & (!\cd|Add0~11\ & VCC))
-- \cd|Add0~13\ = CARRY((\cd|count\(7) & !\cd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(7),
	datad => VCC,
	cin => \cd|Add0~11\,
	combout => \cd|Add0~12_combout\,
	cout => \cd|Add0~13\);

-- Location: FF_X36_Y24_N15
\cd|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(7));

-- Location: LCCOMB_X36_Y24_N16
\cd|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~14_combout\ = (\cd|count\(8) & (!\cd|Add0~13\)) # (!\cd|count\(8) & ((\cd|Add0~13\) # (GND)))
-- \cd|Add0~15\ = CARRY((!\cd|Add0~13\) # (!\cd|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(8),
	datad => VCC,
	cin => \cd|Add0~13\,
	combout => \cd|Add0~14_combout\,
	cout => \cd|Add0~15\);

-- Location: FF_X36_Y24_N17
\cd|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(8));

-- Location: LCCOMB_X36_Y24_N18
\cd|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~16_combout\ = (\cd|count\(9) & (\cd|Add0~15\ $ (GND))) # (!\cd|count\(9) & (!\cd|Add0~15\ & VCC))
-- \cd|Add0~17\ = CARRY((\cd|count\(9) & !\cd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(9),
	datad => VCC,
	cin => \cd|Add0~15\,
	combout => \cd|Add0~16_combout\,
	cout => \cd|Add0~17\);

-- Location: FF_X36_Y24_N19
\cd|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(9));

-- Location: LCCOMB_X36_Y24_N20
\cd|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~18_combout\ = (\cd|count\(10) & (!\cd|Add0~17\)) # (!\cd|count\(10) & ((\cd|Add0~17\) # (GND)))
-- \cd|Add0~19\ = CARRY((!\cd|Add0~17\) # (!\cd|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(10),
	datad => VCC,
	cin => \cd|Add0~17\,
	combout => \cd|Add0~18_combout\,
	cout => \cd|Add0~19\);

-- Location: LCCOMB_X37_Y24_N22
\cd|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~1_combout\ = (\cd|Add0~18_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Add0~18_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~1_combout\);

-- Location: FF_X37_Y24_N23
\cd|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(10));

-- Location: LCCOMB_X36_Y24_N22
\cd|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~20_combout\ = (\cd|count\(11) & (\cd|Add0~19\ $ (GND))) # (!\cd|count\(11) & (!\cd|Add0~19\ & VCC))
-- \cd|Add0~21\ = CARRY((\cd|count\(11) & !\cd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(11),
	datad => VCC,
	cin => \cd|Add0~19\,
	combout => \cd|Add0~20_combout\,
	cout => \cd|Add0~21\);

-- Location: LCCOMB_X37_Y24_N4
\cd|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~0_combout\ = (\cd|Add0~20_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Add0~20_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~0_combout\);

-- Location: FF_X37_Y24_N5
\cd|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(11));

-- Location: LCCOMB_X36_Y24_N24
\cd|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~22_combout\ = (\cd|count\(12) & (!\cd|Add0~21\)) # (!\cd|count\(12) & ((\cd|Add0~21\) # (GND)))
-- \cd|Add0~23\ = CARRY((!\cd|Add0~21\) # (!\cd|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(12),
	datad => VCC,
	cin => \cd|Add0~21\,
	combout => \cd|Add0~22_combout\,
	cout => \cd|Add0~23\);

-- Location: LCCOMB_X37_Y24_N12
\cd|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~3_combout\ = (\cd|Add0~22_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Add0~22_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~3_combout\);

-- Location: FF_X37_Y24_N13
\cd|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(12));

-- Location: LCCOMB_X36_Y24_N26
\cd|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~24_combout\ = (\cd|count\(13) & (\cd|Add0~23\ $ (GND))) # (!\cd|count\(13) & (!\cd|Add0~23\ & VCC))
-- \cd|Add0~25\ = CARRY((\cd|count\(13) & !\cd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(13),
	datad => VCC,
	cin => \cd|Add0~23\,
	combout => \cd|Add0~24_combout\,
	cout => \cd|Add0~25\);

-- Location: LCCOMB_X37_Y24_N20
\cd|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~4_combout\ = (\cd|Add0~24_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~24_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~4_combout\);

-- Location: FF_X37_Y24_N21
\cd|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(13));

-- Location: LCCOMB_X36_Y24_N28
\cd|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~26_combout\ = (\cd|count\(14) & (!\cd|Add0~25\)) # (!\cd|count\(14) & ((\cd|Add0~25\) # (GND)))
-- \cd|Add0~27\ = CARRY((!\cd|Add0~25\) # (!\cd|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(14),
	datad => VCC,
	cin => \cd|Add0~25\,
	combout => \cd|Add0~26_combout\,
	cout => \cd|Add0~27\);

-- Location: FF_X36_Y24_N29
\cd|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(14));

-- Location: LCCOMB_X36_Y24_N30
\cd|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~28_combout\ = (\cd|count\(15) & (\cd|Add0~27\ $ (GND))) # (!\cd|count\(15) & (!\cd|Add0~27\ & VCC))
-- \cd|Add0~29\ = CARRY((\cd|count\(15) & !\cd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(15),
	datad => VCC,
	cin => \cd|Add0~27\,
	combout => \cd|Add0~28_combout\,
	cout => \cd|Add0~29\);

-- Location: LCCOMB_X37_Y24_N26
\cd|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~5_combout\ = (!\cd|Equal0~10_combout\ & \cd|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~10_combout\,
	datad => \cd|Add0~28_combout\,
	combout => \cd|count~5_combout\);

-- Location: FF_X37_Y24_N27
\cd|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(15));

-- Location: LCCOMB_X36_Y23_N0
\cd|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~30_combout\ = (\cd|count\(16) & (!\cd|Add0~29\)) # (!\cd|count\(16) & ((\cd|Add0~29\) # (GND)))
-- \cd|Add0~31\ = CARRY((!\cd|Add0~29\) # (!\cd|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(16),
	datad => VCC,
	cin => \cd|Add0~29\,
	combout => \cd|Add0~30_combout\,
	cout => \cd|Add0~31\);

-- Location: FF_X36_Y23_N1
\cd|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(16));

-- Location: LCCOMB_X36_Y23_N2
\cd|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~32_combout\ = (\cd|count\(17) & (\cd|Add0~31\ $ (GND))) # (!\cd|count\(17) & (!\cd|Add0~31\ & VCC))
-- \cd|Add0~33\ = CARRY((\cd|count\(17) & !\cd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(17),
	datad => VCC,
	cin => \cd|Add0~31\,
	combout => \cd|Add0~32_combout\,
	cout => \cd|Add0~33\);

-- Location: LCCOMB_X37_Y23_N6
\cd|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~6_combout\ = (!\cd|Equal0~10_combout\ & \cd|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~10_combout\,
	datad => \cd|Add0~32_combout\,
	combout => \cd|count~6_combout\);

-- Location: FF_X37_Y23_N7
\cd|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(17));

-- Location: LCCOMB_X36_Y23_N4
\cd|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~34_combout\ = (\cd|count\(18) & (!\cd|Add0~33\)) # (!\cd|count\(18) & ((\cd|Add0~33\) # (GND)))
-- \cd|Add0~35\ = CARRY((!\cd|Add0~33\) # (!\cd|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(18),
	datad => VCC,
	cin => \cd|Add0~33\,
	combout => \cd|Add0~34_combout\,
	cout => \cd|Add0~35\);

-- Location: LCCOMB_X37_Y23_N18
\cd|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~7_combout\ = (\cd|Add0~34_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~34_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~7_combout\);

-- Location: FF_X37_Y23_N19
\cd|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(18));

-- Location: LCCOMB_X36_Y23_N6
\cd|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~36_combout\ = (\cd|count\(19) & (\cd|Add0~35\ $ (GND))) # (!\cd|count\(19) & (!\cd|Add0~35\ & VCC))
-- \cd|Add0~37\ = CARRY((\cd|count\(19) & !\cd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(19),
	datad => VCC,
	cin => \cd|Add0~35\,
	combout => \cd|Add0~36_combout\,
	cout => \cd|Add0~37\);

-- Location: LCCOMB_X37_Y23_N8
\cd|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~8_combout\ = (\cd|Add0~36_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~36_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~8_combout\);

-- Location: FF_X37_Y23_N9
\cd|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(19));

-- Location: LCCOMB_X36_Y23_N8
\cd|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~38_combout\ = (\cd|count\(20) & (!\cd|Add0~37\)) # (!\cd|count\(20) & ((\cd|Add0~37\) # (GND)))
-- \cd|Add0~39\ = CARRY((!\cd|Add0~37\) # (!\cd|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(20),
	datad => VCC,
	cin => \cd|Add0~37\,
	combout => \cd|Add0~38_combout\,
	cout => \cd|Add0~39\);

-- Location: LCCOMB_X37_Y23_N24
\cd|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~9_combout\ = (!\cd|Equal0~10_combout\ & \cd|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~10_combout\,
	datad => \cd|Add0~38_combout\,
	combout => \cd|count~9_combout\);

-- Location: FF_X37_Y23_N25
\cd|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(20));

-- Location: LCCOMB_X36_Y23_N10
\cd|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~40_combout\ = (\cd|count\(21) & (\cd|Add0~39\ $ (GND))) # (!\cd|count\(21) & (!\cd|Add0~39\ & VCC))
-- \cd|Add0~41\ = CARRY((\cd|count\(21) & !\cd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(21),
	datad => VCC,
	cin => \cd|Add0~39\,
	combout => \cd|Add0~40_combout\,
	cout => \cd|Add0~41\);

-- Location: LCCOMB_X37_Y23_N12
\cd|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~10_combout\ = (!\cd|Equal0~10_combout\ & \cd|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~10_combout\,
	datad => \cd|Add0~40_combout\,
	combout => \cd|count~10_combout\);

-- Location: FF_X37_Y23_N13
\cd|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(21));

-- Location: LCCOMB_X36_Y23_N12
\cd|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~42_combout\ = (\cd|count\(22) & (!\cd|Add0~41\)) # (!\cd|count\(22) & ((\cd|Add0~41\) # (GND)))
-- \cd|Add0~43\ = CARRY((!\cd|Add0~41\) # (!\cd|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(22),
	datad => VCC,
	cin => \cd|Add0~41\,
	combout => \cd|Add0~42_combout\,
	cout => \cd|Add0~43\);

-- Location: FF_X36_Y23_N13
\cd|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(22));

-- Location: LCCOMB_X36_Y23_N14
\cd|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~44_combout\ = (\cd|count\(23) & (\cd|Add0~43\ $ (GND))) # (!\cd|count\(23) & (!\cd|Add0~43\ & VCC))
-- \cd|Add0~45\ = CARRY((\cd|count\(23) & !\cd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(23),
	datad => VCC,
	cin => \cd|Add0~43\,
	combout => \cd|Add0~44_combout\,
	cout => \cd|Add0~45\);

-- Location: LCCOMB_X37_Y23_N20
\cd|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~11_combout\ = (!\cd|Equal0~10_combout\ & \cd|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~10_combout\,
	datad => \cd|Add0~44_combout\,
	combout => \cd|count~11_combout\);

-- Location: FF_X37_Y23_N21
\cd|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(23));

-- Location: LCCOMB_X36_Y23_N16
\cd|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~46_combout\ = (\cd|count\(24) & (!\cd|Add0~45\)) # (!\cd|count\(24) & ((\cd|Add0~45\) # (GND)))
-- \cd|Add0~47\ = CARRY((!\cd|Add0~45\) # (!\cd|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(24),
	datad => VCC,
	cin => \cd|Add0~45\,
	combout => \cd|Add0~46_combout\,
	cout => \cd|Add0~47\);

-- Location: FF_X36_Y23_N17
\cd|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(24));

-- Location: LCCOMB_X36_Y23_N18
\cd|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~48_combout\ = (\cd|count\(25) & (\cd|Add0~47\ $ (GND))) # (!\cd|count\(25) & (!\cd|Add0~47\ & VCC))
-- \cd|Add0~49\ = CARRY((\cd|count\(25) & !\cd|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(25),
	datad => VCC,
	cin => \cd|Add0~47\,
	combout => \cd|Add0~48_combout\,
	cout => \cd|Add0~49\);

-- Location: FF_X36_Y23_N19
\cd|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(25));

-- Location: LCCOMB_X36_Y23_N20
\cd|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~50_combout\ = (\cd|count\(26) & (!\cd|Add0~49\)) # (!\cd|count\(26) & ((\cd|Add0~49\) # (GND)))
-- \cd|Add0~51\ = CARRY((!\cd|Add0~49\) # (!\cd|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(26),
	datad => VCC,
	cin => \cd|Add0~49\,
	combout => \cd|Add0~50_combout\,
	cout => \cd|Add0~51\);

-- Location: FF_X36_Y23_N21
\cd|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(26));

-- Location: LCCOMB_X36_Y23_N22
\cd|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~52_combout\ = (\cd|count\(27) & (\cd|Add0~51\ $ (GND))) # (!\cd|count\(27) & (!\cd|Add0~51\ & VCC))
-- \cd|Add0~53\ = CARRY((\cd|count\(27) & !\cd|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(27),
	datad => VCC,
	cin => \cd|Add0~51\,
	combout => \cd|Add0~52_combout\,
	cout => \cd|Add0~53\);

-- Location: FF_X36_Y23_N23
\cd|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(27));

-- Location: LCCOMB_X36_Y23_N24
\cd|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~54_combout\ = (\cd|count\(28) & (!\cd|Add0~53\)) # (!\cd|count\(28) & ((\cd|Add0~53\) # (GND)))
-- \cd|Add0~55\ = CARRY((!\cd|Add0~53\) # (!\cd|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(28),
	datad => VCC,
	cin => \cd|Add0~53\,
	combout => \cd|Add0~54_combout\,
	cout => \cd|Add0~55\);

-- Location: FF_X36_Y23_N25
\cd|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(28));

-- Location: LCCOMB_X36_Y23_N26
\cd|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~56_combout\ = (\cd|count\(29) & (\cd|Add0~55\ $ (GND))) # (!\cd|count\(29) & (!\cd|Add0~55\ & VCC))
-- \cd|Add0~57\ = CARRY((\cd|count\(29) & !\cd|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(29),
	datad => VCC,
	cin => \cd|Add0~55\,
	combout => \cd|Add0~56_combout\,
	cout => \cd|Add0~57\);

-- Location: FF_X36_Y23_N27
\cd|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(29));

-- Location: LCCOMB_X36_Y23_N28
\cd|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~58_combout\ = (\cd|count\(30) & (!\cd|Add0~57\)) # (!\cd|count\(30) & ((\cd|Add0~57\) # (GND)))
-- \cd|Add0~59\ = CARRY((!\cd|Add0~57\) # (!\cd|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(30),
	datad => VCC,
	cin => \cd|Add0~57\,
	combout => \cd|Add0~58_combout\,
	cout => \cd|Add0~59\);

-- Location: FF_X36_Y23_N29
\cd|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(30));

-- Location: LCCOMB_X36_Y23_N30
\cd|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add0~60_combout\ = \cd|count\(31) $ (!\cd|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(31),
	cin => \cd|Add0~59\,
	combout => \cd|Add0~60_combout\);

-- Location: FF_X36_Y23_N31
\cd|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(31));

-- Location: LCCOMB_X37_Y23_N22
\cd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~9_combout\ = (!\cd|count\(29) & (!\cd|count\(31) & (\dw|dpm_addr_A\(0) & !\cd|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(29),
	datab => \cd|count\(31),
	datac => \dw|dpm_addr_A\(0),
	datad => \cd|count\(30),
	combout => \cd|Equal0~9_combout\);

-- Location: LCCOMB_X37_Y23_N4
\cd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (!\cd|count\(22) & (\cd|count\(23) & (!\cd|count\(24) & \cd|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(22),
	datab => \cd|count\(23),
	datac => \cd|count\(24),
	datad => \cd|count\(21),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X37_Y23_N10
\cd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (\cd|count\(17) & (\cd|count\(18) & (\cd|count\(19) & \cd|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(17),
	datab => \cd|count\(18),
	datac => \cd|count\(19),
	datad => \cd|count\(20),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X37_Y23_N16
\cd|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~7_combout\ = (\cd|Equal0~6_combout\ & \cd|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Equal0~6_combout\,
	datad => \cd|Equal0~5_combout\,
	combout => \cd|Equal0~7_combout\);

-- Location: LCCOMB_X37_Y23_N28
\cd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~8_combout\ = (!\cd|count\(28) & (!\cd|count\(27) & (!\cd|count\(25) & !\cd|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(28),
	datab => \cd|count\(27),
	datac => \cd|count\(25),
	datad => \cd|count\(26),
	combout => \cd|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y24_N0
\cd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|count\(6) & (!\cd|count\(7) & (\cd|count\(4) & !\cd|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(6),
	datab => \cd|count\(7),
	datac => \cd|count\(4),
	datad => \cd|count\(5),
	combout => \cd|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y24_N18
\cd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (\cd|count\(1) & (\cd|count\(3) & (\cd|count\(2) & \cd|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(1),
	datab => \cd|count\(3),
	datac => \cd|count\(2),
	datad => \cd|count\(12),
	combout => \cd|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y24_N8
\cd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (\cd|count\(15) & (!\cd|count\(14) & (!\cd|count\(16) & \cd|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(15),
	datab => \cd|count\(14),
	datac => \cd|count\(16),
	datad => \cd|count\(13),
	combout => \cd|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y24_N24
\cd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (\cd|count\(10) & (\cd|count\(11) & (!\cd|count\(8) & !\cd|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(10),
	datab => \cd|count\(11),
	datac => \cd|count\(8),
	datad => \cd|count\(9),
	combout => \cd|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y24_N10
\cd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~1_combout\ & (\cd|Equal0~2_combout\ & (\cd|Equal0~3_combout\ & \cd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~1_combout\,
	datab => \cd|Equal0~2_combout\,
	datac => \cd|Equal0~3_combout\,
	datad => \cd|Equal0~0_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y24_N28
\cd|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~10_combout\ = (\cd|Equal0~9_combout\ & (\cd|Equal0~7_combout\ & (\cd|Equal0~8_combout\ & \cd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~9_combout\,
	datab => \cd|Equal0~7_combout\,
	datac => \cd|Equal0~8_combout\,
	datad => \cd|Equal0~4_combout\,
	combout => \cd|Equal0~10_combout\);

-- Location: LCCOMB_X37_Y23_N30
\cd|clkstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|clkstate~0_combout\ = \cd|Equal0~10_combout\ $ (\cd|clkstate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~10_combout\,
	datad => \cd|clkstate~q\,
	combout => \cd|clkstate~0_combout\);

-- Location: LCCOMB_X37_Y23_N26
\cd|clkstate~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|clkstate~feeder_combout\ = \cd|clkstate~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|clkstate~0_combout\,
	combout => \cd|clkstate~feeder_combout\);

-- Location: FF_X37_Y23_N27
\cd|clkstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|clkstate~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|clkstate~q\);

-- Location: CLKCTRL_G6
\cd|clkstate~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cd|clkstate~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cd|clkstate~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y17_N4
\syncgen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~0_combout\ = \syncgen|CounterX\(0) $ (VCC)
-- \syncgen|Add0~1\ = CARRY(\syncgen|CounterX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(0),
	datad => VCC,
	combout => \syncgen|Add0~0_combout\,
	cout => \syncgen|Add0~1\);

-- Location: FF_X34_Y17_N5
\syncgen|CounterX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(0));

-- Location: LCCOMB_X34_Y17_N6
\syncgen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~2_combout\ = (\syncgen|CounterX\(1) & (!\syncgen|Add0~1\)) # (!\syncgen|CounterX\(1) & ((\syncgen|Add0~1\) # (GND)))
-- \syncgen|Add0~3\ = CARRY((!\syncgen|Add0~1\) # (!\syncgen|CounterX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(1),
	datad => VCC,
	cin => \syncgen|Add0~1\,
	combout => \syncgen|Add0~2_combout\,
	cout => \syncgen|Add0~3\);

-- Location: FF_X34_Y17_N7
\syncgen|CounterX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(1));

-- Location: LCCOMB_X34_Y17_N8
\syncgen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~4_combout\ = (\syncgen|CounterX\(2) & (\syncgen|Add0~3\ $ (GND))) # (!\syncgen|CounterX\(2) & (!\syncgen|Add0~3\ & VCC))
-- \syncgen|Add0~5\ = CARRY((\syncgen|CounterX\(2) & !\syncgen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(2),
	datad => VCC,
	cin => \syncgen|Add0~3\,
	combout => \syncgen|Add0~4_combout\,
	cout => \syncgen|Add0~5\);

-- Location: FF_X34_Y17_N9
\syncgen|CounterX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(2));

-- Location: LCCOMB_X34_Y17_N10
\syncgen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~6_combout\ = (\syncgen|CounterX\(3) & (!\syncgen|Add0~5\)) # (!\syncgen|CounterX\(3) & ((\syncgen|Add0~5\) # (GND)))
-- \syncgen|Add0~7\ = CARRY((!\syncgen|Add0~5\) # (!\syncgen|CounterX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(3),
	datad => VCC,
	cin => \syncgen|Add0~5\,
	combout => \syncgen|Add0~6_combout\,
	cout => \syncgen|Add0~7\);

-- Location: FF_X34_Y17_N11
\syncgen|CounterX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(3));

-- Location: LCCOMB_X34_Y17_N12
\syncgen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~8_combout\ = (\syncgen|CounterX\(4) & (\syncgen|Add0~7\ $ (GND))) # (!\syncgen|CounterX\(4) & (!\syncgen|Add0~7\ & VCC))
-- \syncgen|Add0~9\ = CARRY((\syncgen|CounterX\(4) & !\syncgen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(4),
	datad => VCC,
	cin => \syncgen|Add0~7\,
	combout => \syncgen|Add0~8_combout\,
	cout => \syncgen|Add0~9\);

-- Location: FF_X34_Y17_N13
\syncgen|CounterX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(4));

-- Location: LCCOMB_X34_Y17_N14
\syncgen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~10_combout\ = (\syncgen|CounterX\(5) & (!\syncgen|Add0~9\)) # (!\syncgen|CounterX\(5) & ((\syncgen|Add0~9\) # (GND)))
-- \syncgen|Add0~11\ = CARRY((!\syncgen|Add0~9\) # (!\syncgen|CounterX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(5),
	datad => VCC,
	cin => \syncgen|Add0~9\,
	combout => \syncgen|Add0~10_combout\,
	cout => \syncgen|Add0~11\);

-- Location: FF_X34_Y17_N15
\syncgen|CounterX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(5));

-- Location: LCCOMB_X34_Y17_N28
\syncgen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~0_combout\ = (\syncgen|CounterX\(3) & (\syncgen|CounterX\(5) & (\syncgen|CounterX\(2) & \syncgen|CounterX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(3),
	datab => \syncgen|CounterX\(5),
	datac => \syncgen|CounterX\(2),
	datad => \syncgen|CounterX\(1),
	combout => \syncgen|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y17_N16
\syncgen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~12_combout\ = (\syncgen|CounterX\(6) & (\syncgen|Add0~11\ $ (GND))) # (!\syncgen|CounterX\(6) & (!\syncgen|Add0~11\ & VCC))
-- \syncgen|Add0~13\ = CARRY((\syncgen|CounterX\(6) & !\syncgen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(6),
	datad => VCC,
	cin => \syncgen|Add0~11\,
	combout => \syncgen|Add0~12_combout\,
	cout => \syncgen|Add0~13\);

-- Location: FF_X31_Y17_N5
\syncgen|CounterX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	asdata => \syncgen|Add0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(6));

-- Location: LCCOMB_X34_Y17_N18
\syncgen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~14_combout\ = (\syncgen|CounterX\(7) & (!\syncgen|Add0~13\)) # (!\syncgen|CounterX\(7) & ((\syncgen|Add0~13\) # (GND)))
-- \syncgen|Add0~15\ = CARRY((!\syncgen|Add0~13\) # (!\syncgen|CounterX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(7),
	datad => VCC,
	cin => \syncgen|Add0~13\,
	combout => \syncgen|Add0~14_combout\,
	cout => \syncgen|Add0~15\);

-- Location: FF_X31_Y17_N7
\syncgen|CounterX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	asdata => \syncgen|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(7));

-- Location: LCCOMB_X34_Y17_N20
\syncgen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~16_combout\ = (\syncgen|CounterX\(8) & (\syncgen|Add0~15\ $ (GND))) # (!\syncgen|CounterX\(8) & (!\syncgen|Add0~15\ & VCC))
-- \syncgen|Add0~17\ = CARRY((\syncgen|CounterX\(8) & !\syncgen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(8),
	datad => VCC,
	cin => \syncgen|Add0~15\,
	combout => \syncgen|Add0~16_combout\,
	cout => \syncgen|Add0~17\);

-- Location: LCCOMB_X31_Y17_N2
\syncgen|CounterX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterX~0_combout\ = (\syncgen|Add0~16_combout\ & ((!\syncgen|Equal0~1_combout\) # (!\syncgen|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datac => \syncgen|Equal0~1_combout\,
	datad => \syncgen|Add0~16_combout\,
	combout => \syncgen|CounterX~0_combout\);

-- Location: FF_X31_Y17_N3
\syncgen|CounterX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(8));

-- Location: LCCOMB_X34_Y17_N22
\syncgen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~18_combout\ = \syncgen|Add0~17\ $ (\syncgen|CounterX\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \syncgen|CounterX\(9),
	cin => \syncgen|Add0~17\,
	combout => \syncgen|Add0~18_combout\);

-- Location: LCCOMB_X31_Y17_N28
\syncgen|CounterX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterX~1_combout\ = (\syncgen|Add0~18_combout\ & ((!\syncgen|Equal0~1_combout\) # (!\syncgen|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datac => \syncgen|Add0~18_combout\,
	datad => \syncgen|Equal0~1_combout\,
	combout => \syncgen|CounterX~1_combout\);

-- Location: FF_X31_Y17_N29
\syncgen|CounterX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterX\(9));

-- Location: LCCOMB_X31_Y17_N6
\syncgen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal1~0_combout\ = (\syncgen|CounterX\(9) & (!\syncgen|CounterX\(8) & \syncgen|CounterX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(9),
	datab => \syncgen|CounterX\(8),
	datad => \syncgen|CounterX\(4),
	combout => \syncgen|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y17_N30
\syncgen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~1_combout\ = (\syncgen|CounterX\(0) & (\syncgen|Equal0~0_combout\ & (\syncgen|CounterX\(6) & \syncgen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(0),
	datab => \syncgen|Equal0~0_combout\,
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|Equal1~0_combout\,
	combout => \syncgen|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y17_N0
\syncgen|CounterY[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[0]~22_combout\ = \syncgen|CounterY\(0) $ (((\syncgen|CounterX\(7) & \syncgen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datac => \syncgen|CounterY\(0),
	datad => \syncgen|Equal0~1_combout\,
	combout => \syncgen|CounterY[0]~22_combout\);

-- Location: FF_X31_Y17_N1
\syncgen|CounterY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(0));

-- Location: LCCOMB_X32_Y17_N6
\syncgen|CounterY[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[1]~8_combout\ = (\syncgen|CounterY\(0) & (\syncgen|CounterY\(1) $ (VCC))) # (!\syncgen|CounterY\(0) & (\syncgen|CounterY\(1) & VCC))
-- \syncgen|CounterY[1]~9\ = CARRY((\syncgen|CounterY\(0) & \syncgen|CounterY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(0),
	datab => \syncgen|CounterY\(1),
	datad => VCC,
	combout => \syncgen|CounterY[1]~8_combout\,
	cout => \syncgen|CounterY[1]~9\);

-- Location: LCCOMB_X32_Y17_N4
\syncgen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~2_combout\ = (\syncgen|CounterX\(0) & \syncgen|CounterX\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(0),
	datad => \syncgen|CounterX\(6),
	combout => \syncgen|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y17_N30
\syncgen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~3_combout\ = (\syncgen|CounterX\(7) & (\syncgen|Equal1~0_combout\ & (\syncgen|Equal0~2_combout\ & \syncgen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datab => \syncgen|Equal1~0_combout\,
	datac => \syncgen|Equal0~2_combout\,
	datad => \syncgen|Equal0~0_combout\,
	combout => \syncgen|Equal0~3_combout\);

-- Location: FF_X32_Y17_N7
\syncgen|CounterY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[1]~8_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(1));

-- Location: LCCOMB_X32_Y17_N8
\syncgen|CounterY[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[2]~10_combout\ = (\syncgen|CounterY\(2) & (!\syncgen|CounterY[1]~9\)) # (!\syncgen|CounterY\(2) & ((\syncgen|CounterY[1]~9\) # (GND)))
-- \syncgen|CounterY[2]~11\ = CARRY((!\syncgen|CounterY[1]~9\) # (!\syncgen|CounterY\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(2),
	datad => VCC,
	cin => \syncgen|CounterY[1]~9\,
	combout => \syncgen|CounterY[2]~10_combout\,
	cout => \syncgen|CounterY[2]~11\);

-- Location: FF_X32_Y17_N9
\syncgen|CounterY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[2]~10_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(2));

-- Location: LCCOMB_X32_Y17_N10
\syncgen|CounterY[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[3]~12_combout\ = (\syncgen|CounterY\(3) & (\syncgen|CounterY[2]~11\ $ (GND))) # (!\syncgen|CounterY\(3) & (!\syncgen|CounterY[2]~11\ & VCC))
-- \syncgen|CounterY[3]~13\ = CARRY((\syncgen|CounterY\(3) & !\syncgen|CounterY[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(3),
	datad => VCC,
	cin => \syncgen|CounterY[2]~11\,
	combout => \syncgen|CounterY[3]~12_combout\,
	cout => \syncgen|CounterY[3]~13\);

-- Location: FF_X32_Y17_N11
\syncgen|CounterY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[3]~12_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(3));

-- Location: LCCOMB_X32_Y17_N12
\syncgen|CounterY[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[4]~14_combout\ = (\syncgen|CounterY\(4) & (!\syncgen|CounterY[3]~13\)) # (!\syncgen|CounterY\(4) & ((\syncgen|CounterY[3]~13\) # (GND)))
-- \syncgen|CounterY[4]~15\ = CARRY((!\syncgen|CounterY[3]~13\) # (!\syncgen|CounterY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(4),
	datad => VCC,
	cin => \syncgen|CounterY[3]~13\,
	combout => \syncgen|CounterY[4]~14_combout\,
	cout => \syncgen|CounterY[4]~15\);

-- Location: FF_X32_Y17_N13
\syncgen|CounterY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[4]~14_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(4));

-- Location: LCCOMB_X32_Y17_N14
\syncgen|CounterY[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[5]~16_combout\ = (\syncgen|CounterY\(5) & (\syncgen|CounterY[4]~15\ $ (GND))) # (!\syncgen|CounterY\(5) & (!\syncgen|CounterY[4]~15\ & VCC))
-- \syncgen|CounterY[5]~17\ = CARRY((\syncgen|CounterY\(5) & !\syncgen|CounterY[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(5),
	datad => VCC,
	cin => \syncgen|CounterY[4]~15\,
	combout => \syncgen|CounterY[5]~16_combout\,
	cout => \syncgen|CounterY[5]~17\);

-- Location: FF_X32_Y17_N15
\syncgen|CounterY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[5]~16_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(5));

-- Location: LCCOMB_X32_Y17_N16
\syncgen|CounterY[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[6]~18_combout\ = (\syncgen|CounterY\(6) & (!\syncgen|CounterY[5]~17\)) # (!\syncgen|CounterY\(6) & ((\syncgen|CounterY[5]~17\) # (GND)))
-- \syncgen|CounterY[6]~19\ = CARRY((!\syncgen|CounterY[5]~17\) # (!\syncgen|CounterY\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(6),
	datad => VCC,
	cin => \syncgen|CounterY[5]~17\,
	combout => \syncgen|CounterY[6]~18_combout\,
	cout => \syncgen|CounterY[6]~19\);

-- Location: FF_X32_Y17_N17
\syncgen|CounterY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[6]~18_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(6));

-- Location: LCCOMB_X32_Y17_N18
\syncgen|CounterY[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[7]~20_combout\ = (\syncgen|CounterY\(7) & (\syncgen|CounterY[6]~19\ $ (GND))) # (!\syncgen|CounterY\(7) & (!\syncgen|CounterY[6]~19\ & VCC))
-- \syncgen|CounterY[7]~21\ = CARRY((\syncgen|CounterY\(7) & !\syncgen|CounterY[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(7),
	datad => VCC,
	cin => \syncgen|CounterY[6]~19\,
	combout => \syncgen|CounterY[7]~20_combout\,
	cout => \syncgen|CounterY[7]~21\);

-- Location: FF_X32_Y17_N19
\syncgen|CounterY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[7]~20_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(7));

-- Location: LCCOMB_X32_Y17_N20
\syncgen|CounterY[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[8]~23_combout\ = \syncgen|CounterY[7]~21\ $ (\syncgen|CounterY\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \syncgen|CounterY\(8),
	cin => \syncgen|CounterY[7]~21\,
	combout => \syncgen|CounterY[8]~23_combout\);

-- Location: FF_X32_Y17_N21
\syncgen|CounterY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[8]~23_combout\,
	ena => \syncgen|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(8));

-- Location: LCCOMB_X32_Y17_N28
\syncgen|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~0_combout\ = (\syncgen|CounterY\(8) & (\syncgen|CounterY\(6) & (\syncgen|CounterY\(5) & \syncgen|CounterY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(8),
	datab => \syncgen|CounterY\(6),
	datac => \syncgen|CounterY\(5),
	datad => \syncgen|CounterY\(7),
	combout => \syncgen|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y17_N0
\syncgen|inDisplayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|inDisplayArea~0_combout\ = (\syncgen|Equal0~1_combout\ & (\syncgen|CounterX\(7) & ((\syncgen|inDisplayArea~q\) # (!\syncgen|Equal2~0_combout\)))) # (!\syncgen|Equal0~1_combout\ & (((\syncgen|inDisplayArea~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|Equal0~1_combout\,
	datab => \syncgen|CounterX\(7),
	datac => \syncgen|inDisplayArea~q\,
	datad => \syncgen|Equal2~0_combout\,
	combout => \syncgen|inDisplayArea~0_combout\);

-- Location: FF_X34_Y17_N1
\syncgen|inDisplayArea\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|inDisplayArea~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|inDisplayArea~q\);

-- Location: LCCOMB_X30_Y16_N12
\dw|dpm|ram_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dw|dpm|ram_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X30_Y16_N13
\dw|dpm|ram_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(36));

-- Location: LCCOMB_X30_Y8_N10
\dw|mem_col[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[0]~10_combout\ = \dw|mem_col\(0) $ (VCC)
-- \dw|mem_col[0]~11\ = CARRY(\dw|mem_col\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(0),
	datad => VCC,
	combout => \dw|mem_col[0]~10_combout\,
	cout => \dw|mem_col[0]~11\);

-- Location: LCCOMB_X30_Y8_N30
\dw|im|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~0_combout\ = (\dw|mem_col\(3) & (\dw|mem_col\(4) & (\dw|mem_col\(2) & \dw|mem_col\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(3),
	datab => \dw|mem_col\(4),
	datac => \dw|mem_col\(2),
	datad => \dw|mem_col\(5),
	combout => \dw|im|always2~0_combout\);

-- Location: LCCOMB_X30_Y11_N18
\dw|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~2_combout\ = (\dw|dpm_addr_A\(1) & (!\dw|Add0~1\)) # (!\dw|dpm_addr_A\(1) & ((\dw|Add0~1\) # (GND)))
-- \dw|Add0~3\ = CARRY((!\dw|Add0~1\) # (!\dw|dpm_addr_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(1),
	datad => VCC,
	cin => \dw|Add0~1\,
	combout => \dw|Add0~2_combout\,
	cout => \dw|Add0~3\);

-- Location: FF_X30_Y11_N19
\dw|dpm_addr_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(1));

-- Location: LCCOMB_X30_Y11_N20
\dw|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~4_combout\ = (\dw|dpm_addr_A\(2) & (\dw|Add0~3\ $ (GND))) # (!\dw|dpm_addr_A\(2) & (!\dw|Add0~3\ & VCC))
-- \dw|Add0~5\ = CARRY((\dw|dpm_addr_A\(2) & !\dw|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(2),
	datad => VCC,
	cin => \dw|Add0~3\,
	combout => \dw|Add0~4_combout\,
	cout => \dw|Add0~5\);

-- Location: FF_X30_Y11_N21
\dw|dpm_addr_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(2));

-- Location: LCCOMB_X30_Y11_N22
\dw|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~6_combout\ = (\dw|dpm_addr_A\(3) & (!\dw|Add0~5\)) # (!\dw|dpm_addr_A\(3) & ((\dw|Add0~5\) # (GND)))
-- \dw|Add0~7\ = CARRY((!\dw|Add0~5\) # (!\dw|dpm_addr_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(3),
	datad => VCC,
	cin => \dw|Add0~5\,
	combout => \dw|Add0~6_combout\,
	cout => \dw|Add0~7\);

-- Location: FF_X30_Y11_N23
\dw|dpm_addr_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(3));

-- Location: LCCOMB_X30_Y11_N24
\dw|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~8_combout\ = (\dw|dpm_addr_A\(4) & (\dw|Add0~7\ $ (GND))) # (!\dw|dpm_addr_A\(4) & (!\dw|Add0~7\ & VCC))
-- \dw|Add0~9\ = CARRY((\dw|dpm_addr_A\(4) & !\dw|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(4),
	datad => VCC,
	cin => \dw|Add0~7\,
	combout => \dw|Add0~8_combout\,
	cout => \dw|Add0~9\);

-- Location: FF_X30_Y11_N25
\dw|dpm_addr_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(4));

-- Location: LCCOMB_X30_Y11_N26
\dw|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~10_combout\ = (\dw|dpm_addr_A\(5) & (!\dw|Add0~9\)) # (!\dw|dpm_addr_A\(5) & ((\dw|Add0~9\) # (GND)))
-- \dw|Add0~11\ = CARRY((!\dw|Add0~9\) # (!\dw|dpm_addr_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(5),
	datad => VCC,
	cin => \dw|Add0~9\,
	combout => \dw|Add0~10_combout\,
	cout => \dw|Add0~11\);

-- Location: FF_X30_Y11_N27
\dw|dpm_addr_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(5));

-- Location: LCCOMB_X30_Y11_N28
\dw|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~12_combout\ = (\dw|dpm_addr_A\(6) & (\dw|Add0~11\ $ (GND))) # (!\dw|dpm_addr_A\(6) & (!\dw|Add0~11\ & VCC))
-- \dw|Add0~13\ = CARRY((\dw|dpm_addr_A\(6) & !\dw|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(6),
	datad => VCC,
	cin => \dw|Add0~11\,
	combout => \dw|Add0~12_combout\,
	cout => \dw|Add0~13\);

-- Location: FF_X30_Y11_N29
\dw|dpm_addr_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(6));

-- Location: LCCOMB_X30_Y11_N30
\dw|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~14_combout\ = (\dw|dpm_addr_A\(7) & (!\dw|Add0~13\)) # (!\dw|dpm_addr_A\(7) & ((\dw|Add0~13\) # (GND)))
-- \dw|Add0~15\ = CARRY((!\dw|Add0~13\) # (!\dw|dpm_addr_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(7),
	datad => VCC,
	cin => \dw|Add0~13\,
	combout => \dw|Add0~14_combout\,
	cout => \dw|Add0~15\);

-- Location: FF_X30_Y11_N31
\dw|dpm_addr_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(7));

-- Location: LCCOMB_X30_Y10_N0
\dw|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~16_combout\ = (\dw|dpm_addr_A\(8) & (\dw|Add0~15\ $ (GND))) # (!\dw|dpm_addr_A\(8) & (!\dw|Add0~15\ & VCC))
-- \dw|Add0~17\ = CARRY((\dw|dpm_addr_A\(8) & !\dw|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(8),
	datad => VCC,
	cin => \dw|Add0~15\,
	combout => \dw|Add0~16_combout\,
	cout => \dw|Add0~17\);

-- Location: FF_X30_Y10_N1
\dw|dpm_addr_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(8));

-- Location: LCCOMB_X30_Y10_N2
\dw|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~18_combout\ = (\dw|dpm_addr_A\(9) & (!\dw|Add0~17\)) # (!\dw|dpm_addr_A\(9) & ((\dw|Add0~17\) # (GND)))
-- \dw|Add0~19\ = CARRY((!\dw|Add0~17\) # (!\dw|dpm_addr_A\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(9),
	datad => VCC,
	cin => \dw|Add0~17\,
	combout => \dw|Add0~18_combout\,
	cout => \dw|Add0~19\);

-- Location: FF_X30_Y10_N3
\dw|dpm_addr_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(9));

-- Location: LCCOMB_X30_Y10_N4
\dw|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~20_combout\ = (\dw|dpm_addr_A\(10) & (\dw|Add0~19\ $ (GND))) # (!\dw|dpm_addr_A\(10) & (!\dw|Add0~19\ & VCC))
-- \dw|Add0~21\ = CARRY((\dw|dpm_addr_A\(10) & !\dw|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(10),
	datad => VCC,
	cin => \dw|Add0~19\,
	combout => \dw|Add0~20_combout\,
	cout => \dw|Add0~21\);

-- Location: FF_X30_Y10_N5
\dw|dpm_addr_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(10));

-- Location: LCCOMB_X30_Y10_N6
\dw|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~22_combout\ = (\dw|dpm_addr_A\(11) & (!\dw|Add0~21\)) # (!\dw|dpm_addr_A\(11) & ((\dw|Add0~21\) # (GND)))
-- \dw|Add0~23\ = CARRY((!\dw|Add0~21\) # (!\dw|dpm_addr_A\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(11),
	datad => VCC,
	cin => \dw|Add0~21\,
	combout => \dw|Add0~22_combout\,
	cout => \dw|Add0~23\);

-- Location: FF_X30_Y10_N7
\dw|dpm_addr_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(11));

-- Location: LCCOMB_X30_Y10_N8
\dw|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~24_combout\ = (\dw|dpm_addr_A\(12) & (\dw|Add0~23\ $ (GND))) # (!\dw|dpm_addr_A\(12) & (!\dw|Add0~23\ & VCC))
-- \dw|Add0~25\ = CARRY((\dw|dpm_addr_A\(12) & !\dw|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(12),
	datad => VCC,
	cin => \dw|Add0~23\,
	combout => \dw|Add0~24_combout\,
	cout => \dw|Add0~25\);

-- Location: LCCOMB_X30_Y10_N24
\dw|dpm_addr_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm_addr_A~3_combout\ = (\dw|Equal0~4_combout\ & \dw|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Equal0~4_combout\,
	datac => \dw|Add0~24_combout\,
	combout => \dw|dpm_addr_A~3_combout\);

-- Location: FF_X30_Y10_N25
\dw|dpm_addr_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm_addr_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(12));

-- Location: LCCOMB_X30_Y10_N10
\dw|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~26_combout\ = (\dw|dpm_addr_A\(13) & (!\dw|Add0~25\)) # (!\dw|dpm_addr_A\(13) & ((\dw|Add0~25\) # (GND)))
-- \dw|Add0~27\ = CARRY((!\dw|Add0~25\) # (!\dw|dpm_addr_A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(13),
	datad => VCC,
	cin => \dw|Add0~25\,
	combout => \dw|Add0~26_combout\,
	cout => \dw|Add0~27\);

-- Location: LCCOMB_X30_Y10_N22
\dw|dpm_addr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm_addr_A~0_combout\ = (\dw|Equal0~4_combout\ & \dw|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|Equal0~4_combout\,
	datad => \dw|Add0~26_combout\,
	combout => \dw|dpm_addr_A~0_combout\);

-- Location: FF_X30_Y10_N23
\dw|dpm_addr_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm_addr_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(13));

-- Location: LCCOMB_X30_Y10_N28
\dw|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal0~3_combout\ = ((\dw|dpm_addr_A\(12)) # ((!\dw|dpm_addr_A\(9)) # (!\dw|dpm_addr_A\(10)))) # (!\dw|dpm_addr_A\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(11),
	datab => \dw|dpm_addr_A\(12),
	datac => \dw|dpm_addr_A\(10),
	datad => \dw|dpm_addr_A\(9),
	combout => \dw|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y10_N30
\dw|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal0~2_combout\ = (((!\dw|dpm_addr_A\(5)) # (!\dw|dpm_addr_A\(7))) # (!\dw|dpm_addr_A\(8))) # (!\dw|dpm_addr_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(6),
	datab => \dw|dpm_addr_A\(8),
	datac => \dw|dpm_addr_A\(7),
	datad => \dw|dpm_addr_A\(5),
	combout => \dw|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y11_N6
\dw|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal0~0_combout\ = (((!\dw|dpm_addr_A\(1)) # (!\dw|dpm_addr_A\(3))) # (!\dw|dpm_addr_A\(2))) # (!\dw|dpm_addr_A\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(4),
	datab => \dw|dpm_addr_A\(2),
	datac => \dw|dpm_addr_A\(3),
	datad => \dw|dpm_addr_A\(1),
	combout => \dw|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y10_N12
\dw|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~28_combout\ = (\dw|dpm_addr_A\(14) & (\dw|Add0~27\ $ (GND))) # (!\dw|dpm_addr_A\(14) & (!\dw|Add0~27\ & VCC))
-- \dw|Add0~29\ = CARRY((\dw|dpm_addr_A\(14) & !\dw|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(14),
	datad => VCC,
	cin => \dw|Add0~27\,
	combout => \dw|Add0~28_combout\,
	cout => \dw|Add0~29\);

-- Location: LCCOMB_X30_Y10_N20
\dw|dpm_addr_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm_addr_A~1_combout\ = (\dw|Equal0~4_combout\ & \dw|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|Equal0~4_combout\,
	datad => \dw|Add0~28_combout\,
	combout => \dw|dpm_addr_A~1_combout\);

-- Location: FF_X30_Y10_N21
\dw|dpm_addr_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm_addr_A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(14));

-- Location: LCCOMB_X30_Y10_N14
\dw|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~30_combout\ = (\dw|dpm_addr_A\(15) & (!\dw|Add0~29\)) # (!\dw|dpm_addr_A\(15) & ((\dw|Add0~29\) # (GND)))
-- \dw|Add0~31\ = CARRY((!\dw|Add0~29\) # (!\dw|dpm_addr_A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm_addr_A\(15),
	datad => VCC,
	cin => \dw|Add0~29\,
	combout => \dw|Add0~30_combout\,
	cout => \dw|Add0~31\);

-- Location: LCCOMB_X30_Y10_N18
\dw|dpm_addr_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm_addr_A~2_combout\ = (\dw|Equal0~4_combout\ & \dw|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Equal0~4_combout\,
	datac => \dw|Add0~30_combout\,
	combout => \dw|dpm_addr_A~2_combout\);

-- Location: FF_X30_Y10_N19
\dw|dpm_addr_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm_addr_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(15));

-- Location: LCCOMB_X30_Y10_N16
\dw|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add0~32_combout\ = \dw|Add0~31\ $ (!\dw|dpm_addr_A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(16),
	cin => \dw|Add0~31\,
	combout => \dw|Add0~32_combout\);

-- Location: FF_X30_Y10_N17
\dw|dpm_addr_A[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_addr_A\(16));

-- Location: LCCOMB_X30_Y11_N12
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2_combout\ = (\dw|dpm_addr_A\(14) & !\dw|dpm_addr_A\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|dpm_addr_A\(14),
	datad => \dw|dpm_addr_A\(16),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2_combout\);

-- Location: LCCOMB_X30_Y11_N8
\dw|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal0~1_combout\ = (\dw|Equal0~0_combout\) # (((!\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2_combout\) # (!\dw|dpm_addr_A\(15))) # (!\dw|dpm_addr_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Equal0~0_combout\,
	datab => \dw|dpm_addr_A\(0),
	datac => \dw|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~2_combout\,
	combout => \dw|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y10_N26
\dw|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal0~4_combout\ = ((\dw|Equal0~3_combout\) # ((\dw|Equal0~2_combout\) # (\dw|Equal0~1_combout\))) # (!\dw|dpm_addr_A\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(13),
	datab => \dw|Equal0~3_combout\,
	datac => \dw|Equal0~2_combout\,
	datad => \dw|Equal0~1_combout\,
	combout => \dw|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y8_N22
\dw|mem_col[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[6]~22_combout\ = (\dw|mem_col\(6) & (\dw|mem_col[5]~21\ $ (GND))) # (!\dw|mem_col\(6) & (!\dw|mem_col[5]~21\ & VCC))
-- \dw|mem_col[6]~23\ = CARRY((\dw|mem_col\(6) & !\dw|mem_col[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datad => VCC,
	cin => \dw|mem_col[5]~21\,
	combout => \dw|mem_col[6]~22_combout\,
	cout => \dw|mem_col[6]~23\);

-- Location: LCCOMB_X30_Y8_N24
\dw|mem_col[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[7]~24_combout\ = \dw|mem_col[6]~23\ $ (\dw|mem_col\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dw|mem_col\(7),
	cin => \dw|mem_col[6]~23\,
	combout => \dw|mem_col[7]~24_combout\);

-- Location: FF_X30_Y8_N25
\dw|mem_col[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[7]~24_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(7));

-- Location: LCCOMB_X30_Y8_N2
\dw|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal1~0_combout\ = (\dw|mem_col\(0) & (\dw|mem_col\(7) & (\dw|mem_col\(6) & \dw|mem_col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(0),
	datab => \dw|mem_col\(7),
	datac => \dw|mem_col\(6),
	datad => \dw|mem_col\(1),
	combout => \dw|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y11_N4
\dw|mem_col[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[7]~26_combout\ = ((\dw|im|always2~0_combout\ & \dw|Equal1~0_combout\)) # (!\dw|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~0_combout\,
	datac => \dw|Equal0~4_combout\,
	datad => \dw|Equal1~0_combout\,
	combout => \dw|mem_col[7]~26_combout\);

-- Location: FF_X30_Y8_N11
\dw|mem_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[0]~10_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(0));

-- Location: LCCOMB_X30_Y8_N12
\dw|mem_col[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[1]~12_combout\ = (\dw|mem_col\(1) & (!\dw|mem_col[0]~11\)) # (!\dw|mem_col\(1) & ((\dw|mem_col[0]~11\) # (GND)))
-- \dw|mem_col[1]~13\ = CARRY((!\dw|mem_col[0]~11\) # (!\dw|mem_col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(1),
	datad => VCC,
	cin => \dw|mem_col[0]~11\,
	combout => \dw|mem_col[1]~12_combout\,
	cout => \dw|mem_col[1]~13\);

-- Location: FF_X30_Y8_N13
\dw|mem_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[1]~12_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(1));

-- Location: LCCOMB_X30_Y8_N14
\dw|mem_col[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[2]~14_combout\ = (\dw|mem_col\(2) & (\dw|mem_col[1]~13\ $ (GND))) # (!\dw|mem_col\(2) & (!\dw|mem_col[1]~13\ & VCC))
-- \dw|mem_col[2]~15\ = CARRY((\dw|mem_col\(2) & !\dw|mem_col[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_col\(2),
	datad => VCC,
	cin => \dw|mem_col[1]~13\,
	combout => \dw|mem_col[2]~14_combout\,
	cout => \dw|mem_col[2]~15\);

-- Location: FF_X30_Y8_N15
\dw|mem_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[2]~14_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(2));

-- Location: LCCOMB_X30_Y8_N16
\dw|mem_col[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[3]~16_combout\ = (\dw|mem_col\(3) & (!\dw|mem_col[2]~15\)) # (!\dw|mem_col\(3) & ((\dw|mem_col[2]~15\) # (GND)))
-- \dw|mem_col[3]~17\ = CARRY((!\dw|mem_col[2]~15\) # (!\dw|mem_col\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_col\(3),
	datad => VCC,
	cin => \dw|mem_col[2]~15\,
	combout => \dw|mem_col[3]~16_combout\,
	cout => \dw|mem_col[3]~17\);

-- Location: FF_X30_Y8_N17
\dw|mem_col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[3]~16_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(3));

-- Location: LCCOMB_X30_Y8_N18
\dw|mem_col[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[4]~18_combout\ = (\dw|mem_col\(4) & (\dw|mem_col[3]~17\ $ (GND))) # (!\dw|mem_col\(4) & (!\dw|mem_col[3]~17\ & VCC))
-- \dw|mem_col[4]~19\ = CARRY((\dw|mem_col\(4) & !\dw|mem_col[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_col\(4),
	datad => VCC,
	cin => \dw|mem_col[3]~17\,
	combout => \dw|mem_col[4]~18_combout\,
	cout => \dw|mem_col[4]~19\);

-- Location: FF_X30_Y8_N19
\dw|mem_col[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[4]~18_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(4));

-- Location: LCCOMB_X30_Y8_N20
\dw|mem_col[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_col[5]~20_combout\ = (\dw|mem_col\(5) & (!\dw|mem_col[4]~19\)) # (!\dw|mem_col\(5) & ((\dw|mem_col[4]~19\) # (GND)))
-- \dw|mem_col[5]~21\ = CARRY((!\dw|mem_col[4]~19\) # (!\dw|mem_col\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_col\(5),
	datad => VCC,
	cin => \dw|mem_col[4]~19\,
	combout => \dw|mem_col[5]~20_combout\,
	cout => \dw|mem_col[5]~21\);

-- Location: FF_X30_Y8_N21
\dw|mem_col[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[5]~20_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(5));

-- Location: FF_X30_Y8_N23
\dw|mem_col[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_col[6]~22_combout\,
	sclr => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_col\(6));

-- Location: LCCOMB_X31_Y4_N20
\dw|im|X~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|X~0_combout\ = (!\arrowMod|currentMem\(2) & (!\arrowMod|currentMem\(3) & (\arrowMod|currentMem\(1) $ (\arrowMod|currentMem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(1),
	datab => \arrowMod|currentMem\(2),
	datac => \arrowMod|currentMem\(3),
	datad => \arrowMod|currentMem\(0),
	combout => \dw|im|X~0_combout\);

-- Location: LCCOMB_X31_Y4_N22
\dw|im|X~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|X~1_combout\ = (!\arrowMod|currentMem\(4) & (!\arrowMod|currentMem\(5) & \dw|im|X~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|currentMem\(4),
	datac => \arrowMod|currentMem\(5),
	datad => \dw|im|X~0_combout\,
	combout => \dw|im|X~1_combout\);

-- Location: FF_X31_Y4_N23
\dw|im|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|X~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|X\(1));

-- Location: LCCOMB_X30_Y6_N10
\dw|im|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan4~5_combout\ = (\dw|mem_col\(6) & (\dw|im|X\(1) & (\dw|im|X\(0) $ (\dw|mem_col\(5))))) # (!\dw|mem_col\(6) & (!\dw|im|X\(1) & (\dw|im|X\(0) $ (\dw|mem_col\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datab => \dw|im|X\(1),
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(5),
	combout => \dw|im|LessThan4~5_combout\);

-- Location: LCCOMB_X30_Y8_N6
\dw|im|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan4~3_combout\ = (\dw|im|X\(1) & (((!\dw|mem_col\(0) & \dw|im|X\(0))) # (!\dw|mem_col\(1)))) # (!\dw|im|X\(1) & (!\dw|mem_col\(0) & (\dw|im|X\(0) & !\dw|mem_col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(0),
	datab => \dw|im|X\(1),
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(1),
	combout => \dw|im|LessThan4~3_combout\);

-- Location: LCCOMB_X30_Y8_N8
\dw|im|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan4~4_combout\ = (\dw|im|LessThan4~3_combout\ & (((!\dw|mem_col\(2) & !\dw|mem_col\(3))) # (!\dw|im|X\(2)))) # (!\dw|im|LessThan4~3_combout\ & (!\dw|im|X\(2) & ((!\dw|mem_col\(3)) # (!\dw|mem_col\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan4~3_combout\,
	datab => \dw|im|X\(2),
	datac => \dw|mem_col\(2),
	datad => \dw|mem_col\(3),
	combout => \dw|im|LessThan4~4_combout\);

-- Location: LCCOMB_X30_Y6_N22
\dw|im|LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan4~6_combout\ = (\dw|im|LessThan4~5_combout\ & (\dw|im|LessThan4~4_combout\ & (\dw|im|X\(1) $ (\dw|mem_col\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan4~5_combout\,
	datab => \dw|im|X\(1),
	datac => \dw|im|LessThan4~4_combout\,
	datad => \dw|mem_col\(4),
	combout => \dw|im|LessThan4~6_combout\);

-- Location: LCCOMB_X31_Y7_N8
\dw|mem_row[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[0]~8_combout\ = \dw|mem_row\(0) $ (VCC)
-- \dw|mem_row[0]~9\ = CARRY(\dw|mem_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(0),
	datad => VCC,
	combout => \dw|mem_row[0]~8_combout\,
	cout => \dw|mem_row[0]~9\);

-- Location: LCCOMB_X30_Y11_N10
\dw|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Equal1~1_combout\ = (!\dw|Equal1~0_combout\) # (!\dw|im|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~0_combout\,
	datad => \dw|Equal1~0_combout\,
	combout => \dw|Equal1~1_combout\);

-- Location: FF_X31_Y7_N9
\dw|mem_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[0]~8_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(0));

-- Location: LCCOMB_X31_Y7_N10
\dw|mem_row[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[1]~10_combout\ = (\dw|mem_row\(1) & (!\dw|mem_row[0]~9\)) # (!\dw|mem_row\(1) & ((\dw|mem_row[0]~9\) # (GND)))
-- \dw|mem_row[1]~11\ = CARRY((!\dw|mem_row[0]~9\) # (!\dw|mem_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(1),
	datad => VCC,
	cin => \dw|mem_row[0]~9\,
	combout => \dw|mem_row[1]~10_combout\,
	cout => \dw|mem_row[1]~11\);

-- Location: FF_X31_Y7_N11
\dw|mem_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[1]~10_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(1));

-- Location: LCCOMB_X31_Y7_N12
\dw|mem_row[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[2]~12_combout\ = (\dw|mem_row\(2) & (\dw|mem_row[1]~11\ $ (GND))) # (!\dw|mem_row\(2) & (!\dw|mem_row[1]~11\ & VCC))
-- \dw|mem_row[2]~13\ = CARRY((\dw|mem_row\(2) & !\dw|mem_row[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(2),
	datad => VCC,
	cin => \dw|mem_row[1]~11\,
	combout => \dw|mem_row[2]~12_combout\,
	cout => \dw|mem_row[2]~13\);

-- Location: FF_X31_Y7_N13
\dw|mem_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[2]~12_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(2));

-- Location: LCCOMB_X31_Y7_N14
\dw|mem_row[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[3]~14_combout\ = (\dw|mem_row\(3) & (!\dw|mem_row[2]~13\)) # (!\dw|mem_row\(3) & ((\dw|mem_row[2]~13\) # (GND)))
-- \dw|mem_row[3]~15\ = CARRY((!\dw|mem_row[2]~13\) # (!\dw|mem_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(3),
	datad => VCC,
	cin => \dw|mem_row[2]~13\,
	combout => \dw|mem_row[3]~14_combout\,
	cout => \dw|mem_row[3]~15\);

-- Location: FF_X31_Y7_N15
\dw|mem_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[3]~14_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(3));

-- Location: LCCOMB_X31_Y7_N16
\dw|mem_row[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[4]~16_combout\ = (\dw|mem_row\(4) & (\dw|mem_row[3]~15\ $ (GND))) # (!\dw|mem_row\(4) & (!\dw|mem_row[3]~15\ & VCC))
-- \dw|mem_row[4]~17\ = CARRY((\dw|mem_row\(4) & !\dw|mem_row[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(4),
	datad => VCC,
	cin => \dw|mem_row[3]~15\,
	combout => \dw|mem_row[4]~16_combout\,
	cout => \dw|mem_row[4]~17\);

-- Location: FF_X31_Y7_N17
\dw|mem_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[4]~16_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(4));

-- Location: LCCOMB_X31_Y7_N18
\dw|mem_row[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[5]~18_combout\ = (\dw|mem_row\(5) & (!\dw|mem_row[4]~17\)) # (!\dw|mem_row\(5) & ((\dw|mem_row[4]~17\) # (GND)))
-- \dw|mem_row[5]~19\ = CARRY((!\dw|mem_row[4]~17\) # (!\dw|mem_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(5),
	datad => VCC,
	cin => \dw|mem_row[4]~17\,
	combout => \dw|mem_row[5]~18_combout\,
	cout => \dw|mem_row[5]~19\);

-- Location: FF_X31_Y7_N19
\dw|mem_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[5]~18_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(5));

-- Location: LCCOMB_X31_Y7_N4
\dw|im|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan7~0_combout\ = (!\dw|mem_row\(1) & (!\dw|mem_row\(5) & (!\dw|mem_row\(0) & !\dw|mem_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(1),
	datab => \dw|mem_row\(5),
	datac => \dw|mem_row\(0),
	datad => \dw|mem_row\(4),
	combout => \dw|im|LessThan7~0_combout\);

-- Location: LCCOMB_X30_Y6_N8
\dw|im|always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~4_combout\ = (\dw|mem_col\(6) & (\dw|im|X\(1) & (!\dw|im|X\(0) & !\dw|mem_col\(5)))) # (!\dw|mem_col\(6) & ((\dw|im|X\(1)) # ((!\dw|im|X\(0) & !\dw|mem_col\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datab => \dw|im|X\(1),
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(5),
	combout => \dw|im|always2~4_combout\);

-- Location: LCCOMB_X31_Y7_N20
\dw|mem_row[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[6]~20_combout\ = (\dw|mem_row\(6) & (\dw|mem_row[5]~19\ $ (GND))) # (!\dw|mem_row\(6) & (!\dw|mem_row[5]~19\ & VCC))
-- \dw|mem_row[6]~21\ = CARRY((\dw|mem_row\(6) & !\dw|mem_row[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(6),
	datad => VCC,
	cin => \dw|mem_row[5]~19\,
	combout => \dw|mem_row[6]~20_combout\,
	cout => \dw|mem_row[6]~21\);

-- Location: FF_X31_Y7_N21
\dw|mem_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[6]~20_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(6));

-- Location: LCCOMB_X31_Y7_N2
\dw|im|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan7~1_combout\ = ((!\dw|mem_row\(4) & (!\dw|mem_row\(3) & !\dw|mem_row\(5)))) # (!\dw|mem_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(4),
	datab => \dw|mem_row\(6),
	datac => \dw|mem_row\(3),
	datad => \dw|mem_row\(5),
	combout => \dw|im|LessThan7~1_combout\);

-- Location: LCCOMB_X30_Y7_N14
\dw|im|always2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~5_combout\ = (\dw|im|always2~4_combout\) # ((!\dw|im|LessThan7~1_combout\ & ((\dw|mem_row\(2)) # (!\dw|im|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan7~0_combout\,
	datab => \dw|mem_row\(2),
	datac => \dw|im|always2~4_combout\,
	datad => \dw|im|LessThan7~1_combout\,
	combout => \dw|im|always2~5_combout\);

-- Location: IOIBUF_X53_Y10_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X32_Y7_N28
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

-- Location: FF_X32_Y7_N29
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

-- Location: LCCOMB_X32_Y7_N22
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

-- Location: FF_X32_Y7_N23
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

-- Location: FF_X32_Y7_N25
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

-- Location: LCCOMB_X32_Y7_N24
\dw|im|update~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|update~0_combout\ = (!\arrowMod|WideOr0~0_combout\ & ((\syncMod|delay_a~q\) # (!\syncMod|sync_a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datac => \syncMod|delay_a~q\,
	datad => \arrowMod|WideOr0~0_combout\,
	combout => \dw|im|update~0_combout\);

-- Location: LCCOMB_X31_Y7_N22
\dw|mem_row[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|mem_row[7]~22_combout\ = \dw|mem_row\(7) $ (\dw|mem_row[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(7),
	cin => \dw|mem_row[6]~21\,
	combout => \dw|mem_row[7]~22_combout\);

-- Location: FF_X31_Y7_N23
\dw|mem_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|mem_row[7]~22_combout\,
	sclr => \dw|Equal1~1_combout\,
	ena => \dw|mem_col[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|mem_row\(7));

-- Location: LCCOMB_X31_Y7_N28
\dw|im|always2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~10_combout\ = (\dw|mem_row\(1) & (\dw|mem_row\(6) & (\dw|mem_row\(7) & !\dw|mem_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(1),
	datab => \dw|mem_row\(6),
	datac => \dw|mem_row\(7),
	datad => \dw|mem_row\(4),
	combout => \dw|im|always2~10_combout\);

-- Location: LCCOMB_X31_Y7_N30
\dw|im|always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~2_combout\ = (\dw|mem_row\(5) & (\dw|mem_row\(3) & \dw|mem_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(5),
	datac => \dw|mem_row\(3),
	datad => \dw|mem_row\(2),
	combout => \dw|im|always2~2_combout\);

-- Location: LCCOMB_X31_Y7_N26
\dw|im|always2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~11_combout\ = (!\dw|Equal1~1_combout\ & (\dw|im|always2~10_combout\ & (\dw|mem_row\(0) & \dw|im|always2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Equal1~1_combout\,
	datab => \dw|im|always2~10_combout\,
	datac => \dw|mem_row\(0),
	datad => \dw|im|always2~2_combout\,
	combout => \dw|im|always2~11_combout\);

-- Location: LCCOMB_X29_Y7_N16
\dw|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|enable~0_combout\ = (\dw|enable~q\) # (!\dw|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|enable~q\,
	datad => \dw|Equal0~4_combout\,
	combout => \dw|enable~0_combout\);

-- Location: FF_X29_Y7_N17
\dw|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|enable~q\);

-- Location: LCCOMB_X30_Y7_N30
\dw|im|sc_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[0]~0_combout\ = (!\dw|enable~q\ & ((\dw|im|Equal1~2_combout\) # (\dw|im|always2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|Equal1~2_combout\,
	datac => \dw|enable~q\,
	datad => \dw|im|always2~9_combout\,
	combout => \dw|im|sc_addr[0]~0_combout\);

-- Location: LCCOMB_X35_Y7_N0
\dw|im|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~0_combout\ = \dw|im|sc_addr\(0) $ (GND)
-- \dw|im|Add3~1\ = CARRY(!\dw|im|sc_addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr\(0),
	datad => VCC,
	combout => \dw|im|Add3~0_combout\,
	cout => \dw|im|Add3~1\);

-- Location: LCCOMB_X35_Y7_N26
\dw|im|sc_addr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[0]~3_combout\ = !\dw|im|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|Add3~0_combout\,
	combout => \dw|im|sc_addr[0]~3_combout\);

-- Location: FF_X35_Y7_N27
\dw|im|sc_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[0]~3_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(0));

-- Location: LCCOMB_X35_Y7_N2
\dw|im|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~2_combout\ = (\dw|im|sc_addr\(1) & ((\dw|im|Add3~1\) # (GND))) # (!\dw|im|sc_addr\(1) & (!\dw|im|Add3~1\))
-- \dw|im|Add3~3\ = CARRY((\dw|im|sc_addr\(1)) # (!\dw|im|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|sc_addr\(1),
	datad => VCC,
	cin => \dw|im|Add3~1\,
	combout => \dw|im|Add3~2_combout\,
	cout => \dw|im|Add3~3\);

-- Location: LCCOMB_X35_Y7_N24
\dw|im|sc_addr[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[1]~4_combout\ = !\dw|im|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|Add3~2_combout\,
	combout => \dw|im|sc_addr[1]~4_combout\);

-- Location: FF_X35_Y7_N25
\dw|im|sc_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[1]~4_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(1));

-- Location: LCCOMB_X35_Y7_N4
\dw|im|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~4_combout\ = (\dw|im|sc_addr\(2) & (!\dw|im|Add3~3\ & VCC)) # (!\dw|im|sc_addr\(2) & (\dw|im|Add3~3\ $ (GND)))
-- \dw|im|Add3~5\ = CARRY((!\dw|im|sc_addr\(2) & !\dw|im|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|sc_addr\(2),
	datad => VCC,
	cin => \dw|im|Add3~3\,
	combout => \dw|im|Add3~4_combout\,
	cout => \dw|im|Add3~5\);

-- Location: LCCOMB_X35_Y7_N18
\dw|im|sc_addr[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[2]~5_combout\ = !\dw|im|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|Add3~4_combout\,
	combout => \dw|im|sc_addr[2]~5_combout\);

-- Location: FF_X35_Y7_N19
\dw|im|sc_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[2]~5_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(2));

-- Location: LCCOMB_X35_Y7_N6
\dw|im|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~6_combout\ = (\dw|im|sc_addr\(3) & ((\dw|im|Add3~5\) # (GND))) # (!\dw|im|sc_addr\(3) & (!\dw|im|Add3~5\))
-- \dw|im|Add3~7\ = CARRY((\dw|im|sc_addr\(3)) # (!\dw|im|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|sc_addr\(3),
	datad => VCC,
	cin => \dw|im|Add3~5\,
	combout => \dw|im|Add3~6_combout\,
	cout => \dw|im|Add3~7\);

-- Location: LCCOMB_X35_Y7_N20
\dw|im|sc_addr[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[3]~6_combout\ = !\dw|im|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|Add3~6_combout\,
	combout => \dw|im|sc_addr[3]~6_combout\);

-- Location: FF_X35_Y7_N21
\dw|im|sc_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[3]~6_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(3));

-- Location: LCCOMB_X35_Y7_N8
\dw|im|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~8_combout\ = (\dw|im|sc_addr\(4) & (!\dw|im|Add3~7\ & VCC)) # (!\dw|im|sc_addr\(4) & (\dw|im|Add3~7\ $ (GND)))
-- \dw|im|Add3~9\ = CARRY((!\dw|im|sc_addr\(4) & !\dw|im|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|sc_addr\(4),
	datad => VCC,
	cin => \dw|im|Add3~7\,
	combout => \dw|im|Add3~8_combout\,
	cout => \dw|im|Add3~9\);

-- Location: LCCOMB_X35_Y7_N28
\dw|im|sc_addr[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[4]~9_combout\ = !\dw|im|Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|Add3~8_combout\,
	combout => \dw|im|sc_addr[4]~9_combout\);

-- Location: FF_X35_Y7_N29
\dw|im|sc_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[4]~9_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(4));

-- Location: LCCOMB_X35_Y7_N10
\dw|im|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~10_combout\ = (\dw|im|sc_addr\(5) & ((\dw|im|Add3~9\) # (GND))) # (!\dw|im|sc_addr\(5) & (!\dw|im|Add3~9\))
-- \dw|im|Add3~11\ = CARRY((\dw|im|sc_addr\(5)) # (!\dw|im|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr\(5),
	datad => VCC,
	cin => \dw|im|Add3~9\,
	combout => \dw|im|Add3~10_combout\,
	cout => \dw|im|Add3~11\);

-- Location: LCCOMB_X35_Y7_N22
\dw|im|sc_addr[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[5]~10_combout\ = !\dw|im|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|Add3~10_combout\,
	combout => \dw|im|sc_addr[5]~10_combout\);

-- Location: FF_X35_Y7_N23
\dw|im|sc_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[5]~10_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(5));

-- Location: LCCOMB_X35_Y7_N12
\dw|im|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~12_combout\ = (\dw|im|sc_addr\(6) & (!\dw|im|Add3~11\ & VCC)) # (!\dw|im|sc_addr\(6) & (\dw|im|Add3~11\ $ (GND)))
-- \dw|im|Add3~13\ = CARRY((!\dw|im|sc_addr\(6) & !\dw|im|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|sc_addr\(6),
	datad => VCC,
	cin => \dw|im|Add3~11\,
	combout => \dw|im|Add3~12_combout\,
	cout => \dw|im|Add3~13\);

-- Location: LCCOMB_X34_Y7_N22
\dw|im|sc_addr[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[6]~1_combout\ = (\dw|im|sc_addr[0]~0_combout\ & (((\dw|im|Equal1~2_combout\)) # (!\dw|im|Add3~12_combout\))) # (!\dw|im|sc_addr[0]~0_combout\ & (((\dw|im|sc_addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr[0]~0_combout\,
	datab => \dw|im|Add3~12_combout\,
	datac => \dw|im|sc_addr\(6),
	datad => \dw|im|Equal1~2_combout\,
	combout => \dw|im|sc_addr[6]~1_combout\);

-- Location: FF_X34_Y7_N23
\dw|im|sc_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(6));

-- Location: LCCOMB_X35_Y7_N14
\dw|im|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~14_combout\ = (\dw|im|sc_addr\(7) & ((\dw|im|Add3~13\) # (GND))) # (!\dw|im|sc_addr\(7) & (!\dw|im|Add3~13\))
-- \dw|im|Add3~15\ = CARRY((\dw|im|sc_addr\(7)) # (!\dw|im|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr\(7),
	datad => VCC,
	cin => \dw|im|Add3~13\,
	combout => \dw|im|Add3~14_combout\,
	cout => \dw|im|Add3~15\);

-- Location: LCCOMB_X35_Y7_N30
\dw|im|sc_addr[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[7]~8_combout\ = !\dw|im|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|Add3~14_combout\,
	combout => \dw|im|sc_addr[7]~8_combout\);

-- Location: FF_X35_Y7_N31
\dw|im|sc_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[7]~8_combout\,
	ena => \dw|im|sc_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(7));

-- Location: LCCOMB_X34_Y7_N20
\dw|im|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal1~1_combout\ = (\dw|im|sc_addr\(7) & (!\dw|im|sc_addr\(5) & (\dw|im|sc_addr\(6) & !\dw|im|sc_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr\(7),
	datab => \dw|im|sc_addr\(5),
	datac => \dw|im|sc_addr\(6),
	datad => \dw|im|sc_addr\(4),
	combout => \dw|im|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y7_N16
\dw|im|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add3~16_combout\ = \dw|im|Add3~15\ $ (\dw|im|sc_addr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|sc_addr\(8),
	cin => \dw|im|Add3~15\,
	combout => \dw|im|Add3~16_combout\);

-- Location: LCCOMB_X34_Y7_N30
\dw|im|sc_addr[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[8]~2_combout\ = (\dw|im|sc_addr[0]~0_combout\ & ((\dw|im|Equal1~2_combout\) # ((!\dw|im|Add3~16_combout\)))) # (!\dw|im|sc_addr[0]~0_combout\ & (((\dw|im|sc_addr\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr[0]~0_combout\,
	datab => \dw|im|Equal1~2_combout\,
	datac => \dw|im|sc_addr\(8),
	datad => \dw|im|Add3~16_combout\,
	combout => \dw|im|sc_addr[8]~2_combout\);

-- Location: FF_X34_Y7_N31
\dw|im|sc_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|sc_addr[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|sc_addr\(8));

-- Location: LCCOMB_X34_Y7_N28
\dw|im|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal1~0_combout\ = (!\dw|im|sc_addr\(3) & (!\dw|im|sc_addr\(2) & (!\dw|im|sc_addr\(1) & !\dw|im|sc_addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|sc_addr\(3),
	datab => \dw|im|sc_addr\(2),
	datac => \dw|im|sc_addr\(1),
	datad => \dw|im|sc_addr\(0),
	combout => \dw|im|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y7_N24
\dw|im|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal1~2_combout\ = (\dw|im|Equal1~1_combout\ & (!\dw|im|sc_addr\(8) & \dw|im|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|Equal1~1_combout\,
	datac => \dw|im|sc_addr\(8),
	datad => \dw|im|Equal1~0_combout\,
	combout => \dw|im|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y7_N12
\dw|im|update~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|update~2_combout\ = (\dw|im|update~0_combout\ & ((\dw|im|always2~11_combout\) # ((\dw|im|update\(1)) # (\dw|im|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|update~0_combout\,
	datab => \dw|im|always2~11_combout\,
	datac => \dw|im|update\(1),
	datad => \dw|im|Equal1~2_combout\,
	combout => \dw|im|update~2_combout\);

-- Location: FF_X30_Y7_N13
\dw|im|update[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|update~2_combout\,
	ena => \dw|ALT_INV_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|update\(1));

-- Location: LCCOMB_X31_Y7_N6
\dw|im|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan2~1_combout\ = (!\dw|mem_row\(4)) # (!\dw|mem_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|mem_row\(5),
	datad => \dw|mem_row\(4),
	combout => \dw|im|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y7_N24
\dw|im|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan2~0_combout\ = (!\dw|mem_row\(3) & (((!\dw|mem_row\(1) & !\dw|mem_row\(0))) # (!\dw|mem_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_row\(1),
	datab => \dw|mem_row\(3),
	datac => \dw|mem_row\(0),
	datad => \dw|mem_row\(2),
	combout => \dw|im|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y7_N0
\dw|im|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan2~2_combout\ = (!\dw|mem_row\(7) & (!\dw|mem_row\(6) & ((\dw|im|LessThan2~1_combout\) # (\dw|im|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan2~1_combout\,
	datab => \dw|im|LessThan2~0_combout\,
	datac => \dw|mem_row\(7),
	datad => \dw|mem_row\(6),
	combout => \dw|im|LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y6_N2
\dw|im|always2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~6_combout\ = (\dw|mem_col\(6)) # ((\dw|im|X\(1)) # (\dw|mem_col\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datac => \dw|im|X\(1),
	datad => \dw|mem_col\(4),
	combout => \dw|im|always2~6_combout\);

-- Location: LCCOMB_X30_Y6_N16
\dw|im|always2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~7_combout\ = (\dw|mem_col\(7)) # ((!\dw|im|always2~6_combout\ & (\dw|im|X\(0) $ (\dw|mem_col\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(7),
	datab => \dw|im|always2~6_combout\,
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(5),
	combout => \dw|im|always2~7_combout\);

-- Location: LCCOMB_X30_Y7_N26
\dw|im|always2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~8_combout\ = (\dw|im|update\(1)) # ((\dw|mem_row\(7)) # ((\dw|im|LessThan2~2_combout\) # (\dw|im|always2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|update\(1),
	datab => \dw|mem_row\(7),
	datac => \dw|im|LessThan2~2_combout\,
	datad => \dw|im|always2~7_combout\,
	combout => \dw|im|always2~8_combout\);

-- Location: LCCOMB_X30_Y6_N12
\dw|im|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan4~2_combout\ = \dw|im|X\(1) $ (\dw|mem_col\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|X\(1),
	datad => \dw|mem_col\(4),
	combout => \dw|im|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y6_N6
\dw|im|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan5~0_combout\ = (\dw|mem_col\(5) & ((\dw|im|X\(0)) # ((\dw|mem_col\(6) & \dw|mem_col\(4))))) # (!\dw|mem_col\(5) & (\dw|mem_col\(6) & (\dw|im|X\(0) & \dw|mem_col\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datab => \dw|mem_col\(5),
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(4),
	combout => \dw|im|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y6_N28
\dw|im|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan5~1_combout\ = (\dw|mem_col\(6) & (\dw|im|X\(1) & !\dw|im|LessThan5~0_combout\)) # (!\dw|mem_col\(6) & ((\dw|im|X\(1)) # (!\dw|im|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datac => \dw|im|X\(1),
	datad => \dw|im|LessThan5~0_combout\,
	combout => \dw|im|LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y6_N18
\dw|im|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan5~2_combout\ = (\dw|mem_col\(6) & ((\dw|im|X\(1) & (\dw|im|X\(0) $ (\dw|mem_col\(5)))) # (!\dw|im|X\(1) & (!\dw|im|X\(0) & !\dw|mem_col\(5))))) # (!\dw|mem_col\(6) & (!\dw|im|X\(1) & (\dw|im|X\(0) & \dw|mem_col\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(6),
	datab => \dw|im|X\(1),
	datac => \dw|im|X\(0),
	datad => \dw|mem_col\(5),
	combout => \dw|im|LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y6_N0
\dw|im|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan5~3_combout\ = (\dw|im|LessThan5~1_combout\) # ((!\dw|im|LessThan4~2_combout\ & (\dw|im|LessThan4~4_combout\ & \dw|im|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan4~2_combout\,
	datab => \dw|im|LessThan5~1_combout\,
	datac => \dw|im|LessThan4~4_combout\,
	datad => \dw|im|LessThan5~2_combout\,
	combout => \dw|im|LessThan5~3_combout\);

-- Location: LCCOMB_X30_Y7_N10
\dw|im|always2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~9_combout\ = (!\dw|im|LessThan4~6_combout\ & (!\dw|im|always2~5_combout\ & (!\dw|im|always2~8_combout\ & \dw|im|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan4~6_combout\,
	datab => \dw|im|always2~5_combout\,
	datac => \dw|im|always2~8_combout\,
	datad => \dw|im|LessThan5~3_combout\,
	combout => \dw|im|always2~9_combout\);

-- Location: FF_X30_Y7_N11
\dw|im|readenable[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|always2~9_combout\,
	ena => \dw|ALT_INV_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|readenable\(1));

-- Location: LCCOMB_X34_Y7_N6
\dw|im|sc_addr[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[0]~_wirecell_combout\ = !\dw|im|sc_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|sc_addr\(0),
	combout => \dw|im|sc_addr[0]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N16
\dw|im|sc_addr[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[1]~_wirecell_combout\ = !\dw|im|sc_addr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|sc_addr\(1),
	combout => \dw|im|sc_addr[1]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N14
\dw|im|sc_addr[2]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[2]~_wirecell_combout\ = !\dw|im|sc_addr\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|sc_addr\(2),
	combout => \dw|im|sc_addr[2]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N8
\dw|im|sc_addr[3]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[3]~_wirecell_combout\ = !\dw|im|sc_addr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|sc_addr\(3),
	combout => \dw|im|sc_addr[3]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N10
\dw|im|sc_addr[4]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[4]~_wirecell_combout\ = !\dw|im|sc_addr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|sc_addr\(4),
	combout => \dw|im|sc_addr[4]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N4
\dw|im|sc_addr[5]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[5]~_wirecell_combout\ = !\dw|im|sc_addr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|sc_addr\(5),
	combout => \dw|im|sc_addr[5]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N26
\dw|im|sc_addr[6]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[6]~_wirecell_combout\ = !\dw|im|sc_addr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|sc_addr\(6),
	combout => \dw|im|sc_addr[6]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N12
\dw|im|sc_addr[7]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[7]~_wirecell_combout\ = !\dw|im|sc_addr\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|sc_addr\(7),
	combout => \dw|im|sc_addr[7]~_wirecell_combout\);

-- Location: LCCOMB_X34_Y7_N18
\dw|im|sc_addr[8]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|sc_addr[8]~_wirecell_combout\ = !\dw|im|sc_addr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|sc_addr\(8),
	combout => \dw|im|sc_addr[8]~_wirecell_combout\);

-- Location: M9K_X33_Y7_N0
\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00030000C00030000C00030000C00030000C00030000C00030000C00030000C00030000C00040001000040001000040001000040001000040001000040001000040001000030000C00040001800060001800060001800060001800060001800060001800060001000030000C00040001800060001000040001000040001000040001000040001800060001000030000C00040001800060001000040001000040001000040001000040001800060001000030000C000400018000400018000400010000400010000400010000600",
	mem_init1 => X"01000060001000030000C00040001800040001000060001000040001000040001800040001000060001000030000C00040001800040001000040001800040001000060001000040001000060001000030000C00040001800040001000040001800040001000060001000040001000060001000030000C00040001800040001000040001000060001800040001000040001000060001000030000C00040001800040001000040001000060001800040001000040001000060001000030000C00040001800040001000040001800040001000060001000040001000060001000030000C00040001800040001000040001800040001000060001000040001000060",
	mem_init0 => X"001000030000C00040001800040001000060001000040001000040001800040001000060001000030000C00040001800040001800040001000040001000040001000060001000060001000030000C00040001800060001000040001000040001000040001000040001800060001000030000C00040001800060001000040001000040001000040001000040001800060001000030000C00040001800060001800060001800060001800060001800060001800060001000030000C00040001000040001000040001000040001000040001000040001000040001000030000C00030000C00030000C00030000C00030000C00030000C00030000C00030000C0003",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_selectedcard_77ee06cc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|selectedcard:sc|altsyncram:ram_rtl_0|altsyncram_hr71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(1),
	portaaddr => \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y7_N0
\dw|im|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~0_combout\ = \dw|im|cd6x6_addr_B\(0) $ (VCC)
-- \dw|im|Add0~1\ = CARRY(\dw|im|cd6x6_addr_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(0),
	datad => VCC,
	combout => \dw|im|Add0~0_combout\,
	cout => \dw|im|Add0~1\);

-- Location: LCCOMB_X30_Y7_N22
\dw|im|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan3~0_combout\ = ((!\dw|mem_row\(6) & ((!\dw|mem_row\(4)) # (!\dw|im|always2~2_combout\)))) # (!\dw|mem_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~2_combout\,
	datab => \dw|mem_row\(7),
	datac => \dw|mem_row\(6),
	datad => \dw|mem_row\(4),
	combout => \dw|im|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y7_N4
\dw|im|always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~1_combout\ = (\dw|im|LessThan2~2_combout\) # ((!\dw|im|always2~0_combout\ & (!\dw|mem_col\(7) & !\dw|mem_col\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~0_combout\,
	datab => \dw|mem_col\(7),
	datac => \dw|im|LessThan2~2_combout\,
	datad => \dw|mem_col\(6),
	combout => \dw|im|always2~1_combout\);

-- Location: LCCOMB_X30_Y8_N26
\dw|im|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan1~1_combout\ = (!\dw|mem_col\(4) & (!\dw|mem_col\(6) & ((!\dw|mem_col\(0)) # (!\dw|mem_col\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(1),
	datab => \dw|mem_col\(4),
	datac => \dw|mem_col\(6),
	datad => \dw|mem_col\(0),
	combout => \dw|im|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y8_N4
\dw|im|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan1~0_combout\ = (!\dw|mem_col\(6) & (((!\dw|mem_col\(3) & !\dw|mem_col\(4))) # (!\dw|mem_col\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|mem_col\(3),
	datab => \dw|mem_col\(5),
	datac => \dw|mem_col\(6),
	datad => \dw|mem_col\(4),
	combout => \dw|im|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y8_N28
\dw|im|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|LessThan1~2_combout\ = (\dw|im|LessThan1~0_combout\) # (((\dw|im|LessThan1~1_combout\ & !\dw|mem_col\(2))) # (!\dw|mem_col\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan1~1_combout\,
	datab => \dw|im|LessThan1~0_combout\,
	datac => \dw|mem_col\(2),
	datad => \dw|mem_col\(7),
	combout => \dw|im|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y7_N18
\dw|im|update~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|update~1_combout\ = (\dw|im|update~0_combout\ & ((\dw|im|always2~11_combout\) # ((\dw|im|update\(0)) # (\dw|im|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|update~0_combout\,
	datab => \dw|im|always2~11_combout\,
	datac => \dw|im|update\(0),
	datad => \dw|im|Equal0~4_combout\,
	combout => \dw|im|update~1_combout\);

-- Location: FF_X30_Y7_N19
\dw|im|update[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|update~1_combout\,
	ena => \dw|ALT_INV_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|update\(0));

-- Location: LCCOMB_X30_Y7_N24
\dw|im|always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|always2~3_combout\ = (\dw|im|LessThan3~0_combout\ & (!\dw|im|always2~1_combout\ & (\dw|im|LessThan1~2_combout\ & !\dw|im|update\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|LessThan3~0_combout\,
	datab => \dw|im|always2~1_combout\,
	datac => \dw|im|LessThan1~2_combout\,
	datad => \dw|im|update\(0),
	combout => \dw|im|always2~3_combout\);

-- Location: LCCOMB_X29_Y7_N28
\dw|im|cd6x6_addr_B[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[13]~0_combout\ = (!\dw|enable~q\ & (!\dw|im|Equal0~4_combout\ & \dw|im|always2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|enable~q\,
	datac => \dw|im|Equal0~4_combout\,
	datad => \dw|im|always2~3_combout\,
	combout => \dw|im|cd6x6_addr_B[13]~0_combout\);

-- Location: LCCOMB_X29_Y7_N10
\dw|im|cd6x6_addr_B[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[0]~3_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~0_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(0)) # ((\dw|im|Add0~0_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~0_combout\,
	datac => \dw|im|cd6x6_addr_B\(0),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[0]~3_combout\);

-- Location: FF_X29_Y7_N11
\dw|im|cd6x6_addr_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(0));

-- Location: LCCOMB_X28_Y7_N2
\dw|im|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~2_combout\ = (\dw|im|cd6x6_addr_B\(1) & (!\dw|im|Add0~1\)) # (!\dw|im|cd6x6_addr_B\(1) & ((\dw|im|Add0~1\) # (GND)))
-- \dw|im|Add0~3\ = CARRY((!\dw|im|Add0~1\) # (!\dw|im|cd6x6_addr_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(1),
	datad => VCC,
	cin => \dw|im|Add0~1\,
	combout => \dw|im|Add0~2_combout\,
	cout => \dw|im|Add0~3\);

-- Location: FF_X28_Y7_N3
\dw|im|cd6x6_addr_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~2_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(1));

-- Location: LCCOMB_X28_Y7_N4
\dw|im|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~4_combout\ = (\dw|im|cd6x6_addr_B\(2) & (\dw|im|Add0~3\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(2) & (!\dw|im|Add0~3\ & VCC))
-- \dw|im|Add0~5\ = CARRY((\dw|im|cd6x6_addr_B\(2) & !\dw|im|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(2),
	datad => VCC,
	cin => \dw|im|Add0~3\,
	combout => \dw|im|Add0~4_combout\,
	cout => \dw|im|Add0~5\);

-- Location: FF_X28_Y7_N5
\dw|im|cd6x6_addr_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~4_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(2));

-- Location: LCCOMB_X28_Y7_N6
\dw|im|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~6_combout\ = (\dw|im|cd6x6_addr_B\(3) & (!\dw|im|Add0~5\)) # (!\dw|im|cd6x6_addr_B\(3) & ((\dw|im|Add0~5\) # (GND)))
-- \dw|im|Add0~7\ = CARRY((!\dw|im|Add0~5\) # (!\dw|im|cd6x6_addr_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(3),
	datad => VCC,
	cin => \dw|im|Add0~5\,
	combout => \dw|im|Add0~6_combout\,
	cout => \dw|im|Add0~7\);

-- Location: LCCOMB_X29_Y7_N20
\dw|im|cd6x6_addr_B[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[3]~2_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~6_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(3)) # ((\dw|im|Add0~6_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~6_combout\,
	datac => \dw|im|cd6x6_addr_B\(3),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[3]~2_combout\);

-- Location: FF_X29_Y7_N21
\dw|im|cd6x6_addr_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(3));

-- Location: LCCOMB_X28_Y7_N8
\dw|im|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~8_combout\ = (\dw|im|cd6x6_addr_B\(4) & (\dw|im|Add0~7\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(4) & (!\dw|im|Add0~7\ & VCC))
-- \dw|im|Add0~9\ = CARRY((\dw|im|cd6x6_addr_B\(4) & !\dw|im|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(4),
	datad => VCC,
	cin => \dw|im|Add0~7\,
	combout => \dw|im|Add0~8_combout\,
	cout => \dw|im|Add0~9\);

-- Location: FF_X28_Y7_N9
\dw|im|cd6x6_addr_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~8_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(4));

-- Location: LCCOMB_X28_Y7_N10
\dw|im|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~10_combout\ = (\dw|im|cd6x6_addr_B\(5) & (!\dw|im|Add0~9\)) # (!\dw|im|cd6x6_addr_B\(5) & ((\dw|im|Add0~9\) # (GND)))
-- \dw|im|Add0~11\ = CARRY((!\dw|im|Add0~9\) # (!\dw|im|cd6x6_addr_B\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(5),
	datad => VCC,
	cin => \dw|im|Add0~9\,
	combout => \dw|im|Add0~10_combout\,
	cout => \dw|im|Add0~11\);

-- Location: FF_X28_Y7_N11
\dw|im|cd6x6_addr_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~10_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(5));

-- Location: LCCOMB_X28_Y7_N12
\dw|im|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~12_combout\ = (\dw|im|cd6x6_addr_B\(6) & (\dw|im|Add0~11\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(6) & (!\dw|im|Add0~11\ & VCC))
-- \dw|im|Add0~13\ = CARRY((\dw|im|cd6x6_addr_B\(6) & !\dw|im|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(6),
	datad => VCC,
	cin => \dw|im|Add0~11\,
	combout => \dw|im|Add0~12_combout\,
	cout => \dw|im|Add0~13\);

-- Location: FF_X28_Y7_N13
\dw|im|cd6x6_addr_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~12_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(6));

-- Location: LCCOMB_X28_Y7_N14
\dw|im|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~14_combout\ = (\dw|im|cd6x6_addr_B\(7) & (!\dw|im|Add0~13\)) # (!\dw|im|cd6x6_addr_B\(7) & ((\dw|im|Add0~13\) # (GND)))
-- \dw|im|Add0~15\ = CARRY((!\dw|im|Add0~13\) # (!\dw|im|cd6x6_addr_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(7),
	datad => VCC,
	cin => \dw|im|Add0~13\,
	combout => \dw|im|Add0~14_combout\,
	cout => \dw|im|Add0~15\);

-- Location: LCCOMB_X28_Y7_N28
\dw|im|cd6x6_addr_B[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[7]~4_combout\ = (\dw|im|Add0~14_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\) # ((\dw|im|cd6x6_addr_B\(7) & !\dw|im|cd6x6_addr_B[0]~1_combout\)))) # (!\dw|im|Add0~14_combout\ & (((\dw|im|cd6x6_addr_B\(7) & 
-- !\dw|im|cd6x6_addr_B[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|Add0~14_combout\,
	datab => \dw|im|cd6x6_addr_B[13]~0_combout\,
	datac => \dw|im|cd6x6_addr_B\(7),
	datad => \dw|im|cd6x6_addr_B[0]~1_combout\,
	combout => \dw|im|cd6x6_addr_B[7]~4_combout\);

-- Location: FF_X28_Y7_N29
\dw|im|cd6x6_addr_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(7));

-- Location: LCCOMB_X28_Y7_N16
\dw|im|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~16_combout\ = (\dw|im|cd6x6_addr_B\(8) & (\dw|im|Add0~15\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(8) & (!\dw|im|Add0~15\ & VCC))
-- \dw|im|Add0~17\ = CARRY((\dw|im|cd6x6_addr_B\(8) & !\dw|im|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(8),
	datad => VCC,
	cin => \dw|im|Add0~15\,
	combout => \dw|im|Add0~16_combout\,
	cout => \dw|im|Add0~17\);

-- Location: FF_X28_Y7_N17
\dw|im|cd6x6_addr_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~16_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(8));

-- Location: LCCOMB_X28_Y7_N18
\dw|im|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~18_combout\ = (\dw|im|cd6x6_addr_B\(9) & (!\dw|im|Add0~17\)) # (!\dw|im|cd6x6_addr_B\(9) & ((\dw|im|Add0~17\) # (GND)))
-- \dw|im|Add0~19\ = CARRY((!\dw|im|Add0~17\) # (!\dw|im|cd6x6_addr_B\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(9),
	datad => VCC,
	cin => \dw|im|Add0~17\,
	combout => \dw|im|Add0~18_combout\,
	cout => \dw|im|Add0~19\);

-- Location: LCCOMB_X29_Y7_N30
\dw|im|cd6x6_addr_B[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[9]~5_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~18_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(9)) # ((\dw|im|Add0~18_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~18_combout\,
	datac => \dw|im|cd6x6_addr_B\(9),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[9]~5_combout\);

-- Location: FF_X29_Y7_N31
\dw|im|cd6x6_addr_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(9));

-- Location: LCCOMB_X28_Y7_N20
\dw|im|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~20_combout\ = (\dw|im|cd6x6_addr_B\(10) & (\dw|im|Add0~19\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(10) & (!\dw|im|Add0~19\ & VCC))
-- \dw|im|Add0~21\ = CARRY((\dw|im|cd6x6_addr_B\(10) & !\dw|im|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(10),
	datad => VCC,
	cin => \dw|im|Add0~19\,
	combout => \dw|im|Add0~20_combout\,
	cout => \dw|im|Add0~21\);

-- Location: FF_X28_Y7_N21
\dw|im|cd6x6_addr_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|Add0~20_combout\,
	ena => \dw|im|cd6x6_addr_B[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(10));

-- Location: LCCOMB_X28_Y7_N22
\dw|im|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~22_combout\ = (\dw|im|cd6x6_addr_B\(11) & (!\dw|im|Add0~21\)) # (!\dw|im|cd6x6_addr_B\(11) & ((\dw|im|Add0~21\) # (GND)))
-- \dw|im|Add0~23\ = CARRY((!\dw|im|Add0~21\) # (!\dw|im|cd6x6_addr_B\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(11),
	datad => VCC,
	cin => \dw|im|Add0~21\,
	combout => \dw|im|Add0~22_combout\,
	cout => \dw|im|Add0~23\);

-- Location: LCCOMB_X29_Y7_N4
\dw|im|cd6x6_addr_B[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[11]~6_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~22_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(11)) # ((\dw|im|Add0~22_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~22_combout\,
	datac => \dw|im|cd6x6_addr_B\(11),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[11]~6_combout\);

-- Location: FF_X29_Y7_N5
\dw|im|cd6x6_addr_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(11));

-- Location: LCCOMB_X28_Y7_N24
\dw|im|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~24_combout\ = (\dw|im|cd6x6_addr_B\(12) & (\dw|im|Add0~23\ $ (GND))) # (!\dw|im|cd6x6_addr_B\(12) & (!\dw|im|Add0~23\ & VCC))
-- \dw|im|Add0~25\ = CARRY((\dw|im|cd6x6_addr_B\(12) & !\dw|im|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|im|cd6x6_addr_B\(12),
	datad => VCC,
	cin => \dw|im|Add0~23\,
	combout => \dw|im|Add0~24_combout\,
	cout => \dw|im|Add0~25\);

-- Location: LCCOMB_X29_Y7_N8
\dw|im|cd6x6_addr_B[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[12]~7_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~24_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(12)) # ((\dw|im|Add0~24_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~24_combout\,
	datac => \dw|im|cd6x6_addr_B\(12),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[12]~7_combout\);

-- Location: FF_X29_Y7_N9
\dw|im|cd6x6_addr_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(12));

-- Location: LCCOMB_X29_Y7_N12
\dw|im|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal0~3_combout\ = (\dw|im|cd6x6_addr_B\(12) & \dw|im|cd6x6_addr_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|cd6x6_addr_B\(12),
	datad => \dw|im|cd6x6_addr_B\(13),
	combout => \dw|im|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y7_N0
\dw|im|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal0~0_combout\ = (!\dw|im|cd6x6_addr_B\(0) & (\dw|im|cd6x6_addr_B\(3) & (!\dw|im|cd6x6_addr_B\(2) & !\dw|im|cd6x6_addr_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(0),
	datab => \dw|im|cd6x6_addr_B\(3),
	datac => \dw|im|cd6x6_addr_B\(2),
	datad => \dw|im|cd6x6_addr_B\(1),
	combout => \dw|im|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y7_N30
\dw|im|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal0~1_combout\ = (!\dw|im|cd6x6_addr_B\(5) & (\dw|im|cd6x6_addr_B\(7) & (!\dw|im|cd6x6_addr_B\(4) & !\dw|im|cd6x6_addr_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(5),
	datab => \dw|im|cd6x6_addr_B\(7),
	datac => \dw|im|cd6x6_addr_B\(4),
	datad => \dw|im|cd6x6_addr_B\(6),
	combout => \dw|im|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y7_N6
\dw|im|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal0~2_combout\ = (\dw|im|cd6x6_addr_B\(9) & (!\dw|im|cd6x6_addr_B\(10) & (\dw|im|cd6x6_addr_B\(11) & !\dw|im|cd6x6_addr_B\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B\(9),
	datab => \dw|im|cd6x6_addr_B\(10),
	datac => \dw|im|cd6x6_addr_B\(11),
	datad => \dw|im|cd6x6_addr_B\(8),
	combout => \dw|im|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y7_N14
\dw|im|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Equal0~4_combout\ = (\dw|im|Equal0~3_combout\ & (\dw|im|Equal0~0_combout\ & (\dw|im|Equal0~1_combout\ & \dw|im|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|Equal0~3_combout\,
	datab => \dw|im|Equal0~0_combout\,
	datac => \dw|im|Equal0~1_combout\,
	datad => \dw|im|Equal0~2_combout\,
	combout => \dw|im|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y7_N22
\dw|im|cd6x6_addr_B[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[0]~1_combout\ = (!\dw|enable~q\ & ((\dw|im|Equal0~4_combout\) # (\dw|im|always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|enable~q\,
	datac => \dw|im|Equal0~4_combout\,
	datad => \dw|im|always2~3_combout\,
	combout => \dw|im|cd6x6_addr_B[0]~1_combout\);

-- Location: LCCOMB_X28_Y7_N26
\dw|im|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|Add0~26_combout\ = \dw|im|Add0~25\ $ (\dw|im|cd6x6_addr_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|cd6x6_addr_B\(13),
	cin => \dw|im|Add0~25\,
	combout => \dw|im|Add0~26_combout\);

-- Location: LCCOMB_X29_Y7_N2
\dw|im|cd6x6_addr_B[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6_addr_B[13]~8_combout\ = (\dw|im|cd6x6_addr_B[0]~1_combout\ & (\dw|im|Add0~26_combout\ & ((\dw|im|cd6x6_addr_B[13]~0_combout\)))) # (!\dw|im|cd6x6_addr_B[0]~1_combout\ & ((\dw|im|cd6x6_addr_B\(13)) # ((\dw|im|Add0~26_combout\ & 
-- \dw|im|cd6x6_addr_B[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6_addr_B[0]~1_combout\,
	datab => \dw|im|Add0~26_combout\,
	datac => \dw|im|cd6x6_addr_B\(13),
	datad => \dw|im|cd6x6_addr_B[13]~0_combout\,
	combout => \dw|im|cd6x6_addr_B[13]~8_combout\);

-- Location: FF_X29_Y7_N3
\dw|im|cd6x6_addr_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6_addr_B[13]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6_addr_B\(13));

-- Location: LCCOMB_X29_Y7_N26
\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ = \dw|im|cd6x6_addr_B\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|cd6x6_addr_B\(13),
	combout => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X30_Y7_N9
\dw|im|readenable[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|im|always2~3_combout\,
	sload => VCC,
	ena => \dw|ALT_INV_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|readenable\(0));

-- Location: FF_X29_Y7_N27
\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\,
	ena => \dw|im|readenable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0));

-- Location: M9K_X22_Y4_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C000380007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C00038000",
	mem_init2 => X"70000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000",
	mem_init1 => X"070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C0003800070",
	mem_init0 => X"000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C0003800070000",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y4_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C0003",
	mem_init2 => X"8000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C000",
	mem_init1 => X"3800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C000380",
	mem_init0 => X"0070000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C000000038",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y7_N20
\dw|im|image~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~0_combout\ = (\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\))) # (!\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datac => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \dw|im|image~0_combout\);

-- Location: LCCOMB_X30_Y7_N16
\dw|im|image~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~1_combout\ = (\dw|im|always2~9_combout\ & (\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\dw|im|always2~9_combout\ & ((\dw|im|image~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~9_combout\,
	datac => \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \dw|im|image~0_combout\,
	combout => \dw|im|image~1_combout\);

-- Location: LCCOMB_X30_Y7_N2
\dw|im|image[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image[0]~2_combout\ = (!\dw|enable~q\ & ((\dw|im|always2~9_combout\) # ((\dw|im|always2~3_combout\ & !\dw|im|readenable\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|enable~q\,
	datab => \dw|im|always2~3_combout\,
	datac => \dw|im|readenable\(1),
	datad => \dw|im|always2~9_combout\,
	combout => \dw|im|image[0]~2_combout\);

-- Location: FF_X30_Y7_N17
\dw|im|image[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|image~1_combout\,
	ena => \dw|im|image[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|image\(0));

-- Location: LCCOMB_X27_Y18_N12
\dw|dpm|ram_rtl_0_bypass[35]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[35]~1_combout\ = !\dw|im|image\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|image\(0),
	combout => \dw|dpm|ram_rtl_0_bypass[35]~1_combout\);

-- Location: FF_X27_Y18_N13
\dw|dpm|ram_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[35]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(35));

-- Location: LCCOMB_X29_Y17_N4
\dw|im|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|WideOr1~combout\ = (\dw|im|readenable\(1)) # (\dw|im|readenable\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dw|im|readenable\(1),
	datad => \dw|im|readenable\(0),
	combout => \dw|im|WideOr1~combout\);

-- Location: FF_X29_Y17_N5
\dw|dpm|ram_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(0));

-- Location: FF_X29_Y17_N27
\dw|dpm|ram_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(33));

-- Location: LCCOMB_X31_Y17_N4
\dw|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~0_combout\ = (\syncgen|CounterX\(8)) # ((\syncgen|CounterX\(9)) # ((\syncgen|CounterX\(7) & \syncgen|CounterX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datab => \syncgen|CounterX\(8),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(9),
	combout => \dw|Add4~0_combout\);

-- Location: LCCOMB_X31_Y17_N8
\dw|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~1_combout\ = \syncgen|CounterX\(9) $ (((\syncgen|CounterX\(8)) # ((\syncgen|CounterX\(7) & \syncgen|CounterX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datab => \syncgen|CounterX\(9),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(8),
	combout => \dw|Add4~1_combout\);

-- Location: LCCOMB_X31_Y17_N30
\dw|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~2_combout\ = \syncgen|CounterX\(8) $ (((\syncgen|CounterX\(7) & \syncgen|CounterX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(8),
	combout => \dw|Add4~2_combout\);

-- Location: LCCOMB_X31_Y17_N10
\dw|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~0_combout\ = (\dw|Add4~2_combout\ & (\syncgen|CounterY\(0) & VCC)) # (!\dw|Add4~2_combout\ & (\syncgen|CounterY\(0) $ (VCC)))
-- \dw|Add3~1\ = CARRY((!\dw|Add4~2_combout\ & \syncgen|CounterY\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~2_combout\,
	datab => \syncgen|CounterY\(0),
	datad => VCC,
	combout => \dw|Add3~0_combout\,
	cout => \dw|Add3~1\);

-- Location: LCCOMB_X31_Y17_N12
\dw|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~2_combout\ = (\syncgen|CounterY\(1) & ((\dw|Add4~1_combout\ & (!\dw|Add3~1\)) # (!\dw|Add4~1_combout\ & (\dw|Add3~1\ & VCC)))) # (!\syncgen|CounterY\(1) & ((\dw|Add4~1_combout\ & ((\dw|Add3~1\) # (GND))) # (!\dw|Add4~1_combout\ & 
-- (!\dw|Add3~1\))))
-- \dw|Add3~3\ = CARRY((\syncgen|CounterY\(1) & (\dw|Add4~1_combout\ & !\dw|Add3~1\)) # (!\syncgen|CounterY\(1) & ((\dw|Add4~1_combout\) # (!\dw|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \dw|Add4~1_combout\,
	datad => VCC,
	cin => \dw|Add3~1\,
	combout => \dw|Add3~2_combout\,
	cout => \dw|Add3~3\);

-- Location: LCCOMB_X31_Y17_N14
\dw|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~4_combout\ = ((\dw|Add4~0_combout\ $ (\syncgen|CounterY\(2) $ (\dw|Add3~3\)))) # (GND)
-- \dw|Add3~5\ = CARRY((\dw|Add4~0_combout\ & (\syncgen|CounterY\(2) & !\dw|Add3~3\)) # (!\dw|Add4~0_combout\ & ((\syncgen|CounterY\(2)) # (!\dw|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~0_combout\,
	datab => \syncgen|CounterY\(2),
	datad => VCC,
	cin => \dw|Add3~3\,
	combout => \dw|Add3~4_combout\,
	cout => \dw|Add3~5\);

-- Location: LCCOMB_X31_Y17_N16
\dw|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~6_combout\ = (\dw|Add4~0_combout\ & ((\syncgen|CounterY\(3) & (!\dw|Add3~5\)) # (!\syncgen|CounterY\(3) & ((\dw|Add3~5\) # (GND))))) # (!\dw|Add4~0_combout\ & ((\syncgen|CounterY\(3) & (\dw|Add3~5\ & VCC)) # (!\syncgen|CounterY\(3) & 
-- (!\dw|Add3~5\))))
-- \dw|Add3~7\ = CARRY((\dw|Add4~0_combout\ & ((!\dw|Add3~5\) # (!\syncgen|CounterY\(3)))) # (!\dw|Add4~0_combout\ & (!\syncgen|CounterY\(3) & !\dw|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~0_combout\,
	datab => \syncgen|CounterY\(3),
	datad => VCC,
	cin => \dw|Add3~5\,
	combout => \dw|Add3~6_combout\,
	cout => \dw|Add3~7\);

-- Location: LCCOMB_X31_Y17_N18
\dw|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~8_combout\ = ((\dw|Add4~0_combout\ $ (\syncgen|CounterY\(4) $ (\dw|Add3~7\)))) # (GND)
-- \dw|Add3~9\ = CARRY((\dw|Add4~0_combout\ & (\syncgen|CounterY\(4) & !\dw|Add3~7\)) # (!\dw|Add4~0_combout\ & ((\syncgen|CounterY\(4)) # (!\dw|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~0_combout\,
	datab => \syncgen|CounterY\(4),
	datad => VCC,
	cin => \dw|Add3~7\,
	combout => \dw|Add3~8_combout\,
	cout => \dw|Add3~9\);

-- Location: LCCOMB_X31_Y17_N20
\dw|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~10_combout\ = (\syncgen|CounterY\(5) & ((\dw|Add4~0_combout\ & (!\dw|Add3~9\)) # (!\dw|Add4~0_combout\ & (\dw|Add3~9\ & VCC)))) # (!\syncgen|CounterY\(5) & ((\dw|Add4~0_combout\ & ((\dw|Add3~9\) # (GND))) # (!\dw|Add4~0_combout\ & 
-- (!\dw|Add3~9\))))
-- \dw|Add3~11\ = CARRY((\syncgen|CounterY\(5) & (\dw|Add4~0_combout\ & !\dw|Add3~9\)) # (!\syncgen|CounterY\(5) & ((\dw|Add4~0_combout\) # (!\dw|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(5),
	datab => \dw|Add4~0_combout\,
	datad => VCC,
	cin => \dw|Add3~9\,
	combout => \dw|Add3~10_combout\,
	cout => \dw|Add3~11\);

-- Location: LCCOMB_X31_Y17_N22
\dw|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~12_combout\ = ((\syncgen|CounterY\(6) $ (\dw|Add4~0_combout\ $ (\dw|Add3~11\)))) # (GND)
-- \dw|Add3~13\ = CARRY((\syncgen|CounterY\(6) & ((!\dw|Add3~11\) # (!\dw|Add4~0_combout\))) # (!\syncgen|CounterY\(6) & (!\dw|Add4~0_combout\ & !\dw|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(6),
	datab => \dw|Add4~0_combout\,
	datad => VCC,
	cin => \dw|Add3~11\,
	combout => \dw|Add3~12_combout\,
	cout => \dw|Add3~13\);

-- Location: LCCOMB_X31_Y17_N24
\dw|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~14_combout\ = (\syncgen|CounterY\(7) & ((\dw|Add4~0_combout\ & (!\dw|Add3~13\)) # (!\dw|Add4~0_combout\ & (\dw|Add3~13\ & VCC)))) # (!\syncgen|CounterY\(7) & ((\dw|Add4~0_combout\ & ((\dw|Add3~13\) # (GND))) # (!\dw|Add4~0_combout\ & 
-- (!\dw|Add3~13\))))
-- \dw|Add3~15\ = CARRY((\syncgen|CounterY\(7) & (\dw|Add4~0_combout\ & !\dw|Add3~13\)) # (!\syncgen|CounterY\(7) & ((\dw|Add4~0_combout\) # (!\dw|Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(7),
	datab => \dw|Add4~0_combout\,
	datad => VCC,
	cin => \dw|Add3~13\,
	combout => \dw|Add3~14_combout\,
	cout => \dw|Add3~15\);

-- Location: LCCOMB_X31_Y17_N26
\dw|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add3~16_combout\ = \dw|Add4~0_combout\ $ (\dw|Add3~15\ $ (\syncgen|CounterY\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~0_combout\,
	datad => \syncgen|CounterY\(8),
	cin => \dw|Add3~15\,
	combout => \dw|Add3~16_combout\);

-- Location: LCCOMB_X30_Y17_N8
\dw|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~0_combout\ = \dw|Add3~0_combout\ $ (VCC)
-- \dw|Add5~1\ = CARRY(\dw|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~0_combout\,
	datad => VCC,
	combout => \dw|Add5~0_combout\,
	cout => \dw|Add5~1\);

-- Location: LCCOMB_X30_Y17_N10
\dw|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~2_combout\ = (\dw|Add3~2_combout\ & (!\dw|Add5~1\)) # (!\dw|Add3~2_combout\ & ((\dw|Add5~1\) # (GND)))
-- \dw|Add5~3\ = CARRY((!\dw|Add5~1\) # (!\dw|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~2_combout\,
	datad => VCC,
	cin => \dw|Add5~1\,
	combout => \dw|Add5~2_combout\,
	cout => \dw|Add5~3\);

-- Location: LCCOMB_X30_Y17_N12
\dw|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~4_combout\ = (\dw|Add3~4_combout\ & (\dw|Add5~3\ $ (GND))) # (!\dw|Add3~4_combout\ & (!\dw|Add5~3\ & VCC))
-- \dw|Add5~5\ = CARRY((\dw|Add3~4_combout\ & !\dw|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~4_combout\,
	datad => VCC,
	cin => \dw|Add5~3\,
	combout => \dw|Add5~4_combout\,
	cout => \dw|Add5~5\);

-- Location: LCCOMB_X30_Y17_N14
\dw|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~6_combout\ = (\dw|Add3~6_combout\ & (\dw|Add5~5\ & VCC)) # (!\dw|Add3~6_combout\ & (!\dw|Add5~5\))
-- \dw|Add5~7\ = CARRY((!\dw|Add3~6_combout\ & !\dw|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~6_combout\,
	datad => VCC,
	cin => \dw|Add5~5\,
	combout => \dw|Add5~6_combout\,
	cout => \dw|Add5~7\);

-- Location: LCCOMB_X30_Y17_N16
\dw|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~8_combout\ = (\dw|Add3~8_combout\ & ((GND) # (!\dw|Add5~7\))) # (!\dw|Add3~8_combout\ & (\dw|Add5~7\ $ (GND)))
-- \dw|Add5~9\ = CARRY((\dw|Add3~8_combout\) # (!\dw|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~8_combout\,
	datad => VCC,
	cin => \dw|Add5~7\,
	combout => \dw|Add5~8_combout\,
	cout => \dw|Add5~9\);

-- Location: LCCOMB_X30_Y17_N18
\dw|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~10_combout\ = (\dw|Add3~10_combout\ & (\dw|Add5~9\ & VCC)) # (!\dw|Add3~10_combout\ & (!\dw|Add5~9\))
-- \dw|Add5~11\ = CARRY((!\dw|Add3~10_combout\ & !\dw|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add3~10_combout\,
	datad => VCC,
	cin => \dw|Add5~9\,
	combout => \dw|Add5~10_combout\,
	cout => \dw|Add5~11\);

-- Location: LCCOMB_X30_Y17_N20
\dw|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~12_combout\ = (\dw|Add3~12_combout\ & ((GND) # (!\dw|Add5~11\))) # (!\dw|Add3~12_combout\ & (\dw|Add5~11\ $ (GND)))
-- \dw|Add5~13\ = CARRY((\dw|Add3~12_combout\) # (!\dw|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~12_combout\,
	datad => VCC,
	cin => \dw|Add5~11\,
	combout => \dw|Add5~12_combout\,
	cout => \dw|Add5~13\);

-- Location: LCCOMB_X30_Y17_N22
\dw|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~14_combout\ = (\dw|Add3~14_combout\ & (!\dw|Add5~13\)) # (!\dw|Add3~14_combout\ & ((\dw|Add5~13\) # (GND)))
-- \dw|Add5~15\ = CARRY((!\dw|Add5~13\) # (!\dw|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add3~14_combout\,
	datad => VCC,
	cin => \dw|Add5~13\,
	combout => \dw|Add5~14_combout\,
	cout => \dw|Add5~15\);

-- Location: LCCOMB_X30_Y17_N24
\dw|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~16_combout\ = \dw|Add5~15\ $ (\dw|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dw|Add3~16_combout\,
	cin => \dw|Add5~15\,
	combout => \dw|Add5~16_combout\);

-- Location: FF_X30_Y17_N25
\dw|dpm|ram_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(34));

-- Location: LCCOMB_X29_Y17_N26
\dw|dpm|ram~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~5_combout\ = (\dw|dpm|ram_rtl_0_bypass\(0) & (\dw|dpm|ram_rtl_0_bypass\(33) $ (!\dw|dpm|ram_rtl_0_bypass\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm|ram_rtl_0_bypass\(0),
	datac => \dw|dpm|ram_rtl_0_bypass\(33),
	datad => \dw|dpm|ram_rtl_0_bypass\(34),
	combout => \dw|dpm|ram~5_combout\);

-- Location: LCCOMB_X27_Y17_N30
\dw|dpm|ram_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[3]~feeder_combout\ = \dw|dpm_addr_A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(1),
	combout => \dw|dpm|ram_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X27_Y17_N31
\dw|dpm|ram_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(3));

-- Location: LCCOMB_X27_Y17_N24
\dw|dpm|ram_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[1]~feeder_combout\ = \dw|dpm_addr_A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(0),
	combout => \dw|dpm|ram_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X27_Y17_N25
\dw|dpm|ram_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(1));

-- Location: FF_X27_Y17_N13
\dw|dpm|ram_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \syncgen|CounterX\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(4));

-- Location: LCCOMB_X27_Y17_N18
\dw|dpm|ram_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[2]~feeder_combout\ = \syncgen|CounterX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \syncgen|CounterX\(0),
	combout => \dw|dpm|ram_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X27_Y17_N19
\dw|dpm|ram_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(2));

-- Location: LCCOMB_X27_Y17_N12
\dw|dpm|ram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~0_combout\ = (\dw|dpm|ram_rtl_0_bypass\(3) & (\dw|dpm|ram_rtl_0_bypass\(4) & (\dw|dpm|ram_rtl_0_bypass\(1) $ (!\dw|dpm|ram_rtl_0_bypass\(2))))) # (!\dw|dpm|ram_rtl_0_bypass\(3) & (!\dw|dpm|ram_rtl_0_bypass\(4) & (\dw|dpm|ram_rtl_0_bypass\(1) $ 
-- (!\dw|dpm|ram_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(3),
	datab => \dw|dpm|ram_rtl_0_bypass\(1),
	datac => \dw|dpm|ram_rtl_0_bypass\(4),
	datad => \dw|dpm|ram_rtl_0_bypass\(2),
	combout => \dw|dpm|ram~0_combout\);

-- Location: LCCOMB_X27_Y17_N26
\dw|dpm|ram_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[10]~feeder_combout\ = \syncgen|CounterX\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \syncgen|CounterX\(4),
	combout => \dw|dpm|ram_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X27_Y17_N27
\dw|dpm|ram_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(10));

-- Location: FF_X27_Y17_N17
\dw|dpm|ram_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(9));

-- Location: FF_X27_Y17_N1
\dw|dpm|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \syncgen|CounterX\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(12));

-- Location: LCCOMB_X27_Y17_N10
\dw|dpm|ram_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[11]~feeder_combout\ = \dw|dpm_addr_A\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(5),
	combout => \dw|dpm|ram_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X27_Y17_N11
\dw|dpm|ram_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(11));

-- Location: LCCOMB_X27_Y17_N0
\dw|dpm|ram~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~2_combout\ = (\dw|dpm|ram_rtl_0_bypass\(10) & (\dw|dpm|ram_rtl_0_bypass\(9) & (\dw|dpm|ram_rtl_0_bypass\(12) $ (!\dw|dpm|ram_rtl_0_bypass\(11))))) # (!\dw|dpm|ram_rtl_0_bypass\(10) & (!\dw|dpm|ram_rtl_0_bypass\(9) & 
-- (\dw|dpm|ram_rtl_0_bypass\(12) $ (!\dw|dpm|ram_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(10),
	datab => \dw|dpm|ram_rtl_0_bypass\(9),
	datac => \dw|dpm|ram_rtl_0_bypass\(12),
	datad => \dw|dpm|ram_rtl_0_bypass\(11),
	combout => \dw|dpm|ram~2_combout\);

-- Location: LCCOMB_X27_Y17_N22
\dw|dpm|ram_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[6]~feeder_combout\ = \syncgen|CounterX\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(2),
	combout => \dw|dpm|ram_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X27_Y17_N23
\dw|dpm|ram_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(6));

-- Location: LCCOMB_X27_Y17_N20
\dw|dpm|ram_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[5]~feeder_combout\ = \dw|dpm_addr_A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(2),
	combout => \dw|dpm|ram_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X27_Y17_N21
\dw|dpm|ram_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(5));

-- Location: FF_X27_Y17_N5
\dw|dpm|ram_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \syncgen|CounterX\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(8));

-- Location: FF_X27_Y17_N3
\dw|dpm|ram_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(7));

-- Location: LCCOMB_X27_Y17_N4
\dw|dpm|ram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~1_combout\ = (\dw|dpm|ram_rtl_0_bypass\(6) & (\dw|dpm|ram_rtl_0_bypass\(5) & (\dw|dpm|ram_rtl_0_bypass\(8) $ (!\dw|dpm|ram_rtl_0_bypass\(7))))) # (!\dw|dpm|ram_rtl_0_bypass\(6) & (!\dw|dpm|ram_rtl_0_bypass\(5) & (\dw|dpm|ram_rtl_0_bypass\(8) $ 
-- (!\dw|dpm|ram_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(6),
	datab => \dw|dpm|ram_rtl_0_bypass\(5),
	datac => \dw|dpm|ram_rtl_0_bypass\(8),
	datad => \dw|dpm|ram_rtl_0_bypass\(7),
	combout => \dw|dpm|ram~1_combout\);

-- Location: LCCOMB_X27_Y17_N8
\dw|dpm|ram_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[13]~feeder_combout\ = \dw|dpm_addr_A\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(6),
	combout => \dw|dpm|ram_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X27_Y17_N9
\dw|dpm|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(13));

-- Location: FF_X27_Y17_N15
\dw|dpm|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(15));

-- Location: LCCOMB_X31_Y18_N6
\dw|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~3_combout\ = \syncgen|CounterX\(6) $ (\syncgen|CounterX\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(6),
	datac => \syncgen|CounterX\(7),
	combout => \dw|Add4~3_combout\);

-- Location: FF_X27_Y17_N29
\dw|dpm|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|Add4~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(16));

-- Location: LCCOMB_X34_Y17_N26
\dw|dpm|ram_rtl_0_bypass[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[14]~0_combout\ = !\syncgen|CounterX\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(6),
	combout => \dw|dpm|ram_rtl_0_bypass[14]~0_combout\);

-- Location: FF_X34_Y17_N27
\dw|dpm|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(14));

-- Location: LCCOMB_X27_Y17_N28
\dw|dpm|ram~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~3_combout\ = (\dw|dpm|ram_rtl_0_bypass\(13) & (\dw|dpm|ram_rtl_0_bypass\(14) & (\dw|dpm|ram_rtl_0_bypass\(15) $ (!\dw|dpm|ram_rtl_0_bypass\(16))))) # (!\dw|dpm|ram_rtl_0_bypass\(13) & (!\dw|dpm|ram_rtl_0_bypass\(14) & 
-- (\dw|dpm|ram_rtl_0_bypass\(15) $ (!\dw|dpm|ram_rtl_0_bypass\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(13),
	datab => \dw|dpm|ram_rtl_0_bypass\(15),
	datac => \dw|dpm|ram_rtl_0_bypass\(16),
	datad => \dw|dpm|ram_rtl_0_bypass\(14),
	combout => \dw|dpm|ram~3_combout\);

-- Location: LCCOMB_X27_Y17_N6
\dw|dpm|ram~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~4_combout\ = (\dw|dpm|ram~0_combout\ & (\dw|dpm|ram~2_combout\ & (\dw|dpm|ram~1_combout\ & \dw|dpm|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram~0_combout\,
	datab => \dw|dpm|ram~2_combout\,
	datac => \dw|dpm|ram~1_combout\,
	datad => \dw|dpm|ram~3_combout\,
	combout => \dw|dpm|ram~4_combout\);

-- Location: FF_X30_Y17_N15
\dw|dpm|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(24));

-- Location: FF_X30_Y17_N13
\dw|dpm|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(22));

-- Location: FF_X29_Y17_N23
\dw|dpm|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(21));

-- Location: FF_X29_Y17_N25
\dw|dpm|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(23));

-- Location: LCCOMB_X29_Y17_N22
\dw|dpm|ram~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~7_combout\ = (\dw|dpm|ram_rtl_0_bypass\(24) & (\dw|dpm|ram_rtl_0_bypass\(23) & (\dw|dpm|ram_rtl_0_bypass\(22) $ (!\dw|dpm|ram_rtl_0_bypass\(21))))) # (!\dw|dpm|ram_rtl_0_bypass\(24) & (!\dw|dpm|ram_rtl_0_bypass\(23) & 
-- (\dw|dpm|ram_rtl_0_bypass\(22) $ (!\dw|dpm|ram_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(24),
	datab => \dw|dpm|ram_rtl_0_bypass\(22),
	datac => \dw|dpm|ram_rtl_0_bypass\(21),
	datad => \dw|dpm|ram_rtl_0_bypass\(23),
	combout => \dw|dpm|ram~7_combout\);

-- Location: FF_X30_Y17_N23
\dw|dpm|ram_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(32));

-- Location: FF_X29_Y17_N29
\dw|dpm|ram_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(31));

-- Location: FF_X29_Y17_N19
\dw|dpm|ram_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(29));

-- Location: FF_X30_Y17_N21
\dw|dpm|ram_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(30));

-- Location: LCCOMB_X29_Y17_N18
\dw|dpm|ram~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~9_combout\ = (\dw|dpm|ram_rtl_0_bypass\(32) & (\dw|dpm|ram_rtl_0_bypass\(31) & (\dw|dpm|ram_rtl_0_bypass\(29) $ (!\dw|dpm|ram_rtl_0_bypass\(30))))) # (!\dw|dpm|ram_rtl_0_bypass\(32) & (!\dw|dpm|ram_rtl_0_bypass\(31) & 
-- (\dw|dpm|ram_rtl_0_bypass\(29) $ (!\dw|dpm|ram_rtl_0_bypass\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(32),
	datab => \dw|dpm|ram_rtl_0_bypass\(31),
	datac => \dw|dpm|ram_rtl_0_bypass\(29),
	datad => \dw|dpm|ram_rtl_0_bypass\(30),
	combout => \dw|dpm|ram~9_combout\);

-- Location: FF_X29_Y17_N13
\dw|dpm|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(27));

-- Location: FF_X30_Y17_N19
\dw|dpm|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(28));

-- Location: FF_X29_Y17_N15
\dw|dpm|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(25));

-- Location: FF_X30_Y17_N17
\dw|dpm|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(26));

-- Location: LCCOMB_X29_Y17_N14
\dw|dpm|ram~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~8_combout\ = (\dw|dpm|ram_rtl_0_bypass\(27) & (\dw|dpm|ram_rtl_0_bypass\(28) & (\dw|dpm|ram_rtl_0_bypass\(25) $ (!\dw|dpm|ram_rtl_0_bypass\(26))))) # (!\dw|dpm|ram_rtl_0_bypass\(27) & (!\dw|dpm|ram_rtl_0_bypass\(28) & 
-- (\dw|dpm|ram_rtl_0_bypass\(25) $ (!\dw|dpm|ram_rtl_0_bypass\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(27),
	datab => \dw|dpm|ram_rtl_0_bypass\(28),
	datac => \dw|dpm|ram_rtl_0_bypass\(25),
	datad => \dw|dpm|ram_rtl_0_bypass\(26),
	combout => \dw|dpm|ram~8_combout\);

-- Location: LCCOMB_X29_Y17_N16
\dw|dpm|ram_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[17]~feeder_combout\ = \dw|dpm_addr_A\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|dpm_addr_A\(8),
	combout => \dw|dpm|ram_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X29_Y17_N17
\dw|dpm|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(17));

-- Location: FF_X30_Y17_N9
\dw|dpm|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(18));

-- Location: FF_X30_Y17_N27
\dw|dpm|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|dpm_addr_A\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(19));

-- Location: FF_X30_Y17_N11
\dw|dpm|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(20));

-- Location: LCCOMB_X30_Y17_N26
\dw|dpm|ram~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~6_combout\ = (\dw|dpm|ram_rtl_0_bypass\(17) & (\dw|dpm|ram_rtl_0_bypass\(18) & (\dw|dpm|ram_rtl_0_bypass\(19) $ (!\dw|dpm|ram_rtl_0_bypass\(20))))) # (!\dw|dpm|ram_rtl_0_bypass\(17) & (!\dw|dpm|ram_rtl_0_bypass\(18) & 
-- (\dw|dpm|ram_rtl_0_bypass\(19) $ (!\dw|dpm|ram_rtl_0_bypass\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(17),
	datab => \dw|dpm|ram_rtl_0_bypass\(18),
	datac => \dw|dpm|ram_rtl_0_bypass\(19),
	datad => \dw|dpm|ram_rtl_0_bypass\(20),
	combout => \dw|dpm|ram~6_combout\);

-- Location: LCCOMB_X29_Y17_N6
\dw|dpm|ram~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~10_combout\ = (\dw|dpm|ram~7_combout\ & (\dw|dpm|ram~9_combout\ & (\dw|dpm|ram~8_combout\ & \dw|dpm|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram~7_combout\,
	datab => \dw|dpm|ram~9_combout\,
	datac => \dw|dpm|ram~8_combout\,
	datad => \dw|dpm|ram~6_combout\,
	combout => \dw|dpm|ram~10_combout\);

-- Location: LCCOMB_X29_Y17_N24
\dw|dpm|ram~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~11_combout\ = (\dw|dpm|ram~5_combout\ & (\dw|dpm|ram~4_combout\ & \dw|dpm|ram~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram~5_combout\,
	datab => \dw|dpm|ram~4_combout\,
	datad => \dw|dpm|ram~10_combout\,
	combout => \dw|dpm|ram~11_combout\);

-- Location: FF_X30_Y17_N1
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|Add5~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3));

-- Location: FF_X30_Y17_N3
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|Add5~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X29_Y18_N30
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datad => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\);

-- Location: FF_X30_Y17_N31
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|Add5~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1));

-- Location: FF_X30_Y17_N5
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|Add5~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X29_Y17_N10
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ = (!\dw|dpm_addr_A\(13) & ((\dw|im|readenable\(1)) # (\dw|im|readenable\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(13),
	datac => \dw|im|readenable\(1),
	datad => \dw|im|readenable\(0),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\);

-- Location: LCCOMB_X28_Y17_N14
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\ = (!\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & !\dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\);

-- Location: LCCOMB_X31_Y18_N4
\syncgen|CounterX[6]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterX[6]~_wirecell_combout\ = !\syncgen|CounterX\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(6),
	combout => \syncgen|CounterX[6]~_wirecell_combout\);

-- Location: M9K_X22_Y26_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y17_N20
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\ = (!\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\);

-- Location: M9K_X22_Y30_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N20
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\);

-- Location: LCCOMB_X29_Y17_N8
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ = (\dw|dpm_addr_A\(13) & ((\dw|im|readenable\(0)) # (\dw|im|readenable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|readenable\(0),
	datac => \dw|dpm_addr_A\(13),
	datad => \dw|im|readenable\(1),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\ = (!\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ & !\dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\);

-- Location: M9K_X33_Y12_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y17_N2
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\ = (\dw|dpm_addr_A\(15) & (\dw|dpm_addr_A\(14) & (!\dw|dpm_addr_A\(16) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(15),
	datab => \dw|dpm_addr_A\(14),
	datac => \dw|dpm_addr_A\(16),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\);

-- Location: M9K_X22_Y28_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N14
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\);

-- Location: LCCOMB_X28_Y17_N28
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\);

-- Location: M9K_X22_Y9_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y17_N10
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ & !\dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\);

-- Location: M9K_X33_Y10_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N26
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N22
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & !\dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\);

-- Location: M9K_X33_Y21_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y17_N12
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\);

-- Location: M9K_X33_Y32_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N16
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\);

-- Location: LCCOMB_X29_Y18_N14
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & !\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datad => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X28_Y17_N8
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\ = (!\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\);

-- Location: M9K_X22_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y17_N28
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\ = (!\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(14) & (!\dw|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(14),
	datac => \dw|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\);

-- Location: M9K_X33_Y24_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y20_N16
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X29_Y17_N20
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\ = (!\dw|dpm_addr_A\(15) & (!\dw|dpm_addr_A\(14) & (!\dw|dpm_addr_A\(16) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(15),
	datab => \dw|dpm_addr_A\(14),
	datac => \dw|dpm_addr_A\(16),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\);

-- Location: M9K_X33_Y26_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y17_N2
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\ = (!\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\);

-- Location: M9K_X33_Y30_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y26_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\);

-- Location: LCCOMB_X29_Y17_N30
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (\dw|dpm_addr_A\(14) & (!\dw|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(14),
	datac => \dw|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\);

-- Location: M9K_X33_Y13_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(14) & (!\dw|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(14),
	datac => \dw|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\);

-- Location: M9K_X33_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N6
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & \dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\);

-- Location: M9K_X22_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X28_Y17_N26
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\ = (\dw|dpm_addr_A\(16) & (!\dw|dpm_addr_A\(15) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\ & !\dw|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm_addr_A\(16),
	datab => \dw|dpm_addr_A\(15),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~0_combout\,
	datad => \dw|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\);

-- Location: M9K_X22_Y21_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N28
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X30_Y17_N2
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2)) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X30_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X30_Y18_N16
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\) 
-- # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\);

-- Location: LCCOMB_X30_Y18_N2
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\);

-- Location: LCCOMB_X30_Y18_N28
\dw|dpm|ram~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~12_combout\ = (\dw|dpm|ram_rtl_0_bypass\(36) & ((\dw|dpm|ram~11_combout\ & (!\dw|dpm|ram_rtl_0_bypass\(35))) # (!\dw|dpm|ram~11_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\))))) # (!\dw|dpm|ram_rtl_0_bypass\(36) 
-- & (!\dw|dpm|ram_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(36),
	datab => \dw|dpm|ram_rtl_0_bypass\(35),
	datac => \dw|dpm|ram~11_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\,
	combout => \dw|dpm|ram~12_combout\);

-- Location: LCCOMB_X32_Y17_N24
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\syncgen|CounterY\(7) & (((!\syncgen|CounterY\(5)) # (!\syncgen|CounterY\(6))) # (!\syncgen|CounterY\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(4),
	datab => \syncgen|CounterY\(6),
	datac => \syncgen|CounterY\(5),
	datad => \syncgen|CounterY\(7),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\syncgen|CounterY\(3) & (((!\syncgen|CounterY\(0)) # (!\syncgen|CounterY\(2))) # (!\syncgen|CounterY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \syncgen|CounterY\(2),
	datac => \syncgen|CounterY\(0),
	datad => \syncgen|CounterY\(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ((\LessThan3~0_combout\) # ((!\syncgen|CounterY\(7) & \LessThan2~0_combout\))) # (!\syncgen|CounterY\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(8),
	datab => \syncgen|CounterY\(7),
	datac => \LessThan3~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y17_N22
\R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~1_combout\ = (!\syncgen|CounterY\(4) & (!\syncgen|CounterY\(6) & (!\syncgen|CounterY\(5) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(4),
	datab => \syncgen|CounterY\(6),
	datac => \syncgen|CounterY\(5),
	datad => \LessThan2~0_combout\,
	combout => \R~1_combout\);

-- Location: LCCOMB_X32_Y18_N24
\R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (!\syncgen|CounterX\(9) & (\syncgen|CounterX\(8) $ (((\syncgen|CounterX\(6) & \syncgen|CounterX\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(8),
	datab => \syncgen|CounterX\(9),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(7),
	combout => \R~0_combout\);

-- Location: LCCOMB_X31_Y18_N18
\R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~2_combout\ = (\R~0_combout\ & ((\syncgen|CounterY\(8)) # ((\syncgen|CounterY\(7) & !\R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(8),
	datab => \syncgen|CounterY\(7),
	datac => \R~1_combout\,
	datad => \R~0_combout\,
	combout => \R~2_combout\);

-- Location: LCCOMB_X31_Y18_N16
\R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~3_combout\ = (\LessThan3~1_combout\ & \R~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan3~1_combout\,
	datad => \R~2_combout\,
	combout => \R~3_combout\);

-- Location: FF_X31_Y18_N17
\dw|dpm_re\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm_re~q\);

-- Location: FF_X30_Y18_N29
\dw|dpm|dataOut_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram~12_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|dataOut_B\(0));

-- Location: LCCOMB_X31_Y18_N8
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\syncgen|inDisplayArea~q\ & (\dw|dpm|dataOut_B\(0) & (\LessThan3~1_combout\ & \R~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|inDisplayArea~q\,
	datab => \dw|dpm|dataOut_B\(0),
	datac => \LessThan3~1_combout\,
	datad => \R~2_combout\,
	combout => \VGA_R~0_combout\);

-- Location: FF_X31_Y18_N9
\VGA_R~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R~reg0_q\);

-- Location: LCCOMB_X31_Y18_N30
\dw|dpm|ram_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dw|dpm|ram_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X31_Y18_N31
\dw|dpm|ram_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(38));

-- Location: M9K_X22_Y6_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0003800070000E0001C00000003800070000E0001C000380001FFE73FFCE7FF9CFFF39FFE73FFC300CE6019CC03398067300CE60186019CC03398067300CE6019CC030A053940A72814E5029CA053",
	mem_init2 => X"940A121272424E4849C90939212724242244E4489C8913912272244E44884489C8913912272244E4489C8910861390C272184E4309C861390C210C272184E4309C861390C2721842244E4489C8913912272244E44884489C8913912272244E4489C89109093921272424E4849C90939212140A72814E5029CA053940A72814300CE6019CC03398067300CE60186019CC03398067300CE6019CC030FFF39FFE73FFCE7FF9CFFF39FFE000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C000",
	mem_init1 => X"3800070000E0001C0000FFF39FFE73FFCE7FF9CFFF39FFE18067300CE6019CC03398067300C300CE6019CC03398067300CE60185029CA053940A72814E5029CA0509093921272424E4849C90939212112272244E4489C89139122722442244E4489C8913912272244E44884309C861390C272184E4309C8610861390C272184E4309C861390C2112272244E4489C89139122722442244E4489C8913912272244E44884849C9093921272424E4849C9090A053940A72814E5029CA053940A18067300CE6019CC03398067300C300CE6019CC03398067300CE60187FF9CFFF39FFE73FFCE7FF9CFFF00003800070000E0001C00038000000070000E0001C000380",
	mem_init0 => X"0070000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070000E0001C00038000700000000E0001C0003800070000E00007FF9CFFF39FFE73FFCE7FF9CFFF0C03398067300CE6019CC033980618067300CE6019CC03398067300C2814E5029CA053940A72814E50284849C9093921272424E4849C90908913912272244E4489C89139122112272244E4489C89139122722442184E4309C861390C272184E43084309C861390C272184E4309C86108913912272244E4489C89139122112272244E4489C89139122722442424E4849C9093921272424E48485029CA053940A72814E5029CA050C0339",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y7_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8067300CE6019CC033980618067300CE6019CC03398067300C3FFCE7FF9CFFF39FFE73FFCE7FF80001C0003800070000E0001C00000003800070000E0001C000380007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003800070000E0001C00038000000070000E0001C00038000700003FFCE7FF9CFFF39FFE73FFCE7FF86019CC03398067300CE6019CC030C03398067300CE6019CC0339806140A72814E5029CA053940A728142424E4849C9093921272424E48484489C8913912272244E4489C89108913912272244E4489C8913912210C272184E4309C861390C2721842184E4309C861390C2",
	mem_init2 => X"72184E43084489C8913912272244E4489C89108913912272244E4489C89139122121272424E4849C90939212724242814E5029CA053940A72814E50286019CC03398067300CE6019CC030C03398067300CE6019CC03398061FFE73FFCE7FF9CFFF39FFE73FFC0000E0001C0003800070000E00000001C0003800070000E0001C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001C0003800070000E0001C00000003800070000E0001C000380001FFE73FFCE7FF9CFFF39FFE73FFC300CE6019CC03398067300CE60186019CC03398067300CE6019CC030A053940A72814E5029CA053940A121",
	mem_init1 => X"272424E4849C90939212724242244E4489C8913912272244E44884489C8913912272244E4489C8910861390C272184E4309C861390C210C272184E4309C861390C2721842244E4489C8913912272244E44884489C8913912272244E4489C89109093921272424E4849C90939212140A72814E5029CA053940A72814300CE6019CC03398067300CE60186019CC03398067300CE6019CC030FFF39FFE73FFCE7FF9CFFF39FFE000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C0003800070",
	mem_init0 => X"000E0001C0000FFF39FFE73FFCE7FF9CFFF39FFE18067300CE6019CC03398067300C300CE6019CC03398067300CE60185029CA053940A72814E5029CA0509093921272424E4849C90939212112272244E4489C89139122722442244E4489C8913912272244E44884309C861390C272184E4309C8610861390C272184E4309C861390C2112272244E4489C89139122722442244E4489C8913912272244E44884849C9093921272424E4849C9090A053940A72814E5029CA053940A18067300CE6019CC03398067300C300CE6019CC03398067300CE60187FF9CFFF39FFE73FFCE7FF9CFFF00003800070000E0001C00038000000070000E0001C0003800070000",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y7_N8
\dw|im|image~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~3_combout\ = (\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datad => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \dw|im|image~3_combout\);

-- Location: LCCOMB_X30_Y7_N6
\dw|im|image~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~4_combout\ = (\dw|im|always2~9_combout\ & ((\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\dw|im|always2~9_combout\ & (\dw|im|image~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~9_combout\,
	datac => \dw|im|image~3_combout\,
	datad => \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \dw|im|image~4_combout\);

-- Location: FF_X30_Y7_N7
\dw|im|image[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|image~4_combout\,
	ena => \dw|im|image[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|image\(1));

-- Location: LCCOMB_X31_Y18_N0
\dw|dpm|ram_rtl_0_bypass[37]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[37]~2_combout\ = !\dw|im|image\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dw|im|image\(1),
	combout => \dw|dpm|ram_rtl_0_bypass[37]~2_combout\);

-- Location: FF_X31_Y18_N1
\dw|dpm|ram_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[37]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(37));

-- Location: M9K_X22_Y11_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y11_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N24
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\);

-- Location: M9K_X22_Y25_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y27_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y25_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\);

-- Location: M9K_X33_Y9_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y10_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N18
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\);

-- Location: M9K_X33_Y25_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y29_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\);

-- Location: M9K_X33_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N22
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\);

-- Location: M9K_X33_Y22_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y24_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init2 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init1 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	mem_init0 => X"F80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001FF80000000000000000000000000000000000000000000000000000000000001F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N8
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\);

-- Location: M9K_X33_Y16_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y13_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N30
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X22_Y16_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y12_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X30_Y17_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X30_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2)) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\);

-- Location: LCCOMB_X30_Y18_N12
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~12_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~12_combout\);

-- Location: LCCOMB_X30_Y18_N10
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~12_combout\ & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\)) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~12_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\);

-- Location: LCCOMB_X30_Y18_N6
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\);

-- Location: LCCOMB_X30_Y18_N30
\dw|dpm|ram~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~13_combout\ = (\dw|dpm|ram_rtl_0_bypass\(38) & ((\dw|dpm|ram~11_combout\ & (!\dw|dpm|ram_rtl_0_bypass\(37))) # (!\dw|dpm|ram~11_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\))))) # 
-- (!\dw|dpm|ram_rtl_0_bypass\(38) & (!\dw|dpm|ram_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(38),
	datab => \dw|dpm|ram_rtl_0_bypass\(37),
	datac => \dw|dpm|ram~11_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\,
	combout => \dw|dpm|ram~13_combout\);

-- Location: FF_X30_Y18_N31
\dw|dpm|dataOut_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram~13_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|dataOut_B\(1));

-- Location: LCCOMB_X31_Y18_N10
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\syncgen|inDisplayArea~q\ & (\dw|dpm|dataOut_B\(1) & (\LessThan3~1_combout\ & \R~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|inDisplayArea~q\,
	datab => \dw|dpm|dataOut_B\(1),
	datac => \LessThan3~1_combout\,
	datad => \R~2_combout\,
	combout => \VGA_G~0_combout\);

-- Location: FF_X31_Y18_N11
\VGA_G~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \VGA_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G~reg0_q\);

-- Location: LCCOMB_X29_Y18_N2
\dw|dpm|ram_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dw|dpm|ram_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X29_Y18_N3
\dw|dpm|ram_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(40));

-- Location: M9K_X33_Y5_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y6_N0
\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|image:im|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_cf71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|im|readenable\(0),
	portaaddr => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y7_N0
\dw|im|image~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~5_combout\ = (\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)) # (!\dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \dw|im|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dw|im|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \dw|im|image~5_combout\);

-- Location: LCCOMB_X30_Y7_N28
\dw|im|image~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|im|image~6_combout\ = (\dw|im|always2~9_combout\ & (\dw|im|sc|ram_rtl_0|auto_generated|ram_block1a2\)) # (!\dw|im|always2~9_combout\ & ((\dw|im|image~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|im|always2~9_combout\,
	datac => \dw|im|sc|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \dw|im|image~5_combout\,
	combout => \dw|im|image~6_combout\);

-- Location: FF_X30_Y7_N29
\dw|im|image[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|im|image~6_combout\,
	ena => \dw|im|image[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|im|image\(2));

-- Location: FF_X29_Y18_N31
\dw|dpm|ram_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dw|im|image\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0_bypass\(39));

-- Location: M9K_X22_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode517w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y14_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode527w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\);

-- Location: M9K_X33_Y28_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode547w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y29_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode537w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N22
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\);

-- Location: M9K_X22_Y14_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\);

-- Location: M9K_X33_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode607w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N28
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\);

-- Location: M9K_X33_Y31_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode487w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y22_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode507w[3]~3_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N6
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~16_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~16_combout\);

-- Location: M9K_X22_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode566w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N26
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~14_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~14_combout\);

-- Location: M9K_X22_Y15_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y15_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N24
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~13_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~13_combout\);

-- Location: LCCOMB_X29_Y18_N8
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~15_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2)) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~14_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~14_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~13_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~15_combout\);

-- Location: M9K_X33_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode470w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y31_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_9ql1:auto_generated|ALTSYNCRAM",
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
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode497w[3]~2_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X29_Y18_N12
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~17_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~17_combout\);

-- Location: LCCOMB_X29_Y18_N18
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~18_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~15_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~16_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~16_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~15_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~17_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~18_combout\);

-- Location: LCCOMB_X29_Y18_N10
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~18_combout\ & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\)) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~18_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\);

-- Location: LCCOMB_X29_Y18_N28
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\);

-- Location: LCCOMB_X29_Y18_N20
\dw|dpm|ram~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram~14_combout\ = (\dw|dpm|ram_rtl_0_bypass\(40) & ((\dw|dpm|ram~11_combout\ & (\dw|dpm|ram_rtl_0_bypass\(39))) # (!\dw|dpm|ram~11_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\))))) # (!\dw|dpm|ram_rtl_0_bypass\(40) 
-- & (((\dw|dpm|ram_rtl_0_bypass\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0_bypass\(40),
	datab => \dw|dpm|ram~11_combout\,
	datac => \dw|dpm|ram_rtl_0_bypass\(39),
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\,
	combout => \dw|dpm|ram~14_combout\);

-- Location: FF_X29_Y18_N21
\dw|dpm|dataOut_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|dpm|ram~14_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|dataOut_B\(2));

-- Location: LCCOMB_X31_Y18_N24
\VGA_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\LessThan3~1_combout\ & (\syncgen|inDisplayArea~q\ & (\dw|dpm|dataOut_B\(2) & \R~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \syncgen|inDisplayArea~q\,
	datac => \dw|dpm|dataOut_B\(2),
	datad => \R~2_combout\,
	combout => \VGA_B~0_combout\);

-- Location: FF_X31_Y18_N25
\VGA_B~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \VGA_B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B~reg0_q\);

-- Location: LCCOMB_X34_Y17_N24
\syncgen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal1~1_combout\ = (!\syncgen|CounterX\(6) & (!\syncgen|CounterX\(5) & (\syncgen|CounterX\(7) & \syncgen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(6),
	datab => \syncgen|CounterX\(5),
	datac => \syncgen|CounterX\(7),
	datad => \syncgen|Equal1~0_combout\,
	combout => \syncgen|Equal1~1_combout\);

-- Location: FF_X34_Y17_N25
\syncgen|vga_HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|vga_HS~q\);

-- Location: LCCOMB_X32_Y17_N26
\syncgen|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~1_combout\ = (\syncgen|CounterY\(1) & (!\syncgen|CounterY\(2) & (!\syncgen|CounterY\(0) & !\syncgen|CounterY\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \syncgen|CounterY\(2),
	datac => \syncgen|CounterY\(0),
	datad => \syncgen|CounterY\(3),
	combout => \syncgen|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y17_N2
\syncgen|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~2_combout\ = (!\syncgen|CounterY\(4) & (\syncgen|Equal2~0_combout\ & \syncgen|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(4),
	datac => \syncgen|Equal2~0_combout\,
	datad => \syncgen|Equal2~1_combout\,
	combout => \syncgen|Equal2~2_combout\);

-- Location: FF_X34_Y17_N3
\syncgen|vga_VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|vga_VS~q\);

ww_gameState(0) <= \gameState[0]~output_o\;

ww_gameState(1) <= \gameState[1]~output_o\;

ww_gameState(2) <= \gameState[2]~output_o\;

ww_keysVoltage(0) <= \keysVoltage[0]~output_o\;

ww_keysVoltage(1) <= \keysVoltage[1]~output_o\;

ww_keysVoltage(2) <= \keysVoltage[2]~output_o\;

ww_keysVoltage(3) <= \keysVoltage[3]~output_o\;

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

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;

ww_LEDs(10) <= \LEDs[10]~output_o\;

ww_LEDs(11) <= \LEDs[11]~output_o\;

ww_LEDs(12) <= \LEDs[12]~output_o\;

ww_LEDs(13) <= \LEDs[13]~output_o\;

ww_LEDs(14) <= \LEDs[14]~output_o\;

ww_LEDs(15) <= \LEDs[15]~output_o\;

ww_LEDs(16) <= \LEDs[16]~output_o\;

ww_LEDs(17) <= \LEDs[17]~output_o\;

ww_LEDs(18) <= \LEDs[18]~output_o\;

ww_LEDs(19) <= \LEDs[19]~output_o\;

ww_LEDs(20) <= \LEDs[20]~output_o\;

ww_LEDs(21) <= \LEDs[21]~output_o\;

ww_LEDs(22) <= \LEDs[22]~output_o\;

ww_LEDs(23) <= \LEDs[23]~output_o\;

ww_LEDs(24) <= \LEDs[24]~output_o\;

ww_LEDs(25) <= \LEDs[25]~output_o\;

ww_LEDs(26) <= \LEDs[26]~output_o\;

ww_LEDs(27) <= \LEDs[27]~output_o\;

ww_LEDs(28) <= \LEDs[28]~output_o\;

ww_LEDs(29) <= \LEDs[29]~output_o\;

ww_LEDs(30) <= \LEDs[30]~output_o\;

ww_LEDs(31) <= \LEDs[31]~output_o\;

ww_LEDs(32) <= \LEDs[32]~output_o\;

ww_LEDs(33) <= \LEDs[33]~output_o\;

ww_LEDs(34) <= \LEDs[34]~output_o\;

ww_LEDs(35) <= \LEDs[35]~output_o\;

ww_VGA_R <= \VGA_R~output_o\;

ww_VGA_G <= \VGA_G~output_o\;

ww_VGA_B <= \VGA_B~output_o\;

ww_VGA_HSync <= \VGA_HSync~output_o\;

ww_VGA_VSync <= \VGA_VSync~output_o\;
END structure;


