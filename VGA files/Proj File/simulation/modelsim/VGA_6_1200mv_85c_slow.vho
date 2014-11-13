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

-- DATE "11/09/2014 21:09:53"

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

ENTITY 	memory IS
    PORT (
	WE : IN std_logic;
	RE : IN std_logic;
	clock : IN std_logic;
	wAddr : IN std_logic_vector(16 DOWNTO 0);
	rAddr : IN std_logic_vector(16 DOWNTO 0);
	dataIn : IN std_logic_vector(2 DOWNTO 0);
	dataOut : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END memory;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[16]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RE	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[15]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[16]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[6]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wAddr[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rAddr[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_RE : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_wAddr : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_rAddr : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_dataIn : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(2 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \rAddr[14]~input_o\ : std_logic;
SIGNAL \RE~input_o\ : std_logic;
SIGNAL \wAddr[16]~input_o\ : std_logic;
SIGNAL \wAddr[14]~input_o\ : std_logic;
SIGNAL \wAddr[15]~input_o\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \wAddr[13]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \wAddr[0]~input_o\ : std_logic;
SIGNAL \wAddr[1]~input_o\ : std_logic;
SIGNAL \wAddr[2]~input_o\ : std_logic;
SIGNAL \wAddr[3]~input_o\ : std_logic;
SIGNAL \wAddr[4]~input_o\ : std_logic;
SIGNAL \wAddr[5]~input_o\ : std_logic;
SIGNAL \wAddr[6]~input_o\ : std_logic;
SIGNAL \wAddr[7]~input_o\ : std_logic;
SIGNAL \wAddr[8]~input_o\ : std_logic;
SIGNAL \wAddr[9]~input_o\ : std_logic;
SIGNAL \wAddr[10]~input_o\ : std_logic;
SIGNAL \wAddr[11]~input_o\ : std_logic;
SIGNAL \wAddr[12]~input_o\ : std_logic;
SIGNAL \rAddr[0]~input_o\ : std_logic;
SIGNAL \rAddr[1]~input_o\ : std_logic;
SIGNAL \rAddr[2]~input_o\ : std_logic;
SIGNAL \rAddr[3]~input_o\ : std_logic;
SIGNAL \rAddr[4]~input_o\ : std_logic;
SIGNAL \rAddr[5]~input_o\ : std_logic;
SIGNAL \rAddr[6]~input_o\ : std_logic;
SIGNAL \rAddr[7]~input_o\ : std_logic;
SIGNAL \rAddr[8]~input_o\ : std_logic;
SIGNAL \rAddr[9]~input_o\ : std_logic;
SIGNAL \rAddr[10]~input_o\ : std_logic;
SIGNAL \rAddr[11]~input_o\ : std_logic;
SIGNAL \rAddr[12]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \rAddr[13]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~4_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~5_combout\ : std_logic;
SIGNAL \rAddr[15]~input_o\ : std_logic;
SIGNAL \rAddr[16]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~3_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~1_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~2_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~6_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~7_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~8_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~9_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~10_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~11_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~12_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~16_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~17_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~14_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~13_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~15_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|_~18_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_WE <= WE;
ww_RE <= RE;
ww_clock <= clock;
ww_wAddr <= wAddr;
ww_rAddr <= rAddr;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dataIn[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \dataIn[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \dataIn[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\wAddr[12]~input_o\ & \wAddr[11]~input_o\ & \wAddr[10]~input_o\ & \wAddr[9]~input_o\ & \wAddr[8]~input_o\ & \wAddr[7]~input_o\ & \wAddr[6]~input_o\ & \wAddr[5]~input_o\ & \wAddr[4]~input_o\ & 
\wAddr[3]~input_o\ & \wAddr[2]~input_o\ & \wAddr[1]~input_o\ & \wAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\rAddr[12]~input_o\ & \rAddr[11]~input_o\ & \rAddr[10]~input_o\ & \rAddr[9]~input_o\ & \rAddr[8]~input_o\ & \rAddr[7]~input_o\ & \rAddr[6]~input_o\ & \rAddr[5]~input_o\ & \rAddr[4]~input_o\ & 
\rAddr[3]~input_o\ & \rAddr[2]~input_o\ & \rAddr[1]~input_o\ & \rAddr[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X0_Y15_N9
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

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

-- Location: IOIBUF_X38_Y0_N1
\rAddr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(14),
	o => \rAddr[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\RE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RE,
	o => \RE~input_o\);

-- Location: FF_X34_Y16_N23
\ram_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rAddr[14]~input_o\,
	sload => VCC,
	ena => \RE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rtl_0|auto_generated|address_reg_b\(1));

-- Location: IOIBUF_X0_Y15_N1
\wAddr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(16),
	o => \wAddr[16]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\wAddr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(14),
	o => \wAddr[14]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\wAddr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(15),
	o => \wAddr[15]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\wAddr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(13),
	o => \wAddr[13]~input_o\);

-- Location: LCCOMB_X45_Y16_N8
\ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\ = (\WE~input_o\ & \wAddr[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~input_o\,
	datad => \wAddr[13]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (\wAddr[14]~input_o\ & (\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\);

-- Location: IOIBUF_X16_Y34_N15
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\wAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(0),
	o => \wAddr[0]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\wAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(1),
	o => \wAddr[1]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\wAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(2),
	o => \wAddr[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\wAddr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(3),
	o => \wAddr[3]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\wAddr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(4),
	o => \wAddr[4]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\wAddr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(5),
	o => \wAddr[5]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\wAddr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(6),
	o => \wAddr[6]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\wAddr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(7),
	o => \wAddr[7]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\wAddr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(8),
	o => \wAddr[8]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\wAddr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(9),
	o => \wAddr[9]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\wAddr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(10),
	o => \wAddr[10]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\wAddr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(11),
	o => \wAddr[11]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\wAddr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wAddr(12),
	o => \wAddr[12]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\rAddr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(0),
	o => \rAddr[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\rAddr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(1),
	o => \rAddr[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\rAddr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(2),
	o => \rAddr[2]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\rAddr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(3),
	o => \rAddr[3]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\rAddr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(4),
	o => \rAddr[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\rAddr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(5),
	o => \rAddr[5]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\rAddr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(6),
	o => \rAddr[6]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\rAddr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(7),
	o => \rAddr[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\rAddr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(8),
	o => \rAddr[8]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\rAddr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(9),
	o => \rAddr[9]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\rAddr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(10),
	o => \rAddr[10]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\rAddr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(11),
	o => \rAddr[11]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\rAddr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(12),
	o => \rAddr[12]~input_o\);

-- Location: M9K_X22_Y16_N0
\ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N2
\ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\ = (!\wAddr[16]~input_o\ & (!\wAddr[14]~input_o\ & (\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\);

-- Location: M9K_X22_Y29_N0
\ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X53_Y16_N8
\rAddr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(13),
	o => \rAddr[13]~input_o\);

-- Location: FF_X34_Y16_N21
\ram_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rAddr[13]~input_o\,
	sload => VCC,
	ena => \RE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X23_Y16_N12
\ram_rtl_0|auto_generated|mux3|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\);

-- Location: LCCOMB_X45_Y16_N2
\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ = (\WE~input_o\ & !\wAddr[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~input_o\,
	datad => \wAddr[13]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\ = (\wAddr[16]~input_o\ & (\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & !\wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\);

-- Location: M9K_X22_Y23_N0
\ram_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N4
\ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\ = (\wAddr[16]~input_o\ & (\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & \wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\);

-- Location: M9K_X22_Y18_N0
\ram_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N6
\ram_rtl_0|auto_generated|mux3|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a42~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a36~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (\wAddr[14]~input_o\ & (!\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\);

-- Location: M9K_X22_Y17_N0
\ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N10
\ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (!\wAddr[14]~input_o\ & (!\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\);

-- Location: M9K_X22_Y6_N0
\ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N30
\ram_rtl_0|auto_generated|mux3|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~4_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\ram_rtl_0|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \ram_rtl_0|auto_generated|mux3|_~4_combout\);

-- Location: LCCOMB_X24_Y16_N30
\ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (!\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & !\wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\);

-- Location: M9K_X22_Y11_N0
\ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N20
\ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (!\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & \wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\);

-- Location: M9K_X22_Y24_N0
\ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N8
\ram_rtl_0|auto_generated|mux3|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~5_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \ram_rtl_0|auto_generated|mux3|_~5_combout\);

-- Location: IOIBUF_X53_Y15_N8
\rAddr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(15),
	o => \rAddr[15]~input_o\);

-- Location: FF_X34_Y16_N27
\ram_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rAddr[15]~input_o\,
	sload => VCC,
	ena => \RE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rtl_0|auto_generated|address_reg_b\(2));

-- Location: IOIBUF_X53_Y14_N8
\rAddr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rAddr(16),
	o => \rAddr[16]~input_o\);

-- Location: FF_X34_Y16_N9
\ram_rtl_0|auto_generated|address_reg_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rAddr[16]~input_o\,
	sload => VCC,
	ena => \RE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rtl_0|auto_generated|address_reg_b\(3));

-- Location: LCCOMB_X34_Y16_N24
\ram_rtl_0|auto_generated|mux3|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~3_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(2) & !\ram_rtl_0|auto_generated|address_reg_b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(3),
	combout => \ram_rtl_0|auto_generated|mux3|_~3_combout\);

-- Location: LCCOMB_X24_Y16_N14
\ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\ = (\wAddr[16]~input_o\ & (!\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & !\wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\);

-- Location: M9K_X22_Y21_N0
\ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N28
\ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\ = (\wAddr[16]~input_o\ & (!\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & \wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\);

-- Location: M9K_X22_Y13_N0
\ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N10
\ram_rtl_0|auto_generated|mux3|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~1_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a30~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a24~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~1_combout\);

-- Location: LCCOMB_X24_Y16_N26
\ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\ = (\wAddr[16]~input_o\ & (!\wAddr[14]~input_o\ & (!\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\);

-- Location: M9K_X22_Y27_N0
\ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N24
\ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\ = (\wAddr[16]~input_o\ & (\wAddr[14]~input_o\ & (!\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\);

-- Location: M9K_X22_Y10_N0
\ram_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N16
\ram_rtl_0|auto_generated|mux3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~0_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a33~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a27~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~0_combout\);

-- Location: LCCOMB_X23_Y16_N28
\ram_rtl_0|auto_generated|mux3|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~2_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(3) & ((\ram_rtl_0|auto_generated|mux3|_~1_combout\) # ((\ram_rtl_0|auto_generated|address_reg_b\(2)) # (\ram_rtl_0|auto_generated|mux3|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~1_combout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \ram_rtl_0|auto_generated|mux3|_~0_combout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(3),
	combout => \ram_rtl_0|auto_generated|mux3|_~2_combout\);

-- Location: LCCOMB_X23_Y16_N2
\ram_rtl_0|auto_generated|mux3|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~6_combout\ = (\ram_rtl_0|auto_generated|mux3|_~2_combout\) # ((\ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|_~4_combout\) # (\ram_rtl_0|auto_generated|mux3|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~4_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|_~5_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|_~3_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|_~2_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|_~6_combout\);

-- Location: LCCOMB_X24_Y16_N16
\ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\ = (\wAddr[16]~input_o\ & (\wAddr[14]~input_o\ & (\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\);

-- Location: M9K_X22_Y7_N0
\ram_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N18
\ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\ = (\wAddr[16]~input_o\ & (!\wAddr[14]~input_o\ & (\wAddr[15]~input_o\ & \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[14]~input_o\,
	datac => \wAddr[15]~input_o\,
	datad => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~0_combout\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\);

-- Location: M9K_X22_Y14_N0
\ram_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N20
\ram_rtl_0|auto_generated|mux3|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a45~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a39~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\ram_rtl_0|auto_generated|mux3|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\ = (\ram_rtl_0|auto_generated|mux3|_~6_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[0]~1_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|_~6_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|result_node[0]~0_combout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\);

-- Location: LCCOMB_X24_Y16_N12
\ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\ = (!\wAddr[16]~input_o\ & (\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & \wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\);

-- Location: M9K_X22_Y28_N0
\ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y16_N6
\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\ = (!\wAddr[16]~input_o\ & (\wAddr[15]~input_o\ & (\ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\ & !\wAddr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wAddr[16]~input_o\,
	datab => \wAddr[15]~input_o\,
	datac => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~0_combout\,
	datad => \wAddr[14]~input_o\,
	combout => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\);

-- Location: M9K_X22_Y22_N0
\ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N22
\ram_rtl_0|auto_generated|mux3|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\);

-- Location: LCCOMB_X23_Y16_N18
\ram_rtl_0|auto_generated|mux3|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(2) & !\ram_rtl_0|auto_generated|address_reg_b\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(3),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ram_rtl_0|auto_generated|mux3|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ = (\ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\) # 
-- (\ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[0]~4_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|result_node[0]~2_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|result_node[0]~5_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[0]~6_combout\);

-- Location: IOIBUF_X43_Y34_N15
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: M9K_X33_Y8_N0
\ram_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y15_N0
\ram_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y16_N6
\ram_rtl_0|auto_generated|mux3|result_node[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a46~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a40~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \ram_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\);

-- Location: M9K_X33_Y18_N0
\ram_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\ram_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y16_N0
\ram_rtl_0|auto_generated|mux3|result_node[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a43~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a37~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \ram_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\);

-- Location: M9K_X22_Y25_N0
\ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y9_N0
\ram_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N26
\ram_rtl_0|auto_generated|mux3|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~7_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a34~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a28~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(0),
	combout => \ram_rtl_0|auto_generated|mux3|_~7_combout\);

-- Location: M9K_X22_Y15_N0
\ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y19_N0
\ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y16_N4
\ram_rtl_0|auto_generated|mux3|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~8_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a31~portbdataout\)) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\ram_rtl_0|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datad => \ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \ram_rtl_0|auto_generated|mux3|_~8_combout\);

-- Location: LCCOMB_X23_Y16_N14
\ram_rtl_0|auto_generated|mux3|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~9_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(3) & ((\ram_rtl_0|auto_generated|mux3|_~7_combout\) # ((\ram_rtl_0|auto_generated|address_reg_b\(2)) # (\ram_rtl_0|auto_generated|mux3|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~7_combout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datac => \ram_rtl_0|auto_generated|mux3|_~8_combout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(3),
	combout => \ram_rtl_0|auto_generated|mux3|_~9_combout\);

-- Location: M9K_X33_Y9_N0
\ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y16_N24
\ram_rtl_0|auto_generated|mux3|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~10_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~10_combout\);

-- Location: M9K_X33_Y11_N0
\ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y24_N0
\ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y16_N26
\ram_rtl_0|auto_generated|mux3|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~11_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a7~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datab => \ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~11_combout\);

-- Location: LCCOMB_X32_Y16_N12
\ram_rtl_0|auto_generated|mux3|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~12_combout\ = (\ram_rtl_0|auto_generated|mux3|_~9_combout\) # ((\ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|_~10_combout\) # (\ram_rtl_0|auto_generated|mux3|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~9_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|_~10_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|_~11_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|_~3_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|_~12_combout\);

-- Location: LCCOMB_X32_Y16_N10
\ram_rtl_0|auto_generated|mux3|result_node[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\ = (\ram_rtl_0|auto_generated|mux3|_~12_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[1]~7_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|result_node[1]~8_combout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \ram_rtl_0|auto_generated|mux3|_~12_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\);

-- Location: M9K_X33_Y28_N0
\ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y12_N0
\ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N4
\ram_rtl_0|auto_generated|mux3|result_node[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(0) & (\ram_rtl_0|auto_generated|ram_block1a19~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\);

-- Location: M9K_X33_Y20_N0
\ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y29_N0
\ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N18
\ram_rtl_0|auto_generated|mux3|result_node[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|ram_block1a16~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(0) & (\ram_rtl_0|auto_generated|ram_block1a13~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\);

-- Location: LCCOMB_X34_Y16_N30
\ram_rtl_0|auto_generated|mux3|result_node[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\ = (\ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\) # 
-- (\ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[1]~9_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|result_node[1]~11_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|result_node[1]~10_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[1]~12_combout\);

-- Location: IOIBUF_X34_Y0_N1
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: M9K_X33_Y26_N0
\ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode666w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y13_N0
\ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode676w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N22
\ram_rtl_0|auto_generated|mux3|result_node[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|ram_block1a23~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(0) & (\ram_rtl_0|auto_generated|ram_block1a20~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|address_reg_b\(1),
	datad => \ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\);

-- Location: M9K_X33_Y7_N0
\ram_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode766w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y14_N0
\ram_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode746w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N10
\ram_rtl_0|auto_generated|mux3|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a47~portbdataout\)) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a41~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\);

-- Location: M9K_X33_Y21_N0
\ram_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode736w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y19_N0
\ram_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode756w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N28
\ram_rtl_0|auto_generated|mux3|result_node[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a44~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a38~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\);

-- Location: M9K_X33_Y6_N0
\ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode616w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y17_N0
\ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode636w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N12
\ram_rtl_0|auto_generated|mux3|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~16_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~16_combout\);

-- Location: M9K_X33_Y10_N0
\ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode599w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode626w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N14
\ram_rtl_0|auto_generated|mux3|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~17_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~17_combout\);

-- Location: M9K_X22_Y12_N0
\ram_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode716w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y20_N0
\ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode695w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N2
\ram_rtl_0|auto_generated|mux3|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~14_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & (\ram_rtl_0|auto_generated|ram_block1a32~portbdataout\)) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\ram_rtl_0|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~14_combout\);

-- Location: M9K_X22_Y26_N0
\ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode706w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X22_Y8_N0
\ram_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode726w[3]~0_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N16
\ram_rtl_0|auto_generated|mux3|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~13_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|ram_block1a35~portbdataout\))) # (!\ram_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\ram_rtl_0|auto_generated|ram_block1a29~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datab => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datac => \ram_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|_~13_combout\);

-- Location: LCCOMB_X34_Y16_N8
\ram_rtl_0|auto_generated|mux3|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~15_combout\ = (\ram_rtl_0|auto_generated|address_reg_b\(3) & ((\ram_rtl_0|auto_generated|mux3|_~14_combout\) # ((\ram_rtl_0|auto_generated|mux3|_~13_combout\) # (\ram_rtl_0|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~14_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|_~13_combout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(3),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(2),
	combout => \ram_rtl_0|auto_generated|mux3|_~15_combout\);

-- Location: LCCOMB_X34_Y16_N0
\ram_rtl_0|auto_generated|mux3|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|_~18_combout\ = (\ram_rtl_0|auto_generated|mux3|_~15_combout\) # ((\ram_rtl_0|auto_generated|mux3|_~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|_~16_combout\) # (\ram_rtl_0|auto_generated|mux3|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|_~16_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|_~17_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|_~15_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|_~3_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|_~18_combout\);

-- Location: LCCOMB_X34_Y16_N26
\ram_rtl_0|auto_generated|mux3|result_node[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\ = (\ram_rtl_0|auto_generated|mux3|_~18_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[2]~13_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|result_node[2]~14_combout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(2),
	datad => \ram_rtl_0|auto_generated|mux3|_~18_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\);

-- Location: M9K_X33_Y22_N0
\ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode646w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_o5e1:auto_generated|ALTSYNCRAM",
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
	portawe => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => \clock~inputclkctrl_outclk\,
	ena0 => \ram_rtl_0|auto_generated|decode2|w_anode656w[3]~1_combout\,
	ena1 => \RE~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X34_Y16_N20
\ram_rtl_0|auto_generated|mux3|result_node[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\ = (!\ram_rtl_0|auto_generated|address_reg_b\(1) & ((\ram_rtl_0|auto_generated|address_reg_b\(0) & ((\ram_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # 
-- (!\ram_rtl_0|auto_generated|address_reg_b\(0) & (\ram_rtl_0|auto_generated|ram_block1a14~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datab => \ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \ram_rtl_0|auto_generated|address_reg_b\(0),
	datad => \ram_rtl_0|auto_generated|address_reg_b\(1),
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\);

-- Location: LCCOMB_X34_Y16_N6
\ram_rtl_0|auto_generated|mux3|result_node[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\ = (\ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\) # ((\ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\ & ((\ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\) # 
-- (\ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rtl_0|auto_generated|mux3|result_node[2]~17_combout\,
	datab => \ram_rtl_0|auto_generated|mux3|result_node[0]~3_combout\,
	datac => \ram_rtl_0|auto_generated|mux3|result_node[2]~15_combout\,
	datad => \ram_rtl_0|auto_generated|mux3|result_node[2]~16_combout\,
	combout => \ram_rtl_0|auto_generated|mux3|result_node[2]~18_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;
END structure;


