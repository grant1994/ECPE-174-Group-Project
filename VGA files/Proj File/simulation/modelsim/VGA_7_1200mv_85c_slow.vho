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

-- DATE "12/04/2014 00:59:38"

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
	seg6 : OUT std_logic_vector(6 DOWNTO 0);
	LEDs : OUT std_logic_vector(35 DOWNTO 0);
	VGA_R : OUT std_logic;
	VGA_G : OUT std_logic;
	VGA_B : OUT std_logic;
	VGA_HSync : OUT std_logic;
	VGA_VSync : OUT std_logic
	);
END playGame;

-- Design Ports Information
-- rgb[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDs[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[14]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[17]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[18]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[19]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[21]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[22]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[24]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[25]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[26]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[27]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[30]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[32]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[33]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[34]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[35]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HSync	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VSync	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDs : std_logic_vector(35 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic;
SIGNAL ww_VGA_G : std_logic;
SIGNAL ww_VGA_B : std_logic;
SIGNAL ww_VGA_HSync : std_logic;
SIGNAL ww_VGA_VSync : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \cd|clkstate~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[1]~feeder_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[3]~feeder_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \arrowMod|keys1[2]~feeder_combout\ : std_logic;
SIGNAL \arrowMod|Mux5~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~4_combout\ : std_logic;
SIGNAL \arrowMod|Add0~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~5_combout\ : std_logic;
SIGNAL \arrowMod|Add1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~6_combout\ : std_logic;
SIGNAL \arrowMod|Add3~1\ : std_logic;
SIGNAL \arrowMod|Add3~2_combout\ : std_logic;
SIGNAL \arrowMod|Add2~1\ : std_logic;
SIGNAL \arrowMod|Add2~2_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~7_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \syncMod|int_a~0_combout\ : std_logic;
SIGNAL \syncMod|int_a~q\ : std_logic;
SIGNAL \syncMod|sync_a~0_combout\ : std_logic;
SIGNAL \syncMod|sync_a~q\ : std_logic;
SIGNAL \syncMod|delay_a~q\ : std_logic;
SIGNAL \syncMod|rise_a~combout\ : std_logic;
SIGNAL \compMod|always0~1_combout\ : std_logic;
SIGNAL \arrowMod|Add2~7\ : std_logic;
SIGNAL \arrowMod|Add2~9\ : std_logic;
SIGNAL \arrowMod|Add2~10_combout\ : std_logic;
SIGNAL \arrowMod|Add3~3\ : std_logic;
SIGNAL \arrowMod|Add3~5\ : std_logic;
SIGNAL \arrowMod|Add3~7\ : std_logic;
SIGNAL \arrowMod|Add3~9\ : std_logic;
SIGNAL \arrowMod|Add3~10_combout\ : std_logic;
SIGNAL \arrowMod|Add0~1\ : std_logic;
SIGNAL \arrowMod|Add0~3\ : std_logic;
SIGNAL \arrowMod|Add0~5\ : std_logic;
SIGNAL \arrowMod|Add0~7\ : std_logic;
SIGNAL \arrowMod|Add0~8_combout\ : std_logic;
SIGNAL \arrowMod|Add1~7\ : std_logic;
SIGNAL \arrowMod|Add1~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~29_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~30_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~12_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~13_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~15_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~14_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~16_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~10_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~1_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~9_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~11_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~18_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[5]~31_combout\ : std_logic;
SIGNAL \compMod|cardmem1[5]~feeder_combout\ : std_logic;
SIGNAL \compMod|always0~0_combout\ : std_logic;
SIGNAL \compMod|cardmem2[5]~feeder_combout\ : std_logic;
SIGNAL \compMod|cardmem2[4]~feeder_combout\ : std_logic;
SIGNAL \compMod|cardmem1[4]~feeder_combout\ : std_logic;
SIGNAL \compMod|Equal1~2_combout\ : std_logic;
SIGNAL \compMod|cardmem2[2]~feeder_combout\ : std_logic;
SIGNAL \compMod|cardmem1[2]~feeder_combout\ : std_logic;
SIGNAL \compMod|Equal1~1_combout\ : std_logic;
SIGNAL \compMod|cardmem1[1]~feeder_combout\ : std_logic;
SIGNAL \compMod|Equal1~0_combout\ : std_logic;
SIGNAL \compMod|data2[4]~0_combout\ : std_logic;
SIGNAL \compMod|cardOneTwo~0_combout\ : std_logic;
SIGNAL \compMod|cardOneTwo~q\ : std_logic;
SIGNAL \compMod|mr64|ram~14_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~15_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~16_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~17_combout\ : std_logic;
SIGNAL \compMod|data2[3]~feeder_combout\ : std_logic;
SIGNAL \compMod|data2[4]~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~10_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~11_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~12_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~13_combout\ : std_logic;
SIGNAL \compMod|data1[4]~0_combout\ : std_logic;
SIGNAL \compMod|data1[3]~feeder_combout\ : std_logic;
SIGNAL \compMod|always1~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~18_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~19_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~0_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~1_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~2_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~3_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~4_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~8_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~5_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~6_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~7_combout\ : std_logic;
SIGNAL \compMod|mr64|ram~9_combout\ : std_logic;
SIGNAL \compMod|data2[1]~feeder_combout\ : std_logic;
SIGNAL \compMod|data1[1]~feeder_combout\ : std_logic;
SIGNAL \compMod|always1~0_combout\ : std_logic;
SIGNAL \compMod|always1~2_combout\ : std_logic;
SIGNAL \compMod|foundPair~0_combout\ : std_logic;
SIGNAL \compMod|foundPair~q\ : std_logic;
SIGNAL \compMod|pairsFound[0]~33_combout\ : std_logic;
SIGNAL \compMod|pairsFound[1]~31_combout\ : std_logic;
SIGNAL \compMod|always1~3_combout\ : std_logic;
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
SIGNAL \compMod|Equal3~6_combout\ : std_logic;
SIGNAL \compMod|pairsFound[27]~85\ : std_logic;
SIGNAL \compMod|pairsFound[28]~86_combout\ : std_logic;
SIGNAL \compMod|pairsFound[28]~87\ : std_logic;
SIGNAL \compMod|pairsFound[29]~88_combout\ : std_logic;
SIGNAL \compMod|pairsFound[29]~89\ : std_logic;
SIGNAL \compMod|pairsFound[30]~90_combout\ : std_logic;
SIGNAL \compMod|pairsFound[30]~91\ : std_logic;
SIGNAL \compMod|pairsFound[31]~92_combout\ : std_logic;
SIGNAL \compMod|Equal3~8_combout\ : std_logic;
SIGNAL \compMod|Equal3~5_combout\ : std_logic;
SIGNAL \compMod|Equal3~9_combout\ : std_logic;
SIGNAL \compMod|Equal3~3_combout\ : std_logic;
SIGNAL \compMod|Equal3~1_combout\ : std_logic;
SIGNAL \compMod|Equal3~2_combout\ : std_logic;
SIGNAL \compMod|Equal3~0_combout\ : std_logic;
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
SIGNAL \arrowMod|mem6x6[1]~17_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[1]~19_combout\ : std_logic;
SIGNAL \arrowMod|Add1~1\ : std_logic;
SIGNAL \arrowMod|Add1~2_combout\ : std_logic;
SIGNAL \arrowMod|Add0~2_combout\ : std_logic;
SIGNAL \arrowMod|Add2~3\ : std_logic;
SIGNAL \arrowMod|Add2~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~23_combout\ : std_logic;
SIGNAL \arrowMod|Add3~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~24_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[2]~25_combout\ : std_logic;
SIGNAL \arrowMod|Add2~5\ : std_logic;
SIGNAL \arrowMod|Add2~6_combout\ : std_logic;
SIGNAL \arrowMod|Add3~6_combout\ : std_logic;
SIGNAL \arrowMod|Add0~4_combout\ : std_logic;
SIGNAL \arrowMod|Add1~3\ : std_logic;
SIGNAL \arrowMod|Add1~4_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~20_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~21_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[3]~22_combout\ : std_logic;
SIGNAL \arrowMod|Add1~5\ : std_logic;
SIGNAL \arrowMod|Add1~6_combout\ : std_logic;
SIGNAL \arrowMod|Add0~6_combout\ : std_logic;
SIGNAL \arrowMod|Add2~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~26_combout\ : std_logic;
SIGNAL \arrowMod|Add3~8_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~27_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[4]~28_combout\ : std_logic;
SIGNAL \arrowMod|Equal1~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~1_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~2_combout\ : std_logic;
SIGNAL \arrowMod|Add3~0_combout\ : std_logic;
SIGNAL \arrowMod|Add2~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~0_combout\ : std_logic;
SIGNAL \arrowMod|mem6x6[0]~3_combout\ : std_logic;
SIGNAL \ledMod|cardmem2[0]~feeder_combout\ : std_logic;
SIGNAL \ledMod|cardmem2[1]~feeder_combout\ : std_logic;
SIGNAL \ledMod|LEDs[0]~1_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~0_combout\ : std_logic;
SIGNAL \ledMod|Equal0~1_combout\ : std_logic;
SIGNAL \ledMod|Mux0~0_combout\ : std_logic;
SIGNAL \ledMod|Equal0~2_combout\ : std_logic;
SIGNAL \ledMod|Equal0~0_combout\ : std_logic;
SIGNAL \ledMod|always0~0_combout\ : std_logic;
SIGNAL \compMod|selectedCard[0]~0_combout\ : std_logic;
SIGNAL \compMod|selectedCard[1]~1_combout\ : std_logic;
SIGNAL \ledMod|Equal1~0_combout\ : std_logic;
SIGNAL \compMod|selectedCard[5]~5_combout\ : std_logic;
SIGNAL \compMod|selectedCard[4]~4_combout\ : std_logic;
SIGNAL \ledMod|Equal1~2_combout\ : std_logic;
SIGNAL \compMod|selectedCard[2]~3_combout\ : std_logic;
SIGNAL \compMod|selectedCard[3]~2_combout\ : std_logic;
SIGNAL \ledMod|Equal1~1_combout\ : std_logic;
SIGNAL \ledMod|always0~1_combout\ : std_logic;
SIGNAL \ledMod|LEDs[0]~0_combout\ : std_logic;
SIGNAL \ledMod|LEDs[0]~2_combout\ : std_logic;
SIGNAL \ledMod|LEDs[1]~4_combout\ : std_logic;
SIGNAL \ledMod|LEDs[1]~3_combout\ : std_logic;
SIGNAL \ledMod|LEDs[1]~5_combout\ : std_logic;
SIGNAL \ledMod|LEDs[2]~7_combout\ : std_logic;
SIGNAL \ledMod|LEDs[2]~6_combout\ : std_logic;
SIGNAL \ledMod|LEDs[2]~8_combout\ : std_logic;
SIGNAL \ledMod|LEDs[3]~10_combout\ : std_logic;
SIGNAL \ledMod|LEDs[3]~9_combout\ : std_logic;
SIGNAL \ledMod|LEDs[3]~11_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~1_combout\ : std_logic;
SIGNAL \ledMod|LEDs[4]~12_combout\ : std_logic;
SIGNAL \ledMod|LEDs[5]~13_combout\ : std_logic;
SIGNAL \ledMod|LEDs[6]~14_combout\ : std_logic;
SIGNAL \ledMod|LEDs[7]~15_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~2_combout\ : std_logic;
SIGNAL \ledMod|LEDs[8]~16_combout\ : std_logic;
SIGNAL \ledMod|LEDs[9]~17_combout\ : std_logic;
SIGNAL \ledMod|LEDs[10]~18_combout\ : std_logic;
SIGNAL \ledMod|LEDs[11]~19_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~3_combout\ : std_logic;
SIGNAL \ledMod|LEDs[12]~20_combout\ : std_logic;
SIGNAL \ledMod|LEDs[13]~21_combout\ : std_logic;
SIGNAL \ledMod|LEDs[14]~22_combout\ : std_logic;
SIGNAL \ledMod|LEDs[15]~23_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~4_combout\ : std_logic;
SIGNAL \ledMod|LEDs[16]~24_combout\ : std_logic;
SIGNAL \ledMod|LEDs[17]~25_combout\ : std_logic;
SIGNAL \ledMod|LEDs[18]~26_combout\ : std_logic;
SIGNAL \ledMod|LEDs[19]~27_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~5_combout\ : std_logic;
SIGNAL \ledMod|LEDs[20]~28_combout\ : std_logic;
SIGNAL \ledMod|LEDs[21]~29_combout\ : std_logic;
SIGNAL \ledMod|LEDs[22]~30_combout\ : std_logic;
SIGNAL \ledMod|LEDs[23]~31_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~6_combout\ : std_logic;
SIGNAL \ledMod|LEDs[24]~32_combout\ : std_logic;
SIGNAL \ledMod|LEDs[25]~33_combout\ : std_logic;
SIGNAL \ledMod|LEDs[26]~34_combout\ : std_logic;
SIGNAL \ledMod|LEDs[27]~35_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~7_combout\ : std_logic;
SIGNAL \ledMod|LEDs[28]~36_combout\ : std_logic;
SIGNAL \ledMod|LEDs[29]~37_combout\ : std_logic;
SIGNAL \ledMod|LEDs[30]~38_combout\ : std_logic;
SIGNAL \ledMod|LEDs[31]~39_combout\ : std_logic;
SIGNAL \ledMod|Decoder0~8_combout\ : std_logic;
SIGNAL \ledMod|LEDs[32]~40_combout\ : std_logic;
SIGNAL \ledMod|LEDs[33]~41_combout\ : std_logic;
SIGNAL \ledMod|LEDs[34]~42_combout\ : std_logic;
SIGNAL \ledMod|LEDs[35]~43_combout\ : std_logic;
SIGNAL \cd|Add1~0_combout\ : std_logic;
SIGNAL \cd|count~0_combout\ : std_logic;
SIGNAL \cd|Add1~1\ : std_logic;
SIGNAL \cd|Add1~2_combout\ : std_logic;
SIGNAL \cd|Add1~3\ : std_logic;
SIGNAL \cd|Add1~4_combout\ : std_logic;
SIGNAL \cd|Add1~5\ : std_logic;
SIGNAL \cd|Add1~6_combout\ : std_logic;
SIGNAL \cd|Add1~7\ : std_logic;
SIGNAL \cd|Add1~8_combout\ : std_logic;
SIGNAL \cd|Add1~9\ : std_logic;
SIGNAL \cd|Add1~10_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \cd|Add1~11\ : std_logic;
SIGNAL \cd|Add1~12_combout\ : std_logic;
SIGNAL \cd|Add1~13\ : std_logic;
SIGNAL \cd|Add1~14_combout\ : std_logic;
SIGNAL \cd|Add1~15\ : std_logic;
SIGNAL \cd|Add1~16_combout\ : std_logic;
SIGNAL \cd|Add1~17\ : std_logic;
SIGNAL \cd|Add1~18_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \cd|Add1~19\ : std_logic;
SIGNAL \cd|Add1~20_combout\ : std_logic;
SIGNAL \cd|Add1~21\ : std_logic;
SIGNAL \cd|Add1~22_combout\ : std_logic;
SIGNAL \cd|Add1~23\ : std_logic;
SIGNAL \cd|Add1~24_combout\ : std_logic;
SIGNAL \cd|Add1~25\ : std_logic;
SIGNAL \cd|Add1~26_combout\ : std_logic;
SIGNAL \cd|Add1~27\ : std_logic;
SIGNAL \cd|Add1~28_combout\ : std_logic;
SIGNAL \cd|Add1~29\ : std_logic;
SIGNAL \cd|Add1~30_combout\ : std_logic;
SIGNAL \cd|Add1~31\ : std_logic;
SIGNAL \cd|Add1~32_combout\ : std_logic;
SIGNAL \cd|Add1~33\ : std_logic;
SIGNAL \cd|Add1~34_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|Add1~35\ : std_logic;
SIGNAL \cd|Add1~36_combout\ : std_logic;
SIGNAL \cd|Add1~37\ : std_logic;
SIGNAL \cd|Add1~38_combout\ : std_logic;
SIGNAL \cd|Add1~39\ : std_logic;
SIGNAL \cd|Add1~40_combout\ : std_logic;
SIGNAL \cd|Add1~41\ : std_logic;
SIGNAL \cd|Add1~42_combout\ : std_logic;
SIGNAL \cd|Add1~43\ : std_logic;
SIGNAL \cd|Add1~44_combout\ : std_logic;
SIGNAL \cd|Add1~45\ : std_logic;
SIGNAL \cd|Add1~46_combout\ : std_logic;
SIGNAL \cd|Add1~47\ : std_logic;
SIGNAL \cd|Add1~48_combout\ : std_logic;
SIGNAL \cd|Add1~49\ : std_logic;
SIGNAL \cd|Add1~50_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|Add1~51\ : std_logic;
SIGNAL \cd|Add1~52_combout\ : std_logic;
SIGNAL \cd|Add1~53\ : std_logic;
SIGNAL \cd|Add1~54_combout\ : std_logic;
SIGNAL \cd|Equal0~8_combout\ : std_logic;
SIGNAL \cd|Add1~55\ : std_logic;
SIGNAL \cd|Add1~56_combout\ : std_logic;
SIGNAL \cd|Add1~57\ : std_logic;
SIGNAL \cd|Add1~58_combout\ : std_logic;
SIGNAL \cd|Add1~59\ : std_logic;
SIGNAL \cd|Add1~60_combout\ : std_logic;
SIGNAL \cd|Add1~61\ : std_logic;
SIGNAL \cd|Add1~62_combout\ : std_logic;
SIGNAL \cd|Equal0~9_combout\ : std_logic;
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
SIGNAL \syncgen|Equal0~0_combout\ : std_logic;
SIGNAL \syncgen|Equal0~1_combout\ : std_logic;
SIGNAL \syncgen|CounterY[0]~24_combout\ : std_logic;
SIGNAL \syncgen|CounterY[1]~8_combout\ : std_logic;
SIGNAL \syncgen|Equal0~2_combout\ : std_logic;
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
SIGNAL \dw|Add5~0_combout\ : std_logic;
SIGNAL \dw|Add5~1_combout\ : std_logic;
SIGNAL \dw|Add5~2_combout\ : std_logic;
SIGNAL \dw|Add4~1\ : std_logic;
SIGNAL \dw|Add4~3\ : std_logic;
SIGNAL \dw|Add4~5\ : std_logic;
SIGNAL \dw|Add4~7\ : std_logic;
SIGNAL \dw|Add4~9\ : std_logic;
SIGNAL \dw|Add4~11\ : std_logic;
SIGNAL \dw|Add4~13\ : std_logic;
SIGNAL \dw|Add4~14_combout\ : std_logic;
SIGNAL \dw|Add4~12_combout\ : std_logic;
SIGNAL \dw|Add4~10_combout\ : std_logic;
SIGNAL \dw|Add4~8_combout\ : std_logic;
SIGNAL \dw|Add4~6_combout\ : std_logic;
SIGNAL \dw|Add4~4_combout\ : std_logic;
SIGNAL \dw|Add4~2_combout\ : std_logic;
SIGNAL \dw|Add4~0_combout\ : std_logic;
SIGNAL \dw|Add6~1\ : std_logic;
SIGNAL \dw|Add6~3\ : std_logic;
SIGNAL \dw|Add6~5\ : std_logic;
SIGNAL \dw|Add6~7\ : std_logic;
SIGNAL \dw|Add6~9\ : std_logic;
SIGNAL \dw|Add6~11\ : std_logic;
SIGNAL \dw|Add6~13\ : std_logic;
SIGNAL \dw|Add6~14_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \syncgen|CounterY[7]~21\ : std_logic;
SIGNAL \syncgen|CounterY[8]~22_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \dw|dpm_re~q\ : std_logic;
SIGNAL \dw|Add4~15\ : std_logic;
SIGNAL \dw|Add4~16_combout\ : std_logic;
SIGNAL \dw|Add6~15\ : std_logic;
SIGNAL \dw|Add6~16_combout\ : std_logic;
SIGNAL \dw|Add6~10_combout\ : std_logic;
SIGNAL \dw|Add6~12_combout\ : std_logic;
SIGNAL \drawMod|mem_col[0]~8_combout\ : std_logic;
SIGNAL \drawMod|mem_col[5]~20\ : std_logic;
SIGNAL \drawMod|mem_col[6]~21_combout\ : std_logic;
SIGNAL \drawMod|mem_col[6]~22\ : std_logic;
SIGNAL \drawMod|mem_col[7]~23_combout\ : std_logic;
SIGNAL \drawMod|Equal2~1_combout\ : std_logic;
SIGNAL \drawMod|Equal2~0_combout\ : std_logic;
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
SIGNAL \drawMod|Equal0~3_combout\ : std_logic;
SIGNAL \drawMod|Add0~25\ : std_logic;
SIGNAL \drawMod|Add0~26_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~0_combout\ : std_logic;
SIGNAL \drawMod|Equal0~2_combout\ : std_logic;
SIGNAL \drawMod|Equal0~0_combout\ : std_logic;
SIGNAL \drawMod|Add0~27\ : std_logic;
SIGNAL \drawMod|Add0~28_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~1_combout\ : std_logic;
SIGNAL \drawMod|Add0~29\ : std_logic;
SIGNAL \drawMod|Add0~30_combout\ : std_logic;
SIGNAL \drawMod|dpm_addr_A~2_combout\ : std_logic;
SIGNAL \drawMod|Add0~31\ : std_logic;
SIGNAL \drawMod|Add0~32_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\ : std_logic;
SIGNAL \drawMod|Equal0~1_combout\ : std_logic;
SIGNAL \drawMod|Equal0~4_combout\ : std_logic;
SIGNAL \drawMod|mem_col[7]~12_combout\ : std_logic;
SIGNAL \drawMod|mem_col[0]~9\ : std_logic;
SIGNAL \drawMod|mem_col[1]~10_combout\ : std_logic;
SIGNAL \drawMod|mem_col[1]~11\ : std_logic;
SIGNAL \drawMod|mem_col[2]~13_combout\ : std_logic;
SIGNAL \drawMod|mem_col[2]~14\ : std_logic;
SIGNAL \drawMod|mem_col[3]~15_combout\ : std_logic;
SIGNAL \drawMod|mem_col[3]~16\ : std_logic;
SIGNAL \drawMod|mem_col[4]~17_combout\ : std_logic;
SIGNAL \drawMod|mem_col[4]~18\ : std_logic;
SIGNAL \drawMod|mem_col[5]~19_combout\ : std_logic;
SIGNAL \drawMod|LessThan1~0_combout\ : std_logic;
SIGNAL \drawMod|LessThan1~1_combout\ : std_logic;
SIGNAL \drawMod|mem_row[0]~8_combout\ : std_logic;
SIGNAL \drawMod|Equal2~2_combout\ : std_logic;
SIGNAL \drawMod|mem_row[0]~9\ : std_logic;
SIGNAL \drawMod|mem_row[1]~10_combout\ : std_logic;
SIGNAL \drawMod|mem_row[1]~11\ : std_logic;
SIGNAL \drawMod|mem_row[2]~12_combout\ : std_logic;
SIGNAL \drawMod|mem_row[2]~13\ : std_logic;
SIGNAL \drawMod|mem_row[3]~14_combout\ : std_logic;
SIGNAL \drawMod|mem_row[3]~15\ : std_logic;
SIGNAL \drawMod|mem_row[4]~16_combout\ : std_logic;
SIGNAL \drawMod|mem_row[4]~17\ : std_logic;
SIGNAL \drawMod|mem_row[5]~18_combout\ : std_logic;
SIGNAL \drawMod|mem_row[5]~19\ : std_logic;
SIGNAL \drawMod|mem_row[6]~20_combout\ : std_logic;
SIGNAL \drawMod|mem_row[6]~21\ : std_logic;
SIGNAL \drawMod|mem_row[7]~22_combout\ : std_logic;
SIGNAL \drawMod|LessThan3~0_combout\ : std_logic;
SIGNAL \drawMod|LessThan3~1_combout\ : std_logic;
SIGNAL \drawMod|always0~0_combout\ : std_logic;
SIGNAL \drawMod|LessThan2~0_combout\ : std_logic;
SIGNAL \drawMod|LessThan2~1_combout\ : std_logic;
SIGNAL \drawMod|always0~1_combout\ : std_logic;
SIGNAL \drawMod|always0~2_combout\ : std_logic;
SIGNAL \drawMod|dpm_en~0_combout\ : std_logic;
SIGNAL \drawMod|dpm_en~q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[0]~14_combout\ : std_logic;
SIGNAL \drawMod|Equal1~2_combout\ : std_logic;
SIGNAL \drawMod|Equal1~3_combout\ : std_logic;
SIGNAL \drawMod|Equal1~1_combout\ : std_logic;
SIGNAL \drawMod|Equal1~0_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[6]~42_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[0]~15\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[1]~16_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[1]~17\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[2]~18_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[2]~19\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[3]~20_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[3]~21\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[4]~22_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[4]~23\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[5]~24_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[5]~25\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[6]~26_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[6]~27\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[7]~28_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[7]~29\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[8]~30_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[8]~31\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[9]~32_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[9]~33\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[10]~34_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[10]~35\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[11]~36_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[11]~37\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[12]~38_combout\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[12]~39\ : std_logic;
SIGNAL \drawMod|cd6x6_addr_B[13]~40_combout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \syncgen|CounterX[6]~_wirecell_combout\ : std_logic;
SIGNAL \dw|Add5~3_combout\ : std_logic;
SIGNAL \dw|Add6~0_combout\ : std_logic;
SIGNAL \dw|Add6~2_combout\ : std_logic;
SIGNAL \dw|Add6~4_combout\ : std_logic;
SIGNAL \dw|Add6~6_combout\ : std_logic;
SIGNAL \dw|Add6~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7_combout\ : std_logic;
SIGNAL \syncgen|Equal2~0_combout\ : std_logic;
SIGNAL \syncgen|inDisplayArea~0_combout\ : std_logic;
SIGNAL \syncgen|inDisplayArea~q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R~reg0_q\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \VGA_G~3_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ : std_logic;
SIGNAL \VGA_G~2_combout\ : std_logic;
SIGNAL \VGA_G~4_combout\ : std_logic;
SIGNAL \VGA_G~5_combout\ : std_logic;
SIGNAL \VGA_G~reg0_q\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \VGA_B~reg0_q\ : std_logic;
SIGNAL \syncgen|Equal1~1_combout\ : std_logic;
SIGNAL \syncgen|vga_HS~q\ : std_logic;
SIGNAL \syncgen|Equal2~1_combout\ : std_logic;
SIGNAL \syncgen|Equal2~2_combout\ : std_logic;
SIGNAL \syncgen|vga_VS~q\ : std_logic;
SIGNAL \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \compMod|cardmem1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \compMod|data1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \drawMod|mem_col\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \syncgen|CounterY\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \drawMod|dpm_addr_A\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ledMod|LEDs\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \compMod|cardmem2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ledMod|cardmem2\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \compMod|pairsFound\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \compMod|mr64|dataOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \arrowMod|keys2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \compMod|data2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \syncgen|CounterX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \drawMod|mem_row\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ledMod|cardmem1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \arrowMod|keys1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \drawMod|cd6x6_addr_B\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \compMod|selectedCard\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \drawMod|ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \syncgen|ALT_INV_vga_VS~q\ : std_logic;
SIGNAL \syncgen|ALT_INV_vga_HS~q\ : std_logic;
SIGNAL \drawMod|ALT_INV_cd6x6_addr_B\ : std_logic_vector(13 DOWNTO 13);

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
LEDs <= ww_LEDs;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HSync <= ww_VGA_HSync;
VGA_VSync <= ww_VGA_VSync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\;

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\drawMod|dpm_addr_A\(12) & \drawMod|dpm_addr_A\(11) & \drawMod|dpm_addr_A\(10) & \drawMod|dpm_addr_A\(9) & \drawMod|dpm_addr_A\(8) & \drawMod|dpm_addr_A\(7) & 
\drawMod|dpm_addr_A\(6) & \drawMod|dpm_addr_A\(5) & \drawMod|dpm_addr_A\(4) & \drawMod|dpm_addr_A\(3) & \drawMod|dpm_addr_A\(2) & \drawMod|dpm_addr_A\(1) & \drawMod|dpm_addr_A\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\dw|Add6~8_combout\ & \dw|Add6~6_combout\ & \dw|Add6~4_combout\ & \dw|Add6~2_combout\ & \dw|Add6~0_combout\ & \dw|Add5~3_combout\ & \syncgen|CounterX[6]~_wirecell_combout\ & 
\syncgen|CounterX\(5) & \syncgen|CounterX\(4) & \syncgen|CounterX\(3) & \syncgen|CounterX\(2) & \syncgen|CounterX\(1) & \syncgen|CounterX\(0));

\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\drawMod|cd6x6_addr_B\(12) & \drawMod|cd6x6_addr_B\(11) & \drawMod|cd6x6_addr_B\(10) & \drawMod|cd6x6_addr_B\(9) & \drawMod|cd6x6_addr_B\(8) & \drawMod|cd6x6_addr_B\(7) & 
\drawMod|cd6x6_addr_B\(6) & \drawMod|cd6x6_addr_B\(5) & \drawMod|cd6x6_addr_B\(4) & \drawMod|cd6x6_addr_B\(3) & \drawMod|cd6x6_addr_B\(2) & \drawMod|cd6x6_addr_B\(1) & \drawMod|cd6x6_addr_B\(0));

\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\cd|clkstate~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cd|clkstate~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\drawMod|ALT_INV_always0~2_combout\ <= NOT \drawMod|always0~2_combout\;
\syncgen|ALT_INV_vga_VS~q\ <= NOT \syncgen|vga_VS~q\;
\syncgen|ALT_INV_vga_HS~q\ <= NOT \syncgen|vga_HS~q\;
\drawMod|ALT_INV_cd6x6_addr_B\(13) <= NOT \drawMod|cd6x6_addr_B\(13);

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X61_Y43_N23
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: IOOBUF_X29_Y43_N23
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

-- Location: IOOBUF_X50_Y43_N23
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

-- Location: IOOBUF_X52_Y43_N9
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

-- Location: IOOBUF_X50_Y43_N2
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

-- Location: IOOBUF_X36_Y43_N23
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

-- Location: IOOBUF_X36_Y43_N2
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

-- Location: IOOBUF_X48_Y43_N9
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

-- Location: IOOBUF_X36_Y43_N9
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

-- Location: IOOBUF_X36_Y43_N16
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

-- Location: IOOBUF_X32_Y43_N23
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

-- Location: IOOBUF_X45_Y43_N9
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

-- Location: IOOBUF_X43_Y43_N23
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

-- Location: IOOBUF_X38_Y43_N2
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

-- Location: IOOBUF_X32_Y43_N30
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

-- Location: IOOBUF_X52_Y43_N23
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

-- Location: IOOBUF_X41_Y43_N16
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

-- Location: IOOBUF_X32_Y43_N9
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

-- Location: IOOBUF_X29_Y43_N9
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

-- Location: IOOBUF_X48_Y43_N2
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

-- Location: IOOBUF_X43_Y43_N30
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

-- Location: IOOBUF_X38_Y43_N9
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

-- Location: IOOBUF_X38_Y43_N23
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

-- Location: IOOBUF_X45_Y43_N16
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

-- Location: IOOBUF_X41_Y43_N2
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

-- Location: IOOBUF_X43_Y43_N16
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

-- Location: IOOBUF_X48_Y43_N30
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

-- Location: IOOBUF_X45_Y43_N23
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

-- Location: IOOBUF_X43_Y43_N9
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

-- Location: IOOBUF_X32_Y43_N2
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

-- Location: IOOBUF_X32_Y43_N16
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

-- Location: IOOBUF_X45_Y43_N30
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

-- Location: IOOBUF_X50_Y43_N9
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

-- Location: IOOBUF_X38_Y43_N16
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

-- Location: IOOBUF_X38_Y43_N30
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

-- Location: IOOBUF_X45_Y43_N2
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

-- Location: IOOBUF_X41_Y43_N9
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

-- Location: IOOBUF_X41_Y0_N16
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

-- Location: IOOBUF_X41_Y0_N9
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

-- Location: IOOBUF_X41_Y0_N2
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOIBUF_X52_Y43_N1
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: LCCOMB_X51_Y40_N30
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

-- Location: FF_X51_Y40_N31
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

-- Location: FF_X50_Y40_N27
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

-- Location: IOIBUF_X50_Y43_N15
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: FF_X50_Y40_N9
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

-- Location: FF_X50_Y40_N5
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

-- Location: IOIBUF_X52_Y43_N29
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: LCCOMB_X51_Y40_N0
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

-- Location: FF_X51_Y40_N1
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

-- Location: FF_X50_Y40_N3
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

-- Location: IOIBUF_X50_Y43_N29
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: LCCOMB_X50_Y42_N0
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

-- Location: FF_X50_Y42_N1
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

-- Location: FF_X50_Y40_N7
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

-- Location: LCCOMB_X50_Y40_N2
\arrowMod|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Mux5~0_combout\ = (!\arrowMod|keys2\(1) & (!\arrowMod|keys2\(0) & (\arrowMod|keys2\(3) $ (\arrowMod|keys2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|keys2\(3),
	datad => \arrowMod|keys2\(2),
	combout => \arrowMod|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y40_N8
\arrowMod|mem6x6[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~4_combout\ = (\arrowMod|keys2\(2)) # (\arrowMod|keys2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|mem6x6[5]~4_combout\);

-- Location: LCCOMB_X49_Y40_N4
\arrowMod|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~0_combout\ = \ledMod|cardmem1\(1) $ (VCC)
-- \arrowMod|Add0~1\ = CARRY(\ledMod|cardmem1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(1),
	datad => VCC,
	combout => \arrowMod|Add0~0_combout\,
	cout => \arrowMod|Add0~1\);

-- Location: LCCOMB_X50_Y40_N4
\arrowMod|mem6x6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~5_combout\ = (\arrowMod|keys2\(3)) # ((\arrowMod|keys2\(1) & !\arrowMod|keys2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|mem6x6[5]~5_combout\);

-- Location: LCCOMB_X48_Y40_N18
\arrowMod|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~0_combout\ = \ledMod|cardmem1\(1) $ (VCC)
-- \arrowMod|Add1~1\ = CARRY(\ledMod|cardmem1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(1),
	datad => VCC,
	combout => \arrowMod|Add1~0_combout\,
	cout => \arrowMod|Add1~1\);

-- Location: LCCOMB_X48_Y40_N0
\arrowMod|mem6x6[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~6_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & (((\arrowMod|mem6x6[5]~4_combout\) # (\arrowMod|Add1~0_combout\)))) # (!\arrowMod|mem6x6[5]~5_combout\ & (\arrowMod|Add0~0_combout\ & (!\arrowMod|mem6x6[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add0~0_combout\,
	datab => \arrowMod|mem6x6[5]~5_combout\,
	datac => \arrowMod|mem6x6[5]~4_combout\,
	datad => \arrowMod|Add1~0_combout\,
	combout => \arrowMod|mem6x6[1]~6_combout\);

-- Location: LCCOMB_X48_Y40_N6
\arrowMod|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~0_combout\ = \ledMod|cardmem1\(0) $ (VCC)
-- \arrowMod|Add3~1\ = CARRY(\ledMod|cardmem1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(0),
	datad => VCC,
	combout => \arrowMod|Add3~0_combout\,
	cout => \arrowMod|Add3~1\);

-- Location: LCCOMB_X48_Y40_N8
\arrowMod|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~2_combout\ = (\ledMod|cardmem1\(1) & (!\arrowMod|Add3~1\)) # (!\ledMod|cardmem1\(1) & ((\arrowMod|Add3~1\) # (GND)))
-- \arrowMod|Add3~3\ = CARRY((!\arrowMod|Add3~1\) # (!\ledMod|cardmem1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(1),
	datad => VCC,
	cin => \arrowMod|Add3~1\,
	combout => \arrowMod|Add3~2_combout\,
	cout => \arrowMod|Add3~3\);

-- Location: LCCOMB_X49_Y40_N16
\arrowMod|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~0_combout\ = \ledMod|cardmem1\(0) $ (VCC)
-- \arrowMod|Add2~1\ = CARRY(\ledMod|cardmem1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(0),
	datad => VCC,
	combout => \arrowMod|Add2~0_combout\,
	cout => \arrowMod|Add2~1\);

-- Location: LCCOMB_X49_Y40_N18
\arrowMod|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~2_combout\ = (\ledMod|cardmem1\(1) & (\arrowMod|Add2~1\ & VCC)) # (!\ledMod|cardmem1\(1) & (!\arrowMod|Add2~1\))
-- \arrowMod|Add2~3\ = CARRY((!\ledMod|cardmem1\(1) & !\arrowMod|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(1),
	datad => VCC,
	cin => \arrowMod|Add2~1\,
	combout => \arrowMod|Add2~2_combout\,
	cout => \arrowMod|Add2~3\);

-- Location: LCCOMB_X48_Y40_N2
\arrowMod|mem6x6[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~7_combout\ = (\arrowMod|mem6x6[5]~4_combout\ & ((\arrowMod|mem6x6[1]~6_combout\ & (\arrowMod|Add3~2_combout\)) # (!\arrowMod|mem6x6[1]~6_combout\ & ((\arrowMod|Add2~2_combout\))))) # (!\arrowMod|mem6x6[5]~4_combout\ & 
-- (\arrowMod|mem6x6[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~4_combout\,
	datab => \arrowMod|mem6x6[1]~6_combout\,
	datac => \arrowMod|Add3~2_combout\,
	datad => \arrowMod|Add2~2_combout\,
	combout => \arrowMod|mem6x6[1]~7_combout\);

-- Location: IOIBUF_X48_Y43_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X48_Y42_N28
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

-- Location: FF_X44_Y40_N17
\syncMod|int_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \syncMod|int_a~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncMod|int_a~q\);

-- Location: LCCOMB_X44_Y40_N8
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

-- Location: FF_X44_Y40_N9
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

-- Location: FF_X44_Y40_N15
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

-- Location: LCCOMB_X44_Y40_N10
\syncMod|rise_a\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncMod|rise_a~combout\ = (\syncMod|sync_a~q\ & !\syncMod|delay_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datac => \syncMod|delay_a~q\,
	combout => \syncMod|rise_a~combout\);

-- Location: LCCOMB_X44_Y40_N14
\compMod|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always0~1_combout\ = (\syncMod|sync_a~q\ & (!\syncMod|delay_a~q\ & \compMod|cardOneTwo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncMod|sync_a~q\,
	datac => \syncMod|delay_a~q\,
	datad => \compMod|cardOneTwo~q\,
	combout => \compMod|always0~1_combout\);

-- Location: FF_X50_Y40_N19
\ledMod|cardmem1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[5]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(5));

-- Location: LCCOMB_X49_Y40_N22
\arrowMod|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~6_combout\ = (\ledMod|cardmem1\(3) & (\arrowMod|Add2~5\ & VCC)) # (!\ledMod|cardmem1\(3) & (!\arrowMod|Add2~5\))
-- \arrowMod|Add2~7\ = CARRY((!\ledMod|cardmem1\(3) & !\arrowMod|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(3),
	datad => VCC,
	cin => \arrowMod|Add2~5\,
	combout => \arrowMod|Add2~6_combout\,
	cout => \arrowMod|Add2~7\);

-- Location: LCCOMB_X49_Y40_N24
\arrowMod|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~8_combout\ = (\ledMod|cardmem1\(4) & ((GND) # (!\arrowMod|Add2~7\))) # (!\ledMod|cardmem1\(4) & (\arrowMod|Add2~7\ $ (GND)))
-- \arrowMod|Add2~9\ = CARRY((\ledMod|cardmem1\(4)) # (!\arrowMod|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datad => VCC,
	cin => \arrowMod|Add2~7\,
	combout => \arrowMod|Add2~8_combout\,
	cout => \arrowMod|Add2~9\);

-- Location: LCCOMB_X49_Y40_N26
\arrowMod|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~10_combout\ = \arrowMod|Add2~9\ $ (!\ledMod|cardmem1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|cardmem1\(5),
	cin => \arrowMod|Add2~9\,
	combout => \arrowMod|Add2~10_combout\);

-- Location: LCCOMB_X48_Y40_N10
\arrowMod|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~4_combout\ = (\ledMod|cardmem1\(2) & (\arrowMod|Add3~3\ $ (GND))) # (!\ledMod|cardmem1\(2) & (!\arrowMod|Add3~3\ & VCC))
-- \arrowMod|Add3~5\ = CARRY((\ledMod|cardmem1\(2) & !\arrowMod|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(2),
	datad => VCC,
	cin => \arrowMod|Add3~3\,
	combout => \arrowMod|Add3~4_combout\,
	cout => \arrowMod|Add3~5\);

-- Location: LCCOMB_X48_Y40_N12
\arrowMod|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~6_combout\ = (\ledMod|cardmem1\(3) & (!\arrowMod|Add3~5\)) # (!\ledMod|cardmem1\(3) & ((\arrowMod|Add3~5\) # (GND)))
-- \arrowMod|Add3~7\ = CARRY((!\arrowMod|Add3~5\) # (!\ledMod|cardmem1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(3),
	datad => VCC,
	cin => \arrowMod|Add3~5\,
	combout => \arrowMod|Add3~6_combout\,
	cout => \arrowMod|Add3~7\);

-- Location: LCCOMB_X48_Y40_N14
\arrowMod|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~8_combout\ = (\ledMod|cardmem1\(4) & (\arrowMod|Add3~7\ $ (GND))) # (!\ledMod|cardmem1\(4) & (!\arrowMod|Add3~7\ & VCC))
-- \arrowMod|Add3~9\ = CARRY((\ledMod|cardmem1\(4) & !\arrowMod|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(4),
	datad => VCC,
	cin => \arrowMod|Add3~7\,
	combout => \arrowMod|Add3~8_combout\,
	cout => \arrowMod|Add3~9\);

-- Location: LCCOMB_X48_Y40_N16
\arrowMod|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add3~10_combout\ = \arrowMod|Add3~9\ $ (\ledMod|cardmem1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|cardmem1\(5),
	cin => \arrowMod|Add3~9\,
	combout => \arrowMod|Add3~10_combout\);

-- Location: LCCOMB_X49_Y40_N6
\arrowMod|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~2_combout\ = (\ledMod|cardmem1\(2) & (!\arrowMod|Add0~1\)) # (!\ledMod|cardmem1\(2) & ((\arrowMod|Add0~1\) # (GND)))
-- \arrowMod|Add0~3\ = CARRY((!\arrowMod|Add0~1\) # (!\ledMod|cardmem1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(2),
	datad => VCC,
	cin => \arrowMod|Add0~1\,
	combout => \arrowMod|Add0~2_combout\,
	cout => \arrowMod|Add0~3\);

-- Location: LCCOMB_X49_Y40_N8
\arrowMod|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~4_combout\ = (\ledMod|cardmem1\(3) & ((GND) # (!\arrowMod|Add0~3\))) # (!\ledMod|cardmem1\(3) & (\arrowMod|Add0~3\ $ (GND)))
-- \arrowMod|Add0~5\ = CARRY((\ledMod|cardmem1\(3)) # (!\arrowMod|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(3),
	datad => VCC,
	cin => \arrowMod|Add0~3\,
	combout => \arrowMod|Add0~4_combout\,
	cout => \arrowMod|Add0~5\);

-- Location: LCCOMB_X49_Y40_N10
\arrowMod|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~6_combout\ = (\ledMod|cardmem1\(4) & (\arrowMod|Add0~5\ & VCC)) # (!\ledMod|cardmem1\(4) & (!\arrowMod|Add0~5\))
-- \arrowMod|Add0~7\ = CARRY((!\ledMod|cardmem1\(4) & !\arrowMod|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datad => VCC,
	cin => \arrowMod|Add0~5\,
	combout => \arrowMod|Add0~6_combout\,
	cout => \arrowMod|Add0~7\);

-- Location: LCCOMB_X49_Y40_N12
\arrowMod|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add0~8_combout\ = \arrowMod|Add0~7\ $ (\ledMod|cardmem1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|cardmem1\(5),
	cin => \arrowMod|Add0~7\,
	combout => \arrowMod|Add0~8_combout\);

-- Location: LCCOMB_X48_Y40_N24
\arrowMod|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~6_combout\ = (\ledMod|cardmem1\(4) & (!\arrowMod|Add1~5\)) # (!\ledMod|cardmem1\(4) & ((\arrowMod|Add1~5\) # (GND)))
-- \arrowMod|Add1~7\ = CARRY((!\arrowMod|Add1~5\) # (!\ledMod|cardmem1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(4),
	datad => VCC,
	cin => \arrowMod|Add1~5\,
	combout => \arrowMod|Add1~6_combout\,
	cout => \arrowMod|Add1~7\);

-- Location: LCCOMB_X48_Y40_N26
\arrowMod|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~8_combout\ = \arrowMod|Add1~7\ $ (!\ledMod|cardmem1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|cardmem1\(5),
	cin => \arrowMod|Add1~7\,
	combout => \arrowMod|Add1~8_combout\);

-- Location: LCCOMB_X45_Y40_N6
\arrowMod|mem6x6[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~29_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[5]~4_combout\) # ((\arrowMod|Add1~8_combout\)))) # (!\arrowMod|mem6x6[5]~5_combout\ & (!\arrowMod|mem6x6[5]~4_combout\ & (\arrowMod|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~5_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add0~8_combout\,
	datad => \arrowMod|Add1~8_combout\,
	combout => \arrowMod|mem6x6[5]~29_combout\);

-- Location: LCCOMB_X45_Y40_N12
\arrowMod|mem6x6[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~30_combout\ = (\arrowMod|mem6x6[5]~4_combout\ & ((\arrowMod|mem6x6[5]~29_combout\ & ((\arrowMod|Add3~10_combout\))) # (!\arrowMod|mem6x6[5]~29_combout\ & (\arrowMod|Add2~10_combout\)))) # (!\arrowMod|mem6x6[5]~4_combout\ & 
-- (((\arrowMod|mem6x6[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add2~10_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add3~10_combout\,
	datad => \arrowMod|mem6x6[5]~29_combout\,
	combout => \arrowMod|mem6x6[5]~30_combout\);

-- Location: LCCOMB_X50_Y40_N10
\arrowMod|mem6x6[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~12_combout\ = (\arrowMod|keys2\(1) & (\ledMod|cardmem1\(3) & (\ledMod|cardmem1\(1) & \ledMod|cardmem1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \ledMod|cardmem1\(3),
	datac => \ledMod|cardmem1\(1),
	datad => \ledMod|cardmem1\(2),
	combout => \arrowMod|mem6x6[5]~12_combout\);

-- Location: LCCOMB_X50_Y40_N18
\arrowMod|mem6x6[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~13_combout\ = (\ledMod|cardmem1\(4) & (!\ledMod|cardmem1\(5) & \arrowMod|mem6x6[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datac => \ledMod|cardmem1\(5),
	datad => \arrowMod|mem6x6[5]~12_combout\,
	combout => \arrowMod|mem6x6[5]~13_combout\);

-- Location: LCCOMB_X50_Y40_N0
\arrowMod|mem6x6[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~15_combout\ = (!\ledMod|cardmem1\(4) & (!\ledMod|cardmem1\(1) & (!\ledMod|cardmem1\(5) & !\ledMod|cardmem1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datab => \ledMod|cardmem1\(1),
	datac => \ledMod|cardmem1\(5),
	datad => \ledMod|cardmem1\(3),
	combout => \arrowMod|mem6x6[5]~15_combout\);

-- Location: LCCOMB_X50_Y40_N6
\arrowMod|mem6x6[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~14_combout\ = (\arrowMod|keys2\(2) & ((\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(0)) # (\arrowMod|keys2\(3))))) # (!\arrowMod|keys2\(2) & (\arrowMod|keys2\(3) & ((\arrowMod|keys2\(1)) # (\arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|keys2\(2),
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|mem6x6[5]~14_combout\);

-- Location: LCCOMB_X50_Y40_N28
\arrowMod|mem6x6[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~16_combout\ = (\arrowMod|mem6x6[5]~14_combout\) # ((\arrowMod|keys2\(0) & ((\arrowMod|keys2\(1)) # (\arrowMod|mem6x6[5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|mem6x6[5]~15_combout\,
	datac => \arrowMod|keys2\(0),
	datad => \arrowMod|mem6x6[5]~14_combout\,
	combout => \arrowMod|mem6x6[5]~16_combout\);

-- Location: LCCOMB_X50_Y40_N26
\arrowMod|mem6x6[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~10_combout\ = (!\arrowMod|keys2\(0) & (!\arrowMod|keys2\(1) & !\arrowMod|keys2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|keys2\(1),
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|mem6x6[5]~10_combout\);

-- Location: LCCOMB_X50_Y40_N14
\arrowMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~1_combout\ = (!\ledMod|cardmem1\(1) & (!\ledMod|cardmem1\(0) & (!\ledMod|cardmem1\(5) & \arrowMod|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(1),
	datab => \ledMod|cardmem1\(0),
	datac => \ledMod|cardmem1\(5),
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|Equal1~1_combout\);

-- Location: LCCOMB_X50_Y40_N22
\arrowMod|mem6x6[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~8_combout\ = (\arrowMod|keys2\(1)) # ((\arrowMod|keys2\(3) & (\ledMod|cardmem1\(1) & \ledMod|cardmem1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(1),
	datab => \arrowMod|keys2\(3),
	datac => \ledMod|cardmem1\(1),
	datad => \ledMod|cardmem1\(0),
	combout => \arrowMod|mem6x6[5]~8_combout\);

-- Location: LCCOMB_X50_Y40_N24
\arrowMod|mem6x6[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~9_combout\ = (\arrowMod|Equal1~0_combout\ & ((\ledMod|cardmem1\(5) & ((\arrowMod|mem6x6[5]~8_combout\))) # (!\ledMod|cardmem1\(5) & (\arrowMod|keys2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(5),
	datab => \arrowMod|keys2\(0),
	datac => \arrowMod|mem6x6[5]~8_combout\,
	datad => \arrowMod|Equal1~0_combout\,
	combout => \arrowMod|mem6x6[5]~9_combout\);

-- Location: LCCOMB_X50_Y40_N16
\arrowMod|mem6x6[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~11_combout\ = (\arrowMod|mem6x6[5]~9_combout\) # ((\arrowMod|mem6x6[5]~10_combout\ & ((\arrowMod|Equal1~1_combout\) # (!\arrowMod|keys2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|keys2\(2),
	datab => \arrowMod|mem6x6[5]~10_combout\,
	datac => \arrowMod|Equal1~1_combout\,
	datad => \arrowMod|mem6x6[5]~9_combout\,
	combout => \arrowMod|mem6x6[5]~11_combout\);

-- Location: LCCOMB_X50_Y40_N12
\arrowMod|mem6x6[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~18_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[5]~13_combout\) # ((\arrowMod|mem6x6[5]~16_combout\) # (\arrowMod|mem6x6[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|mem6x6[5]~13_combout\,
	datac => \arrowMod|mem6x6[5]~16_combout\,
	datad => \arrowMod|mem6x6[5]~11_combout\,
	combout => \arrowMod|mem6x6[1]~18_combout\);

-- Location: LCCOMB_X45_Y40_N10
\arrowMod|mem6x6[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[5]~31_combout\ = (\arrowMod|mem6x6[5]~30_combout\ & ((\arrowMod|mem6x6[1]~17_combout\) # ((\ledMod|cardmem1\(5) & \arrowMod|mem6x6[1]~18_combout\)))) # (!\arrowMod|mem6x6[5]~30_combout\ & (\ledMod|cardmem1\(5) & 
-- ((\arrowMod|mem6x6[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~30_combout\,
	datab => \ledMod|cardmem1\(5),
	datac => \arrowMod|mem6x6[1]~17_combout\,
	datad => \arrowMod|mem6x6[1]~18_combout\,
	combout => \arrowMod|mem6x6[5]~31_combout\);

-- Location: LCCOMB_X45_Y40_N30
\compMod|cardmem1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem1[5]~feeder_combout\ = \arrowMod|mem6x6[5]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[5]~31_combout\,
	combout => \compMod|cardmem1[5]~feeder_combout\);

-- Location: LCCOMB_X44_Y40_N16
\compMod|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always0~0_combout\ = (\syncMod|sync_a~q\ & (!\syncMod|delay_a~q\ & !\compMod|cardOneTwo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datab => \syncMod|delay_a~q\,
	datad => \compMod|cardOneTwo~q\,
	combout => \compMod|always0~0_combout\);

-- Location: FF_X45_Y40_N31
\compMod|cardmem1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem1[5]~feeder_combout\,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(5));

-- Location: LCCOMB_X45_Y40_N18
\compMod|cardmem2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem2[5]~feeder_combout\ = \arrowMod|mem6x6[5]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[5]~31_combout\,
	combout => \compMod|cardmem2[5]~feeder_combout\);

-- Location: FF_X45_Y40_N19
\compMod|cardmem2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem2[5]~feeder_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(5));

-- Location: LCCOMB_X46_Y40_N10
\compMod|cardmem2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem2[4]~feeder_combout\ = \arrowMod|mem6x6[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[4]~28_combout\,
	combout => \compMod|cardmem2[4]~feeder_combout\);

-- Location: FF_X46_Y40_N11
\compMod|cardmem2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem2[4]~feeder_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(4));

-- Location: LCCOMB_X46_Y40_N2
\compMod|cardmem1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem1[4]~feeder_combout\ = \arrowMod|mem6x6[4]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[4]~28_combout\,
	combout => \compMod|cardmem1[4]~feeder_combout\);

-- Location: FF_X46_Y40_N3
\compMod|cardmem1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem1[4]~feeder_combout\,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(4));

-- Location: LCCOMB_X45_Y40_N28
\compMod|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~2_combout\ = (\compMod|cardmem1\(5) & (\compMod|cardmem2\(5) & (\compMod|cardmem2\(4) $ (!\compMod|cardmem1\(4))))) # (!\compMod|cardmem1\(5) & (!\compMod|cardmem2\(5) & (\compMod|cardmem2\(4) $ (!\compMod|cardmem1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem1\(5),
	datab => \compMod|cardmem2\(5),
	datac => \compMod|cardmem2\(4),
	datad => \compMod|cardmem1\(4),
	combout => \compMod|Equal1~2_combout\);

-- Location: FF_X45_Y40_N23
\compMod|cardmem2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~22_combout\,
	sload => VCC,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(3));

-- Location: FF_X45_Y40_N21
\compMod|cardmem1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~22_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(3));

-- Location: LCCOMB_X46_Y40_N0
\compMod|cardmem2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem2[2]~feeder_combout\ = \arrowMod|mem6x6[2]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|cardmem2[2]~feeder_combout\);

-- Location: FF_X46_Y40_N1
\compMod|cardmem2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem2[2]~feeder_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(2));

-- Location: LCCOMB_X46_Y40_N28
\compMod|cardmem1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem1[2]~feeder_combout\ = \arrowMod|mem6x6[2]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|cardmem1[2]~feeder_combout\);

-- Location: FF_X46_Y40_N29
\compMod|cardmem1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem1[2]~feeder_combout\,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(2));

-- Location: LCCOMB_X45_Y40_N4
\compMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~1_combout\ = (\compMod|cardmem2\(3) & (\compMod|cardmem1\(3) & (\compMod|cardmem2\(2) $ (!\compMod|cardmem1\(2))))) # (!\compMod|cardmem2\(3) & (!\compMod|cardmem1\(3) & (\compMod|cardmem2\(2) $ (!\compMod|cardmem1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem2\(3),
	datab => \compMod|cardmem1\(3),
	datac => \compMod|cardmem2\(2),
	datad => \compMod|cardmem1\(2),
	combout => \compMod|Equal1~1_combout\);

-- Location: FF_X45_Y40_N25
\compMod|cardmem2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[1]~19_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(1));

-- Location: FF_X45_Y40_N17
\compMod|cardmem1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[0]~3_combout\,
	sload => VCC,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(0));

-- Location: LCCOMB_X45_Y40_N14
\compMod|cardmem1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardmem1[1]~feeder_combout\ = \arrowMod|mem6x6[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \arrowMod|mem6x6[1]~19_combout\,
	combout => \compMod|cardmem1[1]~feeder_combout\);

-- Location: FF_X45_Y40_N15
\compMod|cardmem1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|cardmem1[1]~feeder_combout\,
	ena => \compMod|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem1\(1));

-- Location: FF_X48_Y40_N5
\compMod|cardmem2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \arrowMod|mem6x6[0]~3_combout\,
	ena => \compMod|always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardmem2\(0));

-- Location: LCCOMB_X45_Y40_N0
\compMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal1~0_combout\ = (\compMod|cardmem2\(1) & (\compMod|cardmem1\(1) & (\compMod|cardmem1\(0) $ (!\compMod|cardmem2\(0))))) # (!\compMod|cardmem2\(1) & (!\compMod|cardmem1\(1) & (\compMod|cardmem1\(0) $ (!\compMod|cardmem2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|cardmem2\(1),
	datab => \compMod|cardmem1\(0),
	datac => \compMod|cardmem1\(1),
	datad => \compMod|cardmem2\(0),
	combout => \compMod|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y40_N26
\compMod|data2[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2[4]~0_combout\ = (\compMod|always0~1_combout\ & (((!\compMod|Equal1~0_combout\) # (!\compMod|Equal1~1_combout\)) # (!\compMod|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|always0~1_combout\,
	datab => \compMod|Equal1~2_combout\,
	datac => \compMod|Equal1~1_combout\,
	datad => \compMod|Equal1~0_combout\,
	combout => \compMod|data2[4]~0_combout\);

-- Location: LCCOMB_X44_Y40_N28
\compMod|cardOneTwo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|cardOneTwo~0_combout\ = (\fsmMod|presentState.rungame~q\ & (!\compMod|data2[4]~0_combout\ & ((\syncMod|rise_a~combout\) # (\compMod|cardOneTwo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \compMod|cardOneTwo~q\,
	datad => \compMod|data2[4]~0_combout\,
	combout => \compMod|cardOneTwo~0_combout\);

-- Location: FF_X44_Y40_N29
\compMod|cardOneTwo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|cardOneTwo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|cardOneTwo~q\);

-- Location: LCCOMB_X45_Y40_N20
\compMod|mr64|ram~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~14_combout\ = (\arrowMod|mem6x6[3]~22_combout\ & ((\arrowMod|mem6x6[4]~28_combout\) # ((!\arrowMod|mem6x6[1]~19_combout\)))) # (!\arrowMod|mem6x6[3]~22_combout\ & (\arrowMod|mem6x6[2]~25_combout\ & ((\arrowMod|mem6x6[1]~19_combout\) # 
-- (!\arrowMod|mem6x6[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[1]~19_combout\,
	datac => \arrowMod|mem6x6[3]~22_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~14_combout\);

-- Location: LCCOMB_X45_Y40_N22
\compMod|mr64|ram~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~15_combout\ = (\arrowMod|mem6x6[3]~22_combout\ & ((\arrowMod|mem6x6[1]~19_combout\) # ((\arrowMod|mem6x6[4]~28_combout\ & \arrowMod|mem6x6[2]~25_combout\)))) # (!\arrowMod|mem6x6[3]~22_combout\ & (\arrowMod|mem6x6[4]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[1]~19_combout\,
	datac => \arrowMod|mem6x6[3]~22_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~15_combout\);

-- Location: LCCOMB_X45_Y40_N16
\compMod|mr64|ram~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~16_combout\ = (\compMod|mr64|ram~14_combout\ & ((\arrowMod|mem6x6[1]~19_combout\ & (\arrowMod|mem6x6[0]~3_combout\ & !\compMod|mr64|ram~15_combout\)) # (!\arrowMod|mem6x6[1]~19_combout\ & (!\arrowMod|mem6x6[0]~3_combout\ & 
-- \compMod|mr64|ram~15_combout\)))) # (!\compMod|mr64|ram~14_combout\ & (!\compMod|mr64|ram~15_combout\ & ((\arrowMod|mem6x6[1]~19_combout\) # (\arrowMod|mem6x6[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|ram~14_combout\,
	datab => \arrowMod|mem6x6[1]~19_combout\,
	datac => \arrowMod|mem6x6[0]~3_combout\,
	datad => \compMod|mr64|ram~15_combout\,
	combout => \compMod|mr64|ram~16_combout\);

-- Location: LCCOMB_X44_Y40_N22
\compMod|mr64|ram~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~17_combout\ = (\arrowMod|mem6x6[5]~31_combout\ & (!\compMod|mr64|ram~14_combout\ & \compMod|mr64|ram~16_combout\)) # (!\arrowMod|mem6x6[5]~31_combout\ & (\compMod|mr64|ram~14_combout\ $ (!\compMod|mr64|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \arrowMod|mem6x6[5]~31_combout\,
	datac => \compMod|mr64|ram~14_combout\,
	datad => \compMod|mr64|ram~16_combout\,
	combout => \compMod|mr64|ram~17_combout\);

-- Location: FF_X44_Y40_N23
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

-- Location: LCCOMB_X43_Y40_N22
\compMod|data2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2[3]~feeder_combout\ = \compMod|mr64|dataOut\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compMod|mr64|dataOut\(3),
	combout => \compMod|data2[3]~feeder_combout\);

-- Location: LCCOMB_X43_Y40_N24
\compMod|data2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2[4]~1_combout\ = (\fsmMod|presentState.rungame~q\ & \compMod|data2[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datad => \compMod|data2[4]~0_combout\,
	combout => \compMod|data2[4]~1_combout\);

-- Location: FF_X43_Y40_N23
\compMod|data2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2[3]~feeder_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(3));

-- Location: LCCOMB_X42_Y40_N20
\compMod|mr64|ram~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~10_combout\ = (\arrowMod|mem6x6[2]~25_combout\ & (!\arrowMod|mem6x6[1]~19_combout\ & ((\arrowMod|mem6x6[4]~28_combout\) # (\arrowMod|mem6x6[3]~22_combout\)))) # (!\arrowMod|mem6x6[2]~25_combout\ & (\arrowMod|mem6x6[4]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~10_combout\);

-- Location: LCCOMB_X42_Y40_N22
\compMod|mr64|ram~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~11_combout\ = (\arrowMod|mem6x6[4]~28_combout\ & (\arrowMod|mem6x6[3]~22_combout\ $ (((\arrowMod|mem6x6[1]~19_combout\) # (\arrowMod|mem6x6[2]~25_combout\))))) # (!\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[1]~19_combout\) # 
-- ((\arrowMod|mem6x6[3]~22_combout\ & !\arrowMod|mem6x6[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~11_combout\);

-- Location: LCCOMB_X42_Y40_N28
\compMod|mr64|ram~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~12_combout\ = (\arrowMod|mem6x6[0]~3_combout\ & (\compMod|mr64|ram~11_combout\ & \arrowMod|mem6x6[2]~25_combout\)) # (!\arrowMod|mem6x6[0]~3_combout\ & ((\compMod|mr64|ram~11_combout\) # (\arrowMod|mem6x6[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~3_combout\,
	datac => \compMod|mr64|ram~11_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~12_combout\);

-- Location: LCCOMB_X42_Y40_N16
\compMod|mr64|ram~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~13_combout\ = (\arrowMod|mem6x6[5]~31_combout\ & (!\arrowMod|mem6x6[0]~3_combout\ & (!\compMod|mr64|ram~10_combout\ & !\compMod|mr64|ram~12_combout\))) # (!\arrowMod|mem6x6[5]~31_combout\ & (\arrowMod|mem6x6[0]~3_combout\ $ 
-- (\compMod|mr64|ram~10_combout\ $ (!\compMod|mr64|ram~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~3_combout\,
	datab => \compMod|mr64|ram~10_combout\,
	datac => \arrowMod|mem6x6[5]~31_combout\,
	datad => \compMod|mr64|ram~12_combout\,
	combout => \compMod|mr64|ram~13_combout\);

-- Location: FF_X42_Y40_N17
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

-- Location: FF_X43_Y40_N17
\compMod|data2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(2),
	sload => VCC,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(2));

-- Location: LCCOMB_X44_Y40_N30
\compMod|data1[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data1[4]~0_combout\ = (\syncMod|sync_a~q\ & (!\syncMod|delay_a~q\ & (\fsmMod|presentState.rungame~q\ & !\compMod|cardOneTwo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datab => \syncMod|delay_a~q\,
	datac => \fsmMod|presentState.rungame~q\,
	datad => \compMod|cardOneTwo~q\,
	combout => \compMod|data1[4]~0_combout\);

-- Location: FF_X43_Y40_N27
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

-- Location: LCCOMB_X43_Y40_N20
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

-- Location: FF_X43_Y40_N21
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

-- Location: LCCOMB_X43_Y40_N26
\compMod|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always1~1_combout\ = (\compMod|data2\(3) & (\compMod|data1\(3) & (\compMod|data2\(2) $ (!\compMod|data1\(2))))) # (!\compMod|data2\(3) & (!\compMod|data1\(3) & (\compMod|data2\(2) $ (!\compMod|data1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|data2\(3),
	datab => \compMod|data2\(2),
	datac => \compMod|data1\(2),
	datad => \compMod|data1\(3),
	combout => \compMod|always1~1_combout\);

-- Location: LCCOMB_X42_Y40_N10
\compMod|mr64|ram~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~18_combout\ = (\arrowMod|mem6x6[4]~28_combout\ & (((\arrowMod|mem6x6[3]~22_combout\ & !\arrowMod|mem6x6[2]~25_combout\)) # (!\arrowMod|mem6x6[1]~19_combout\))) # (!\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[3]~22_combout\ & 
-- (!\arrowMod|mem6x6[1]~19_combout\)) # (!\arrowMod|mem6x6[3]~22_combout\ & (\arrowMod|mem6x6[1]~19_combout\ & \arrowMod|mem6x6[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[2]~25_combout\,
	combout => \compMod|mr64|ram~18_combout\);

-- Location: LCCOMB_X42_Y40_N26
\compMod|mr64|ram~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~19_combout\ = (!\arrowMod|mem6x6[5]~31_combout\ & ((\arrowMod|mem6x6[0]~3_combout\ & (!\arrowMod|mem6x6[1]~19_combout\ & !\compMod|mr64|ram~18_combout\)) # (!\arrowMod|mem6x6[0]~3_combout\ & (\arrowMod|mem6x6[1]~19_combout\ & 
-- \compMod|mr64|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~3_combout\,
	datab => \arrowMod|mem6x6[5]~31_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \compMod|mr64|ram~18_combout\,
	combout => \compMod|mr64|ram~19_combout\);

-- Location: FF_X42_Y40_N27
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

-- Location: FF_X43_Y40_N13
\compMod|data2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(4),
	sload => VCC,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(4));

-- Location: FF_X43_Y40_N7
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

-- Location: LCCOMB_X42_Y40_N4
\compMod|mr64|ram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~0_combout\ = (\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[1]~19_combout\ $ (!\arrowMod|mem6x6[0]~3_combout\)))) # (!\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[1]~19_combout\ & ((!\arrowMod|mem6x6[0]~3_combout\))) # 
-- (!\arrowMod|mem6x6[1]~19_combout\ & (\arrowMod|mem6x6[3]~22_combout\ & \arrowMod|mem6x6[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[0]~3_combout\,
	combout => \compMod|mr64|ram~0_combout\);

-- Location: LCCOMB_X42_Y40_N6
\compMod|mr64|ram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~1_combout\ = (\arrowMod|mem6x6[3]~22_combout\ & ((\arrowMod|mem6x6[4]~28_combout\ & (!\arrowMod|mem6x6[1]~19_combout\)) # (!\arrowMod|mem6x6[4]~28_combout\ & ((!\arrowMod|mem6x6[0]~3_combout\))))) # (!\arrowMod|mem6x6[3]~22_combout\ & 
-- (\arrowMod|mem6x6[0]~3_combout\ & ((\arrowMod|mem6x6[4]~28_combout\) # (!\arrowMod|mem6x6[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[0]~3_combout\,
	combout => \compMod|mr64|ram~1_combout\);

-- Location: LCCOMB_X42_Y40_N8
\compMod|mr64|ram~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~2_combout\ = (!\arrowMod|mem6x6[5]~31_combout\ & ((\arrowMod|mem6x6[2]~25_combout\ & (\compMod|mr64|ram~0_combout\)) # (!\arrowMod|mem6x6[2]~25_combout\ & ((!\compMod|mr64|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~31_combout\,
	datab => \arrowMod|mem6x6[2]~25_combout\,
	datac => \compMod|mr64|ram~0_combout\,
	datad => \compMod|mr64|ram~1_combout\,
	combout => \compMod|mr64|ram~2_combout\);

-- Location: LCCOMB_X42_Y40_N18
\compMod|mr64|ram~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~3_combout\ = (\arrowMod|mem6x6[4]~28_combout\) # ((\arrowMod|mem6x6[3]~22_combout\) # (\arrowMod|mem6x6[1]~19_combout\ $ (\arrowMod|mem6x6[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[0]~3_combout\,
	combout => \compMod|mr64|ram~3_combout\);

-- Location: LCCOMB_X42_Y40_N0
\compMod|mr64|ram~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~4_combout\ = (\compMod|mr64|ram~2_combout\) # ((\arrowMod|mem6x6[5]~31_combout\ & (!\arrowMod|mem6x6[2]~25_combout\ & !\compMod|mr64|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~31_combout\,
	datab => \arrowMod|mem6x6[2]~25_combout\,
	datac => \compMod|mr64|ram~2_combout\,
	datad => \compMod|mr64|ram~3_combout\,
	combout => \compMod|mr64|ram~4_combout\);

-- Location: FF_X42_Y40_N1
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

-- Location: FF_X43_Y40_N25
\compMod|data2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \compMod|mr64|dataOut\(0),
	sload => VCC,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(0));

-- Location: LCCOMB_X42_Y40_N30
\compMod|mr64|ram~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~8_combout\ = (\arrowMod|mem6x6[2]~25_combout\) # ((\arrowMod|mem6x6[4]~28_combout\) # ((\arrowMod|mem6x6[0]~3_combout\ & !\arrowMod|mem6x6[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~3_combout\,
	datab => \arrowMod|mem6x6[2]~25_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[4]~28_combout\,
	combout => \compMod|mr64|ram~8_combout\);

-- Location: LCCOMB_X42_Y40_N12
\compMod|mr64|ram~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~5_combout\ = (\arrowMod|mem6x6[0]~3_combout\ & (\arrowMod|mem6x6[2]~25_combout\ & (\arrowMod|mem6x6[4]~28_combout\ $ (!\arrowMod|mem6x6[1]~19_combout\)))) # (!\arrowMod|mem6x6[0]~3_combout\ & (\arrowMod|mem6x6[2]~25_combout\ $ 
-- (((\arrowMod|mem6x6[4]~28_combout\ & !\arrowMod|mem6x6[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[2]~25_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[0]~3_combout\,
	combout => \compMod|mr64|ram~5_combout\);

-- Location: LCCOMB_X42_Y40_N2
\compMod|mr64|ram~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~6_combout\ = (\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[1]~19_combout\ $ (!\arrowMod|mem6x6[0]~3_combout\)))) # (!\arrowMod|mem6x6[4]~28_combout\ & ((\arrowMod|mem6x6[1]~19_combout\ & ((!\arrowMod|mem6x6[0]~3_combout\))) # 
-- (!\arrowMod|mem6x6[1]~19_combout\ & ((\arrowMod|mem6x6[2]~25_combout\) # (\arrowMod|mem6x6[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~28_combout\,
	datab => \arrowMod|mem6x6[2]~25_combout\,
	datac => \arrowMod|mem6x6[1]~19_combout\,
	datad => \arrowMod|mem6x6[0]~3_combout\,
	combout => \compMod|mr64|ram~6_combout\);

-- Location: LCCOMB_X42_Y40_N24
\compMod|mr64|ram~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~7_combout\ = (!\arrowMod|mem6x6[5]~31_combout\ & ((\arrowMod|mem6x6[3]~22_combout\ & (\compMod|mr64|ram~5_combout\)) # (!\arrowMod|mem6x6[3]~22_combout\ & ((!\compMod|mr64|ram~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|ram~5_combout\,
	datab => \arrowMod|mem6x6[3]~22_combout\,
	datac => \arrowMod|mem6x6[5]~31_combout\,
	datad => \compMod|mr64|ram~6_combout\,
	combout => \compMod|mr64|ram~7_combout\);

-- Location: LCCOMB_X42_Y40_N14
\compMod|mr64|ram~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|mr64|ram~9_combout\ = (\compMod|mr64|ram~7_combout\) # ((!\compMod|mr64|ram~8_combout\ & (!\arrowMod|mem6x6[3]~22_combout\ & \arrowMod|mem6x6[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|mr64|ram~8_combout\,
	datab => \compMod|mr64|ram~7_combout\,
	datac => \arrowMod|mem6x6[3]~22_combout\,
	datad => \arrowMod|mem6x6[5]~31_combout\,
	combout => \compMod|mr64|ram~9_combout\);

-- Location: FF_X42_Y40_N15
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

-- Location: LCCOMB_X43_Y40_N18
\compMod|data2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|data2[1]~feeder_combout\ = \compMod|mr64|dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \compMod|mr64|dataOut\(1),
	combout => \compMod|data2[1]~feeder_combout\);

-- Location: FF_X43_Y40_N19
\compMod|data2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|data2[1]~feeder_combout\,
	ena => \compMod|data2[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|data2\(1));

-- Location: FF_X43_Y40_N11
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

-- Location: LCCOMB_X43_Y40_N28
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

-- Location: FF_X43_Y40_N29
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

-- Location: LCCOMB_X43_Y40_N10
\compMod|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always1~0_combout\ = (\compMod|data2\(0) & (\compMod|data1\(0) & (\compMod|data2\(1) $ (!\compMod|data1\(1))))) # (!\compMod|data2\(0) & (!\compMod|data1\(0) & (\compMod|data2\(1) $ (!\compMod|data1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|data2\(0),
	datab => \compMod|data2\(1),
	datac => \compMod|data1\(0),
	datad => \compMod|data1\(1),
	combout => \compMod|always1~0_combout\);

-- Location: LCCOMB_X43_Y40_N6
\compMod|always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always1~2_combout\ = (\compMod|always1~1_combout\ & (\compMod|always1~0_combout\ & (\compMod|data2\(4) $ (!\compMod|data1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|always1~1_combout\,
	datab => \compMod|data2\(4),
	datac => \compMod|data1\(4),
	datad => \compMod|always1~0_combout\,
	combout => \compMod|always1~2_combout\);

-- Location: LCCOMB_X42_Y42_N22
\compMod|foundPair~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|foundPair~0_combout\ = (\compMod|always1~2_combout\ & ((\compMod|foundPair~q\) # (!\compMod|cardOneTwo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|foundPair~q\,
	datad => \compMod|always1~2_combout\,
	combout => \compMod|foundPair~0_combout\);

-- Location: FF_X42_Y42_N23
\compMod|foundPair\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|foundPair~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|foundPair~q\);

-- Location: LCCOMB_X42_Y42_N4
\compMod|pairsFound[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[0]~33_combout\ = \compMod|pairsFound\(0) $ (((!\compMod|foundPair~q\ & (!\compMod|cardOneTwo~q\ & \compMod|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|foundPair~q\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|pairsFound\(0),
	datad => \compMod|always1~2_combout\,
	combout => \compMod|pairsFound[0]~33_combout\);

-- Location: FF_X42_Y42_N5
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

-- Location: LCCOMB_X41_Y42_N2
\compMod|pairsFound[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|pairsFound[1]~31_combout\ = (\compMod|pairsFound\(0) & (\compMod|pairsFound\(1) $ (VCC))) # (!\compMod|pairsFound\(0) & (\compMod|pairsFound\(1) & VCC))
-- \compMod|pairsFound[1]~32\ = CARRY((\compMod|pairsFound\(0) & \compMod|pairsFound\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(0),
	datab => \compMod|pairsFound\(1),
	datad => VCC,
	combout => \compMod|pairsFound[1]~31_combout\,
	cout => \compMod|pairsFound[1]~32\);

-- Location: LCCOMB_X42_Y42_N28
\compMod|always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|always1~3_combout\ = (!\compMod|cardOneTwo~q\ & (!\compMod|foundPair~q\ & \compMod|always1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|foundPair~q\,
	datad => \compMod|always1~2_combout\,
	combout => \compMod|always1~3_combout\);

-- Location: FF_X41_Y42_N3
\compMod|pairsFound[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[1]~31_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(1));

-- Location: LCCOMB_X41_Y42_N4
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

-- Location: FF_X41_Y42_N5
\compMod|pairsFound[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[2]~34_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(2));

-- Location: LCCOMB_X41_Y42_N6
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

-- Location: FF_X41_Y42_N7
\compMod|pairsFound[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[3]~36_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(3));

-- Location: LCCOMB_X41_Y42_N8
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

-- Location: FF_X41_Y42_N9
\compMod|pairsFound[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[4]~38_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(4));

-- Location: LCCOMB_X41_Y42_N10
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

-- Location: FF_X41_Y42_N11
\compMod|pairsFound[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[5]~40_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(5));

-- Location: LCCOMB_X41_Y42_N12
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

-- Location: FF_X41_Y42_N13
\compMod|pairsFound[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[6]~42_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(6));

-- Location: LCCOMB_X41_Y42_N14
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

-- Location: FF_X41_Y42_N15
\compMod|pairsFound[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[7]~44_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(7));

-- Location: LCCOMB_X41_Y42_N16
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

-- Location: FF_X41_Y42_N17
\compMod|pairsFound[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[8]~46_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(8));

-- Location: LCCOMB_X41_Y42_N18
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

-- Location: FF_X41_Y42_N19
\compMod|pairsFound[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[9]~48_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(9));

-- Location: LCCOMB_X41_Y42_N20
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

-- Location: FF_X41_Y42_N21
\compMod|pairsFound[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[10]~50_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(10));

-- Location: LCCOMB_X41_Y42_N22
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

-- Location: FF_X41_Y42_N23
\compMod|pairsFound[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[11]~52_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(11));

-- Location: LCCOMB_X41_Y42_N24
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

-- Location: FF_X41_Y42_N25
\compMod|pairsFound[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[12]~54_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(12));

-- Location: LCCOMB_X41_Y42_N26
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

-- Location: FF_X41_Y42_N27
\compMod|pairsFound[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[13]~56_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(13));

-- Location: LCCOMB_X41_Y42_N28
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

-- Location: FF_X41_Y42_N29
\compMod|pairsFound[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[14]~58_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(14));

-- Location: LCCOMB_X41_Y42_N30
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

-- Location: FF_X41_Y42_N31
\compMod|pairsFound[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[15]~60_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(15));

-- Location: LCCOMB_X41_Y41_N0
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

-- Location: FF_X41_Y41_N1
\compMod|pairsFound[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[16]~62_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(16));

-- Location: LCCOMB_X41_Y41_N2
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

-- Location: FF_X41_Y41_N3
\compMod|pairsFound[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[17]~64_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(17));

-- Location: LCCOMB_X41_Y41_N4
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

-- Location: FF_X41_Y41_N5
\compMod|pairsFound[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[18]~66_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(18));

-- Location: LCCOMB_X41_Y41_N6
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

-- Location: FF_X41_Y41_N7
\compMod|pairsFound[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[19]~68_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(19));

-- Location: LCCOMB_X41_Y41_N8
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

-- Location: FF_X41_Y41_N9
\compMod|pairsFound[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[20]~70_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(20));

-- Location: LCCOMB_X41_Y41_N10
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

-- Location: FF_X41_Y41_N11
\compMod|pairsFound[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[21]~72_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(21));

-- Location: LCCOMB_X41_Y41_N12
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

-- Location: FF_X41_Y41_N13
\compMod|pairsFound[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[22]~74_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(22));

-- Location: LCCOMB_X41_Y41_N14
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

-- Location: FF_X41_Y41_N15
\compMod|pairsFound[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[23]~76_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(23));

-- Location: LCCOMB_X41_Y41_N16
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

-- Location: FF_X41_Y41_N17
\compMod|pairsFound[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[24]~78_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(24));

-- Location: LCCOMB_X41_Y41_N18
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

-- Location: FF_X41_Y41_N19
\compMod|pairsFound[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[25]~80_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(25));

-- Location: LCCOMB_X41_Y41_N20
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

-- Location: FF_X41_Y41_N21
\compMod|pairsFound[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[26]~82_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(26));

-- Location: LCCOMB_X41_Y41_N22
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

-- Location: FF_X41_Y41_N23
\compMod|pairsFound[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[27]~84_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(27));

-- Location: LCCOMB_X42_Y41_N12
\compMod|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~7_combout\ = (!\compMod|pairsFound\(25) & (!\compMod|pairsFound\(26) & (!\compMod|pairsFound\(24) & !\compMod|pairsFound\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(25),
	datab => \compMod|pairsFound\(26),
	datac => \compMod|pairsFound\(24),
	datad => \compMod|pairsFound\(27),
	combout => \compMod|Equal3~7_combout\);

-- Location: LCCOMB_X42_Y41_N2
\compMod|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~6_combout\ = (!\compMod|pairsFound\(22) & (!\compMod|pairsFound\(21) & (!\compMod|pairsFound\(23) & !\compMod|pairsFound\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(22),
	datab => \compMod|pairsFound\(21),
	datac => \compMod|pairsFound\(23),
	datad => \compMod|pairsFound\(20),
	combout => \compMod|Equal3~6_combout\);

-- Location: LCCOMB_X41_Y41_N24
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

-- Location: FF_X41_Y41_N25
\compMod|pairsFound[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[28]~86_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(28));

-- Location: LCCOMB_X41_Y41_N26
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

-- Location: FF_X41_Y41_N27
\compMod|pairsFound[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[29]~88_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(29));

-- Location: LCCOMB_X41_Y41_N28
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

-- Location: FF_X41_Y41_N29
\compMod|pairsFound[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[30]~90_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(30));

-- Location: LCCOMB_X41_Y41_N30
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

-- Location: FF_X41_Y41_N31
\compMod|pairsFound[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \compMod|pairsFound[31]~92_combout\,
	ena => \compMod|always1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|pairsFound\(31));

-- Location: LCCOMB_X42_Y41_N22
\compMod|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~8_combout\ = (!\compMod|pairsFound\(31) & (!\compMod|pairsFound\(30) & (!\compMod|pairsFound\(29) & !\compMod|pairsFound\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(31),
	datab => \compMod|pairsFound\(30),
	datac => \compMod|pairsFound\(29),
	datad => \compMod|pairsFound\(28),
	combout => \compMod|Equal3~8_combout\);

-- Location: LCCOMB_X42_Y41_N16
\compMod|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~5_combout\ = (!\compMod|pairsFound\(16) & (!\compMod|pairsFound\(19) & (!\compMod|pairsFound\(18) & !\compMod|pairsFound\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(16),
	datab => \compMod|pairsFound\(19),
	datac => \compMod|pairsFound\(18),
	datad => \compMod|pairsFound\(17),
	combout => \compMod|Equal3~5_combout\);

-- Location: LCCOMB_X42_Y41_N0
\compMod|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~9_combout\ = (\compMod|Equal3~7_combout\ & (\compMod|Equal3~6_combout\ & (\compMod|Equal3~8_combout\ & \compMod|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal3~7_combout\,
	datab => \compMod|Equal3~6_combout\,
	datac => \compMod|Equal3~8_combout\,
	datad => \compMod|Equal3~5_combout\,
	combout => \compMod|Equal3~9_combout\);

-- Location: LCCOMB_X42_Y42_N10
\compMod|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~3_combout\ = (!\compMod|pairsFound\(12) & (!\compMod|pairsFound\(14) & (!\compMod|pairsFound\(13) & !\compMod|pairsFound\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(12),
	datab => \compMod|pairsFound\(14),
	datac => \compMod|pairsFound\(13),
	datad => \compMod|pairsFound\(15),
	combout => \compMod|Equal3~3_combout\);

-- Location: LCCOMB_X42_Y42_N16
\compMod|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~1_combout\ = (!\compMod|pairsFound\(5) & (!\compMod|pairsFound\(6) & (\compMod|pairsFound\(4) & !\compMod|pairsFound\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(5),
	datab => \compMod|pairsFound\(6),
	datac => \compMod|pairsFound\(4),
	datad => \compMod|pairsFound\(7),
	combout => \compMod|Equal3~1_combout\);

-- Location: LCCOMB_X41_Y42_N0
\compMod|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~2_combout\ = (!\compMod|pairsFound\(8) & (!\compMod|pairsFound\(10) & (!\compMod|pairsFound\(11) & !\compMod|pairsFound\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(8),
	datab => \compMod|pairsFound\(10),
	datac => \compMod|pairsFound\(11),
	datad => \compMod|pairsFound\(9),
	combout => \compMod|Equal3~2_combout\);

-- Location: LCCOMB_X42_Y42_N2
\compMod|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~0_combout\ = (\compMod|pairsFound\(1) & (!\compMod|pairsFound\(2) & (!\compMod|pairsFound\(0) & !\compMod|pairsFound\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|pairsFound\(1),
	datab => \compMod|pairsFound\(2),
	datac => \compMod|pairsFound\(0),
	datad => \compMod|pairsFound\(3),
	combout => \compMod|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y42_N24
\compMod|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|Equal3~4_combout\ = (\compMod|Equal3~3_combout\ & (\compMod|Equal3~1_combout\ & (\compMod|Equal3~2_combout\ & \compMod|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|Equal3~3_combout\,
	datab => \compMod|Equal3~1_combout\,
	datac => \compMod|Equal3~2_combout\,
	datad => \compMod|Equal3~0_combout\,
	combout => \compMod|Equal3~4_combout\);

-- Location: LCCOMB_X42_Y42_N14
\compMod|GO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|GO~0_combout\ = (\compMod|GO~q\) # ((\compMod|Equal3~9_combout\ & \compMod|Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compMod|Equal3~9_combout\,
	datac => \compMod|GO~q\,
	datad => \compMod|Equal3~4_combout\,
	combout => \compMod|GO~0_combout\);

-- Location: FF_X42_Y42_N15
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

-- Location: LCCOMB_X44_Y40_N20
\fsmMod|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector3~0_combout\ = (\syncMod|rise_a~combout\ & ((\fsmMod|presentState.gameover~q\) # ((\fsmMod|presentState.rungame~q\ & \compMod|GO~q\)))) # (!\syncMod|rise_a~combout\ & (\fsmMod|presentState.rungame~q\ & ((\compMod|GO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \fsmMod|presentState.rungame~q\,
	datac => \fsmMod|presentState.gameover~q\,
	datad => \compMod|GO~q\,
	combout => \fsmMod|Selector3~0_combout\);

-- Location: FF_X44_Y40_N21
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

-- Location: LCCOMB_X44_Y40_N26
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

-- Location: FF_X44_Y40_N27
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

-- Location: LCCOMB_X44_Y40_N18
\fsmMod|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector1~0_combout\ = (\syncMod|sync_a~q\ & ((\syncMod|delay_a~q\ & ((!\fsmMod|presentState.idle~q\))) # (!\syncMod|delay_a~q\ & (\fsmMod|presentState.menu~q\)))) # (!\syncMod|sync_a~q\ & (((!\fsmMod|presentState.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|sync_a~q\,
	datab => \syncMod|delay_a~q\,
	datac => \fsmMod|presentState.menu~q\,
	datad => \fsmMod|presentState.idle~q\,
	combout => \fsmMod|Selector1~0_combout\);

-- Location: FF_X44_Y40_N19
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

-- Location: LCCOMB_X50_Y40_N30
\fsmMod|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsmMod|Selector2~0_combout\ = (\fsmMod|presentState.menu~q\ & (((\fsmMod|presentState.rungame~q\ & !\compMod|GO~q\)) # (!\syncMod|rise_a~combout\))) # (!\fsmMod|presentState.menu~q\ & (((\fsmMod|presentState.rungame~q\ & !\compMod|GO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.menu~q\,
	datab => \syncMod|rise_a~combout\,
	datac => \fsmMod|presentState.rungame~q\,
	datad => \compMod|GO~q\,
	combout => \fsmMod|Selector2~0_combout\);

-- Location: FF_X50_Y40_N31
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

-- Location: LCCOMB_X50_Y40_N20
\arrowMod|mem6x6[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~17_combout\ = (\fsmMod|presentState.rungame~q\ & (!\arrowMod|mem6x6[5]~13_combout\ & (!\arrowMod|mem6x6[5]~16_combout\ & !\arrowMod|mem6x6[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsmMod|presentState.rungame~q\,
	datab => \arrowMod|mem6x6[5]~13_combout\,
	datac => \arrowMod|mem6x6[5]~16_combout\,
	datad => \arrowMod|mem6x6[5]~11_combout\,
	combout => \arrowMod|mem6x6[1]~17_combout\);

-- Location: LCCOMB_X45_Y40_N24
\arrowMod|mem6x6[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[1]~19_combout\ = (\arrowMod|mem6x6[1]~7_combout\ & ((\arrowMod|mem6x6[1]~17_combout\) # ((\ledMod|cardmem1\(1) & \arrowMod|mem6x6[1]~18_combout\)))) # (!\arrowMod|mem6x6[1]~7_combout\ & (\ledMod|cardmem1\(1) & 
-- ((\arrowMod|mem6x6[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[1]~7_combout\,
	datab => \ledMod|cardmem1\(1),
	datac => \arrowMod|mem6x6[1]~17_combout\,
	datad => \arrowMod|mem6x6[1]~18_combout\,
	combout => \arrowMod|mem6x6[1]~19_combout\);

-- Location: FF_X49_Y40_N1
\ledMod|cardmem1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[1]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(1));

-- Location: LCCOMB_X48_Y40_N20
\arrowMod|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~2_combout\ = (\ledMod|cardmem1\(2) & (\arrowMod|Add1~1\ & VCC)) # (!\ledMod|cardmem1\(2) & (!\arrowMod|Add1~1\))
-- \arrowMod|Add1~3\ = CARRY((!\ledMod|cardmem1\(2) & !\arrowMod|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(2),
	datad => VCC,
	cin => \arrowMod|Add1~1\,
	combout => \arrowMod|Add1~2_combout\,
	cout => \arrowMod|Add1~3\);

-- Location: LCCOMB_X49_Y40_N20
\arrowMod|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add2~4_combout\ = (\ledMod|cardmem1\(2) & ((GND) # (!\arrowMod|Add2~3\))) # (!\ledMod|cardmem1\(2) & (\arrowMod|Add2~3\ $ (GND)))
-- \arrowMod|Add2~5\ = CARRY((\ledMod|cardmem1\(2)) # (!\arrowMod|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem1\(2),
	datad => VCC,
	cin => \arrowMod|Add2~3\,
	combout => \arrowMod|Add2~4_combout\,
	cout => \arrowMod|Add2~5\);

-- Location: LCCOMB_X49_Y40_N28
\arrowMod|mem6x6[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~23_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & (\arrowMod|mem6x6[5]~4_combout\)) # (!\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[5]~4_combout\ & ((\arrowMod|Add2~4_combout\))) # (!\arrowMod|mem6x6[5]~4_combout\ & 
-- (\arrowMod|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~5_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add0~2_combout\,
	datad => \arrowMod|Add2~4_combout\,
	combout => \arrowMod|mem6x6[2]~23_combout\);

-- Location: LCCOMB_X46_Y40_N16
\arrowMod|mem6x6[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~24_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[2]~23_combout\ & ((\arrowMod|Add3~4_combout\))) # (!\arrowMod|mem6x6[2]~23_combout\ & (\arrowMod|Add1~2_combout\)))) # (!\arrowMod|mem6x6[5]~5_combout\ & 
-- (((\arrowMod|mem6x6[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add1~2_combout\,
	datab => \arrowMod|mem6x6[5]~5_combout\,
	datac => \arrowMod|mem6x6[2]~23_combout\,
	datad => \arrowMod|Add3~4_combout\,
	combout => \arrowMod|mem6x6[2]~24_combout\);

-- Location: LCCOMB_X46_Y40_N18
\arrowMod|mem6x6[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[2]~25_combout\ = (\ledMod|cardmem1\(2) & ((\arrowMod|mem6x6[1]~18_combout\) # ((\arrowMod|mem6x6[2]~24_combout\ & \arrowMod|mem6x6[1]~17_combout\)))) # (!\ledMod|cardmem1\(2) & (\arrowMod|mem6x6[2]~24_combout\ & 
-- (\arrowMod|mem6x6[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(2),
	datab => \arrowMod|mem6x6[2]~24_combout\,
	datac => \arrowMod|mem6x6[1]~17_combout\,
	datad => \arrowMod|mem6x6[1]~18_combout\,
	combout => \arrowMod|mem6x6[2]~25_combout\);

-- Location: FF_X49_Y40_N31
\ledMod|cardmem1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[2]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(2));

-- Location: LCCOMB_X48_Y40_N22
\arrowMod|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Add1~4_combout\ = (\ledMod|cardmem1\(3) & (\arrowMod|Add1~3\ $ (GND))) # (!\ledMod|cardmem1\(3) & (!\arrowMod|Add1~3\ & VCC))
-- \arrowMod|Add1~5\ = CARRY((\ledMod|cardmem1\(3) & !\arrowMod|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(3),
	datad => VCC,
	cin => \arrowMod|Add1~3\,
	combout => \arrowMod|Add1~4_combout\,
	cout => \arrowMod|Add1~5\);

-- Location: LCCOMB_X49_Y40_N14
\arrowMod|mem6x6[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~20_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[5]~4_combout\) # ((\arrowMod|Add1~4_combout\)))) # (!\arrowMod|mem6x6[5]~5_combout\ & (!\arrowMod|mem6x6[5]~4_combout\ & (\arrowMod|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~5_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add0~4_combout\,
	datad => \arrowMod|Add1~4_combout\,
	combout => \arrowMod|mem6x6[3]~20_combout\);

-- Location: LCCOMB_X45_Y40_N2
\arrowMod|mem6x6[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~21_combout\ = (\arrowMod|mem6x6[5]~4_combout\ & ((\arrowMod|mem6x6[3]~20_combout\ & ((\arrowMod|Add3~6_combout\))) # (!\arrowMod|mem6x6[3]~20_combout\ & (\arrowMod|Add2~6_combout\)))) # (!\arrowMod|mem6x6[5]~4_combout\ & 
-- (((\arrowMod|mem6x6[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add2~6_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add3~6_combout\,
	datad => \arrowMod|mem6x6[3]~20_combout\,
	combout => \arrowMod|mem6x6[3]~21_combout\);

-- Location: LCCOMB_X45_Y40_N8
\arrowMod|mem6x6[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[3]~22_combout\ = (\ledMod|cardmem1\(3) & ((\arrowMod|mem6x6[1]~18_combout\) # ((\arrowMod|mem6x6[3]~21_combout\ & \arrowMod|mem6x6[1]~17_combout\)))) # (!\ledMod|cardmem1\(3) & (\arrowMod|mem6x6[3]~21_combout\ & 
-- (\arrowMod|mem6x6[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(3),
	datab => \arrowMod|mem6x6[3]~21_combout\,
	datac => \arrowMod|mem6x6[1]~17_combout\,
	datad => \arrowMod|mem6x6[1]~18_combout\,
	combout => \arrowMod|mem6x6[3]~22_combout\);

-- Location: FF_X49_Y40_N9
\ledMod|cardmem1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[3]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(3));

-- Location: LCCOMB_X49_Y40_N2
\arrowMod|mem6x6[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~26_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & (\arrowMod|mem6x6[5]~4_combout\)) # (!\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[5]~4_combout\ & ((\arrowMod|Add2~8_combout\))) # (!\arrowMod|mem6x6[5]~4_combout\ & 
-- (\arrowMod|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[5]~5_combout\,
	datab => \arrowMod|mem6x6[5]~4_combout\,
	datac => \arrowMod|Add0~6_combout\,
	datad => \arrowMod|Add2~8_combout\,
	combout => \arrowMod|mem6x6[4]~26_combout\);

-- Location: LCCOMB_X46_Y40_N12
\arrowMod|mem6x6[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~27_combout\ = (\arrowMod|mem6x6[5]~5_combout\ & ((\arrowMod|mem6x6[4]~26_combout\ & ((\arrowMod|Add3~8_combout\))) # (!\arrowMod|mem6x6[4]~26_combout\ & (\arrowMod|Add1~6_combout\)))) # (!\arrowMod|mem6x6[5]~5_combout\ & 
-- (((\arrowMod|mem6x6[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add1~6_combout\,
	datab => \arrowMod|mem6x6[5]~5_combout\,
	datac => \arrowMod|mem6x6[4]~26_combout\,
	datad => \arrowMod|Add3~8_combout\,
	combout => \arrowMod|mem6x6[4]~27_combout\);

-- Location: LCCOMB_X46_Y40_N6
\arrowMod|mem6x6[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[4]~28_combout\ = (\arrowMod|mem6x6[4]~27_combout\ & ((\arrowMod|mem6x6[1]~17_combout\) # ((\ledMod|cardmem1\(4) & \arrowMod|mem6x6[1]~18_combout\)))) # (!\arrowMod|mem6x6[4]~27_combout\ & (\ledMod|cardmem1\(4) & 
-- (\arrowMod|mem6x6[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[4]~27_combout\,
	datab => \ledMod|cardmem1\(4),
	datac => \arrowMod|mem6x6[1]~18_combout\,
	datad => \arrowMod|mem6x6[1]~17_combout\,
	combout => \arrowMod|mem6x6[4]~28_combout\);

-- Location: FF_X49_Y40_N11
\ledMod|cardmem1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[4]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(4));

-- Location: LCCOMB_X49_Y40_N30
\arrowMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|Equal1~0_combout\ = (!\ledMod|cardmem1\(4) & (!\ledMod|cardmem1\(2) & !\ledMod|cardmem1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datac => \ledMod|cardmem1\(2),
	datad => \ledMod|cardmem1\(3),
	combout => \arrowMod|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y40_N0
\arrowMod|mem6x6[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~1_combout\ = (\arrowMod|Equal1~0_combout\ & (\ledMod|cardmem1\(1) & \ledMod|cardmem1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Equal1~0_combout\,
	datac => \ledMod|cardmem1\(1),
	datad => \ledMod|cardmem1\(5),
	combout => \arrowMod|mem6x6[0]~1_combout\);

-- Location: LCCOMB_X48_Y40_N30
\arrowMod|mem6x6[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~2_combout\ = (\arrowMod|Mux5~0_combout\ & (((!\arrowMod|keys2\(3)) # (!\arrowMod|mem6x6[0]~1_combout\)) # (!\ledMod|cardmem1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(0),
	datab => \arrowMod|Mux5~0_combout\,
	datac => \arrowMod|mem6x6[0]~1_combout\,
	datad => \arrowMod|keys2\(3),
	combout => \arrowMod|mem6x6[0]~2_combout\);

-- Location: LCCOMB_X48_Y40_N28
\arrowMod|mem6x6[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~0_combout\ = (\arrowMod|keys2\(3) & (\arrowMod|Add3~0_combout\)) # (!\arrowMod|keys2\(3) & (((\arrowMod|Add2~0_combout\ & !\arrowMod|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|Add3~0_combout\,
	datab => \arrowMod|keys2\(3),
	datac => \arrowMod|Add2~0_combout\,
	datad => \arrowMod|Equal1~1_combout\,
	combout => \arrowMod|mem6x6[0]~0_combout\);

-- Location: LCCOMB_X48_Y40_N4
\arrowMod|mem6x6[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \arrowMod|mem6x6[0]~3_combout\ = (\fsmMod|presentState.rungame~q\ & ((\arrowMod|mem6x6[0]~2_combout\ & ((\arrowMod|mem6x6[0]~0_combout\))) # (!\arrowMod|mem6x6[0]~2_combout\ & (\ledMod|cardmem1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arrowMod|mem6x6[0]~2_combout\,
	datab => \ledMod|cardmem1\(0),
	datac => \fsmMod|presentState.rungame~q\,
	datad => \arrowMod|mem6x6[0]~0_combout\,
	combout => \arrowMod|mem6x6[0]~3_combout\);

-- Location: FF_X49_Y40_N17
\ledMod|cardmem1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \arrowMod|mem6x6[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem1\(0));

-- Location: LCCOMB_X44_Y42_N8
\ledMod|cardmem2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|cardmem2[0]~feeder_combout\ = \ledMod|cardmem1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledMod|cardmem1\(0),
	combout => \ledMod|cardmem2[0]~feeder_combout\);

-- Location: FF_X44_Y42_N9
\ledMod|cardmem2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|cardmem2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(0));

-- Location: LCCOMB_X45_Y42_N30
\ledMod|cardmem2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|cardmem2[1]~feeder_combout\ = \ledMod|cardmem1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledMod|cardmem1\(1),
	combout => \ledMod|cardmem2[1]~feeder_combout\);

-- Location: FF_X45_Y42_N31
\ledMod|cardmem2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|cardmem2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(1));

-- Location: LCCOMB_X43_Y42_N30
\ledMod|LEDs[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[0]~1_combout\ = (!\ledMod|cardmem2\(0) & !\ledMod|cardmem2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledMod|cardmem2\(0),
	datad => \ledMod|cardmem2\(1),
	combout => \ledMod|LEDs[0]~1_combout\);

-- Location: FF_X44_Y42_N29
\ledMod|cardmem2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|cardmem1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(3));

-- Location: FF_X44_Y42_N25
\ledMod|cardmem2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|cardmem1\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(4));

-- Location: FF_X44_Y42_N7
\ledMod|cardmem2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|cardmem1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(2));

-- Location: FF_X44_Y42_N27
\ledMod|cardmem2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ledMod|cardmem1\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|cardmem2\(5));

-- Location: LCCOMB_X44_Y42_N20
\ledMod|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~0_combout\ = (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(4) & (!\ledMod|cardmem2\(2) & !\ledMod|cardmem2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(4),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem2\(5),
	combout => \ledMod|Decoder0~0_combout\);

-- Location: LCCOMB_X44_Y42_N6
\ledMod|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal0~1_combout\ = (\ledMod|cardmem2\(3) & (\ledMod|cardmem1\(3) & (\ledMod|cardmem1\(2) $ (!\ledMod|cardmem2\(2))))) # (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem1\(3) & (\ledMod|cardmem1\(2) $ (!\ledMod|cardmem2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem1\(2),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem1\(3),
	combout => \ledMod|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y42_N24
\ledMod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Mux0~0_combout\ = (\ledMod|cardmem2\(5) & ((\ledMod|cardmem2\(3)) # ((\ledMod|cardmem2\(2)) # (\ledMod|cardmem2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(2),
	datac => \ledMod|cardmem2\(4),
	datad => \ledMod|cardmem2\(5),
	combout => \ledMod|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y42_N26
\ledMod|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal0~2_combout\ = (\ledMod|cardmem1\(4) & (\ledMod|cardmem2\(4) & (\ledMod|cardmem1\(5) $ (!\ledMod|cardmem2\(5))))) # (!\ledMod|cardmem1\(4) & (!\ledMod|cardmem2\(4) & (\ledMod|cardmem1\(5) $ (!\ledMod|cardmem2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(4),
	datab => \ledMod|cardmem1\(5),
	datac => \ledMod|cardmem2\(5),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y42_N4
\ledMod|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal0~0_combout\ = (\ledMod|cardmem1\(0) & (\ledMod|cardmem2\(0) & (\ledMod|cardmem1\(1) $ (!\ledMod|cardmem2\(1))))) # (!\ledMod|cardmem1\(0) & (!\ledMod|cardmem2\(0) & (\ledMod|cardmem1\(1) $ (!\ledMod|cardmem2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem1\(0),
	datab => \ledMod|cardmem1\(1),
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|cardmem2\(0),
	combout => \ledMod|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y42_N30
\ledMod|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|always0~0_combout\ = ((\ledMod|Equal0~1_combout\ & (\ledMod|Equal0~2_combout\ & \ledMod|Equal0~0_combout\))) # (!\ledMod|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|Equal0~1_combout\,
	datab => \ledMod|Mux0~0_combout\,
	datac => \ledMod|Equal0~2_combout\,
	datad => \ledMod|Equal0~0_combout\,
	combout => \ledMod|always0~0_combout\);

-- Location: LCCOMB_X44_Y40_N12
\compMod|selectedCard[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[0]~0_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(0))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(0),
	datad => \compMod|cardmem1\(0),
	combout => \compMod|selectedCard[0]~0_combout\);

-- Location: FF_X44_Y40_N13
\compMod|selectedCard[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(0));

-- Location: LCCOMB_X44_Y40_N0
\compMod|selectedCard[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[1]~1_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(1))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(1),
	datad => \compMod|cardmem1\(1),
	combout => \compMod|selectedCard[1]~1_combout\);

-- Location: FF_X44_Y40_N1
\compMod|selectedCard[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(1));

-- Location: LCCOMB_X44_Y42_N4
\ledMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal1~0_combout\ = (\ledMod|cardmem2\(1) & (\compMod|selectedCard\(1) & (\ledMod|cardmem2\(0) $ (!\compMod|selectedCard\(0))))) # (!\ledMod|cardmem2\(1) & (!\compMod|selectedCard\(1) & (\ledMod|cardmem2\(0) $ (!\compMod|selectedCard\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(1),
	datab => \ledMod|cardmem2\(0),
	datac => \compMod|selectedCard\(0),
	datad => \compMod|selectedCard\(1),
	combout => \ledMod|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y40_N24
\compMod|selectedCard[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[5]~5_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(5))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(5),
	datad => \compMod|cardmem1\(5),
	combout => \compMod|selectedCard[5]~5_combout\);

-- Location: FF_X44_Y40_N25
\compMod|selectedCard[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(5));

-- Location: LCCOMB_X44_Y40_N6
\compMod|selectedCard[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[4]~4_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(4))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(4),
	datad => \compMod|cardmem1\(4),
	combout => \compMod|selectedCard[4]~4_combout\);

-- Location: FF_X44_Y40_N7
\compMod|selectedCard[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(4));

-- Location: LCCOMB_X44_Y42_N14
\ledMod|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal1~2_combout\ = (\ledMod|cardmem2\(4) & (\compMod|selectedCard\(4) & (\ledMod|cardmem2\(5) $ (!\compMod|selectedCard\(5))))) # (!\ledMod|cardmem2\(4) & (!\compMod|selectedCard\(4) & (\ledMod|cardmem2\(5) $ (!\compMod|selectedCard\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(4),
	datab => \ledMod|cardmem2\(5),
	datac => \compMod|selectedCard\(5),
	datad => \compMod|selectedCard\(4),
	combout => \ledMod|Equal1~2_combout\);

-- Location: LCCOMB_X44_Y40_N4
\compMod|selectedCard[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[2]~3_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(2))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(2),
	datad => \compMod|cardmem1\(2),
	combout => \compMod|selectedCard[2]~3_combout\);

-- Location: FF_X44_Y40_N5
\compMod|selectedCard[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(2));

-- Location: LCCOMB_X44_Y40_N2
\compMod|selectedCard[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \compMod|selectedCard[3]~2_combout\ = (\syncMod|rise_a~combout\ & (((\compMod|cardmem1\(3))) # (!\compMod|cardOneTwo~q\))) # (!\syncMod|rise_a~combout\ & (((\compMod|selectedCard\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncMod|rise_a~combout\,
	datab => \compMod|cardOneTwo~q\,
	datac => \compMod|selectedCard\(3),
	datad => \compMod|cardmem1\(3),
	combout => \compMod|selectedCard[3]~2_combout\);

-- Location: FF_X44_Y40_N3
\compMod|selectedCard[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \compMod|selectedCard[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compMod|selectedCard\(3));

-- Location: LCCOMB_X44_Y42_N28
\ledMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Equal1~1_combout\ = (\compMod|selectedCard\(2) & (\ledMod|cardmem2\(2) & (\ledMod|cardmem2\(3) $ (!\compMod|selectedCard\(3))))) # (!\compMod|selectedCard\(2) & (!\ledMod|cardmem2\(2) & (\ledMod|cardmem2\(3) $ (!\compMod|selectedCard\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compMod|selectedCard\(2),
	datab => \ledMod|cardmem2\(2),
	datac => \ledMod|cardmem2\(3),
	datad => \compMod|selectedCard\(3),
	combout => \ledMod|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y42_N12
\ledMod|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|always0~1_combout\ = (\ledMod|always0~0_combout\) # ((\ledMod|Equal1~0_combout\ & (\ledMod|Equal1~2_combout\ & \ledMod|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|always0~0_combout\,
	datab => \ledMod|Equal1~0_combout\,
	datac => \ledMod|Equal1~2_combout\,
	datad => \ledMod|Equal1~1_combout\,
	combout => \ledMod|always0~1_combout\);

-- Location: LCCOMB_X44_Y42_N22
\ledMod|LEDs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[0]~0_combout\ = (!\ledMod|cardmem2\(0) & (!\ledMod|cardmem2\(1) & \ledMod|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem2\(0),
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|always0~1_combout\,
	combout => \ledMod|LEDs[0]~0_combout\);

-- Location: LCCOMB_X39_Y42_N24
\ledMod|LEDs[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[0]~2_combout\ = (\ledMod|Decoder0~0_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(0))))) # (!\ledMod|Decoder0~0_combout\ & (((\ledMod|LEDs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~0_combout\,
	datac => \ledMod|LEDs\(0),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[0]~2_combout\);

-- Location: FF_X39_Y42_N25
\ledMod|LEDs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(0));

-- Location: LCCOMB_X45_Y42_N26
\ledMod|LEDs[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[1]~4_combout\ = (!\ledMod|cardmem2\(1) & \ledMod|cardmem2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|cardmem2\(0),
	combout => \ledMod|LEDs[1]~4_combout\);

-- Location: LCCOMB_X44_Y42_N2
\ledMod|LEDs[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[1]~3_combout\ = (\ledMod|cardmem2\(0) & (!\ledMod|cardmem2\(1) & \ledMod|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem2\(0),
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|always0~1_combout\,
	combout => \ledMod|LEDs[1]~3_combout\);

-- Location: LCCOMB_X45_Y42_N24
\ledMod|LEDs[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[1]~5_combout\ = (\ledMod|Decoder0~0_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(1))))) # (!\ledMod|Decoder0~0_combout\ & (((\ledMod|LEDs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~0_combout\,
	datac => \ledMod|LEDs\(1),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[1]~5_combout\);

-- Location: FF_X45_Y42_N25
\ledMod|LEDs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(1));

-- Location: LCCOMB_X45_Y42_N22
\ledMod|LEDs[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[2]~7_combout\ = (\ledMod|cardmem2\(1) & !\ledMod|cardmem2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|cardmem2\(0),
	combout => \ledMod|LEDs[2]~7_combout\);

-- Location: LCCOMB_X45_Y42_N12
\ledMod|LEDs[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[2]~6_combout\ = (!\ledMod|cardmem2\(0) & (\ledMod|cardmem2\(1) & \ledMod|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(0),
	datac => \ledMod|cardmem2\(1),
	datad => \ledMod|always0~1_combout\,
	combout => \ledMod|LEDs[2]~6_combout\);

-- Location: LCCOMB_X45_Y42_N14
\ledMod|LEDs[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[2]~8_combout\ = (\ledMod|Decoder0~0_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(2))))) # (!\ledMod|Decoder0~0_combout\ & (((\ledMod|LEDs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~0_combout\,
	datac => \ledMod|LEDs\(2),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[2]~8_combout\);

-- Location: FF_X45_Y42_N15
\ledMod|LEDs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(2));

-- Location: LCCOMB_X43_Y42_N6
\ledMod|LEDs[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[3]~10_combout\ = (\ledMod|cardmem2\(0) & \ledMod|cardmem2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledMod|cardmem2\(0),
	datad => \ledMod|cardmem2\(1),
	combout => \ledMod|LEDs[3]~10_combout\);

-- Location: LCCOMB_X43_Y42_N16
\ledMod|LEDs[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[3]~9_combout\ = (\ledMod|cardmem2\(0) & (\ledMod|always0~1_combout\ & \ledMod|cardmem2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ledMod|cardmem2\(0),
	datac => \ledMod|always0~1_combout\,
	datad => \ledMod|cardmem2\(1),
	combout => \ledMod|LEDs[3]~9_combout\);

-- Location: LCCOMB_X43_Y42_N8
\ledMod|LEDs[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[3]~11_combout\ = (\ledMod|Decoder0~0_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(3))))) # (!\ledMod|Decoder0~0_combout\ & (((\ledMod|LEDs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~0_combout\,
	datac => \ledMod|LEDs\(3),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[3]~11_combout\);

-- Location: FF_X43_Y42_N9
\ledMod|LEDs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(3));

-- Location: LCCOMB_X43_Y42_N28
\ledMod|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~1_combout\ = (\ledMod|cardmem2\(2) & (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & !\ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(2),
	datab => \ledMod|cardmem2\(3),
	datac => \ledMod|cardmem2\(5),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~1_combout\);

-- Location: LCCOMB_X39_Y42_N22
\ledMod|LEDs[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[4]~12_combout\ = (\ledMod|Decoder0~1_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(4))))) # (!\ledMod|Decoder0~1_combout\ & (((\ledMod|LEDs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~1_combout\,
	datac => \ledMod|LEDs\(4),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[4]~12_combout\);

-- Location: FF_X39_Y42_N23
\ledMod|LEDs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(4));

-- Location: LCCOMB_X39_Y42_N28
\ledMod|LEDs[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[5]~13_combout\ = (\ledMod|Decoder0~1_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(5))))) # (!\ledMod|Decoder0~1_combout\ & (((\ledMod|LEDs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~1_combout\,
	datac => \ledMod|LEDs\(5),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[5]~13_combout\);

-- Location: FF_X39_Y42_N29
\ledMod|LEDs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(5));

-- Location: LCCOMB_X45_Y42_N0
\ledMod|LEDs[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[6]~14_combout\ = (\ledMod|Decoder0~1_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(6))))) # (!\ledMod|Decoder0~1_combout\ & (((\ledMod|LEDs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~1_combout\,
	datac => \ledMod|LEDs\(6),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[6]~14_combout\);

-- Location: FF_X45_Y42_N1
\ledMod|LEDs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(6));

-- Location: LCCOMB_X43_Y42_N18
\ledMod|LEDs[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[7]~15_combout\ = (\ledMod|Decoder0~1_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(7))))) # (!\ledMod|Decoder0~1_combout\ & (((\ledMod|LEDs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~1_combout\,
	datac => \ledMod|LEDs\(7),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[7]~15_combout\);

-- Location: FF_X43_Y42_N19
\ledMod|LEDs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(7));

-- Location: LCCOMB_X43_Y42_N2
\ledMod|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~2_combout\ = (!\ledMod|cardmem2\(2) & (\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & !\ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(2),
	datab => \ledMod|cardmem2\(3),
	datac => \ledMod|cardmem2\(5),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~2_combout\);

-- Location: LCCOMB_X39_Y42_N14
\ledMod|LEDs[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[8]~16_combout\ = (\ledMod|Decoder0~2_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(8))))) # (!\ledMod|Decoder0~2_combout\ & (((\ledMod|LEDs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~2_combout\,
	datac => \ledMod|LEDs\(8),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[8]~16_combout\);

-- Location: FF_X39_Y42_N15
\ledMod|LEDs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(8));

-- Location: LCCOMB_X39_Y42_N16
\ledMod|LEDs[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[9]~17_combout\ = (\ledMod|Decoder0~2_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(9))))) # (!\ledMod|Decoder0~2_combout\ & (((\ledMod|LEDs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~2_combout\,
	datac => \ledMod|LEDs\(9),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[9]~17_combout\);

-- Location: FF_X39_Y42_N17
\ledMod|LEDs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(9));

-- Location: LCCOMB_X45_Y42_N2
\ledMod|LEDs[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[10]~18_combout\ = (\ledMod|Decoder0~2_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(10))))) # (!\ledMod|Decoder0~2_combout\ & (((\ledMod|LEDs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~2_combout\,
	datac => \ledMod|LEDs\(10),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[10]~18_combout\);

-- Location: FF_X45_Y42_N3
\ledMod|LEDs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[10]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(10));

-- Location: LCCOMB_X43_Y42_N24
\ledMod|LEDs[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[11]~19_combout\ = (\ledMod|Decoder0~2_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(11))))) # (!\ledMod|Decoder0~2_combout\ & (((\ledMod|LEDs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~2_combout\,
	datac => \ledMod|LEDs\(11),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[11]~19_combout\);

-- Location: FF_X43_Y42_N25
\ledMod|LEDs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(11));

-- Location: LCCOMB_X44_Y42_N0
\ledMod|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~3_combout\ = (\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & (\ledMod|cardmem2\(2) & !\ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(5),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~3_combout\);

-- Location: LCCOMB_X39_Y42_N26
\ledMod|LEDs[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[12]~20_combout\ = (\ledMod|Decoder0~3_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(12))))) # (!\ledMod|Decoder0~3_combout\ & (((\ledMod|LEDs\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~3_combout\,
	datac => \ledMod|LEDs\(12),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[12]~20_combout\);

-- Location: FF_X39_Y42_N27
\ledMod|LEDs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(12));

-- Location: LCCOMB_X39_Y42_N8
\ledMod|LEDs[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[13]~21_combout\ = (\ledMod|Decoder0~3_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(13))))) # (!\ledMod|Decoder0~3_combout\ & (((\ledMod|LEDs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~3_combout\,
	datac => \ledMod|LEDs\(13),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[13]~21_combout\);

-- Location: FF_X39_Y42_N9
\ledMod|LEDs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(13));

-- Location: LCCOMB_X45_Y42_N20
\ledMod|LEDs[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[14]~22_combout\ = (\ledMod|Decoder0~3_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(14))))) # (!\ledMod|Decoder0~3_combout\ & (((\ledMod|LEDs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~3_combout\,
	datac => \ledMod|LEDs\(14),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[14]~22_combout\);

-- Location: FF_X45_Y42_N21
\ledMod|LEDs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(14));

-- Location: LCCOMB_X43_Y42_N22
\ledMod|LEDs[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[15]~23_combout\ = (\ledMod|Decoder0~3_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(15))))) # (!\ledMod|Decoder0~3_combout\ & (((\ledMod|LEDs\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~3_combout\,
	datac => \ledMod|LEDs\(15),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[15]~23_combout\);

-- Location: FF_X43_Y42_N23
\ledMod|LEDs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[15]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(15));

-- Location: LCCOMB_X43_Y42_N20
\ledMod|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~4_combout\ = (!\ledMod|cardmem2\(2) & (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & \ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(2),
	datab => \ledMod|cardmem2\(3),
	datac => \ledMod|cardmem2\(5),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~4_combout\);

-- Location: LCCOMB_X39_Y42_N30
\ledMod|LEDs[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[16]~24_combout\ = (\ledMod|Decoder0~4_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(16))))) # (!\ledMod|Decoder0~4_combout\ & (((\ledMod|LEDs\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~4_combout\,
	datac => \ledMod|LEDs\(16),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[16]~24_combout\);

-- Location: FF_X39_Y42_N31
\ledMod|LEDs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[16]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(16));

-- Location: LCCOMB_X39_Y42_N12
\ledMod|LEDs[17]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[17]~25_combout\ = (\ledMod|Decoder0~4_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(17))))) # (!\ledMod|Decoder0~4_combout\ & (((\ledMod|LEDs\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~4_combout\,
	datac => \ledMod|LEDs\(17),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[17]~25_combout\);

-- Location: FF_X39_Y42_N13
\ledMod|LEDs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(17));

-- Location: LCCOMB_X45_Y42_N6
\ledMod|LEDs[18]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[18]~26_combout\ = (\ledMod|Decoder0~4_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(18))))) # (!\ledMod|Decoder0~4_combout\ & (((\ledMod|LEDs\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~4_combout\,
	datac => \ledMod|LEDs\(18),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[18]~26_combout\);

-- Location: FF_X45_Y42_N7
\ledMod|LEDs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[18]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(18));

-- Location: LCCOMB_X43_Y42_N12
\ledMod|LEDs[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[19]~27_combout\ = (\ledMod|Decoder0~4_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(19))))) # (!\ledMod|Decoder0~4_combout\ & (((\ledMod|LEDs\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~4_combout\,
	datac => \ledMod|LEDs\(19),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[19]~27_combout\);

-- Location: FF_X43_Y42_N13
\ledMod|LEDs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(19));

-- Location: LCCOMB_X43_Y42_N10
\ledMod|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~5_combout\ = (\ledMod|cardmem2\(2) & (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & \ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(2),
	datab => \ledMod|cardmem2\(3),
	datac => \ledMod|cardmem2\(5),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~5_combout\);

-- Location: LCCOMB_X39_Y42_N10
\ledMod|LEDs[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[20]~28_combout\ = (\ledMod|Decoder0~5_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(20))))) # (!\ledMod|Decoder0~5_combout\ & (((\ledMod|LEDs\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~5_combout\,
	datac => \ledMod|LEDs\(20),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[20]~28_combout\);

-- Location: FF_X39_Y42_N11
\ledMod|LEDs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[20]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(20));

-- Location: LCCOMB_X39_Y42_N0
\ledMod|LEDs[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[21]~29_combout\ = (\ledMod|Decoder0~5_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(21))))) # (!\ledMod|Decoder0~5_combout\ & (((\ledMod|LEDs\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~5_combout\,
	datac => \ledMod|LEDs\(21),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[21]~29_combout\);

-- Location: FF_X39_Y42_N1
\ledMod|LEDs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(21));

-- Location: LCCOMB_X45_Y42_N8
\ledMod|LEDs[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[22]~30_combout\ = (\ledMod|Decoder0~5_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(22))))) # (!\ledMod|Decoder0~5_combout\ & (((\ledMod|LEDs\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~5_combout\,
	datac => \ledMod|LEDs\(22),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[22]~30_combout\);

-- Location: FF_X45_Y42_N9
\ledMod|LEDs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[22]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(22));

-- Location: LCCOMB_X43_Y42_N14
\ledMod|LEDs[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[23]~31_combout\ = (\ledMod|Decoder0~5_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(23))))) # (!\ledMod|Decoder0~5_combout\ & (((\ledMod|LEDs\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~5_combout\,
	datac => \ledMod|LEDs\(23),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[23]~31_combout\);

-- Location: FF_X43_Y42_N15
\ledMod|LEDs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[23]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(23));

-- Location: LCCOMB_X44_Y42_N10
\ledMod|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~6_combout\ = (\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & (!\ledMod|cardmem2\(2) & \ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(5),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~6_combout\);

-- Location: LCCOMB_X43_Y42_N4
\ledMod|LEDs[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[24]~32_combout\ = (\ledMod|Decoder0~6_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(24))))) # (!\ledMod|Decoder0~6_combout\ & (((\ledMod|LEDs\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~6_combout\,
	datac => \ledMod|LEDs\(24),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[24]~32_combout\);

-- Location: FF_X43_Y42_N5
\ledMod|LEDs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[24]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(24));

-- Location: LCCOMB_X45_Y42_N10
\ledMod|LEDs[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[25]~33_combout\ = (\ledMod|Decoder0~6_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(25))))) # (!\ledMod|Decoder0~6_combout\ & (((\ledMod|LEDs\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~6_combout\,
	datac => \ledMod|LEDs\(25),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[25]~33_combout\);

-- Location: FF_X45_Y42_N11
\ledMod|LEDs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(25));

-- Location: LCCOMB_X45_Y42_N28
\ledMod|LEDs[26]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[26]~34_combout\ = (\ledMod|Decoder0~6_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(26))))) # (!\ledMod|Decoder0~6_combout\ & (((\ledMod|LEDs\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~6_combout\,
	datac => \ledMod|LEDs\(26),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[26]~34_combout\);

-- Location: FF_X45_Y42_N29
\ledMod|LEDs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(26));

-- Location: LCCOMB_X43_Y42_N26
\ledMod|LEDs[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[27]~35_combout\ = (\ledMod|Decoder0~6_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(27))))) # (!\ledMod|Decoder0~6_combout\ & (((\ledMod|LEDs\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~6_combout\,
	datac => \ledMod|LEDs\(27),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[27]~35_combout\);

-- Location: FF_X43_Y42_N27
\ledMod|LEDs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[27]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(27));

-- Location: LCCOMB_X44_Y42_N16
\ledMod|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~7_combout\ = (\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(5) & (\ledMod|cardmem2\(2) & \ledMod|cardmem2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(5),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem2\(4),
	combout => \ledMod|Decoder0~7_combout\);

-- Location: LCCOMB_X39_Y42_N18
\ledMod|LEDs[28]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[28]~36_combout\ = (\ledMod|Decoder0~7_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(28))))) # (!\ledMod|Decoder0~7_combout\ & (((\ledMod|LEDs\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~7_combout\,
	datac => \ledMod|LEDs\(28),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[28]~36_combout\);

-- Location: FF_X39_Y42_N19
\ledMod|LEDs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[28]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(28));

-- Location: LCCOMB_X39_Y42_N4
\ledMod|LEDs[29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[29]~37_combout\ = (\ledMod|Decoder0~7_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(29))))) # (!\ledMod|Decoder0~7_combout\ & (((\ledMod|LEDs\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~7_combout\,
	datac => \ledMod|LEDs\(29),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[29]~37_combout\);

-- Location: FF_X39_Y42_N5
\ledMod|LEDs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[29]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(29));

-- Location: LCCOMB_X45_Y42_N18
\ledMod|LEDs[30]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[30]~38_combout\ = (\ledMod|Decoder0~7_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(30))))) # (!\ledMod|Decoder0~7_combout\ & (((\ledMod|LEDs\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~7_combout\,
	datac => \ledMod|LEDs\(30),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[30]~38_combout\);

-- Location: FF_X45_Y42_N19
\ledMod|LEDs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(30));

-- Location: LCCOMB_X43_Y42_N0
\ledMod|LEDs[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[31]~39_combout\ = (\ledMod|Decoder0~7_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(31))))) # (!\ledMod|Decoder0~7_combout\ & (((\ledMod|LEDs\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~7_combout\,
	datac => \ledMod|LEDs\(31),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[31]~39_combout\);

-- Location: FF_X43_Y42_N1
\ledMod|LEDs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[31]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(31));

-- Location: LCCOMB_X44_Y42_N18
\ledMod|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|Decoder0~8_combout\ = (!\ledMod|cardmem2\(3) & (!\ledMod|cardmem2\(4) & (!\ledMod|cardmem2\(2) & \ledMod|cardmem2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|cardmem2\(3),
	datab => \ledMod|cardmem2\(4),
	datac => \ledMod|cardmem2\(2),
	datad => \ledMod|cardmem2\(5),
	combout => \ledMod|Decoder0~8_combout\);

-- Location: LCCOMB_X39_Y42_N2
\ledMod|LEDs[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[32]~40_combout\ = (\ledMod|Decoder0~8_combout\ & ((\ledMod|LEDs[0]~0_combout\) # ((!\ledMod|LEDs[0]~1_combout\ & \ledMod|LEDs\(32))))) # (!\ledMod|Decoder0~8_combout\ & (((\ledMod|LEDs\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[0]~1_combout\,
	datab => \ledMod|Decoder0~8_combout\,
	datac => \ledMod|LEDs\(32),
	datad => \ledMod|LEDs[0]~0_combout\,
	combout => \ledMod|LEDs[32]~40_combout\);

-- Location: FF_X39_Y42_N3
\ledMod|LEDs[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[32]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(32));

-- Location: LCCOMB_X39_Y42_N20
\ledMod|LEDs[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[33]~41_combout\ = (\ledMod|Decoder0~8_combout\ & ((\ledMod|LEDs[1]~3_combout\) # ((!\ledMod|LEDs[1]~4_combout\ & \ledMod|LEDs\(33))))) # (!\ledMod|Decoder0~8_combout\ & (((\ledMod|LEDs\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[1]~4_combout\,
	datab => \ledMod|Decoder0~8_combout\,
	datac => \ledMod|LEDs\(33),
	datad => \ledMod|LEDs[1]~3_combout\,
	combout => \ledMod|LEDs[33]~41_combout\);

-- Location: FF_X39_Y42_N21
\ledMod|LEDs[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(33));

-- Location: LCCOMB_X45_Y42_N16
\ledMod|LEDs[34]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[34]~42_combout\ = (\ledMod|Decoder0~8_combout\ & ((\ledMod|LEDs[2]~6_combout\) # ((!\ledMod|LEDs[2]~7_combout\ & \ledMod|LEDs\(34))))) # (!\ledMod|Decoder0~8_combout\ & (((\ledMod|LEDs\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[2]~7_combout\,
	datab => \ledMod|Decoder0~8_combout\,
	datac => \ledMod|LEDs\(34),
	datad => \ledMod|LEDs[2]~6_combout\,
	combout => \ledMod|LEDs[34]~42_combout\);

-- Location: FF_X45_Y42_N17
\ledMod|LEDs[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[34]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(34));

-- Location: LCCOMB_X42_Y42_N0
\ledMod|LEDs[35]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledMod|LEDs[35]~43_combout\ = (\ledMod|Decoder0~8_combout\ & ((\ledMod|LEDs[3]~9_combout\) # ((!\ledMod|LEDs[3]~10_combout\ & \ledMod|LEDs\(35))))) # (!\ledMod|Decoder0~8_combout\ & (((\ledMod|LEDs\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledMod|LEDs[3]~10_combout\,
	datab => \ledMod|Decoder0~8_combout\,
	datac => \ledMod|LEDs\(35),
	datad => \ledMod|LEDs[3]~9_combout\,
	combout => \ledMod|LEDs[35]~43_combout\);

-- Location: FF_X42_Y42_N1
\ledMod|LEDs[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ledMod|LEDs[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledMod|LEDs\(35));

-- Location: LCCOMB_X56_Y36_N0
\cd|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~0_combout\ = \cd|count\(0) $ (VCC)
-- \cd|Add1~1\ = CARRY(\cd|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(0),
	datad => VCC,
	combout => \cd|Add1~0_combout\,
	cout => \cd|Add1~1\);

-- Location: LCCOMB_X57_Y36_N22
\cd|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|count~0_combout\ = (\cd|Add1~0_combout\ & !\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add1~0_combout\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|count~0_combout\);

-- Location: FF_X57_Y36_N23
\cd|count[0]\ : dffeas
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
	q => \cd|count\(0));

-- Location: LCCOMB_X56_Y36_N2
\cd|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~2_combout\ = (\cd|count\(1) & (!\cd|Add1~1\)) # (!\cd|count\(1) & ((\cd|Add1~1\) # (GND)))
-- \cd|Add1~3\ = CARRY((!\cd|Add1~1\) # (!\cd|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(1),
	datad => VCC,
	cin => \cd|Add1~1\,
	combout => \cd|Add1~2_combout\,
	cout => \cd|Add1~3\);

-- Location: FF_X56_Y36_N3
\cd|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(1));

-- Location: LCCOMB_X56_Y36_N4
\cd|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~4_combout\ = (\cd|count\(2) & (\cd|Add1~3\ $ (GND))) # (!\cd|count\(2) & (!\cd|Add1~3\ & VCC))
-- \cd|Add1~5\ = CARRY((\cd|count\(2) & !\cd|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(2),
	datad => VCC,
	cin => \cd|Add1~3\,
	combout => \cd|Add1~4_combout\,
	cout => \cd|Add1~5\);

-- Location: FF_X56_Y36_N5
\cd|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(2));

-- Location: LCCOMB_X56_Y36_N6
\cd|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~6_combout\ = (\cd|count\(3) & (!\cd|Add1~5\)) # (!\cd|count\(3) & ((\cd|Add1~5\) # (GND)))
-- \cd|Add1~7\ = CARRY((!\cd|Add1~5\) # (!\cd|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(3),
	datad => VCC,
	cin => \cd|Add1~5\,
	combout => \cd|Add1~6_combout\,
	cout => \cd|Add1~7\);

-- Location: FF_X56_Y36_N7
\cd|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(3));

-- Location: LCCOMB_X56_Y36_N8
\cd|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~8_combout\ = (\cd|count\(4) & (\cd|Add1~7\ $ (GND))) # (!\cd|count\(4) & (!\cd|Add1~7\ & VCC))
-- \cd|Add1~9\ = CARRY((\cd|count\(4) & !\cd|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(4),
	datad => VCC,
	cin => \cd|Add1~7\,
	combout => \cd|Add1~8_combout\,
	cout => \cd|Add1~9\);

-- Location: FF_X56_Y36_N9
\cd|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(4));

-- Location: LCCOMB_X56_Y36_N10
\cd|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~10_combout\ = (\cd|count\(5) & (!\cd|Add1~9\)) # (!\cd|count\(5) & ((\cd|Add1~9\) # (GND)))
-- \cd|Add1~11\ = CARRY((!\cd|Add1~9\) # (!\cd|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(5),
	datad => VCC,
	cin => \cd|Add1~9\,
	combout => \cd|Add1~10_combout\,
	cout => \cd|Add1~11\);

-- Location: FF_X56_Y36_N11
\cd|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(5));

-- Location: LCCOMB_X57_Y36_N14
\cd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (!\cd|count\(5) & (!\cd|count\(2) & (!\cd|count\(3) & !\cd|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(5),
	datab => \cd|count\(2),
	datac => \cd|count\(3),
	datad => \cd|count\(4),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y36_N12
\cd|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~12_combout\ = (\cd|count\(6) & (\cd|Add1~11\ $ (GND))) # (!\cd|count\(6) & (!\cd|Add1~11\ & VCC))
-- \cd|Add1~13\ = CARRY((\cd|count\(6) & !\cd|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(6),
	datad => VCC,
	cin => \cd|Add1~11\,
	combout => \cd|Add1~12_combout\,
	cout => \cd|Add1~13\);

-- Location: FF_X56_Y36_N13
\cd|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(6));

-- Location: LCCOMB_X56_Y36_N14
\cd|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~14_combout\ = (\cd|count\(7) & (!\cd|Add1~13\)) # (!\cd|count\(7) & ((\cd|Add1~13\) # (GND)))
-- \cd|Add1~15\ = CARRY((!\cd|Add1~13\) # (!\cd|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(7),
	datad => VCC,
	cin => \cd|Add1~13\,
	combout => \cd|Add1~14_combout\,
	cout => \cd|Add1~15\);

-- Location: FF_X56_Y36_N15
\cd|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(7));

-- Location: LCCOMB_X56_Y36_N16
\cd|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~16_combout\ = (\cd|count\(8) & (\cd|Add1~15\ $ (GND))) # (!\cd|count\(8) & (!\cd|Add1~15\ & VCC))
-- \cd|Add1~17\ = CARRY((\cd|count\(8) & !\cd|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(8),
	datad => VCC,
	cin => \cd|Add1~15\,
	combout => \cd|Add1~16_combout\,
	cout => \cd|Add1~17\);

-- Location: FF_X56_Y36_N17
\cd|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(8));

-- Location: LCCOMB_X56_Y36_N18
\cd|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~18_combout\ = (\cd|count\(9) & (!\cd|Add1~17\)) # (!\cd|count\(9) & ((\cd|Add1~17\) # (GND)))
-- \cd|Add1~19\ = CARRY((!\cd|Add1~17\) # (!\cd|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(9),
	datad => VCC,
	cin => \cd|Add1~17\,
	combout => \cd|Add1~18_combout\,
	cout => \cd|Add1~19\);

-- Location: FF_X56_Y36_N19
\cd|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(9));

-- Location: LCCOMB_X57_Y36_N16
\cd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (!\cd|count\(7) & (!\cd|count\(9) & (!\cd|count\(8) & !\cd|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(7),
	datab => \cd|count\(9),
	datac => \cd|count\(8),
	datad => \cd|count\(6),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y36_N10
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

-- Location: LCCOMB_X56_Y36_N20
\cd|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~20_combout\ = (\cd|count\(10) & (\cd|Add1~19\ $ (GND))) # (!\cd|count\(10) & (!\cd|Add1~19\ & VCC))
-- \cd|Add1~21\ = CARRY((\cd|count\(10) & !\cd|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(10),
	datad => VCC,
	cin => \cd|Add1~19\,
	combout => \cd|Add1~20_combout\,
	cout => \cd|Add1~21\);

-- Location: FF_X56_Y36_N21
\cd|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(10));

-- Location: LCCOMB_X56_Y36_N22
\cd|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~22_combout\ = (\cd|count\(11) & (!\cd|Add1~21\)) # (!\cd|count\(11) & ((\cd|Add1~21\) # (GND)))
-- \cd|Add1~23\ = CARRY((!\cd|Add1~21\) # (!\cd|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(11),
	datad => VCC,
	cin => \cd|Add1~21\,
	combout => \cd|Add1~22_combout\,
	cout => \cd|Add1~23\);

-- Location: FF_X56_Y36_N23
\cd|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(11));

-- Location: LCCOMB_X56_Y36_N24
\cd|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~24_combout\ = (\cd|count\(12) & (\cd|Add1~23\ $ (GND))) # (!\cd|count\(12) & (!\cd|Add1~23\ & VCC))
-- \cd|Add1~25\ = CARRY((\cd|count\(12) & !\cd|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(12),
	datad => VCC,
	cin => \cd|Add1~23\,
	combout => \cd|Add1~24_combout\,
	cout => \cd|Add1~25\);

-- Location: FF_X56_Y36_N25
\cd|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(12));

-- Location: LCCOMB_X56_Y36_N26
\cd|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~26_combout\ = (\cd|count\(13) & (!\cd|Add1~25\)) # (!\cd|count\(13) & ((\cd|Add1~25\) # (GND)))
-- \cd|Add1~27\ = CARRY((!\cd|Add1~25\) # (!\cd|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(13),
	datad => VCC,
	cin => \cd|Add1~25\,
	combout => \cd|Add1~26_combout\,
	cout => \cd|Add1~27\);

-- Location: FF_X56_Y36_N27
\cd|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(13));

-- Location: LCCOMB_X56_Y36_N28
\cd|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~28_combout\ = (\cd|count\(14) & (\cd|Add1~27\ $ (GND))) # (!\cd|count\(14) & (!\cd|Add1~27\ & VCC))
-- \cd|Add1~29\ = CARRY((\cd|count\(14) & !\cd|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(14),
	datad => VCC,
	cin => \cd|Add1~27\,
	combout => \cd|Add1~28_combout\,
	cout => \cd|Add1~29\);

-- Location: FF_X56_Y36_N29
\cd|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(14));

-- Location: LCCOMB_X56_Y36_N30
\cd|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~30_combout\ = (\cd|count\(15) & (!\cd|Add1~29\)) # (!\cd|count\(15) & ((\cd|Add1~29\) # (GND)))
-- \cd|Add1~31\ = CARRY((!\cd|Add1~29\) # (!\cd|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(15),
	datad => VCC,
	cin => \cd|Add1~29\,
	combout => \cd|Add1~30_combout\,
	cout => \cd|Add1~31\);

-- Location: FF_X56_Y36_N31
\cd|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(15));

-- Location: LCCOMB_X56_Y35_N0
\cd|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~32_combout\ = (\cd|count\(16) & (\cd|Add1~31\ $ (GND))) # (!\cd|count\(16) & (!\cd|Add1~31\ & VCC))
-- \cd|Add1~33\ = CARRY((\cd|count\(16) & !\cd|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(16),
	datad => VCC,
	cin => \cd|Add1~31\,
	combout => \cd|Add1~32_combout\,
	cout => \cd|Add1~33\);

-- Location: FF_X56_Y35_N1
\cd|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(16));

-- Location: LCCOMB_X56_Y35_N2
\cd|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~34_combout\ = (\cd|count\(17) & (!\cd|Add1~33\)) # (!\cd|count\(17) & ((\cd|Add1~33\) # (GND)))
-- \cd|Add1~35\ = CARRY((!\cd|Add1~33\) # (!\cd|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(17),
	datad => VCC,
	cin => \cd|Add1~33\,
	combout => \cd|Add1~34_combout\,
	cout => \cd|Add1~35\);

-- Location: FF_X56_Y35_N3
\cd|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(17));

-- Location: LCCOMB_X57_Y36_N12
\cd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (!\cd|count\(16) & (!\cd|count\(14) & (!\cd|count\(15) & !\cd|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(16),
	datab => \cd|count\(14),
	datac => \cd|count\(15),
	datad => \cd|count\(17),
	combout => \cd|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y35_N4
\cd|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~36_combout\ = (\cd|count\(18) & (\cd|Add1~35\ $ (GND))) # (!\cd|count\(18) & (!\cd|Add1~35\ & VCC))
-- \cd|Add1~37\ = CARRY((\cd|count\(18) & !\cd|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(18),
	datad => VCC,
	cin => \cd|Add1~35\,
	combout => \cd|Add1~36_combout\,
	cout => \cd|Add1~37\);

-- Location: FF_X56_Y35_N5
\cd|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(18));

-- Location: LCCOMB_X56_Y35_N6
\cd|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~38_combout\ = (\cd|count\(19) & (!\cd|Add1~37\)) # (!\cd|count\(19) & ((\cd|Add1~37\) # (GND)))
-- \cd|Add1~39\ = CARRY((!\cd|Add1~37\) # (!\cd|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(19),
	datad => VCC,
	cin => \cd|Add1~37\,
	combout => \cd|Add1~38_combout\,
	cout => \cd|Add1~39\);

-- Location: FF_X56_Y35_N7
\cd|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(19));

-- Location: LCCOMB_X56_Y35_N8
\cd|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~40_combout\ = (\cd|count\(20) & (\cd|Add1~39\ $ (GND))) # (!\cd|count\(20) & (!\cd|Add1~39\ & VCC))
-- \cd|Add1~41\ = CARRY((\cd|count\(20) & !\cd|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(20),
	datad => VCC,
	cin => \cd|Add1~39\,
	combout => \cd|Add1~40_combout\,
	cout => \cd|Add1~41\);

-- Location: FF_X56_Y35_N9
\cd|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(20));

-- Location: LCCOMB_X56_Y35_N10
\cd|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~42_combout\ = (\cd|count\(21) & (!\cd|Add1~41\)) # (!\cd|count\(21) & ((\cd|Add1~41\) # (GND)))
-- \cd|Add1~43\ = CARRY((!\cd|Add1~41\) # (!\cd|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(21),
	datad => VCC,
	cin => \cd|Add1~41\,
	combout => \cd|Add1~42_combout\,
	cout => \cd|Add1~43\);

-- Location: FF_X56_Y35_N11
\cd|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(21));

-- Location: LCCOMB_X56_Y35_N12
\cd|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~44_combout\ = (\cd|count\(22) & (\cd|Add1~43\ $ (GND))) # (!\cd|count\(22) & (!\cd|Add1~43\ & VCC))
-- \cd|Add1~45\ = CARRY((\cd|count\(22) & !\cd|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(22),
	datad => VCC,
	cin => \cd|Add1~43\,
	combout => \cd|Add1~44_combout\,
	cout => \cd|Add1~45\);

-- Location: FF_X56_Y35_N13
\cd|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(22));

-- Location: LCCOMB_X56_Y35_N14
\cd|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~46_combout\ = (\cd|count\(23) & (!\cd|Add1~45\)) # (!\cd|count\(23) & ((\cd|Add1~45\) # (GND)))
-- \cd|Add1~47\ = CARRY((!\cd|Add1~45\) # (!\cd|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(23),
	datad => VCC,
	cin => \cd|Add1~45\,
	combout => \cd|Add1~46_combout\,
	cout => \cd|Add1~47\);

-- Location: FF_X56_Y35_N15
\cd|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(23));

-- Location: LCCOMB_X56_Y35_N16
\cd|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~48_combout\ = (\cd|count\(24) & (\cd|Add1~47\ $ (GND))) # (!\cd|count\(24) & (!\cd|Add1~47\ & VCC))
-- \cd|Add1~49\ = CARRY((\cd|count\(24) & !\cd|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(24),
	datad => VCC,
	cin => \cd|Add1~47\,
	combout => \cd|Add1~48_combout\,
	cout => \cd|Add1~49\);

-- Location: FF_X56_Y35_N17
\cd|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(24));

-- Location: LCCOMB_X56_Y35_N18
\cd|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~50_combout\ = (\cd|count\(25) & (!\cd|Add1~49\)) # (!\cd|count\(25) & ((\cd|Add1~49\) # (GND)))
-- \cd|Add1~51\ = CARRY((!\cd|Add1~49\) # (!\cd|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(25),
	datad => VCC,
	cin => \cd|Add1~49\,
	combout => \cd|Add1~50_combout\,
	cout => \cd|Add1~51\);

-- Location: FF_X56_Y35_N19
\cd|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(25));

-- Location: LCCOMB_X57_Y35_N16
\cd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (!\cd|count\(23) & (!\cd|count\(25) & (!\cd|count\(24) & !\cd|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(23),
	datab => \cd|count\(25),
	datac => \cd|count\(24),
	datad => \cd|count\(22),
	combout => \cd|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y36_N26
\cd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (!\cd|count\(13) & (!\cd|count\(11) & (!\cd|count\(12) & !\cd|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(13),
	datab => \cd|count\(11),
	datac => \cd|count\(12),
	datad => \cd|count\(10),
	combout => \cd|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y35_N10
\cd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|count\(21) & (!\cd|count\(19) & (!\cd|count\(18) & !\cd|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(21),
	datab => \cd|count\(19),
	datac => \cd|count\(18),
	datad => \cd|count\(20),
	combout => \cd|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y36_N18
\cd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~2_combout\ & (\cd|Equal0~0_combout\ & (\cd|Equal0~3_combout\ & \cd|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~2_combout\,
	datab => \cd|Equal0~0_combout\,
	datac => \cd|Equal0~3_combout\,
	datad => \cd|Equal0~1_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y35_N20
\cd|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~52_combout\ = (\cd|count\(26) & (\cd|Add1~51\ $ (GND))) # (!\cd|count\(26) & (!\cd|Add1~51\ & VCC))
-- \cd|Add1~53\ = CARRY((\cd|count\(26) & !\cd|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(26),
	datad => VCC,
	cin => \cd|Add1~51\,
	combout => \cd|Add1~52_combout\,
	cout => \cd|Add1~53\);

-- Location: FF_X56_Y35_N21
\cd|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(26));

-- Location: LCCOMB_X56_Y35_N22
\cd|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~54_combout\ = (\cd|count\(27) & (!\cd|Add1~53\)) # (!\cd|count\(27) & ((\cd|Add1~53\) # (GND)))
-- \cd|Add1~55\ = CARRY((!\cd|Add1~53\) # (!\cd|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(27),
	datad => VCC,
	cin => \cd|Add1~53\,
	combout => \cd|Add1~54_combout\,
	cout => \cd|Add1~55\);

-- Location: FF_X56_Y35_N23
\cd|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(27));

-- Location: LCCOMB_X57_Y36_N30
\cd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~8_combout\ = (!\cd|count\(1) & (!\cd|count\(0) & (!\cd|count\(27) & !\cd|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(1),
	datab => \cd|count\(0),
	datac => \cd|count\(27),
	datad => \cd|count\(26),
	combout => \cd|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y35_N24
\cd|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~56_combout\ = (\cd|count\(28) & (\cd|Add1~55\ $ (GND))) # (!\cd|count\(28) & (!\cd|Add1~55\ & VCC))
-- \cd|Add1~57\ = CARRY((\cd|count\(28) & !\cd|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(28),
	datad => VCC,
	cin => \cd|Add1~55\,
	combout => \cd|Add1~56_combout\,
	cout => \cd|Add1~57\);

-- Location: FF_X56_Y35_N25
\cd|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(28));

-- Location: LCCOMB_X56_Y35_N26
\cd|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~58_combout\ = (\cd|count\(29) & (!\cd|Add1~57\)) # (!\cd|count\(29) & ((\cd|Add1~57\) # (GND)))
-- \cd|Add1~59\ = CARRY((!\cd|Add1~57\) # (!\cd|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(29),
	datad => VCC,
	cin => \cd|Add1~57\,
	combout => \cd|Add1~58_combout\,
	cout => \cd|Add1~59\);

-- Location: FF_X56_Y35_N27
\cd|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(29));

-- Location: LCCOMB_X56_Y35_N28
\cd|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~60_combout\ = (\cd|count\(30) & (\cd|Add1~59\ $ (GND))) # (!\cd|count\(30) & (!\cd|Add1~59\ & VCC))
-- \cd|Add1~61\ = CARRY((\cd|count\(30) & !\cd|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|count\(30),
	datad => VCC,
	cin => \cd|Add1~59\,
	combout => \cd|Add1~60_combout\,
	cout => \cd|Add1~61\);

-- Location: FF_X56_Y35_N29
\cd|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(30));

-- Location: LCCOMB_X56_Y35_N30
\cd|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Add1~62_combout\ = \cd|count\(31) $ (\cd|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(31),
	cin => \cd|Add1~61\,
	combout => \cd|Add1~62_combout\);

-- Location: FF_X56_Y35_N31
\cd|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cd|Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|count\(31));

-- Location: LCCOMB_X57_Y35_N0
\cd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~9_combout\ = (!\cd|count\(28) & (!\cd|count\(31) & (!\cd|count\(29) & !\cd|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|count\(28),
	datab => \cd|count\(31),
	datac => \cd|count\(29),
	datad => \cd|count\(30),
	combout => \cd|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y36_N24
\cd|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|Equal0~10_combout\ = (\cd|Equal0~7_combout\ & (\cd|Equal0~4_combout\ & (\cd|Equal0~8_combout\ & \cd|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datab => \cd|Equal0~4_combout\,
	datac => \cd|Equal0~8_combout\,
	datad => \cd|Equal0~9_combout\,
	combout => \cd|Equal0~10_combout\);

-- Location: LCCOMB_X57_Y36_N20
\cd|clkstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|clkstate~0_combout\ = \cd|clkstate~q\ $ (\cd|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clkstate~q\,
	datad => \cd|Equal0~10_combout\,
	combout => \cd|clkstate~0_combout\);

-- Location: LCCOMB_X57_Y36_N28
\cd|clkstate~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cd|clkstate~feeder_combout\ = \cd|clkstate~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clkstate~0_combout\,
	combout => \cd|clkstate~feeder_combout\);

-- Location: FF_X57_Y36_N29
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X37_Y20_N12
\syncgen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~0_combout\ = \syncgen|CounterX\(0) $ (VCC)
-- \syncgen|Add0~1\ = CARRY(\syncgen|CounterX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(0),
	datad => VCC,
	combout => \syncgen|Add0~0_combout\,
	cout => \syncgen|Add0~1\);

-- Location: FF_X37_Y20_N13
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

-- Location: LCCOMB_X37_Y20_N14
\syncgen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~2_combout\ = (\syncgen|CounterX\(1) & (!\syncgen|Add0~1\)) # (!\syncgen|CounterX\(1) & ((\syncgen|Add0~1\) # (GND)))
-- \syncgen|Add0~3\ = CARRY((!\syncgen|Add0~1\) # (!\syncgen|CounterX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(1),
	datad => VCC,
	cin => \syncgen|Add0~1\,
	combout => \syncgen|Add0~2_combout\,
	cout => \syncgen|Add0~3\);

-- Location: FF_X37_Y20_N15
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

-- Location: LCCOMB_X37_Y20_N16
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

-- Location: FF_X37_Y20_N17
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

-- Location: LCCOMB_X37_Y20_N18
\syncgen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~6_combout\ = (\syncgen|CounterX\(3) & (!\syncgen|Add0~5\)) # (!\syncgen|CounterX\(3) & ((\syncgen|Add0~5\) # (GND)))
-- \syncgen|Add0~7\ = CARRY((!\syncgen|Add0~5\) # (!\syncgen|CounterX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(3),
	datad => VCC,
	cin => \syncgen|Add0~5\,
	combout => \syncgen|Add0~6_combout\,
	cout => \syncgen|Add0~7\);

-- Location: FF_X37_Y20_N19
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

-- Location: LCCOMB_X37_Y20_N20
\syncgen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~8_combout\ = (\syncgen|CounterX\(4) & (\syncgen|Add0~7\ $ (GND))) # (!\syncgen|CounterX\(4) & (!\syncgen|Add0~7\ & VCC))
-- \syncgen|Add0~9\ = CARRY((\syncgen|CounterX\(4) & !\syncgen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(4),
	datad => VCC,
	cin => \syncgen|Add0~7\,
	combout => \syncgen|Add0~8_combout\,
	cout => \syncgen|Add0~9\);

-- Location: FF_X37_Y20_N21
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

-- Location: LCCOMB_X37_Y20_N22
\syncgen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~10_combout\ = (\syncgen|CounterX\(5) & (!\syncgen|Add0~9\)) # (!\syncgen|CounterX\(5) & ((\syncgen|Add0~9\) # (GND)))
-- \syncgen|Add0~11\ = CARRY((!\syncgen|Add0~9\) # (!\syncgen|CounterX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(5),
	datad => VCC,
	cin => \syncgen|Add0~9\,
	combout => \syncgen|Add0~10_combout\,
	cout => \syncgen|Add0~11\);

-- Location: FF_X37_Y20_N23
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

-- Location: LCCOMB_X37_Y20_N24
\syncgen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~12_combout\ = (\syncgen|CounterX\(6) & (\syncgen|Add0~11\ $ (GND))) # (!\syncgen|CounterX\(6) & (!\syncgen|Add0~11\ & VCC))
-- \syncgen|Add0~13\ = CARRY((\syncgen|CounterX\(6) & !\syncgen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(6),
	datad => VCC,
	cin => \syncgen|Add0~11\,
	combout => \syncgen|Add0~12_combout\,
	cout => \syncgen|Add0~13\);

-- Location: FF_X38_Y20_N31
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

-- Location: LCCOMB_X37_Y20_N26
\syncgen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~14_combout\ = (\syncgen|CounterX\(7) & (!\syncgen|Add0~13\)) # (!\syncgen|CounterX\(7) & ((\syncgen|Add0~13\) # (GND)))
-- \syncgen|Add0~15\ = CARRY((!\syncgen|Add0~13\) # (!\syncgen|CounterX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datad => VCC,
	cin => \syncgen|Add0~13\,
	combout => \syncgen|Add0~14_combout\,
	cout => \syncgen|Add0~15\);

-- Location: FF_X38_Y20_N5
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

-- Location: LCCOMB_X37_Y20_N28
\syncgen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Add0~16_combout\ = (\syncgen|CounterX\(8) & (\syncgen|Add0~15\ $ (GND))) # (!\syncgen|CounterX\(8) & (!\syncgen|Add0~15\ & VCC))
-- \syncgen|Add0~17\ = CARRY((\syncgen|CounterX\(8) & !\syncgen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(8),
	datad => VCC,
	cin => \syncgen|Add0~15\,
	combout => \syncgen|Add0~16_combout\,
	cout => \syncgen|Add0~17\);

-- Location: LCCOMB_X38_Y20_N0
\syncgen|CounterX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterX~0_combout\ = (\syncgen|Add0~16_combout\ & ((!\syncgen|Equal0~1_combout\) # (!\syncgen|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(7),
	datac => \syncgen|Equal0~1_combout\,
	datad => \syncgen|Add0~16_combout\,
	combout => \syncgen|CounterX~0_combout\);

-- Location: FF_X38_Y20_N1
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

-- Location: LCCOMB_X37_Y20_N30
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

-- Location: LCCOMB_X38_Y20_N6
\syncgen|CounterX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterX~1_combout\ = (\syncgen|Add0~18_combout\ & ((!\syncgen|Equal0~1_combout\) # (!\syncgen|CounterX\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(7),
	datac => \syncgen|Equal0~1_combout\,
	datad => \syncgen|Add0~18_combout\,
	combout => \syncgen|CounterX~1_combout\);

-- Location: FF_X38_Y20_N7
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

-- Location: LCCOMB_X42_Y20_N28
\syncgen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal1~0_combout\ = (\syncgen|CounterX\(4) & (\syncgen|CounterX\(9) & !\syncgen|CounterX\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(4),
	datac => \syncgen|CounterX\(9),
	datad => \syncgen|CounterX\(8),
	combout => \syncgen|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y20_N10
\syncgen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~0_combout\ = (\syncgen|CounterX\(5) & (\syncgen|CounterX\(3) & (\syncgen|CounterX\(1) & \syncgen|CounterX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(5),
	datab => \syncgen|CounterX\(3),
	datac => \syncgen|CounterX\(1),
	datad => \syncgen|CounterX\(2),
	combout => \syncgen|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y20_N20
\syncgen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~1_combout\ = (\syncgen|CounterX\(0) & (\syncgen|Equal1~0_combout\ & (\syncgen|CounterX\(6) & \syncgen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(0),
	datab => \syncgen|Equal1~0_combout\,
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|Equal0~0_combout\,
	combout => \syncgen|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y20_N28
\syncgen|CounterY[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[0]~24_combout\ = \syncgen|CounterY\(0) $ (((\syncgen|CounterX\(7) & \syncgen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(7),
	datac => \syncgen|CounterY\(0),
	datad => \syncgen|Equal0~1_combout\,
	combout => \syncgen|CounterY[0]~24_combout\);

-- Location: FF_X38_Y20_N29
\syncgen|CounterY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(0));

-- Location: LCCOMB_X42_Y20_N0
\syncgen|CounterY[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[1]~8_combout\ = (\syncgen|CounterY\(1) & (\syncgen|CounterY\(0) $ (VCC))) # (!\syncgen|CounterY\(1) & (\syncgen|CounterY\(0) & VCC))
-- \syncgen|CounterY[1]~9\ = CARRY((\syncgen|CounterY\(1) & \syncgen|CounterY\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \syncgen|CounterY\(0),
	datad => VCC,
	combout => \syncgen|CounterY[1]~8_combout\,
	cout => \syncgen|CounterY[1]~9\);

-- Location: LCCOMB_X42_Y20_N30
\syncgen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal0~2_combout\ = (\syncgen|CounterX\(7) & \syncgen|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(7),
	datad => \syncgen|Equal0~1_combout\,
	combout => \syncgen|Equal0~2_combout\);

-- Location: FF_X42_Y20_N1
\syncgen|CounterY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[1]~8_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(1));

-- Location: LCCOMB_X42_Y20_N2
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

-- Location: FF_X42_Y20_N3
\syncgen|CounterY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[2]~10_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(2));

-- Location: LCCOMB_X42_Y20_N4
\syncgen|CounterY[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[3]~12_combout\ = (\syncgen|CounterY\(3) & (\syncgen|CounterY[2]~11\ $ (GND))) # (!\syncgen|CounterY\(3) & (!\syncgen|CounterY[2]~11\ & VCC))
-- \syncgen|CounterY[3]~13\ = CARRY((\syncgen|CounterY\(3) & !\syncgen|CounterY[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(3),
	datad => VCC,
	cin => \syncgen|CounterY[2]~11\,
	combout => \syncgen|CounterY[3]~12_combout\,
	cout => \syncgen|CounterY[3]~13\);

-- Location: FF_X42_Y20_N5
\syncgen|CounterY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[3]~12_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(3));

-- Location: LCCOMB_X42_Y20_N6
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

-- Location: FF_X42_Y20_N7
\syncgen|CounterY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[4]~14_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(4));

-- Location: LCCOMB_X42_Y20_N8
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

-- Location: FF_X42_Y20_N9
\syncgen|CounterY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[5]~16_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(5));

-- Location: LCCOMB_X42_Y20_N10
\syncgen|CounterY[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[6]~18_combout\ = (\syncgen|CounterY\(6) & (!\syncgen|CounterY[5]~17\)) # (!\syncgen|CounterY\(6) & ((\syncgen|CounterY[5]~17\) # (GND)))
-- \syncgen|CounterY[6]~19\ = CARRY((!\syncgen|CounterY[5]~17\) # (!\syncgen|CounterY\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(6),
	datad => VCC,
	cin => \syncgen|CounterY[5]~17\,
	combout => \syncgen|CounterY[6]~18_combout\,
	cout => \syncgen|CounterY[6]~19\);

-- Location: FF_X42_Y20_N11
\syncgen|CounterY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[6]~18_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(6));

-- Location: LCCOMB_X42_Y20_N12
\syncgen|CounterY[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[7]~20_combout\ = (\syncgen|CounterY\(7) & (\syncgen|CounterY[6]~19\ $ (GND))) # (!\syncgen|CounterY\(7) & (!\syncgen|CounterY[6]~19\ & VCC))
-- \syncgen|CounterY[7]~21\ = CARRY((\syncgen|CounterY\(7) & !\syncgen|CounterY[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(7),
	datad => VCC,
	cin => \syncgen|CounterY[6]~19\,
	combout => \syncgen|CounterY[7]~20_combout\,
	cout => \syncgen|CounterY[7]~21\);

-- Location: FF_X42_Y20_N13
\syncgen|CounterY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[7]~20_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(7));

-- Location: LCCOMB_X38_Y20_N30
\dw|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~0_combout\ = (\syncgen|CounterX\(9)) # ((\syncgen|CounterX\(8)) # ((\syncgen|CounterX\(7) & \syncgen|CounterX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(9),
	datab => \syncgen|CounterX\(7),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(8),
	combout => \dw|Add5~0_combout\);

-- Location: LCCOMB_X38_Y20_N4
\dw|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~1_combout\ = \syncgen|CounterX\(9) $ (((\syncgen|CounterX\(8)) # ((\syncgen|CounterX\(6) & \syncgen|CounterX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(6),
	datab => \syncgen|CounterX\(9),
	datac => \syncgen|CounterX\(7),
	datad => \syncgen|CounterX\(8),
	combout => \dw|Add5~1_combout\);

-- Location: LCCOMB_X38_Y20_N2
\dw|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~2_combout\ = \syncgen|CounterX\(8) $ (((\syncgen|CounterX\(7) & \syncgen|CounterX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterX\(8),
	datac => \syncgen|CounterX\(7),
	datad => \syncgen|CounterX\(6),
	combout => \dw|Add5~2_combout\);

-- Location: LCCOMB_X38_Y20_N10
\dw|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~0_combout\ = (\dw|Add5~2_combout\ & (\syncgen|CounterY\(0) & VCC)) # (!\dw|Add5~2_combout\ & (\syncgen|CounterY\(0) $ (VCC)))
-- \dw|Add4~1\ = CARRY((!\dw|Add5~2_combout\ & \syncgen|CounterY\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~2_combout\,
	datab => \syncgen|CounterY\(0),
	datad => VCC,
	combout => \dw|Add4~0_combout\,
	cout => \dw|Add4~1\);

-- Location: LCCOMB_X38_Y20_N12
\dw|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~2_combout\ = (\syncgen|CounterY\(1) & ((\dw|Add5~1_combout\ & (!\dw|Add4~1\)) # (!\dw|Add5~1_combout\ & (\dw|Add4~1\ & VCC)))) # (!\syncgen|CounterY\(1) & ((\dw|Add5~1_combout\ & ((\dw|Add4~1\) # (GND))) # (!\dw|Add5~1_combout\ & 
-- (!\dw|Add4~1\))))
-- \dw|Add4~3\ = CARRY((\syncgen|CounterY\(1) & (\dw|Add5~1_combout\ & !\dw|Add4~1\)) # (!\syncgen|CounterY\(1) & ((\dw|Add5~1_combout\) # (!\dw|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \dw|Add5~1_combout\,
	datad => VCC,
	cin => \dw|Add4~1\,
	combout => \dw|Add4~2_combout\,
	cout => \dw|Add4~3\);

-- Location: LCCOMB_X38_Y20_N14
\dw|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~4_combout\ = ((\dw|Add5~0_combout\ $ (\syncgen|CounterY\(2) $ (\dw|Add4~3\)))) # (GND)
-- \dw|Add4~5\ = CARRY((\dw|Add5~0_combout\ & (\syncgen|CounterY\(2) & !\dw|Add4~3\)) # (!\dw|Add5~0_combout\ & ((\syncgen|CounterY\(2)) # (!\dw|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~0_combout\,
	datab => \syncgen|CounterY\(2),
	datad => VCC,
	cin => \dw|Add4~3\,
	combout => \dw|Add4~4_combout\,
	cout => \dw|Add4~5\);

-- Location: LCCOMB_X38_Y20_N16
\dw|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~6_combout\ = (\dw|Add5~0_combout\ & ((\syncgen|CounterY\(3) & (!\dw|Add4~5\)) # (!\syncgen|CounterY\(3) & ((\dw|Add4~5\) # (GND))))) # (!\dw|Add5~0_combout\ & ((\syncgen|CounterY\(3) & (\dw|Add4~5\ & VCC)) # (!\syncgen|CounterY\(3) & 
-- (!\dw|Add4~5\))))
-- \dw|Add4~7\ = CARRY((\dw|Add5~0_combout\ & ((!\dw|Add4~5\) # (!\syncgen|CounterY\(3)))) # (!\dw|Add5~0_combout\ & (!\syncgen|CounterY\(3) & !\dw|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~0_combout\,
	datab => \syncgen|CounterY\(3),
	datad => VCC,
	cin => \dw|Add4~5\,
	combout => \dw|Add4~6_combout\,
	cout => \dw|Add4~7\);

-- Location: LCCOMB_X38_Y20_N18
\dw|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~8_combout\ = ((\dw|Add5~0_combout\ $ (\syncgen|CounterY\(4) $ (\dw|Add4~7\)))) # (GND)
-- \dw|Add4~9\ = CARRY((\dw|Add5~0_combout\ & (\syncgen|CounterY\(4) & !\dw|Add4~7\)) # (!\dw|Add5~0_combout\ & ((\syncgen|CounterY\(4)) # (!\dw|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~0_combout\,
	datab => \syncgen|CounterY\(4),
	datad => VCC,
	cin => \dw|Add4~7\,
	combout => \dw|Add4~8_combout\,
	cout => \dw|Add4~9\);

-- Location: LCCOMB_X38_Y20_N20
\dw|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~10_combout\ = (\dw|Add5~0_combout\ & ((\syncgen|CounterY\(5) & (!\dw|Add4~9\)) # (!\syncgen|CounterY\(5) & ((\dw|Add4~9\) # (GND))))) # (!\dw|Add5~0_combout\ & ((\syncgen|CounterY\(5) & (\dw|Add4~9\ & VCC)) # (!\syncgen|CounterY\(5) & 
-- (!\dw|Add4~9\))))
-- \dw|Add4~11\ = CARRY((\dw|Add5~0_combout\ & ((!\dw|Add4~9\) # (!\syncgen|CounterY\(5)))) # (!\dw|Add5~0_combout\ & (!\syncgen|CounterY\(5) & !\dw|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~0_combout\,
	datab => \syncgen|CounterY\(5),
	datad => VCC,
	cin => \dw|Add4~9\,
	combout => \dw|Add4~10_combout\,
	cout => \dw|Add4~11\);

-- Location: LCCOMB_X38_Y20_N22
\dw|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~12_combout\ = ((\dw|Add5~0_combout\ $ (\syncgen|CounterY\(6) $ (\dw|Add4~11\)))) # (GND)
-- \dw|Add4~13\ = CARRY((\dw|Add5~0_combout\ & (\syncgen|CounterY\(6) & !\dw|Add4~11\)) # (!\dw|Add5~0_combout\ & ((\syncgen|CounterY\(6)) # (!\dw|Add4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add5~0_combout\,
	datab => \syncgen|CounterY\(6),
	datad => VCC,
	cin => \dw|Add4~11\,
	combout => \dw|Add4~12_combout\,
	cout => \dw|Add4~13\);

-- Location: LCCOMB_X38_Y20_N24
\dw|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~14_combout\ = (\syncgen|CounterY\(7) & ((\dw|Add5~0_combout\ & (!\dw|Add4~13\)) # (!\dw|Add5~0_combout\ & (\dw|Add4~13\ & VCC)))) # (!\syncgen|CounterY\(7) & ((\dw|Add5~0_combout\ & ((\dw|Add4~13\) # (GND))) # (!\dw|Add5~0_combout\ & 
-- (!\dw|Add4~13\))))
-- \dw|Add4~15\ = CARRY((\syncgen|CounterY\(7) & (\dw|Add5~0_combout\ & !\dw|Add4~13\)) # (!\syncgen|CounterY\(7) & ((\dw|Add5~0_combout\) # (!\dw|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(7),
	datab => \dw|Add5~0_combout\,
	datad => VCC,
	cin => \dw|Add4~13\,
	combout => \dw|Add4~14_combout\,
	cout => \dw|Add4~15\);

-- Location: LCCOMB_X39_Y20_N2
\dw|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~0_combout\ = \dw|Add4~0_combout\ $ (VCC)
-- \dw|Add6~1\ = CARRY(\dw|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~0_combout\,
	datad => VCC,
	combout => \dw|Add6~0_combout\,
	cout => \dw|Add6~1\);

-- Location: LCCOMB_X39_Y20_N4
\dw|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~2_combout\ = (\dw|Add4~2_combout\ & (!\dw|Add6~1\)) # (!\dw|Add4~2_combout\ & ((\dw|Add6~1\) # (GND)))
-- \dw|Add6~3\ = CARRY((!\dw|Add6~1\) # (!\dw|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~2_combout\,
	datad => VCC,
	cin => \dw|Add6~1\,
	combout => \dw|Add6~2_combout\,
	cout => \dw|Add6~3\);

-- Location: LCCOMB_X39_Y20_N6
\dw|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~4_combout\ = (\dw|Add4~4_combout\ & (\dw|Add6~3\ $ (GND))) # (!\dw|Add4~4_combout\ & (!\dw|Add6~3\ & VCC))
-- \dw|Add6~5\ = CARRY((\dw|Add4~4_combout\ & !\dw|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~4_combout\,
	datad => VCC,
	cin => \dw|Add6~3\,
	combout => \dw|Add6~4_combout\,
	cout => \dw|Add6~5\);

-- Location: LCCOMB_X39_Y20_N8
\dw|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~6_combout\ = (\dw|Add4~6_combout\ & (\dw|Add6~5\ & VCC)) # (!\dw|Add4~6_combout\ & (!\dw|Add6~5\))
-- \dw|Add6~7\ = CARRY((!\dw|Add4~6_combout\ & !\dw|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~6_combout\,
	datad => VCC,
	cin => \dw|Add6~5\,
	combout => \dw|Add6~6_combout\,
	cout => \dw|Add6~7\);

-- Location: LCCOMB_X39_Y20_N10
\dw|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~8_combout\ = (\dw|Add4~8_combout\ & ((GND) # (!\dw|Add6~7\))) # (!\dw|Add4~8_combout\ & (\dw|Add6~7\ $ (GND)))
-- \dw|Add6~9\ = CARRY((\dw|Add4~8_combout\) # (!\dw|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add4~8_combout\,
	datad => VCC,
	cin => \dw|Add6~7\,
	combout => \dw|Add6~8_combout\,
	cout => \dw|Add6~9\);

-- Location: LCCOMB_X39_Y20_N12
\dw|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~10_combout\ = (\dw|Add4~10_combout\ & (\dw|Add6~9\ & VCC)) # (!\dw|Add4~10_combout\ & (!\dw|Add6~9\))
-- \dw|Add6~11\ = CARRY((!\dw|Add4~10_combout\ & !\dw|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add4~10_combout\,
	datad => VCC,
	cin => \dw|Add6~9\,
	combout => \dw|Add6~10_combout\,
	cout => \dw|Add6~11\);

-- Location: LCCOMB_X39_Y20_N14
\dw|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~12_combout\ = (\dw|Add4~12_combout\ & ((GND) # (!\dw|Add6~11\))) # (!\dw|Add4~12_combout\ & (\dw|Add6~11\ $ (GND)))
-- \dw|Add6~13\ = CARRY((\dw|Add4~12_combout\) # (!\dw|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add4~12_combout\,
	datad => VCC,
	cin => \dw|Add6~11\,
	combout => \dw|Add6~12_combout\,
	cout => \dw|Add6~13\);

-- Location: LCCOMB_X39_Y20_N16
\dw|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~14_combout\ = (\dw|Add4~14_combout\ & (!\dw|Add6~13\)) # (!\dw|Add4~14_combout\ & ((\dw|Add6~13\) # (GND)))
-- \dw|Add6~15\ = CARRY((!\dw|Add6~13\) # (!\dw|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add4~14_combout\,
	datad => VCC,
	cin => \dw|Add6~13\,
	combout => \dw|Add6~14_combout\,
	cout => \dw|Add6~15\);

-- Location: LCCOMB_X41_Y20_N18
\R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (!\syncgen|CounterX\(9) & (\syncgen|CounterX\(8) $ (((\syncgen|CounterX\(7) & \syncgen|CounterX\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datab => \syncgen|CounterX\(9),
	datac => \syncgen|CounterX\(8),
	datad => \syncgen|CounterX\(6),
	combout => \R~0_combout\);

-- Location: LCCOMB_X42_Y20_N14
\syncgen|CounterY[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|CounterY[8]~22_combout\ = \syncgen|CounterY\(8) $ (\syncgen|CounterY[7]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \syncgen|CounterY\(8),
	cin => \syncgen|CounterY[7]~21\,
	combout => \syncgen|CounterY[8]~22_combout\);

-- Location: FF_X42_Y20_N15
\syncgen|CounterY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \syncgen|CounterY[8]~22_combout\,
	ena => \syncgen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \syncgen|CounterY\(8));

-- Location: LCCOMB_X42_Y20_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\syncgen|CounterY\(3) & (((!\syncgen|CounterY\(0)) # (!\syncgen|CounterY\(2))) # (!\syncgen|CounterY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(1),
	datab => \syncgen|CounterY\(2),
	datac => \syncgen|CounterY\(3),
	datad => \syncgen|CounterY\(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X42_Y20_N24
\R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~1_combout\ = (\syncgen|CounterY\(6) & ((\syncgen|CounterY\(5)) # (\syncgen|CounterY\(7)))) # (!\syncgen|CounterY\(6) & (\syncgen|CounterY\(5) & \syncgen|CounterY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(6),
	datac => \syncgen|CounterY\(5),
	datad => \syncgen|CounterY\(7),
	combout => \R~1_combout\);

-- Location: LCCOMB_X42_Y20_N18
\R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~2_combout\ = (\syncgen|CounterY\(4) & (\syncgen|CounterY\(8) & (!\LessThan2~0_combout\ & \R~1_combout\))) # (!\syncgen|CounterY\(4) & (!\syncgen|CounterY\(8) & (\LessThan2~0_combout\ & !\R~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(4),
	datab => \syncgen|CounterY\(8),
	datac => \LessThan2~0_combout\,
	datad => \R~1_combout\,
	combout => \R~2_combout\);

-- Location: LCCOMB_X41_Y20_N24
\R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~3_combout\ = (\R~0_combout\ & (!\R~2_combout\ & (\syncgen|CounterY\(7) $ (\syncgen|CounterY\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(7),
	datab => \R~0_combout\,
	datac => \syncgen|CounterY\(8),
	datad => \R~2_combout\,
	combout => \R~3_combout\);

-- Location: FF_X41_Y20_N25
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

-- Location: FF_X39_Y20_N17
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add6~14_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X38_Y20_N26
\dw|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add4~16_combout\ = \dw|Add5~0_combout\ $ (\dw|Add4~15\ $ (\syncgen|CounterY\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dw|Add5~0_combout\,
	datad => \syncgen|CounterY\(8),
	cin => \dw|Add4~15\,
	combout => \dw|Add4~16_combout\);

-- Location: LCCOMB_X39_Y20_N18
\dw|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add6~16_combout\ = \dw|Add4~16_combout\ $ (\dw|Add6~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dw|Add4~16_combout\,
	cin => \dw|Add6~15\,
	combout => \dw|Add6~16_combout\);

-- Location: FF_X39_Y20_N19
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add6~16_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3));

-- Location: FF_X39_Y20_N13
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add6~10_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0));

-- Location: FF_X39_Y20_N15
\dw|dpm|ram_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|Add6~12_combout\,
	ena => \dw|dpm_re~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X55_Y23_N0
\drawMod|mem_col[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[0]~8_combout\ = \drawMod|mem_col\(0) $ (VCC)
-- \drawMod|mem_col[0]~9\ = CARRY(\drawMod|mem_col\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(0),
	datad => VCC,
	combout => \drawMod|mem_col[0]~8_combout\,
	cout => \drawMod|mem_col[0]~9\);

-- Location: LCCOMB_X55_Y23_N10
\drawMod|mem_col[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[5]~19_combout\ = (\drawMod|mem_col\(5) & (!\drawMod|mem_col[4]~18\)) # (!\drawMod|mem_col\(5) & ((\drawMod|mem_col[4]~18\) # (GND)))
-- \drawMod|mem_col[5]~20\ = CARRY((!\drawMod|mem_col[4]~18\) # (!\drawMod|mem_col\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(5),
	datad => VCC,
	cin => \drawMod|mem_col[4]~18\,
	combout => \drawMod|mem_col[5]~19_combout\,
	cout => \drawMod|mem_col[5]~20\);

-- Location: LCCOMB_X55_Y23_N12
\drawMod|mem_col[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[6]~21_combout\ = (\drawMod|mem_col\(6) & (\drawMod|mem_col[5]~20\ $ (GND))) # (!\drawMod|mem_col\(6) & (!\drawMod|mem_col[5]~20\ & VCC))
-- \drawMod|mem_col[6]~22\ = CARRY((\drawMod|mem_col\(6) & !\drawMod|mem_col[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(6),
	datad => VCC,
	cin => \drawMod|mem_col[5]~20\,
	combout => \drawMod|mem_col[6]~21_combout\,
	cout => \drawMod|mem_col[6]~22\);

-- Location: FF_X55_Y23_N13
\drawMod|mem_col[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[6]~21_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(6));

-- Location: LCCOMB_X55_Y23_N14
\drawMod|mem_col[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[7]~23_combout\ = \drawMod|mem_col\(7) $ (\drawMod|mem_col[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(7),
	cin => \drawMod|mem_col[6]~22\,
	combout => \drawMod|mem_col[7]~23_combout\);

-- Location: FF_X55_Y23_N15
\drawMod|mem_col[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[7]~23_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(7));

-- Location: LCCOMB_X55_Y23_N22
\drawMod|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal2~1_combout\ = (\drawMod|mem_col\(5) & (\drawMod|mem_col\(7) & (\drawMod|mem_col\(4) & \drawMod|mem_col\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(5),
	datab => \drawMod|mem_col\(7),
	datac => \drawMod|mem_col\(4),
	datad => \drawMod|mem_col\(6),
	combout => \drawMod|Equal2~1_combout\);

-- Location: LCCOMB_X55_Y23_N28
\drawMod|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal2~0_combout\ = (\drawMod|mem_col\(1) & (\drawMod|mem_col\(2) & \drawMod|mem_col\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(1),
	datac => \drawMod|mem_col\(2),
	datad => \drawMod|mem_col\(0),
	combout => \drawMod|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y23_N16
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

-- Location: FF_X42_Y23_N17
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

-- Location: LCCOMB_X42_Y23_N18
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

-- Location: FF_X42_Y23_N19
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

-- Location: LCCOMB_X42_Y23_N20
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

-- Location: FF_X42_Y23_N21
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

-- Location: LCCOMB_X42_Y23_N22
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

-- Location: FF_X42_Y23_N23
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

-- Location: LCCOMB_X42_Y23_N24
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

-- Location: FF_X42_Y23_N25
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

-- Location: LCCOMB_X42_Y23_N26
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

-- Location: FF_X42_Y23_N27
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

-- Location: LCCOMB_X42_Y23_N28
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

-- Location: FF_X42_Y23_N29
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

-- Location: LCCOMB_X42_Y23_N30
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

-- Location: FF_X42_Y23_N31
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

-- Location: LCCOMB_X42_Y22_N0
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

-- Location: FF_X42_Y22_N1
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

-- Location: LCCOMB_X42_Y22_N2
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

-- Location: FF_X42_Y22_N3
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

-- Location: LCCOMB_X42_Y22_N4
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

-- Location: FF_X42_Y22_N5
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

-- Location: LCCOMB_X42_Y22_N6
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

-- Location: FF_X42_Y22_N7
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

-- Location: LCCOMB_X42_Y22_N8
\drawMod|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~24_combout\ = (\drawMod|dpm_addr_A\(12) & (\drawMod|Add0~23\ $ (GND))) # (!\drawMod|dpm_addr_A\(12) & (!\drawMod|Add0~23\ & VCC))
-- \drawMod|Add0~25\ = CARRY((\drawMod|dpm_addr_A\(12) & !\drawMod|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(12),
	datad => VCC,
	cin => \drawMod|Add0~23\,
	combout => \drawMod|Add0~24_combout\,
	cout => \drawMod|Add0~25\);

-- Location: LCCOMB_X42_Y22_N18
\drawMod|dpm_addr_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~3_combout\ = (\drawMod|Add0~24_combout\ & \drawMod|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|Add0~24_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~3_combout\);

-- Location: FF_X42_Y22_N19
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

-- Location: LCCOMB_X42_Y22_N20
\drawMod|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~3_combout\ = ((\drawMod|dpm_addr_A\(12)) # ((!\drawMod|dpm_addr_A\(9)) # (!\drawMod|dpm_addr_A\(10)))) # (!\drawMod|dpm_addr_A\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(11),
	datab => \drawMod|dpm_addr_A\(12),
	datac => \drawMod|dpm_addr_A\(10),
	datad => \drawMod|dpm_addr_A\(9),
	combout => \drawMod|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y22_N10
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

-- Location: LCCOMB_X42_Y22_N22
\drawMod|dpm_addr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~0_combout\ = (\drawMod|Add0~26_combout\ & \drawMod|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Add0~26_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~0_combout\);

-- Location: FF_X42_Y22_N23
\drawMod|dpm_addr_A[13]\ : dffeas
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
	q => \drawMod|dpm_addr_A\(13));

-- Location: LCCOMB_X42_Y23_N4
\drawMod|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~2_combout\ = (((!\drawMod|dpm_addr_A\(6)) # (!\drawMod|dpm_addr_A\(5))) # (!\drawMod|dpm_addr_A\(8))) # (!\drawMod|dpm_addr_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(7),
	datab => \drawMod|dpm_addr_A\(8),
	datac => \drawMod|dpm_addr_A\(5),
	datad => \drawMod|dpm_addr_A\(6),
	combout => \drawMod|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y23_N12
\drawMod|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~0_combout\ = (((!\drawMod|dpm_addr_A\(2)) # (!\drawMod|dpm_addr_A\(3))) # (!\drawMod|dpm_addr_A\(4))) # (!\drawMod|dpm_addr_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(1),
	datab => \drawMod|dpm_addr_A\(4),
	datac => \drawMod|dpm_addr_A\(3),
	datad => \drawMod|dpm_addr_A\(2),
	combout => \drawMod|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y22_N12
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

-- Location: LCCOMB_X42_Y22_N28
\drawMod|dpm_addr_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~1_combout\ = (\drawMod|Add0~28_combout\ & \drawMod|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Add0~28_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~1_combout\);

-- Location: FF_X42_Y22_N29
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

-- Location: LCCOMB_X42_Y22_N14
\drawMod|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Add0~30_combout\ = (\drawMod|dpm_addr_A\(15) & (!\drawMod|Add0~29\)) # (!\drawMod|dpm_addr_A\(15) & ((\drawMod|Add0~29\) # (GND)))
-- \drawMod|Add0~31\ = CARRY((!\drawMod|Add0~29\) # (!\drawMod|dpm_addr_A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(15),
	datad => VCC,
	cin => \drawMod|Add0~29\,
	combout => \drawMod|Add0~30_combout\,
	cout => \drawMod|Add0~31\);

-- Location: LCCOMB_X42_Y22_N24
\drawMod|dpm_addr_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_addr_A~2_combout\ = (\drawMod|Add0~30_combout\ & \drawMod|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|Add0~30_combout\,
	datad => \drawMod|Equal0~4_combout\,
	combout => \drawMod|dpm_addr_A~2_combout\);

-- Location: FF_X42_Y22_N25
\drawMod|dpm_addr_A[15]\ : dffeas
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
	q => \drawMod|dpm_addr_A\(15));

-- Location: LCCOMB_X42_Y22_N16
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

-- Location: FF_X42_Y22_N17
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

-- Location: LCCOMB_X42_Y22_N26
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\ = (!\drawMod|dpm_addr_A\(16) & \drawMod|dpm_addr_A\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_addr_A\(16),
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\);

-- Location: LCCOMB_X42_Y23_N2
\drawMod|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~1_combout\ = (\drawMod|Equal0~0_combout\) # (((!\drawMod|dpm_addr_A\(0)) # (!\drawMod|dpm_addr_A\(15))) # (!\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Equal0~0_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\,
	datac => \drawMod|dpm_addr_A\(15),
	datad => \drawMod|dpm_addr_A\(0),
	combout => \drawMod|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y23_N6
\drawMod|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal0~4_combout\ = (\drawMod|Equal0~3_combout\) # (((\drawMod|Equal0~2_combout\) # (\drawMod|Equal0~1_combout\)) # (!\drawMod|dpm_addr_A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Equal0~3_combout\,
	datab => \drawMod|dpm_addr_A\(13),
	datac => \drawMod|Equal0~2_combout\,
	datad => \drawMod|Equal0~1_combout\,
	combout => \drawMod|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y23_N24
\drawMod|mem_col[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[7]~12_combout\ = ((\drawMod|Equal2~1_combout\ & (\drawMod|Equal2~0_combout\ & \drawMod|mem_col\(3)))) # (!\drawMod|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Equal2~1_combout\,
	datab => \drawMod|Equal2~0_combout\,
	datac => \drawMod|Equal0~4_combout\,
	datad => \drawMod|mem_col\(3),
	combout => \drawMod|mem_col[7]~12_combout\);

-- Location: FF_X55_Y23_N1
\drawMod|mem_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[0]~8_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(0));

-- Location: LCCOMB_X55_Y23_N2
\drawMod|mem_col[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[1]~10_combout\ = (\drawMod|mem_col\(1) & (!\drawMod|mem_col[0]~9\)) # (!\drawMod|mem_col\(1) & ((\drawMod|mem_col[0]~9\) # (GND)))
-- \drawMod|mem_col[1]~11\ = CARRY((!\drawMod|mem_col[0]~9\) # (!\drawMod|mem_col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(1),
	datad => VCC,
	cin => \drawMod|mem_col[0]~9\,
	combout => \drawMod|mem_col[1]~10_combout\,
	cout => \drawMod|mem_col[1]~11\);

-- Location: FF_X55_Y23_N3
\drawMod|mem_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[1]~10_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(1));

-- Location: LCCOMB_X55_Y23_N4
\drawMod|mem_col[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[2]~13_combout\ = (\drawMod|mem_col\(2) & (\drawMod|mem_col[1]~11\ $ (GND))) # (!\drawMod|mem_col\(2) & (!\drawMod|mem_col[1]~11\ & VCC))
-- \drawMod|mem_col[2]~14\ = CARRY((\drawMod|mem_col\(2) & !\drawMod|mem_col[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(2),
	datad => VCC,
	cin => \drawMod|mem_col[1]~11\,
	combout => \drawMod|mem_col[2]~13_combout\,
	cout => \drawMod|mem_col[2]~14\);

-- Location: FF_X55_Y23_N5
\drawMod|mem_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[2]~13_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(2));

-- Location: LCCOMB_X55_Y23_N6
\drawMod|mem_col[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[3]~15_combout\ = (\drawMod|mem_col\(3) & (!\drawMod|mem_col[2]~14\)) # (!\drawMod|mem_col\(3) & ((\drawMod|mem_col[2]~14\) # (GND)))
-- \drawMod|mem_col[3]~16\ = CARRY((!\drawMod|mem_col[2]~14\) # (!\drawMod|mem_col\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(3),
	datad => VCC,
	cin => \drawMod|mem_col[2]~14\,
	combout => \drawMod|mem_col[3]~15_combout\,
	cout => \drawMod|mem_col[3]~16\);

-- Location: FF_X55_Y23_N7
\drawMod|mem_col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[3]~15_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(3));

-- Location: LCCOMB_X55_Y23_N8
\drawMod|mem_col[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_col[4]~17_combout\ = (\drawMod|mem_col\(4) & (\drawMod|mem_col[3]~16\ $ (GND))) # (!\drawMod|mem_col\(4) & (!\drawMod|mem_col[3]~16\ & VCC))
-- \drawMod|mem_col[4]~18\ = CARRY((\drawMod|mem_col\(4) & !\drawMod|mem_col[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_col\(4),
	datad => VCC,
	cin => \drawMod|mem_col[3]~16\,
	combout => \drawMod|mem_col[4]~17_combout\,
	cout => \drawMod|mem_col[4]~18\);

-- Location: FF_X55_Y23_N9
\drawMod|mem_col[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[4]~17_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(4));

-- Location: FF_X55_Y23_N11
\drawMod|mem_col[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_col[5]~19_combout\,
	sclr => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_col\(5));

-- Location: LCCOMB_X55_Y23_N16
\drawMod|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan1~0_combout\ = (!\drawMod|mem_col\(3) & (!\drawMod|mem_col\(4) & ((!\drawMod|mem_col\(1)) # (!\drawMod|mem_col\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(3),
	datab => \drawMod|mem_col\(4),
	datac => \drawMod|mem_col\(2),
	datad => \drawMod|mem_col\(1),
	combout => \drawMod|LessThan1~0_combout\);

-- Location: LCCOMB_X55_Y23_N26
\drawMod|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan1~1_combout\ = ((!\drawMod|mem_col\(6) & ((\drawMod|LessThan1~0_combout\) # (!\drawMod|mem_col\(5))))) # (!\drawMod|mem_col\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(5),
	datab => \drawMod|LessThan1~0_combout\,
	datac => \drawMod|mem_col\(7),
	datad => \drawMod|mem_col\(6),
	combout => \drawMod|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y23_N2
\drawMod|mem_row[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[0]~8_combout\ = \drawMod|mem_row\(0) $ (VCC)
-- \drawMod|mem_row[0]~9\ = CARRY(\drawMod|mem_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_row\(0),
	datad => VCC,
	combout => \drawMod|mem_row[0]~8_combout\,
	cout => \drawMod|mem_row[0]~9\);

-- Location: LCCOMB_X55_Y23_N30
\drawMod|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal2~2_combout\ = ((!\drawMod|mem_col\(3)) # (!\drawMod|Equal2~1_combout\)) # (!\drawMod|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|Equal2~0_combout\,
	datac => \drawMod|Equal2~1_combout\,
	datad => \drawMod|mem_col\(3),
	combout => \drawMod|Equal2~2_combout\);

-- Location: FF_X56_Y23_N3
\drawMod|mem_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[0]~8_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(0));

-- Location: LCCOMB_X56_Y23_N4
\drawMod|mem_row[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[1]~10_combout\ = (\drawMod|mem_row\(1) & (!\drawMod|mem_row[0]~9\)) # (!\drawMod|mem_row\(1) & ((\drawMod|mem_row[0]~9\) # (GND)))
-- \drawMod|mem_row[1]~11\ = CARRY((!\drawMod|mem_row[0]~9\) # (!\drawMod|mem_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_row\(1),
	datad => VCC,
	cin => \drawMod|mem_row[0]~9\,
	combout => \drawMod|mem_row[1]~10_combout\,
	cout => \drawMod|mem_row[1]~11\);

-- Location: FF_X56_Y23_N5
\drawMod|mem_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[1]~10_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(1));

-- Location: LCCOMB_X56_Y23_N6
\drawMod|mem_row[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[2]~12_combout\ = (\drawMod|mem_row\(2) & (\drawMod|mem_row[1]~11\ $ (GND))) # (!\drawMod|mem_row\(2) & (!\drawMod|mem_row[1]~11\ & VCC))
-- \drawMod|mem_row[2]~13\ = CARRY((\drawMod|mem_row\(2) & !\drawMod|mem_row[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_row\(2),
	datad => VCC,
	cin => \drawMod|mem_row[1]~11\,
	combout => \drawMod|mem_row[2]~12_combout\,
	cout => \drawMod|mem_row[2]~13\);

-- Location: FF_X56_Y23_N7
\drawMod|mem_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[2]~12_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(2));

-- Location: LCCOMB_X56_Y23_N8
\drawMod|mem_row[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[3]~14_combout\ = (\drawMod|mem_row\(3) & (!\drawMod|mem_row[2]~13\)) # (!\drawMod|mem_row\(3) & ((\drawMod|mem_row[2]~13\) # (GND)))
-- \drawMod|mem_row[3]~15\ = CARRY((!\drawMod|mem_row[2]~13\) # (!\drawMod|mem_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_row\(3),
	datad => VCC,
	cin => \drawMod|mem_row[2]~13\,
	combout => \drawMod|mem_row[3]~14_combout\,
	cout => \drawMod|mem_row[3]~15\);

-- Location: FF_X56_Y23_N9
\drawMod|mem_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[3]~14_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(3));

-- Location: LCCOMB_X56_Y23_N10
\drawMod|mem_row[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[4]~16_combout\ = (\drawMod|mem_row\(4) & (\drawMod|mem_row[3]~15\ $ (GND))) # (!\drawMod|mem_row\(4) & (!\drawMod|mem_row[3]~15\ & VCC))
-- \drawMod|mem_row[4]~17\ = CARRY((\drawMod|mem_row\(4) & !\drawMod|mem_row[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_row\(4),
	datad => VCC,
	cin => \drawMod|mem_row[3]~15\,
	combout => \drawMod|mem_row[4]~16_combout\,
	cout => \drawMod|mem_row[4]~17\);

-- Location: FF_X56_Y23_N11
\drawMod|mem_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[4]~16_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(4));

-- Location: LCCOMB_X56_Y23_N12
\drawMod|mem_row[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[5]~18_combout\ = (\drawMod|mem_row\(5) & (!\drawMod|mem_row[4]~17\)) # (!\drawMod|mem_row\(5) & ((\drawMod|mem_row[4]~17\) # (GND)))
-- \drawMod|mem_row[5]~19\ = CARRY((!\drawMod|mem_row[4]~17\) # (!\drawMod|mem_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_row\(5),
	datad => VCC,
	cin => \drawMod|mem_row[4]~17\,
	combout => \drawMod|mem_row[5]~18_combout\,
	cout => \drawMod|mem_row[5]~19\);

-- Location: FF_X56_Y23_N13
\drawMod|mem_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[5]~18_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(5));

-- Location: LCCOMB_X56_Y23_N14
\drawMod|mem_row[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[6]~20_combout\ = (\drawMod|mem_row\(6) & (\drawMod|mem_row[5]~19\ $ (GND))) # (!\drawMod|mem_row\(6) & (!\drawMod|mem_row[5]~19\ & VCC))
-- \drawMod|mem_row[6]~21\ = CARRY((\drawMod|mem_row\(6) & !\drawMod|mem_row[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|mem_row\(6),
	datad => VCC,
	cin => \drawMod|mem_row[5]~19\,
	combout => \drawMod|mem_row[6]~20_combout\,
	cout => \drawMod|mem_row[6]~21\);

-- Location: FF_X56_Y23_N15
\drawMod|mem_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[6]~20_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(6));

-- Location: LCCOMB_X56_Y23_N16
\drawMod|mem_row[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|mem_row[7]~22_combout\ = \drawMod|mem_row[6]~21\ $ (\drawMod|mem_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \drawMod|mem_row\(7),
	cin => \drawMod|mem_row[6]~21\,
	combout => \drawMod|mem_row[7]~22_combout\);

-- Location: FF_X56_Y23_N17
\drawMod|mem_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|mem_row[7]~22_combout\,
	sclr => \drawMod|Equal2~2_combout\,
	ena => \drawMod|mem_col[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|mem_row\(7));

-- Location: LCCOMB_X56_Y23_N26
\drawMod|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan3~0_combout\ = (\drawMod|mem_row\(5) & \drawMod|mem_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_row\(5),
	datad => \drawMod|mem_row\(4),
	combout => \drawMod|LessThan3~0_combout\);

-- Location: LCCOMB_X56_Y23_N22
\drawMod|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan3~1_combout\ = (!\drawMod|mem_row\(6) & (((!\drawMod|mem_row\(2)) # (!\drawMod|mem_row\(3))) # (!\drawMod|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|LessThan3~0_combout\,
	datab => \drawMod|mem_row\(6),
	datac => \drawMod|mem_row\(3),
	datad => \drawMod|mem_row\(2),
	combout => \drawMod|LessThan3~1_combout\);

-- Location: LCCOMB_X55_Y23_N18
\drawMod|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|always0~0_combout\ = (\drawMod|mem_col\(5) & (\drawMod|mem_col\(4) & ((\drawMod|Equal2~0_combout\) # (\drawMod|mem_col\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(5),
	datab => \drawMod|Equal2~0_combout\,
	datac => \drawMod|mem_col\(4),
	datad => \drawMod|mem_col\(3),
	combout => \drawMod|always0~0_combout\);

-- Location: LCCOMB_X56_Y23_N0
\drawMod|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan2~0_combout\ = (!\drawMod|mem_row\(3) & (((!\drawMod|mem_row\(1) & !\drawMod|mem_row\(0))) # (!\drawMod|mem_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_row\(2),
	datab => \drawMod|mem_row\(1),
	datac => \drawMod|mem_row\(3),
	datad => \drawMod|mem_row\(0),
	combout => \drawMod|LessThan2~0_combout\);

-- Location: LCCOMB_X56_Y23_N24
\drawMod|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|LessThan2~1_combout\ = (!\drawMod|mem_row\(7) & (!\drawMod|mem_row\(6) & ((\drawMod|LessThan2~0_combout\) # (!\drawMod|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|LessThan3~0_combout\,
	datab => \drawMod|mem_row\(7),
	datac => \drawMod|mem_row\(6),
	datad => \drawMod|LessThan2~0_combout\,
	combout => \drawMod|LessThan2~1_combout\);

-- Location: LCCOMB_X55_Y23_N20
\drawMod|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|always0~1_combout\ = (!\drawMod|LessThan2~1_combout\ & ((\drawMod|mem_col\(6)) # ((\drawMod|always0~0_combout\) # (\drawMod|mem_col\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|mem_col\(6),
	datab => \drawMod|always0~0_combout\,
	datac => \drawMod|mem_col\(7),
	datad => \drawMod|LessThan2~1_combout\,
	combout => \drawMod|always0~1_combout\);

-- Location: LCCOMB_X59_Y26_N0
\drawMod|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|always0~2_combout\ = (\drawMod|LessThan1~1_combout\ & (\drawMod|always0~1_combout\ & ((\drawMod|LessThan3~1_combout\) # (!\drawMod|mem_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|LessThan1~1_combout\,
	datab => \drawMod|mem_row\(7),
	datac => \drawMod|LessThan3~1_combout\,
	datad => \drawMod|always0~1_combout\,
	combout => \drawMod|always0~2_combout\);

-- Location: LCCOMB_X41_Y22_N0
\drawMod|dpm_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|dpm_en~0_combout\ = !\drawMod|always0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawMod|always0~2_combout\,
	combout => \drawMod|dpm_en~0_combout\);

-- Location: FF_X41_Y22_N1
\drawMod|dpm_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|dpm_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|dpm_en~q\);

-- Location: LCCOMB_X41_Y22_N18
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\ = (!\drawMod|dpm_en~q\ & (!\drawMod|dpm_addr_A\(13) & (\drawMod|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_en~q\,
	datab => \drawMod|dpm_addr_A\(13),
	datac => \drawMod|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\);

-- Location: LCCOMB_X59_Y26_N2
\drawMod|cd6x6_addr_B[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[0]~14_combout\ = \drawMod|cd6x6_addr_B\(0) $ (VCC)
-- \drawMod|cd6x6_addr_B[0]~15\ = CARRY(\drawMod|cd6x6_addr_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(0),
	datad => VCC,
	combout => \drawMod|cd6x6_addr_B[0]~14_combout\,
	cout => \drawMod|cd6x6_addr_B[0]~15\);

-- Location: LCCOMB_X59_Y27_N2
\drawMod|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal1~2_combout\ = ((\drawMod|cd6x6_addr_B\(8)) # ((\drawMod|cd6x6_addr_B\(10)) # (!\drawMod|cd6x6_addr_B\(11)))) # (!\drawMod|cd6x6_addr_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(9),
	datab => \drawMod|cd6x6_addr_B\(8),
	datac => \drawMod|cd6x6_addr_B\(10),
	datad => \drawMod|cd6x6_addr_B\(11),
	combout => \drawMod|Equal1~2_combout\);

-- Location: LCCOMB_X59_Y27_N4
\drawMod|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal1~3_combout\ = ((\drawMod|Equal1~2_combout\) # (!\drawMod|cd6x6_addr_B\(12))) # (!\drawMod|cd6x6_addr_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(13),
	datac => \drawMod|cd6x6_addr_B\(12),
	datad => \drawMod|Equal1~2_combout\,
	combout => \drawMod|Equal1~3_combout\);

-- Location: LCCOMB_X59_Y25_N0
\drawMod|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal1~1_combout\ = (\drawMod|cd6x6_addr_B\(6)) # ((\drawMod|cd6x6_addr_B\(5)) # ((\drawMod|cd6x6_addr_B\(4)) # (!\drawMod|cd6x6_addr_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(6),
	datab => \drawMod|cd6x6_addr_B\(5),
	datac => \drawMod|cd6x6_addr_B\(7),
	datad => \drawMod|cd6x6_addr_B\(4),
	combout => \drawMod|Equal1~1_combout\);

-- Location: LCCOMB_X59_Y27_N20
\drawMod|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|Equal1~0_combout\ = (\drawMod|cd6x6_addr_B\(2)) # (((\drawMod|cd6x6_addr_B\(1)) # (\drawMod|cd6x6_addr_B\(0))) # (!\drawMod|cd6x6_addr_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(2),
	datab => \drawMod|cd6x6_addr_B\(3),
	datac => \drawMod|cd6x6_addr_B\(1),
	datad => \drawMod|cd6x6_addr_B\(0),
	combout => \drawMod|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y26_N30
\drawMod|cd6x6_addr_B[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[6]~42_combout\ = (\drawMod|always0~2_combout\) # ((!\drawMod|Equal1~3_combout\ & (!\drawMod|Equal1~1_combout\ & !\drawMod|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|Equal1~3_combout\,
	datab => \drawMod|Equal1~1_combout\,
	datac => \drawMod|Equal1~0_combout\,
	datad => \drawMod|always0~2_combout\,
	combout => \drawMod|cd6x6_addr_B[6]~42_combout\);

-- Location: FF_X59_Y26_N3
\drawMod|cd6x6_addr_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[0]~14_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(0));

-- Location: LCCOMB_X59_Y26_N4
\drawMod|cd6x6_addr_B[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[1]~16_combout\ = (\drawMod|cd6x6_addr_B\(1) & (!\drawMod|cd6x6_addr_B[0]~15\)) # (!\drawMod|cd6x6_addr_B\(1) & ((\drawMod|cd6x6_addr_B[0]~15\) # (GND)))
-- \drawMod|cd6x6_addr_B[1]~17\ = CARRY((!\drawMod|cd6x6_addr_B[0]~15\) # (!\drawMod|cd6x6_addr_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(1),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[0]~15\,
	combout => \drawMod|cd6x6_addr_B[1]~16_combout\,
	cout => \drawMod|cd6x6_addr_B[1]~17\);

-- Location: FF_X59_Y26_N5
\drawMod|cd6x6_addr_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[1]~16_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(1));

-- Location: LCCOMB_X59_Y26_N6
\drawMod|cd6x6_addr_B[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[2]~18_combout\ = (\drawMod|cd6x6_addr_B\(2) & (\drawMod|cd6x6_addr_B[1]~17\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(2) & (!\drawMod|cd6x6_addr_B[1]~17\ & VCC))
-- \drawMod|cd6x6_addr_B[2]~19\ = CARRY((\drawMod|cd6x6_addr_B\(2) & !\drawMod|cd6x6_addr_B[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(2),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[1]~17\,
	combout => \drawMod|cd6x6_addr_B[2]~18_combout\,
	cout => \drawMod|cd6x6_addr_B[2]~19\);

-- Location: FF_X59_Y26_N7
\drawMod|cd6x6_addr_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[2]~18_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(2));

-- Location: LCCOMB_X59_Y26_N8
\drawMod|cd6x6_addr_B[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[3]~20_combout\ = (\drawMod|cd6x6_addr_B\(3) & (!\drawMod|cd6x6_addr_B[2]~19\)) # (!\drawMod|cd6x6_addr_B\(3) & ((\drawMod|cd6x6_addr_B[2]~19\) # (GND)))
-- \drawMod|cd6x6_addr_B[3]~21\ = CARRY((!\drawMod|cd6x6_addr_B[2]~19\) # (!\drawMod|cd6x6_addr_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(3),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[2]~19\,
	combout => \drawMod|cd6x6_addr_B[3]~20_combout\,
	cout => \drawMod|cd6x6_addr_B[3]~21\);

-- Location: FF_X59_Y26_N9
\drawMod|cd6x6_addr_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[3]~20_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(3));

-- Location: LCCOMB_X59_Y26_N10
\drawMod|cd6x6_addr_B[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[4]~22_combout\ = (\drawMod|cd6x6_addr_B\(4) & (\drawMod|cd6x6_addr_B[3]~21\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(4) & (!\drawMod|cd6x6_addr_B[3]~21\ & VCC))
-- \drawMod|cd6x6_addr_B[4]~23\ = CARRY((\drawMod|cd6x6_addr_B\(4) & !\drawMod|cd6x6_addr_B[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(4),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[3]~21\,
	combout => \drawMod|cd6x6_addr_B[4]~22_combout\,
	cout => \drawMod|cd6x6_addr_B[4]~23\);

-- Location: FF_X59_Y26_N11
\drawMod|cd6x6_addr_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[4]~22_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(4));

-- Location: LCCOMB_X59_Y26_N12
\drawMod|cd6x6_addr_B[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[5]~24_combout\ = (\drawMod|cd6x6_addr_B\(5) & (!\drawMod|cd6x6_addr_B[4]~23\)) # (!\drawMod|cd6x6_addr_B\(5) & ((\drawMod|cd6x6_addr_B[4]~23\) # (GND)))
-- \drawMod|cd6x6_addr_B[5]~25\ = CARRY((!\drawMod|cd6x6_addr_B[4]~23\) # (!\drawMod|cd6x6_addr_B\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(5),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[4]~23\,
	combout => \drawMod|cd6x6_addr_B[5]~24_combout\,
	cout => \drawMod|cd6x6_addr_B[5]~25\);

-- Location: FF_X59_Y26_N13
\drawMod|cd6x6_addr_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[5]~24_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(5));

-- Location: LCCOMB_X59_Y26_N14
\drawMod|cd6x6_addr_B[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[6]~26_combout\ = (\drawMod|cd6x6_addr_B\(6) & (\drawMod|cd6x6_addr_B[5]~25\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(6) & (!\drawMod|cd6x6_addr_B[5]~25\ & VCC))
-- \drawMod|cd6x6_addr_B[6]~27\ = CARRY((\drawMod|cd6x6_addr_B\(6) & !\drawMod|cd6x6_addr_B[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(6),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[5]~25\,
	combout => \drawMod|cd6x6_addr_B[6]~26_combout\,
	cout => \drawMod|cd6x6_addr_B[6]~27\);

-- Location: FF_X59_Y26_N15
\drawMod|cd6x6_addr_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[6]~26_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(6));

-- Location: LCCOMB_X59_Y26_N16
\drawMod|cd6x6_addr_B[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[7]~28_combout\ = (\drawMod|cd6x6_addr_B\(7) & (!\drawMod|cd6x6_addr_B[6]~27\)) # (!\drawMod|cd6x6_addr_B\(7) & ((\drawMod|cd6x6_addr_B[6]~27\) # (GND)))
-- \drawMod|cd6x6_addr_B[7]~29\ = CARRY((!\drawMod|cd6x6_addr_B[6]~27\) # (!\drawMod|cd6x6_addr_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(7),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[6]~27\,
	combout => \drawMod|cd6x6_addr_B[7]~28_combout\,
	cout => \drawMod|cd6x6_addr_B[7]~29\);

-- Location: FF_X59_Y26_N17
\drawMod|cd6x6_addr_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[7]~28_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(7));

-- Location: LCCOMB_X59_Y26_N18
\drawMod|cd6x6_addr_B[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[8]~30_combout\ = (\drawMod|cd6x6_addr_B\(8) & (\drawMod|cd6x6_addr_B[7]~29\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(8) & (!\drawMod|cd6x6_addr_B[7]~29\ & VCC))
-- \drawMod|cd6x6_addr_B[8]~31\ = CARRY((\drawMod|cd6x6_addr_B\(8) & !\drawMod|cd6x6_addr_B[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(8),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[7]~29\,
	combout => \drawMod|cd6x6_addr_B[8]~30_combout\,
	cout => \drawMod|cd6x6_addr_B[8]~31\);

-- Location: FF_X59_Y26_N19
\drawMod|cd6x6_addr_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[8]~30_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(8));

-- Location: LCCOMB_X59_Y26_N20
\drawMod|cd6x6_addr_B[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[9]~32_combout\ = (\drawMod|cd6x6_addr_B\(9) & (!\drawMod|cd6x6_addr_B[8]~31\)) # (!\drawMod|cd6x6_addr_B\(9) & ((\drawMod|cd6x6_addr_B[8]~31\) # (GND)))
-- \drawMod|cd6x6_addr_B[9]~33\ = CARRY((!\drawMod|cd6x6_addr_B[8]~31\) # (!\drawMod|cd6x6_addr_B\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(9),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[8]~31\,
	combout => \drawMod|cd6x6_addr_B[9]~32_combout\,
	cout => \drawMod|cd6x6_addr_B[9]~33\);

-- Location: FF_X59_Y26_N21
\drawMod|cd6x6_addr_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[9]~32_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(9));

-- Location: LCCOMB_X59_Y26_N22
\drawMod|cd6x6_addr_B[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[10]~34_combout\ = (\drawMod|cd6x6_addr_B\(10) & (\drawMod|cd6x6_addr_B[9]~33\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(10) & (!\drawMod|cd6x6_addr_B[9]~33\ & VCC))
-- \drawMod|cd6x6_addr_B[10]~35\ = CARRY((\drawMod|cd6x6_addr_B\(10) & !\drawMod|cd6x6_addr_B[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(10),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[9]~33\,
	combout => \drawMod|cd6x6_addr_B[10]~34_combout\,
	cout => \drawMod|cd6x6_addr_B[10]~35\);

-- Location: FF_X59_Y26_N23
\drawMod|cd6x6_addr_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[10]~34_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(10));

-- Location: LCCOMB_X59_Y26_N24
\drawMod|cd6x6_addr_B[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[11]~36_combout\ = (\drawMod|cd6x6_addr_B\(11) & (!\drawMod|cd6x6_addr_B[10]~35\)) # (!\drawMod|cd6x6_addr_B\(11) & ((\drawMod|cd6x6_addr_B[10]~35\) # (GND)))
-- \drawMod|cd6x6_addr_B[11]~37\ = CARRY((!\drawMod|cd6x6_addr_B[10]~35\) # (!\drawMod|cd6x6_addr_B\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|cd6x6_addr_B\(11),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[10]~35\,
	combout => \drawMod|cd6x6_addr_B[11]~36_combout\,
	cout => \drawMod|cd6x6_addr_B[11]~37\);

-- Location: FF_X59_Y26_N25
\drawMod|cd6x6_addr_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[11]~36_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(11));

-- Location: LCCOMB_X59_Y26_N26
\drawMod|cd6x6_addr_B[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[12]~38_combout\ = (\drawMod|cd6x6_addr_B\(12) & (\drawMod|cd6x6_addr_B[11]~37\ $ (GND))) # (!\drawMod|cd6x6_addr_B\(12) & (!\drawMod|cd6x6_addr_B[11]~37\ & VCC))
-- \drawMod|cd6x6_addr_B[12]~39\ = CARRY((\drawMod|cd6x6_addr_B\(12) & !\drawMod|cd6x6_addr_B[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|cd6x6_addr_B\(12),
	datad => VCC,
	cin => \drawMod|cd6x6_addr_B[11]~37\,
	combout => \drawMod|cd6x6_addr_B[12]~38_combout\,
	cout => \drawMod|cd6x6_addr_B[12]~39\);

-- Location: FF_X59_Y26_N27
\drawMod|cd6x6_addr_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[12]~38_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(12));

-- Location: LCCOMB_X59_Y26_N28
\drawMod|cd6x6_addr_B[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \drawMod|cd6x6_addr_B[13]~40_combout\ = \drawMod|cd6x6_addr_B[12]~39\ $ (\drawMod|cd6x6_addr_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \drawMod|cd6x6_addr_B\(13),
	cin => \drawMod|cd6x6_addr_B[12]~39\,
	combout => \drawMod|cd6x6_addr_B[13]~40_combout\);

-- Location: FF_X59_Y26_N29
\drawMod|cd6x6_addr_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \drawMod|cd6x6_addr_B[13]~40_combout\,
	sclr => \drawMod|ALT_INV_always0~2_combout\,
	ena => \drawMod|cd6x6_addr_B[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drawMod|cd6x6_addr_B\(13));

-- Location: LCCOMB_X57_Y26_N16
\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\ = \drawMod|cd6x6_addr_B\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \drawMod|cd6x6_addr_B\(13),
	combout => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X57_Y26_N17
\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0));

-- Location: M9K_X58_Y28_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C000380007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C00038000",
	mem_init2 => X"70000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000",
	mem_init1 => X"070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C0003800070",
	mem_init0 => X"000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C0003800070000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|ALT_INV_cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X58_Y30_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C0003",
	mem_init2 => X"8000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C000",
	mem_init1 => X"3800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C000380",
	mem_init0 => X"0070000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C00000003800070000E0001C00038000000070000E0001C00038000700000000E0001C0003800070000E00000001C0003800070000E0001C000000038",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y26_N26
\dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ = (\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\))) # (!\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- (\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datac => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X37_Y20_N6
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

-- Location: LCCOMB_X37_Y20_N4
\dw|Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|Add5~3_combout\ = \syncgen|CounterX\(6) $ (\syncgen|CounterX\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|CounterX\(7),
	combout => \dw|Add5~3_combout\);

-- Location: M9K_X24_Y25_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N20
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ = (!\drawMod|dpm_en~q\ & !\drawMod|dpm_addr_A\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_en~q\,
	datad => \drawMod|dpm_addr_A\(13),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\);

-- Location: LCCOMB_X41_Y22_N4
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\ = (\drawMod|dpm_addr_A\(15) & (!\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\);

-- Location: M9K_X24_Y22_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N22
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\);

-- Location: LCCOMB_X41_Y22_N30
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ = (!\drawMod|dpm_en~q\ & \drawMod|dpm_addr_A\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drawMod|dpm_en~q\,
	datad => \drawMod|dpm_addr_A\(13),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\);

-- Location: LCCOMB_X41_Y22_N2
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\ = (\drawMod|dpm_addr_A\(15) & (!\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\);

-- Location: M9K_X40_Y26_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y23_N8
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\ = (!\drawMod|dpm_en~q\ & (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(13) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_en~q\,
	datab => \drawMod|dpm_addr_A\(15),
	datac => \drawMod|dpm_addr_A\(13),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\);

-- Location: M9K_X24_Y26_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N28
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\);

-- Location: LCCOMB_X41_Y20_N12
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7_combout\);

-- Location: LCCOMB_X42_Y20_N22
\syncgen|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~0_combout\ = (\syncgen|CounterY\(7) & (\syncgen|CounterY\(5) & (\syncgen|CounterY\(8) & \syncgen|CounterY\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(7),
	datab => \syncgen|CounterY\(5),
	datac => \syncgen|CounterY\(8),
	datad => \syncgen|CounterY\(6),
	combout => \syncgen|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y20_N16
\syncgen|inDisplayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|inDisplayArea~0_combout\ = (\syncgen|Equal0~1_combout\ & (\syncgen|CounterX\(7) & ((\syncgen|inDisplayArea~q\) # (!\syncgen|Equal2~0_combout\)))) # (!\syncgen|Equal0~1_combout\ & (((\syncgen|inDisplayArea~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|Equal2~0_combout\,
	datab => \syncgen|Equal0~1_combout\,
	datac => \syncgen|inDisplayArea~q\,
	datad => \syncgen|CounterX\(7),
	combout => \syncgen|inDisplayArea~0_combout\);

-- Location: FF_X42_Y20_N17
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

-- Location: LCCOMB_X41_Y22_N22
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (!\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\);

-- Location: M9K_X40_Y31_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N16
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (!\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\);

-- Location: M9K_X40_Y13_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N14
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X41_Y22_N6
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & (\drawMod|dpm_addr_A\(16) & (!\drawMod|dpm_addr_A\(15) & \drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datab => \drawMod|dpm_addr_A\(16),
	datac => \drawMod|dpm_addr_A\(15),
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\);

-- Location: M9K_X58_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N24
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & \drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\);

-- Location: M9K_X58_Y24_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N26
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X41_Y22_N8
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\);

-- Location: M9K_X58_Y16_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N14
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\ = (!\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\);

-- Location: M9K_X40_Y28_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N20
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X41_Y20_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\)))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~1_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~3_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~2_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\);

-- Location: LCCOMB_X41_Y22_N10
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\ = (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\);

-- Location: M9K_X24_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N28
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\ = (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & !\drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\);

-- Location: M9K_X24_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N30
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\);

-- Location: LCCOMB_X41_Y22_N26
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\ = (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(16) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\ & \drawMod|dpm_addr_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(16),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(14),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\);

-- Location: M9K_X40_Y32_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y22_N12
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\ = (\drawMod|dpm_addr_A\(15) & (\drawMod|dpm_addr_A\(14) & (\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\ & \drawMod|dpm_addr_A\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_addr_A\(15),
	datab => \drawMod|dpm_addr_A\(14),
	datac => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~0_combout\,
	datad => \drawMod|dpm_addr_A\(16),
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\);

-- Location: M9K_X24_Y24_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N8
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\);

-- Location: LCCOMB_X42_Y23_N14
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\ = (!\drawMod|dpm_en~q\ & (!\drawMod|dpm_addr_A\(13) & (!\drawMod|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_en~q\,
	datab => \drawMod|dpm_addr_A\(13),
	datac => \drawMod|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\);

-- Location: M9K_X40_Y24_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\ = (!\drawMod|dpm_en~q\ & (\drawMod|dpm_addr_A\(13) & (!\drawMod|dpm_addr_A\(15) & \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drawMod|dpm_en~q\,
	datab => \drawMod|dpm_addr_A\(13),
	datac => \drawMod|dpm_addr_A\(15),
	datad => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~4_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\);

-- Location: M9K_X24_Y28_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y20_N2
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X41_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\) # 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\)))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~0_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\);

-- Location: LCCOMB_X41_Y20_N10
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\)))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\) # ((!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\);

-- Location: LCCOMB_X41_Y20_N16
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\R~3_combout\ & (\syncgen|inDisplayArea~q\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~7_combout\,
	datab => \R~3_combout\,
	datac => \syncgen|inDisplayArea~q\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\,
	combout => \VGA_R~0_combout\);

-- Location: FF_X41_Y20_N17
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

-- Location: M9K_X58_Y27_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C0003800070000E0001C00000003800070000E0001C000380001FFE73FFCE7FF9CFFF39FFE73FFC300CE6019CC03398067300CE60186019CC03398067300CE6019CC030A053940A72814E5029CA053",
	mem_init2 => X"940A121272424E4849C90939212724242244E4489C8913912272244E44884489C8913912272244E4489C8910861390C272184E4309C861390C210C272184E4309C861390C2721842244E4489C8913912272244E44884489C8913912272244E4489C89109093921272424E4849C90939212140A72814E5029CA053940A72814300CE6019CC03398067300CE60186019CC03398067300CE6019CC030FFF39FFE73FFCE7FF9CFFF39FFE000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C000",
	mem_init1 => X"3800070000E0001C0000FFF39FFE73FFCE7FF9CFFF39FFE18067300CE6019CC03398067300C300CE6019CC03398067300CE60185029CA053940A72814E5029CA0509093921272424E4849C90939212112272244E4489C89139122722442244E4489C8913912272244E44884309C861390C272184E4309C8610861390C272184E4309C861390C2112272244E4489C89139122722442244E4489C8913912272244E44884849C9093921272424E4849C9090A053940A72814E5029CA053940A18067300CE6019CC03398067300C300CE6019CC03398067300CE60187FF9CFFF39FFE73FFCE7FF9CFFF00003800070000E0001C00038000000070000E0001C000380",
	mem_init0 => X"0070000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800070000E0001C00038000700000000E0001C0003800070000E00007FF9CFFF39FFE73FFCE7FF9CFFF0C03398067300CE6019CC033980618067300CE6019CC03398067300C2814E5029CA053940A72814E50284849C9093921272424E4849C90908913912272244E4489C89139122112272244E4489C89139122722442184E4309C861390C272184E43084309C861390C272184E4309C86108913912272244E4489C89139122112272244E4489C89139122722442424E4849C9093921272424E48485029CA053940A72814E5029CA050C0339",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X58_Y26_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"8067300CE6019CC033980618067300CE6019CC03398067300C3FFCE7FF9CFFF39FFE73FFCE7FF80001C0003800070000E0001C00000003800070000E0001C000380007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0003800070000E0001C00038000000070000E0001C00038000700003FFCE7FF9CFFF39FFE73FFCE7FF86019CC03398067300CE6019CC030C03398067300CE6019CC0339806140A72814E5029CA053940A728142424E4849C9093921272424E48484489C8913912272244E4489C89108913912272244E4489C8913912210C272184E4309C861390C2721842184E4309C861390C2",
	mem_init2 => X"72184E43084489C8913912272244E4489C89108913912272244E4489C89139122121272424E4849C90939212724242814E5029CA053940A72814E50286019CC03398067300CE6019CC030C03398067300CE6019CC03398061FFE73FFCE7FF9CFFF39FFE73FFC0000E0001C0003800070000E00000001C0003800070000E0001C0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001C0003800070000E0001C00000003800070000E0001C000380001FFE73FFCE7FF9CFFF39FFE73FFC300CE6019CC03398067300CE60186019CC03398067300CE6019CC030A053940A72814E5029CA053940A121",
	mem_init1 => X"272424E4849C90939212724242244E4489C8913912272244E44884489C8913912272244E4489C8910861390C272184E4309C861390C210C272184E4309C861390C2721842244E4489C8913912272244E44884489C8913912272244E4489C89109093921272424E4849C90939212140A72814E5029CA053940A72814300CE6019CC03398067300CE60186019CC03398067300CE6019CC030FFF39FFE73FFCE7FF9CFFF39FFE000070000E0001C00038000700000000E0001C0003800070000E0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000E0001C0003800070000E00000001C0003800070",
	mem_init0 => X"000E0001C0000FFF39FFE73FFCE7FF9CFFF39FFE18067300CE6019CC03398067300C300CE6019CC03398067300CE60185029CA053940A72814E5029CA0509093921272424E4849C90939212112272244E4489C89139122722442244E4489C8913912272244E44884309C861390C272184E4309C8610861390C272184E4309C861390C2112272244E4489C89139122722442244E4489C8913912272244E44884849C9093921272424E4849C9090A053940A72814E5029CA053940A18067300CE6019CC03398067300C300CE6019CC03398067300CE60187FF9CFFF39FFE73FFCE7FF9CFFF00003800070000E0001C00038000000070000E0001C0003800070000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|ALT_INV_cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y26_N4
\dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\ = (\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datac => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[1]~1_combout\);

-- Location: M9K_X40_Y25_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N24
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\);

-- Location: M9K_X40_Y27_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y12_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N10
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X41_Y19_N2
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\)) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~4_combout\,
	combout => \VGA_G~0_combout\);

-- Location: M9K_X40_Y10_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N26
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\);

-- Location: M9K_X58_Y15_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N14
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X24_Y23_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y16_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00007FE00003FF00001FF80000FFC00007FE0FF83FF07FC1FF83FE0FFC1FF07FE0FF83FF07FC1FF80000FFC00007FE00003FF00001FF80000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N16
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X42_Y19_N8
\VGA_G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~3_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\)) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~5_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~7_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~6_combout\,
	combout => \VGA_G~3_combout\);

-- Location: M9K_X24_Y21_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y30_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N10
\VGA_G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & 
-- (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \VGA_G~1_combout\);

-- Location: M9K_X40_Y15_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y15_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N22
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\);

-- Location: M9K_X40_Y20_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y18_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X42_Y19_N28
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\);

-- Location: LCCOMB_X42_Y19_N0
\VGA_G~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~2_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\)))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\VGA_G~1_combout\) # 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_G~1_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\,
	combout => \VGA_G~2_combout\);

-- Location: LCCOMB_X42_Y19_N2
\VGA_G~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~4_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & ((\VGA_G~2_combout\))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (\VGA_G~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \VGA_G~3_combout\,
	datad => \VGA_G~2_combout\,
	combout => \VGA_G~4_combout\);

-- Location: LCCOMB_X42_Y19_N12
\VGA_G~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~5_combout\ = (\syncgen|inDisplayArea~q\ & (\R~3_combout\ & ((\VGA_G~0_combout\) # (\VGA_G~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|inDisplayArea~q\,
	datab => \VGA_G~0_combout\,
	datac => \R~3_combout\,
	datad => \VGA_G~4_combout\,
	combout => \VGA_G~5_combout\);

-- Location: FF_X42_Y19_N13
\VGA_G~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clkstate~clkctrl_outclk\,
	d => \VGA_G~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G~reg0_q\);

-- Location: M9K_X58_Y29_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X58_Y25_N0
\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_cards6x6_8fa761c7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|cards6x6:cd6x6|altsyncram:ram_rtl_0|altsyncram_tl61:auto_generated|ALTSYNCRAM",
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
	ena0 => \drawMod|ALT_INV_cd6x6_addr_B\(13),
	portaaddr => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y25_N16
\dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\ = (\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)) # (!\dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0) & 
-- ((\dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \dw|cd6x6|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dw|cd6x6|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \dw|cd6x6|ram_rtl_0|auto_generated|mux2|result_node[2]~2_combout\);

-- Location: M9K_X40_Y11_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode494w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y16_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode484w[3]~1_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N30
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\);

-- Location: M9K_X24_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode504w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y29_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode514w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N16
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\);

-- Location: LCCOMB_X41_Y19_N26
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\) # 
-- (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\);

-- Location: M9K_X40_Y21_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode604w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y14_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode594w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N12
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11_combout\);

-- Location: M9K_X58_Y22_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode474w[3]~5_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode464w[3]~4_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N4
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\);

-- Location: M9K_X24_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00007FE00003FF00001FF80000FFC00007FE0FF83FF07FC1FF83FE0FFC1FF07FE0FF83FF07FC1FF80000FFC00007FE00003FF00001FF80000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode437w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X40_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode454w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N18
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X41_Y19_N22
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11_combout\)) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & 
-- (((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~11_combout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~9_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~8_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\);

-- Location: M9K_X40_Y22_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode544w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y17_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode533w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N14
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\);

-- Location: M9K_X58_Y14_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode564w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: M9K_X58_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode554w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N8
\dw|dpm|ram_rtl_0|auto_generated|mux3|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\);

-- Location: M9K_X58_Y21_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode584w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X24_Y14_N0
\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/VGA.ram0_dualPortMem_2281280c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "draw:dw|dualPortMem:dpm|altsyncram:ram_rtl_0|altsyncram_vmi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
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
	port_b_address_clock => "clock1",
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
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \dw|dpm|ram_rtl_0|auto_generated|decode2|w_anode574w[3]~0_combout\,
	ena1 => \dw|dpm_re~q\,
	portadatain => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X41_Y19_N20
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ = (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1) & ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & (\dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\)) # 
-- (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0) & ((\dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\);

-- Location: LCCOMB_X41_Y19_N6
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\)))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~10_combout\,
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|_~11_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\);

-- Location: LCCOMB_X41_Y19_N0
\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ = (\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\) # ((\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & 
-- \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\)))) # (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3) & (!\dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2) & (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(2),
	datab => \dw|dpm|ram_rtl_0|auto_generated|address_reg_b\(3),
	datac => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~12_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\,
	combout => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\);

-- Location: LCCOMB_X41_Y19_N28
\VGA_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\syncgen|inDisplayArea~q\ & (\R~3_combout\ & ((\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\) # (\dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\,
	datab => \syncgen|inDisplayArea~q\,
	datac => \R~3_combout\,
	datad => \dw|dpm|ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\,
	combout => \VGA_B~0_combout\);

-- Location: FF_X41_Y19_N29
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

-- Location: LCCOMB_X37_Y20_N8
\syncgen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal1~1_combout\ = (\syncgen|CounterX\(7) & (!\syncgen|CounterX\(5) & (!\syncgen|CounterX\(6) & \syncgen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterX\(7),
	datab => \syncgen|CounterX\(5),
	datac => \syncgen|CounterX\(6),
	datad => \syncgen|Equal1~0_combout\,
	combout => \syncgen|Equal1~1_combout\);

-- Location: FF_X37_Y20_N9
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

-- Location: LCCOMB_X38_Y20_N8
\syncgen|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~1_combout\ = (!\syncgen|CounterY\(2) & (\syncgen|CounterY\(1) & (!\syncgen|CounterY\(0) & !\syncgen|CounterY\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|CounterY\(2),
	datab => \syncgen|CounterY\(1),
	datac => \syncgen|CounterY\(0),
	datad => \syncgen|CounterY\(3),
	combout => \syncgen|Equal2~1_combout\);

-- Location: LCCOMB_X39_Y20_N20
\syncgen|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \syncgen|Equal2~2_combout\ = (\syncgen|Equal2~1_combout\ & (\syncgen|Equal2~0_combout\ & !\syncgen|CounterY\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \syncgen|Equal2~1_combout\,
	datac => \syncgen|Equal2~0_combout\,
	datad => \syncgen|CounterY\(4),
	combout => \syncgen|Equal2~2_combout\);

-- Location: FF_X39_Y20_N21
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


