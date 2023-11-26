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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/24/2023 10:04:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          variable_freqdiv
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY variable_freqdiv_vhd_vec_tst IS
END variable_freqdiv_vhd_vec_tst;
ARCHITECTURE variable_freqdiv_arch OF variable_freqdiv_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL GND : STD_LOGIC;
SIGNAL M : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL M_out : STD_LOGIC;
SIGNAL N : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL N_out : STD_LOGIC;
COMPONENT variable_freqdiv
	PORT (
	CLK : IN STD_LOGIC;
	\GND\ : IN STD_LOGIC;
	M : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	M_out : OUT STD_LOGIC;
	N : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	N_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : variable_freqdiv
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	\GND\ => GND,
	M => M,
	M_out => M_out,
	N => N,
	N_out => N_out
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- GND
t_prcs_GND: PROCESS
BEGIN
	GND <= '0';
WAIT;
END PROCESS t_prcs_GND;
-- M[5]
t_prcs_M_5: PROCESS
BEGIN
	M(5) <= '0';
WAIT;
END PROCESS t_prcs_M_5;
-- M[4]
t_prcs_M_4: PROCESS
BEGIN
	M(4) <= '0';
WAIT;
END PROCESS t_prcs_M_4;
-- M[3]
t_prcs_M_3: PROCESS
BEGIN
	M(3) <= '0';
WAIT;
END PROCESS t_prcs_M_3;
-- M[2]
t_prcs_M_2: PROCESS
BEGIN
	M(2) <= '0';
WAIT;
END PROCESS t_prcs_M_2;
-- M[1]
t_prcs_M_1: PROCESS
BEGIN
	M(1) <= '0';
WAIT;
END PROCESS t_prcs_M_1;
-- M[0]
t_prcs_M_0: PROCESS
BEGIN
	M(0) <= '1';
WAIT;
END PROCESS t_prcs_M_0;
END variable_freqdiv_arch;
