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

-- DATE "11/24/2023 10:04:53"

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
	CLK : IN std_logic;
	\GND\ : IN std_logic;
	M : IN std_logic_vector(5 DOWNTO 0);
	N_out : OUT std_logic;
	N : IN std_logic_vector(5 DOWNTO 0)
	);
END variable_freqdiv;

-- Design Ports Information
-- M_out	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_out	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL \ww_GND\ : std_logic;
SIGNAL ww_M : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_N_out : std_logic;
SIGNAL ww_N : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \M_out~output_o\ : std_logic;
SIGNAL \N_out~output_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \GND~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \M[2]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \M[3]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \M[4]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \M[5]~input_o\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \div_M|auto_generated|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2~0_combout\ : std_logic;
SIGNAL \N[0]~input_o\ : std_logic;
SIGNAL \N[1]~input_o\ : std_logic;
SIGNAL \inst8|inst~1_combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \N[2]~input_o\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \N[3]~input_o\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \N[4]~input_o\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \N[5]~input_o\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \div_M10|auto_generated|counter_comb_bita5~0_combout\ : std_logic;
SIGNAL \inst8|inst~0_combout\ : std_logic;
SIGNAL \inst8|inst2~0_combout\ : std_logic;
SIGNAL \div_M|auto_generated|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \div_M10|auto_generated|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_GND~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

M_out <= ww_M_out;
ww_CLK <= CLK;
\ww_GND\ <= \GND\;
ww_M <= M;
N_out <= ww_N_out;
ww_N <= N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_GND~input_o\ <= NOT \GND~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
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

-- Location: IOOBUF_X18_Y2_N9
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

-- Location: IOOBUF_X18_Y10_N9
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

-- Location: IOIBUF_X18_Y4_N1
\M[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: IOIBUF_X18_Y2_N22
\M[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: LCCOMB_X17_Y4_N10
\inst|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\M[1]~input_o\) # (\M[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[1]~input_o\,
	datac => \M[0]~input_o\,
	combout => \inst|inst~1_combout\);

-- Location: IOIBUF_X0_Y4_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y4_N12
\div_M|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita0~combout\ = !\div_M|auto_generated|counter_reg_bit\(0)
-- \div_M|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\div_M|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M|auto_generated|counter_reg_bit\(0),
	combout => \div_M|auto_generated|counter_comb_bita0~combout\,
	cout => \div_M|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X18_Y2_N1
\GND~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_GND\,
	o => \GND~input_o\);

-- Location: FF_X17_Y4_N13
\div_M|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita0~combout\,
	asdata => \M[0]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X17_Y4_N14
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

-- Location: FF_X17_Y4_N15
\div_M|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita1~combout\,
	asdata => \M[1]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X17_Y4_N16
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

-- Location: IOIBUF_X18_Y4_N22
\M[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(2),
	o => \M[2]~input_o\);

-- Location: FF_X17_Y4_N17
\div_M|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita2~combout\,
	asdata => \M[2]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X17_Y4_N18
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

-- Location: IOIBUF_X18_Y4_N8
\M[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(3),
	o => \M[3]~input_o\);

-- Location: FF_X17_Y4_N19
\div_M|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita3~combout\,
	asdata => \M[3]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X17_Y4_N20
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

-- Location: IOIBUF_X18_Y4_N15
\M[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(4),
	o => \M[4]~input_o\);

-- Location: FF_X17_Y4_N21
\div_M|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita4~combout\,
	asdata => \M[4]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X17_Y4_N22
\div_M|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M|auto_generated|counter_comb_bita5~combout\ = (\div_M|auto_generated|counter_reg_bit\(5) & ((GND) # (!\div_M|auto_generated|counter_comb_bita4~COUT\))) # (!\div_M|auto_generated|counter_reg_bit\(5) & (\div_M|auto_generated|counter_comb_bita4~COUT\ $ 
-- (GND)))
-- \div_M|auto_generated|counter_comb_bita5~COUT\ = CARRY((\div_M|auto_generated|counter_reg_bit\(5)) # (!\div_M|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \div_M|auto_generated|counter_comb_bita4~COUT\,
	combout => \div_M|auto_generated|counter_comb_bita5~combout\,
	cout => \div_M|auto_generated|counter_comb_bita5~COUT\);

-- Location: IOIBUF_X18_Y2_N15
\M[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(5),
	o => \M[5]~input_o\);

-- Location: FF_X17_Y4_N23
\div_M|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M|auto_generated|counter_comb_bita5~combout\,
	asdata => \M[5]~input_o\,
	sload => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X17_Y4_N24
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

-- Location: LCCOMB_X17_Y4_N0
\inst|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\M[2]~input_o\) # ((\M[3]~input_o\) # ((\M[5]~input_o\) # (\M[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[2]~input_o\,
	datab => \M[3]~input_o\,
	datac => \M[5]~input_o\,
	datad => \M[4]~input_o\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2~0_combout\ = (\inst|inst~1_combout\ & (((\div_M|auto_generated|counter_comb_bita5~0_combout\)))) # (!\inst|inst~1_combout\ & ((\inst|inst~0_combout\ & ((\div_M|auto_generated|counter_comb_bita5~0_combout\))) # (!\inst|inst~0_combout\ & 
-- (\CLK~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~1_combout\,
	datab => \CLK~input_o\,
	datac => \div_M|auto_generated|counter_comb_bita5~0_combout\,
	datad => \inst|inst~0_combout\,
	combout => \inst|inst2~0_combout\);

-- Location: IOIBUF_X18_Y9_N22
\N[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(0),
	o => \N[0]~input_o\);

-- Location: IOIBUF_X18_Y6_N22
\N[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(1),
	o => \N[1]~input_o\);

-- Location: LCCOMB_X17_Y6_N26
\inst8|inst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst~1_combout\ = (\N[0]~input_o\) # (\N[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[0]~input_o\,
	datac => \N[1]~input_o\,
	combout => \inst8|inst~1_combout\);

-- Location: LCCOMB_X17_Y6_N12
\div_M10|auto_generated|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita0~combout\ = !\div_M10|auto_generated|counter_reg_bit\(0)
-- \div_M10|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\div_M10|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M10|auto_generated|counter_reg_bit\(0),
	combout => \div_M10|auto_generated|counter_comb_bita0~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X17_Y6_N13
\div_M10|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita0~combout\,
	asdata => \N[0]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X17_Y6_N14
\div_M10|auto_generated|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita1~combout\ = (\div_M10|auto_generated|counter_reg_bit\(1) & ((GND) # (!\div_M10|auto_generated|counter_comb_bita0~COUT\))) # (!\div_M10|auto_generated|counter_reg_bit\(1) & 
-- (\div_M10|auto_generated|counter_comb_bita0~COUT\ $ (GND)))
-- \div_M10|auto_generated|counter_comb_bita1~COUT\ = CARRY((\div_M10|auto_generated|counter_reg_bit\(1)) # (!\div_M10|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita0~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita1~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X17_Y6_N15
\div_M10|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita1~combout\,
	asdata => \N[1]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X17_Y6_N16
\div_M10|auto_generated|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita2~combout\ = (\div_M10|auto_generated|counter_reg_bit\(2) & (\div_M10|auto_generated|counter_comb_bita1~COUT\ & VCC)) # (!\div_M10|auto_generated|counter_reg_bit\(2) & 
-- (!\div_M10|auto_generated|counter_comb_bita1~COUT\))
-- \div_M10|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\div_M10|auto_generated|counter_reg_bit\(2) & !\div_M10|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_M10|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita1~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita2~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita2~COUT\);

-- Location: IOIBUF_X18_Y8_N22
\N[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(2),
	o => \N[2]~input_o\);

-- Location: FF_X17_Y6_N17
\div_M10|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita2~combout\,
	asdata => \N[2]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X17_Y6_N18
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

-- Location: IOIBUF_X18_Y9_N15
\N[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(3),
	o => \N[3]~input_o\);

-- Location: FF_X17_Y6_N19
\div_M10|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita3~combout\,
	asdata => \N[3]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X17_Y6_N20
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

-- Location: IOIBUF_X18_Y6_N15
\N[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(4),
	o => \N[4]~input_o\);

-- Location: FF_X17_Y6_N21
\div_M10|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita4~combout\,
	asdata => \N[4]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X17_Y6_N22
\div_M10|auto_generated|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_M10|auto_generated|counter_comb_bita5~combout\ = (\div_M10|auto_generated|counter_reg_bit\(5) & ((GND) # (!\div_M10|auto_generated|counter_comb_bita4~COUT\))) # (!\div_M10|auto_generated|counter_reg_bit\(5) & 
-- (\div_M10|auto_generated|counter_comb_bita4~COUT\ $ (GND)))
-- \div_M10|auto_generated|counter_comb_bita5~COUT\ = CARRY((\div_M10|auto_generated|counter_reg_bit\(5)) # (!\div_M10|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_M10|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \div_M10|auto_generated|counter_comb_bita4~COUT\,
	combout => \div_M10|auto_generated|counter_comb_bita5~combout\,
	cout => \div_M10|auto_generated|counter_comb_bita5~COUT\);

-- Location: IOIBUF_X18_Y8_N15
\N[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(5),
	o => \N[5]~input_o\);

-- Location: FF_X17_Y6_N23
\div_M10|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_M10|auto_generated|counter_comb_bita5~combout\,
	asdata => \N[5]~input_o\,
	sload => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	ena => \ALT_INV_GND~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_M10|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X17_Y6_N24
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

-- Location: LCCOMB_X17_Y6_N28
\inst8|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst~0_combout\ = (\N[2]~input_o\) # ((\N[5]~input_o\) # ((\N[3]~input_o\) # (\N[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[2]~input_o\,
	datab => \N[5]~input_o\,
	datac => \N[3]~input_o\,
	datad => \N[4]~input_o\,
	combout => \inst8|inst~0_combout\);

-- Location: LCCOMB_X17_Y6_N4
\inst8|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|inst2~0_combout\ = (\inst8|inst~1_combout\ & (\div_M10|auto_generated|counter_comb_bita5~0_combout\)) # (!\inst8|inst~1_combout\ & ((\inst8|inst~0_combout\ & (\div_M10|auto_generated|counter_comb_bita5~0_combout\)) # (!\inst8|inst~0_combout\ & 
-- ((\CLK~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst~1_combout\,
	datab => \div_M10|auto_generated|counter_comb_bita5~0_combout\,
	datac => \CLK~input_o\,
	datad => \inst8|inst~0_combout\,
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
END structure;


