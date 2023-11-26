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

-- DATE "11/25/2023 18:47:06"

-- 
-- Device: Altera 10M02SCM153C8G Package MBGA153
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_J1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_H5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_D6,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_E6,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	variable_freqdiv IS
    PORT (
	M_out : OUT std_logic;
	M_set : IN std_logic;
	CLK_base : IN std_logic;
	div_value : IN std_logic_vector(5 DOWNTO 0);
	N_out : OUT std_logic;
	N_set : IN std_logic;
	checkM : OUT std_logic_vector(5 DOWNTO 0);
	checkN : OUT std_logic_vector(5 DOWNTO 0)
	);
END variable_freqdiv;

-- Design Ports Information
-- M_out	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_out	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkM[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- checkN[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_base	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_set	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_value[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_set	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF variable_freqdiv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M_out : std_logic;
SIGNAL ww_M_set : std_logic;
SIGNAL ww_CLK_base : std_logic;
SIGNAL ww_div_value : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_N_out : std_logic;
SIGNAL ww_N_set : std_logic;
SIGNAL ww_checkM : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_checkN : std_logic_vector(5 DOWNTO 0);
SIGNAL \N_set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M_set~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_base~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \M_out~output_o\ : std_logic;
SIGNAL \N_out~output_o\ : std_logic;
SIGNAL \checkM[5]~output_o\ : std_logic;
SIGNAL \checkM[4]~output_o\ : std_logic;
SIGNAL \checkM[3]~output_o\ : std_logic;
SIGNAL \checkM[2]~output_o\ : std_logic;
SIGNAL \checkM[1]~output_o\ : std_logic;
SIGNAL \checkM[0]~output_o\ : std_logic;
SIGNAL \checkN[5]~output_o\ : std_logic;
SIGNAL \checkN[4]~output_o\ : std_logic;
SIGNAL \checkN[3]~output_o\ : std_logic;
SIGNAL \checkN[2]~output_o\ : std_logic;
SIGNAL \checkN[1]~output_o\ : std_logic;
SIGNAL \checkN[0]~output_o\ : std_logic;
SIGNAL \div_value[0]~input_o\ : std_logic;
SIGNAL \M_set~input_o\ : std_logic;
SIGNAL \M_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_value[1]~input_o\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \CLK_base~input_o\ : std_logic;
SIGNAL \CLK_base~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \i~combout\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \div_value[2]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \div_value[3]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \div_value[4]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \div_value[5]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \N_set~input_o\ : std_logic;
SIGNAL \N_set~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst~1_combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \i1~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \inst8|inst2~0_combout\ : std_logic;
SIGNAL \div_M|auto_generated|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \div_M10|auto_generated|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst4|latches\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|latches\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

M_out <= ww_M_out;
ww_M_set <= M_set;
ww_CLK_base <= CLK_base;
ww_div_value <= div_value;
N_out <= ww_N_out;
ww_N_set <= N_set;
checkM <= ww_checkM;
checkN <= ww_checkN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\N_set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \N_set~input_o\);

\M_set~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M_set~input_o\);

\CLK_base~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_base~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X10_Y6_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y7_N30
\M_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \M_out~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\N_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst2~0_combout\,
	devoe => ww_devoe,
	o => \N_out~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\checkM[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(5),
	devoe => ww_devoe,
	o => \checkM[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\checkM[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(4),
	devoe => ww_devoe,
	o => \checkM[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\checkM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(3),
	devoe => ww_devoe,
	o => \checkM[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\checkM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(2),
	devoe => ww_devoe,
	o => \checkM[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\checkM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(1),
	devoe => ww_devoe,
	o => \checkM[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\checkM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|latches\(0),
	devoe => ww_devoe,
	o => \checkM[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\checkN[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(5),
	devoe => ww_devoe,
	o => \checkN[5]~output_o\);

-- Location: IOOBUF_X18_Y4_N2
\checkN[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(4),
	devoe => ww_devoe,
	o => \checkN[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\checkN[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(3),
	devoe => ww_devoe,
	o => \checkN[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\checkN[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(2),
	devoe => ww_devoe,
	o => \checkN[2]~output_o\);

-- Location: IOOBUF_X6_Y7_N30
\checkN[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(1),
	devoe => ww_devoe,
	o => \checkN[1]~output_o\);

-- Location: IOOBUF_X6_Y7_N16
\checkN[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|latches\(0),
	devoe => ww_devoe,
	o => \checkN[0]~output_o\);

-- Location: IOIBUF_X1_Y7_N15
\div_value[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(0),
	o => \div_value[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\M_set~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_set,
	o => \M_set~input_o\);

-- Location: CLKCTRL_G4
\M_set~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M_set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M_set~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N30
\inst4|latches[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(0) = (GLOBAL(\M_set~inputclkctrl_outclk\) & (\div_value[0]~input_o\)) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & ((\inst4|latches\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[0]~input_o\,
	datac => \inst4|latches\(0),
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(0));

-- Location: IOIBUF_X1_Y7_N8
\div_value[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(1),
	o => \div_value[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N14
\inst4|latches[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(1) = (GLOBAL(\M_set~inputclkctrl_outclk\) & (\div_value[1]~input_o\)) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & ((\inst4|latches\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_value[1]~input_o\,
	datac => \inst4|latches\(1),
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(1));

-- Location: LCCOMB_X1_Y4_N2
\inst|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\inst4|latches\(0)) # (\inst4|latches\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|latches\(0),
	datad => \inst4|latches\(1),
	combout => \inst|inst~1_combout\);

-- Location: IOIBUF_X0_Y4_N15
\CLK_base~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_base,
	o => \CLK_base~input_o\);

-- Location: CLKCTRL_G3
\CLK_base~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_base~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_base~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N16
\div_M|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita0~combout\ = !\div_M|auto_generated|counter_reg_bit\(0)
-- \div_M|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\div_M|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(0),
	combout => \div_M|auto_generated|counter_comb_bita0~combout\,
	cout => \div_M|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y4_N0
i : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i~combout\ = (\M_set~input_o\) # (\div_M|auto_generated|counter_comb_bita5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_set~input_o\,
	datad => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	combout => \i~combout\);

-- Location: FF_X1_Y4_N17
\div_M|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita0~combout\,
	asdata => \inst4|latches\(0),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y4_N18
\div_M|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita1~combout\ = (\div_M|auto_generated|counter_reg_bit\(1) & ((GND) # (!\div_M|auto_generated|counter_comb_bita0~COUT\))) # (!\div_M|auto_generated|counter_reg_bit\(1) & (\div_M|auto_generated|counter_comb_bita0~COUT\ $ 
-- (GND)))
-- \div_M|auto_generated|counter_comb_bita1~COUT\ = CARRY((\div_M|auto_generated|counter_reg_bit\(1)) # (!\div_M|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita0~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita1~combout\,
	cout => \div_M|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y4_N19
\div_M|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita1~combout\,
	asdata => \inst4|latches\(1),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y4_N20
\div_M|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita2~combout\ = (\div_M|auto_generated|counter_reg_bit\(2) & (\div_M|auto_generated|counter_comb_bita1~COUT\ & VCC)) # (!\div_M|auto_generated|counter_reg_bit\(2) & (!\div_M|auto_generated|counter_comb_bita1~COUT\))
-- \div_M|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\div_M|auto_generated|counter_reg_bit\(2) & !\div_M|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita1~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita2~combout\,
	cout => \div_M|auto_generated|counter_comb_bita2~COUT\);

-- Location: IOIBUF_X3_Y7_N8
\div_value[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(2),
	o => \div_value[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\inst4|latches[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(2) = (GLOBAL(\M_set~inputclkctrl_outclk\) & (\div_value[2]~input_o\)) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & ((\inst4|latches\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[2]~input_o\,
	datac => \inst4|latches\(2),
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(2));

-- Location: FF_X1_Y4_N21
\div_M|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita2~combout\,
	asdata => \inst4|latches\(2),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y4_N22
\div_M|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita3~combout\ = (\div_M|auto_generated|counter_reg_bit\(3) & ((GND) # (!\div_M|auto_generated|counter_comb_bita2~COUT\))) # (!\div_M|auto_generated|counter_reg_bit\(3) & (\div_M|auto_generated|counter_comb_bita2~COUT\ $ 
-- (GND)))
-- \div_M|auto_generated|counter_comb_bita3~COUT\ = CARRY((\div_M|auto_generated|counter_reg_bit\(3)) # (!\div_M|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita2~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita3~combout\,
	cout => \div_M|auto_generated|counter_comb_bita3~COUT\);

-- Location: IOIBUF_X3_Y7_N1
\div_value[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(3),
	o => \div_value[3]~input_o\);

-- Location: LCCOMB_X1_Y4_N10
\inst4|latches[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(3) = (GLOBAL(\M_set~inputclkctrl_outclk\) & ((\div_value[3]~input_o\))) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & (\inst4|latches\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|latches\(3),
	datac => \div_value[3]~input_o\,
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(3));

-- Location: FF_X1_Y4_N23
\div_M|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita3~combout\,
	asdata => \inst4|latches\(3),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X1_Y4_N24
\div_M|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita4~combout\ = (\div_M|auto_generated|counter_reg_bit\(4) & (\div_M|auto_generated|counter_comb_bita3~COUT\ & VCC)) # (!\div_M|auto_generated|counter_reg_bit\(4) & (!\div_M|auto_generated|counter_comb_bita3~COUT\))
-- \div_M|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\div_M|auto_generated|counter_reg_bit\(4) & !\div_M|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita3~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita4~combout\,
	cout => \div_M|auto_generated|counter_comb_bita4~COUT\);

-- Location: IOIBUF_X0_Y3_N15
\div_value[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(4),
	o => \div_value[4]~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\inst4|latches[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(4) = (GLOBAL(\M_set~inputclkctrl_outclk\) & (\div_value[4]~input_o\)) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & ((\inst4|latches\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[4]~input_o\,
	datac => \inst4|latches\(4),
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(4));

-- Location: FF_X1_Y4_N25
\div_M|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita4~combout\,
	asdata => \inst4|latches\(4),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X1_Y4_N26
\div_M|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita5~combout\ = (\div_M|auto_generated|counter_reg_bit\(5) & ((GND) # (!\div_M|auto_generated|counter_comb_bita4~COUT\))) # (!\div_M|auto_generated|counter_reg_bit\(5) & (\div_M|auto_generated|counter_comb_bita4~COUT\ $ 
-- (GND)))
-- \div_M|auto_generated|counter_comb_bita5~COUT\ = CARRY((\div_M|auto_generated|counter_reg_bit\(5)) # (!\div_M|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita4~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita5~combout\,
	cout => \div_M|auto_generated|counter_comb_bita5~COUT\);

-- Location: IOIBUF_X0_Y3_N22
\div_value[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_div_value(5),
	o => \div_value[5]~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\inst4|latches[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|latches\(5) = (GLOBAL(\M_set~inputclkctrl_outclk\) & ((\div_value[5]~input_o\))) # (!GLOBAL(\M_set~inputclkctrl_outclk\) & (\inst4|latches\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|latches\(5),
	datac => \div_value[5]~input_o\,
	datad => \M_set~inputclkctrl_outclk\,
	combout => \inst4|latches\(5));

-- Location: FF_X1_Y4_N27
\div_M|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita5~combout\,
	asdata => \inst4|latches\(5),
	sload => \i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X1_Y4_N28
\div_M|auto_generated|counter_comb_bita5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita5~0_combout\ = !\div_M|auto_generated|counter_comb_bita5~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \div_M|auto_generated|counter_comb_bita5~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita5~0_combout\);

-- Location: LCCOMB_X1_Y4_N12
\inst|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\inst4|latches\(3)) # ((\inst4|latches\(4)) # ((\inst4|latches\(2)) # (\inst4|latches\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|latches\(3),
	datab => \inst4|latches\(4),
	datac => \inst4|latches\(2),
	datad => \inst4|latches\(5),
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X2_Y4_N16
\inst|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\inst|inst~1_combout\ & (((\div_M|auto_generated|counter_comb_bita5~0_combout\)))) # (!\inst|inst~1_combout\ & ((\inst|inst~0_combout\ & ((\div_M|auto_generated|counter_comb_bita5~0_combout\))) # (!\inst|inst~0_combout\ & 
-- (\CLK_base~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \CLK_base~input_o\,
	datac => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	datad => \inst|inst~0_combout\,
	combout => \inst|inst2~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\N_set~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N_set,
	o => \N_set~input_o\);

-- Location: CLKCTRL_G2
\N_set~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \N_set~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \N_set~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y5_N4
\inst5|latches[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(3) = (GLOBAL(\N_set~inputclkctrl_outclk\) & (\div_value[3]~input_o\)) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & ((\inst5|latches\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[3]~input_o\,
	datac => \inst5|latches\(3),
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(3));

-- Location: LCCOMB_X1_Y5_N22
\inst5|latches[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(4) = (GLOBAL(\N_set~inputclkctrl_outclk\) & (\div_value[4]~input_o\)) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & ((\inst5|latches\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_value[4]~input_o\,
	datac => \inst5|latches\(4),
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(4));

-- Location: LCCOMB_X1_Y5_N26
\inst5|latches[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(5) = (GLOBAL(\N_set~inputclkctrl_outclk\) & (\div_value[5]~input_o\)) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & ((\inst5|latches\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[5]~input_o\,
	datac => \inst5|latches\(5),
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(5));

-- Location: LCCOMB_X1_Y5_N2
\inst5|latches[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(2) = (GLOBAL(\N_set~inputclkctrl_outclk\) & ((\div_value[2]~input_o\))) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & (\inst5|latches\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|latches\(2),
	datac => \div_value[2]~input_o\,
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(2));

-- Location: LCCOMB_X1_Y5_N0
\inst8|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = (\inst5|latches\(3)) # ((\inst5|latches\(4)) # ((\inst5|latches\(5)) # (\inst5|latches\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|latches\(3),
	datab => \inst5|latches\(4),
	datac => \inst5|latches\(5),
	datad => \inst5|latches\(2),
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X1_Y5_N30
\inst5|latches[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(0) = (GLOBAL(\N_set~inputclkctrl_outclk\) & (\div_value[0]~input_o\)) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & ((\inst5|latches\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_value[0]~input_o\,
	datac => \inst5|latches\(0),
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(0));

-- Location: LCCOMB_X1_Y5_N28
\inst5|latches[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|latches\(1) = (GLOBAL(\N_set~inputclkctrl_outclk\) & ((\div_value[1]~input_o\))) # (!GLOBAL(\N_set~inputclkctrl_outclk\) & (\inst5|latches\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|latches\(1),
	datac => \div_value[1]~input_o\,
	datad => \N_set~inputclkctrl_outclk\,
	combout => \inst5|latches\(1));

-- Location: LCCOMB_X1_Y5_N6
\inst8|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst~1_combout\ = (\inst5|latches\(0)) # (\inst5|latches\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|latches\(0),
	datad => \inst5|latches\(1),
	combout => \inst8|inst~1_combout\);

-- Location: LCCOMB_X1_Y5_N8
\div_M10|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita0~combout\ = !\div_M10|auto_generated|counter_reg_bit\(0)
-- \div_M10|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\div_M10|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(0),
	combout => \div_M10|auto_generated|counter_comb_bita0~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X1_Y5_N24
i1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~combout\ = (\N_set~input_o\) # (\div_M10|auto_generated|counter_comb_bita5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N_set~input_o\,
	datad => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	combout => \i1~combout\);

-- Location: FF_X1_Y5_N9
\div_M10|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita0~combout\,
	asdata => \inst5|latches\(0),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y5_N10
\div_M10|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita1~combout\ = (\div_M10|auto_generated|counter_reg_bit\(1) & ((GND) # (!\div_M10|auto_generated|counter_comb_bita0~COUT\))) # (!\div_M10|auto_generated|counter_reg_bit\(1) & 
-- (\div_M10|auto_generated|counter_comb_bita0~COUT\ $ (GND)))
-- \div_M10|auto_generated|counter_comb_bita1~COUT\ = CARRY((\div_M10|auto_generated|counter_reg_bit\(1)) # (!\div_M10|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M10|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita0~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita1~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y5_N11
\div_M10|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita1~combout\,
	asdata => \inst5|latches\(1),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y5_N12
\div_M10|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita2~combout\ = (\div_M10|auto_generated|counter_reg_bit\(2) & (\div_M10|auto_generated|counter_comb_bita1~COUT\ & VCC)) # (!\div_M10|auto_generated|counter_reg_bit\(2) & 
-- (!\div_M10|auto_generated|counter_comb_bita1~COUT\))
-- \div_M10|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\div_M10|auto_generated|counter_reg_bit\(2) & !\div_M10|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M10|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita1~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita2~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X1_Y5_N13
\div_M10|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita2~combout\,
	asdata => \inst5|latches\(2),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y5_N14
\div_M10|auto_generated|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita3~combout\ = (\div_M10|auto_generated|counter_reg_bit\(3) & ((GND) # (!\div_M10|auto_generated|counter_comb_bita2~COUT\))) # (!\div_M10|auto_generated|counter_reg_bit\(3) & 
-- (\div_M10|auto_generated|counter_comb_bita2~COUT\ $ (GND)))
-- \div_M10|auto_generated|counter_comb_bita3~COUT\ = CARRY((\div_M10|auto_generated|counter_reg_bit\(3)) # (!\div_M10|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita2~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita3~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X1_Y5_N15
\div_M10|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita3~combout\,
	asdata => \inst5|latches\(3),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X1_Y5_N16
\div_M10|auto_generated|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita4~combout\ = (\div_M10|auto_generated|counter_reg_bit\(4) & (\div_M10|auto_generated|counter_comb_bita3~COUT\ & VCC)) # (!\div_M10|auto_generated|counter_reg_bit\(4) & 
-- (!\div_M10|auto_generated|counter_comb_bita3~COUT\))
-- \div_M10|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\div_M10|auto_generated|counter_reg_bit\(4) & !\div_M10|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita3~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita4~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X1_Y5_N17
\div_M10|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita4~combout\,
	asdata => \inst5|latches\(4),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X1_Y5_N18
\div_M10|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita5~combout\ = (\div_M10|auto_generated|counter_reg_bit\(5) & ((GND) # (!\div_M10|auto_generated|counter_comb_bita4~COUT\))) # (!\div_M10|auto_generated|counter_reg_bit\(5) & 
-- (\div_M10|auto_generated|counter_comb_bita4~COUT\ $ (GND)))
-- \div_M10|auto_generated|counter_comb_bita5~COUT\ = CARRY((\div_M10|auto_generated|counter_reg_bit\(5)) # (!\div_M10|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita4~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita5~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X1_Y5_N19
\div_M10|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_base~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita5~combout\,
	asdata => \inst5|latches\(5),
	sload => \i1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X1_Y5_N20
\div_M10|auto_generated|counter_comb_bita5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita5~0_combout\ = !\div_M10|auto_generated|counter_comb_bita5~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \div_M10|auto_generated|counter_comb_bita5~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita5~0_combout\);

-- Location: LCCOMB_X2_Y4_N30
\inst8|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst2~0_combout\ = (\inst8|inst~0_combout\ & (((\div_M10|auto_generated|counter_comb_bita5~0_combout\)))) # (!\inst8|inst~0_combout\ & ((\inst8|inst~1_combout\ & ((\div_M10|auto_generated|counter_comb_bita5~0_combout\))) # (!\inst8|inst~1_combout\ 
-- & (\CLK_base~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst~0_combout\,
	datab => \CLK_base~input_o\,
	datac => \inst8|inst~1_combout\,
	datad => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	combout => \inst8|inst2~0_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_M_out <= \M_out~output_o\;

ww_N_out <= \N_out~output_o\;

ww_checkM(5) <= \checkM[5]~output_o\;

ww_checkM(4) <= \checkM[4]~output_o\;

ww_checkM(3) <= \checkM[3]~output_o\;

ww_checkM(2) <= \checkM[2]~output_o\;

ww_checkM(1) <= \checkM[1]~output_o\;

ww_checkM(0) <= \checkM[0]~output_o\;

ww_checkN(5) <= \checkN[5]~output_o\;

ww_checkN(4) <= \checkN[4]~output_o\;

ww_checkN(3) <= \checkN[3]~output_o\;

ww_checkN(2) <= \checkN[2]~output_o\;

ww_checkN(1) <= \checkN[1]~output_o\;

ww_checkN(0) <= \checkN[0]~output_o\;
END structure;


