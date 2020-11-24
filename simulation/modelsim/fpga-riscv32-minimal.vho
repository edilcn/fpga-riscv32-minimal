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

-- DATE "11/23/2020 21:47:20"

-- 
-- Device: Altera 5CGXFC9E7F35C8 Package FBGA1152
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fpga_riscv32_minimal IS
    PORT (
	clock : IN std_logic;
	clear : IN std_logic;
	alu_res : IN std_logic_vector(31 DOWNTO 0);
	instruction : OUT std_logic_vector(31 DOWNTO 0);
	reset : IN std_logic;
	rs1_reg_idx : IN std_logic_vector(4 DOWNTO 0);
	rs2_reg_idx : IN std_logic_vector(4 DOWNTO 0);
	wr_data : IN std_logic;
	wr_reg_idx : IN std_logic_vector(4 DOWNTO 0);
	immediate : IN std_logic_vector(31 DOWNTO 0);
	alu_operation : IN std_logic_vector(3 DOWNTO 0);
	alu_branch : IN std_logic;
	alu_branch_control : IN std_logic_vector(2 DOWNTO 0);
	JTU_mux_sel : IN std_logic;
	data_format : IN std_logic_vector(2 DOWNTO 0);
	datamem_write : IN std_logic;
	jump_flag : IN std_logic;
	mux0_sel : IN std_logic_vector(1 DOWNTO 0);
	mux1_sel : IN std_logic
	);
END fpga_riscv32_minimal;

-- Design Ports Information
-- clock	=>  Location: PIN_AJ31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[1]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[2]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[3]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[5]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[7]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[8]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[9]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[10]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[11]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[12]	=>  Location: PIN_AL27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[13]	=>  Location: PIN_AP17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[14]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[15]	=>  Location: PIN_AL33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[16]	=>  Location: PIN_AL13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[17]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[18]	=>  Location: PIN_AC34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[19]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[20]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[21]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[22]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[23]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[24]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[25]	=>  Location: PIN_AM28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[26]	=>  Location: PIN_AJ32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[27]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[28]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[29]	=>  Location: PIN_AM30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[30]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_res[31]	=>  Location: PIN_AL31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_AL8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_AF31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_AN32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_H29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_B29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_AP11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_reg_idx[0]	=>  Location: PIN_AP14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_reg_idx[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_reg_idx[2]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_reg_idx[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1_reg_idx[4]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2_reg_idx[0]	=>  Location: PIN_AM31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2_reg_idx[1]	=>  Location: PIN_AP10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2_reg_idx[2]	=>  Location: PIN_W31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2_reg_idx[3]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2_reg_idx[4]	=>  Location: PIN_AM15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data	=>  Location: PIN_AP12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_reg_idx[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_reg_idx[1]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_reg_idx[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_reg_idx[3]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_reg_idx[4]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[1]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[2]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[5]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[6]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[7]	=>  Location: PIN_Y34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[8]	=>  Location: PIN_P31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[9]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[12]	=>  Location: PIN_C31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[13]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[14]	=>  Location: PIN_G33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[16]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[17]	=>  Location: PIN_AD34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[18]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[19]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[20]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[21]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[22]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[23]	=>  Location: PIN_Y32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[24]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[25]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[26]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[27]	=>  Location: PIN_AN18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[28]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[29]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[30]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[31]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_operation[0]	=>  Location: PIN_AM4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_operation[1]	=>  Location: PIN_K33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_operation[2]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_operation[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_branch	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_branch_control[0]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_branch_control[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_branch_control[2]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JTU_mux_sel	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_format[0]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_format[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_format[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datamem_write	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_flag	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux0_sel[0]	=>  Location: PIN_M34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux0_sel[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux1_sel	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpga_riscv32_minimal IS
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
SIGNAL ww_clear : std_logic;
SIGNAL ww_alu_res : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_rs1_reg_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rs2_reg_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_wr_data : std_logic;
SIGNAL ww_wr_reg_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_operation : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alu_branch : std_logic;
SIGNAL ww_alu_branch_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_JTU_mux_sel : std_logic;
SIGNAL ww_data_format : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_datamem_write : std_logic;
SIGNAL ww_jump_flag : std_logic;
SIGNAL ww_mux0_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mux1_sel : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \alu_res[0]~input_o\ : std_logic;
SIGNAL \alu_res[1]~input_o\ : std_logic;
SIGNAL \alu_res[2]~input_o\ : std_logic;
SIGNAL \alu_res[3]~input_o\ : std_logic;
SIGNAL \alu_res[4]~input_o\ : std_logic;
SIGNAL \alu_res[5]~input_o\ : std_logic;
SIGNAL \alu_res[6]~input_o\ : std_logic;
SIGNAL \alu_res[7]~input_o\ : std_logic;
SIGNAL \alu_res[8]~input_o\ : std_logic;
SIGNAL \alu_res[9]~input_o\ : std_logic;
SIGNAL \alu_res[10]~input_o\ : std_logic;
SIGNAL \alu_res[11]~input_o\ : std_logic;
SIGNAL \alu_res[12]~input_o\ : std_logic;
SIGNAL \alu_res[13]~input_o\ : std_logic;
SIGNAL \alu_res[14]~input_o\ : std_logic;
SIGNAL \alu_res[15]~input_o\ : std_logic;
SIGNAL \alu_res[16]~input_o\ : std_logic;
SIGNAL \alu_res[17]~input_o\ : std_logic;
SIGNAL \alu_res[18]~input_o\ : std_logic;
SIGNAL \alu_res[19]~input_o\ : std_logic;
SIGNAL \alu_res[20]~input_o\ : std_logic;
SIGNAL \alu_res[21]~input_o\ : std_logic;
SIGNAL \alu_res[22]~input_o\ : std_logic;
SIGNAL \alu_res[23]~input_o\ : std_logic;
SIGNAL \alu_res[24]~input_o\ : std_logic;
SIGNAL \alu_res[25]~input_o\ : std_logic;
SIGNAL \alu_res[26]~input_o\ : std_logic;
SIGNAL \alu_res[27]~input_o\ : std_logic;
SIGNAL \alu_res[28]~input_o\ : std_logic;
SIGNAL \alu_res[29]~input_o\ : std_logic;
SIGNAL \alu_res[30]~input_o\ : std_logic;
SIGNAL \alu_res[31]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rs1_reg_idx[0]~input_o\ : std_logic;
SIGNAL \rs1_reg_idx[1]~input_o\ : std_logic;
SIGNAL \rs1_reg_idx[2]~input_o\ : std_logic;
SIGNAL \rs1_reg_idx[3]~input_o\ : std_logic;
SIGNAL \rs1_reg_idx[4]~input_o\ : std_logic;
SIGNAL \rs2_reg_idx[0]~input_o\ : std_logic;
SIGNAL \rs2_reg_idx[1]~input_o\ : std_logic;
SIGNAL \rs2_reg_idx[2]~input_o\ : std_logic;
SIGNAL \rs2_reg_idx[3]~input_o\ : std_logic;
SIGNAL \rs2_reg_idx[4]~input_o\ : std_logic;
SIGNAL \wr_data~input_o\ : std_logic;
SIGNAL \wr_reg_idx[0]~input_o\ : std_logic;
SIGNAL \wr_reg_idx[1]~input_o\ : std_logic;
SIGNAL \wr_reg_idx[2]~input_o\ : std_logic;
SIGNAL \wr_reg_idx[3]~input_o\ : std_logic;
SIGNAL \wr_reg_idx[4]~input_o\ : std_logic;
SIGNAL \immediate[0]~input_o\ : std_logic;
SIGNAL \immediate[1]~input_o\ : std_logic;
SIGNAL \immediate[2]~input_o\ : std_logic;
SIGNAL \immediate[3]~input_o\ : std_logic;
SIGNAL \immediate[4]~input_o\ : std_logic;
SIGNAL \immediate[5]~input_o\ : std_logic;
SIGNAL \immediate[6]~input_o\ : std_logic;
SIGNAL \immediate[7]~input_o\ : std_logic;
SIGNAL \immediate[8]~input_o\ : std_logic;
SIGNAL \immediate[9]~input_o\ : std_logic;
SIGNAL \immediate[10]~input_o\ : std_logic;
SIGNAL \immediate[11]~input_o\ : std_logic;
SIGNAL \immediate[12]~input_o\ : std_logic;
SIGNAL \immediate[13]~input_o\ : std_logic;
SIGNAL \immediate[14]~input_o\ : std_logic;
SIGNAL \immediate[15]~input_o\ : std_logic;
SIGNAL \immediate[16]~input_o\ : std_logic;
SIGNAL \immediate[17]~input_o\ : std_logic;
SIGNAL \immediate[18]~input_o\ : std_logic;
SIGNAL \immediate[19]~input_o\ : std_logic;
SIGNAL \immediate[20]~input_o\ : std_logic;
SIGNAL \immediate[21]~input_o\ : std_logic;
SIGNAL \immediate[22]~input_o\ : std_logic;
SIGNAL \immediate[23]~input_o\ : std_logic;
SIGNAL \immediate[24]~input_o\ : std_logic;
SIGNAL \immediate[25]~input_o\ : std_logic;
SIGNAL \immediate[26]~input_o\ : std_logic;
SIGNAL \immediate[27]~input_o\ : std_logic;
SIGNAL \immediate[28]~input_o\ : std_logic;
SIGNAL \immediate[29]~input_o\ : std_logic;
SIGNAL \immediate[30]~input_o\ : std_logic;
SIGNAL \immediate[31]~input_o\ : std_logic;
SIGNAL \alu_operation[0]~input_o\ : std_logic;
SIGNAL \alu_operation[1]~input_o\ : std_logic;
SIGNAL \alu_operation[2]~input_o\ : std_logic;
SIGNAL \alu_operation[3]~input_o\ : std_logic;
SIGNAL \alu_branch~input_o\ : std_logic;
SIGNAL \alu_branch_control[0]~input_o\ : std_logic;
SIGNAL \alu_branch_control[1]~input_o\ : std_logic;
SIGNAL \alu_branch_control[2]~input_o\ : std_logic;
SIGNAL \JTU_mux_sel~input_o\ : std_logic;
SIGNAL \data_format[0]~input_o\ : std_logic;
SIGNAL \data_format[1]~input_o\ : std_logic;
SIGNAL \data_format[2]~input_o\ : std_logic;
SIGNAL \datamem_write~input_o\ : std_logic;
SIGNAL \jump_flag~input_o\ : std_logic;
SIGNAL \mux0_sel[0]~input_o\ : std_logic;
SIGNAL \mux0_sel[1]~input_o\ : std_logic;
SIGNAL \mux1_sel~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_clear <= clear;
ww_alu_res <= alu_res;
instruction <= ww_instruction;
ww_reset <= reset;
ww_rs1_reg_idx <= rs1_reg_idx;
ww_rs2_reg_idx <= rs2_reg_idx;
ww_wr_data <= wr_data;
ww_wr_reg_idx <= wr_reg_idx;
ww_immediate <= immediate;
ww_alu_operation <= alu_operation;
ww_alu_branch <= alu_branch;
ww_alu_branch_control <= alu_branch_control;
ww_JTU_mux_sel <= JTU_mux_sel;
ww_data_format <= data_format;
ww_datamem_write <= datamem_write;
ww_jump_flag <= jump_flag;
ww_mux0_sel <= mux0_sel;
ww_mux1_sel <= mux1_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X54_Y115_N19
\instruction[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(0));

-- Location: IOOBUF_X50_Y115_N36
\instruction[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(1));

-- Location: IOOBUF_X82_Y115_N42
\instruction[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(2));

-- Location: IOOBUF_X12_Y0_N53
\instruction[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(3));

-- Location: IOOBUF_X65_Y115_N76
\instruction[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(4));

-- Location: IOOBUF_X42_Y0_N2
\instruction[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(5));

-- Location: IOOBUF_X69_Y115_N19
\instruction[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(6));

-- Location: IOOBUF_X33_Y115_N76
\instruction[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(7));

-- Location: IOOBUF_X121_Y39_N56
\instruction[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(8));

-- Location: IOOBUF_X12_Y0_N36
\instruction[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(9));

-- Location: IOOBUF_X65_Y0_N93
\instruction[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(10));

-- Location: IOOBUF_X110_Y115_N36
\instruction[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(11));

-- Location: IOOBUF_X121_Y87_N39
\instruction[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(12));

-- Location: IOOBUF_X98_Y115_N59
\instruction[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(13));

-- Location: IOOBUF_X98_Y0_N76
\instruction[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(14));

-- Location: IOOBUF_X121_Y16_N39
\instruction[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(15));

-- Location: IOOBUF_X39_Y115_N2
\instruction[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(16));

-- Location: IOOBUF_X30_Y0_N53
\instruction[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(17));

-- Location: IOOBUF_X77_Y0_N2
\instruction[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(18));

-- Location: IOOBUF_X121_Y55_N5
\instruction[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(19));

-- Location: IOOBUF_X121_Y93_N39
\instruction[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(20));

-- Location: IOOBUF_X121_Y87_N5
\instruction[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(21));

-- Location: IOOBUF_X20_Y115_N53
\instruction[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(22));

-- Location: IOOBUF_X12_Y0_N19
\instruction[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(23));

-- Location: IOOBUF_X90_Y115_N93
\instruction[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(24));

-- Location: IOOBUF_X54_Y0_N53
\instruction[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(25));

-- Location: IOOBUF_X44_Y0_N2
\instruction[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(26));

-- Location: IOOBUF_X121_Y60_N62
\instruction[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(27));

-- Location: IOOBUF_X37_Y0_N53
\instruction[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(28));

-- Location: IOOBUF_X121_Y28_N96
\instruction[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(29));

-- Location: IOOBUF_X111_Y0_N19
\instruction[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(30));

-- Location: IOOBUF_X111_Y0_N2
\instruction[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction(31));

-- Location: IOIBUF_X121_Y33_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X37_Y115_N18
\clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X82_Y115_N75
\alu_res[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(0),
	o => \alu_res[0]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\alu_res[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(1),
	o => \alu_res[1]~input_o\);

-- Location: IOIBUF_X121_Y26_N38
\alu_res[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(2),
	o => \alu_res[2]~input_o\);

-- Location: IOIBUF_X113_Y115_N1
\alu_res[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(3),
	o => \alu_res[3]~input_o\);

-- Location: IOIBUF_X67_Y115_N1
\alu_res[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(4),
	o => \alu_res[4]~input_o\);

-- Location: IOIBUF_X27_Y0_N18
\alu_res[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(5),
	o => \alu_res[5]~input_o\);

-- Location: IOIBUF_X75_Y0_N1
\alu_res[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(6),
	o => \alu_res[6]~input_o\);

-- Location: IOIBUF_X84_Y115_N1
\alu_res[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(7),
	o => \alu_res[7]~input_o\);

-- Location: IOIBUF_X121_Y46_N4
\alu_res[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(8),
	o => \alu_res[8]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\alu_res[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(9),
	o => \alu_res[9]~input_o\);

-- Location: IOIBUF_X10_Y115_N1
\alu_res[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(10),
	o => \alu_res[10]~input_o\);

-- Location: IOIBUF_X84_Y115_N35
\alu_res[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(11),
	o => \alu_res[11]~input_o\);

-- Location: IOIBUF_X96_Y0_N35
\alu_res[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(12),
	o => \alu_res[12]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\alu_res[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(13),
	o => \alu_res[13]~input_o\);

-- Location: IOIBUF_X90_Y115_N75
\alu_res[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(14),
	o => \alu_res[14]~input_o\);

-- Location: IOIBUF_X121_Y33_N38
\alu_res[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(15),
	o => \alu_res[15]~input_o\);

-- Location: IOIBUF_X39_Y0_N52
\alu_res[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(16),
	o => \alu_res[16]~input_o\);

-- Location: IOIBUF_X48_Y115_N41
\alu_res[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(17),
	o => \alu_res[17]~input_o\);

-- Location: IOIBUF_X121_Y53_N21
\alu_res[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(18),
	o => \alu_res[18]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\alu_res[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(19),
	o => \alu_res[19]~input_o\);

-- Location: IOIBUF_X121_Y82_N44
\alu_res[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(20),
	o => \alu_res[20]~input_o\);

-- Location: IOIBUF_X121_Y30_N21
\alu_res[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(21),
	o => \alu_res[21]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\alu_res[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(22),
	o => \alu_res[22]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\alu_res[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(23),
	o => \alu_res[23]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\alu_res[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(24),
	o => \alu_res[24]~input_o\);

-- Location: IOIBUF_X88_Y0_N35
\alu_res[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(25),
	o => \alu_res[25]~input_o\);

-- Location: IOIBUF_X121_Y38_N55
\alu_res[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(26),
	o => \alu_res[26]~input_o\);

-- Location: IOIBUF_X44_Y115_N35
\alu_res[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(27),
	o => \alu_res[27]~input_o\);

-- Location: IOIBUF_X26_Y115_N1
\alu_res[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(28),
	o => \alu_res[28]~input_o\);

-- Location: IOIBUF_X104_Y0_N52
\alu_res[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(29),
	o => \alu_res[29]~input_o\);

-- Location: IOIBUF_X30_Y115_N1
\alu_res[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(30),
	o => \alu_res[30]~input_o\);

-- Location: IOIBUF_X110_Y0_N35
\alu_res[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_res(31),
	o => \alu_res[31]~input_o\);

-- Location: IOIBUF_X17_Y115_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\rs1_reg_idx[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1_reg_idx(0),
	o => \rs1_reg_idx[0]~input_o\);

-- Location: IOIBUF_X94_Y115_N18
\rs1_reg_idx[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1_reg_idx(1),
	o => \rs1_reg_idx[1]~input_o\);

-- Location: IOIBUF_X121_Y91_N4
\rs1_reg_idx[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1_reg_idx(2),
	o => \rs1_reg_idx[2]~input_o\);

-- Location: IOIBUF_X18_Y115_N52
\rs1_reg_idx[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1_reg_idx(3),
	o => \rs1_reg_idx[3]~input_o\);

-- Location: IOIBUF_X107_Y115_N92
\rs1_reg_idx[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs1_reg_idx(4),
	o => \rs1_reg_idx[4]~input_o\);

-- Location: IOIBUF_X110_Y0_N52
\rs2_reg_idx[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2_reg_idx(0),
	o => \rs2_reg_idx[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N35
\rs2_reg_idx[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2_reg_idx(1),
	o => \rs2_reg_idx[1]~input_o\);

-- Location: IOIBUF_X121_Y48_N4
\rs2_reg_idx[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2_reg_idx(2),
	o => \rs2_reg_idx[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\rs2_reg_idx[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2_reg_idx(3),
	o => \rs2_reg_idx[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\rs2_reg_idx[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rs2_reg_idx(4),
	o => \rs2_reg_idx[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N92
\wr_data~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data,
	o => \wr_data~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\wr_reg_idx[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_reg_idx(0),
	o => \wr_reg_idx[0]~input_o\);

-- Location: IOIBUF_X77_Y0_N18
\wr_reg_idx[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_reg_idx(1),
	o => \wr_reg_idx[1]~input_o\);

-- Location: IOIBUF_X113_Y115_N18
\wr_reg_idx[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_reg_idx(2),
	o => \wr_reg_idx[2]~input_o\);

-- Location: IOIBUF_X121_Y91_N55
\wr_reg_idx[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_reg_idx(3),
	o => \wr_reg_idx[3]~input_o\);

-- Location: IOIBUF_X121_Y30_N4
\wr_reg_idx[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_reg_idx(4),
	o => \wr_reg_idx[4]~input_o\);

-- Location: IOIBUF_X92_Y0_N1
\immediate[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(0),
	o => \immediate[0]~input_o\);

-- Location: IOIBUF_X104_Y0_N1
\immediate[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(1),
	o => \immediate[1]~input_o\);

-- Location: IOIBUF_X121_Y93_N55
\immediate[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(2),
	o => \immediate[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N58
\immediate[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(3),
	o => \immediate[3]~input_o\);

-- Location: IOIBUF_X69_Y115_N52
\immediate[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(4),
	o => \immediate[4]~input_o\);

-- Location: IOIBUF_X26_Y115_N18
\immediate[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(5),
	o => \immediate[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N75
\immediate[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(6),
	o => \immediate[6]~input_o\);

-- Location: IOIBUF_X121_Y61_N38
\immediate[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(7),
	o => \immediate[7]~input_o\);

-- Location: IOIBUF_X121_Y79_N21
\immediate[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(8),
	o => \immediate[8]~input_o\);

-- Location: IOIBUF_X96_Y115_N1
\immediate[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(9),
	o => \immediate[9]~input_o\);

-- Location: IOIBUF_X121_Y13_N44
\immediate[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(10),
	o => \immediate[10]~input_o\);

-- Location: IOIBUF_X67_Y115_N52
\immediate[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(11),
	o => \immediate[11]~input_o\);

-- Location: IOIBUF_X102_Y115_N52
\immediate[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(12),
	o => \immediate[12]~input_o\);

-- Location: IOIBUF_X102_Y0_N35
\immediate[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(13),
	o => \immediate[13]~input_o\);

-- Location: IOIBUF_X121_Y79_N55
\immediate[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(14),
	o => \immediate[14]~input_o\);

-- Location: IOIBUF_X54_Y115_N35
\immediate[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(15),
	o => \immediate[15]~input_o\);

-- Location: IOIBUF_X121_Y24_N4
\immediate[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(16),
	o => \immediate[16]~input_o\);

-- Location: IOIBUF_X121_Y55_N55
\immediate[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(17),
	o => \immediate[17]~input_o\);

-- Location: IOIBUF_X73_Y0_N58
\immediate[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(18),
	o => \immediate[18]~input_o\);

-- Location: IOIBUF_X71_Y0_N35
\immediate[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(19),
	o => \immediate[19]~input_o\);

-- Location: IOIBUF_X88_Y0_N1
\immediate[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(20),
	o => \immediate[20]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\immediate[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(21),
	o => \immediate[21]~input_o\);

-- Location: IOIBUF_X77_Y115_N18
\immediate[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(22),
	o => \immediate[22]~input_o\);

-- Location: IOIBUF_X121_Y36_N61
\immediate[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(23),
	o => \immediate[23]~input_o\);

-- Location: IOIBUF_X8_Y115_N75
\immediate[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(24),
	o => \immediate[24]~input_o\);

-- Location: IOIBUF_X121_Y22_N21
\immediate[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(25),
	o => \immediate[25]~input_o\);

-- Location: IOIBUF_X121_Y22_N38
\immediate[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(26),
	o => \immediate[26]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\immediate[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(27),
	o => \immediate[27]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\immediate[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(28),
	o => \immediate[28]~input_o\);

-- Location: IOIBUF_X39_Y115_N35
\immediate[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(29),
	o => \immediate[29]~input_o\);

-- Location: IOIBUF_X35_Y0_N52
\immediate[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(30),
	o => \immediate[30]~input_o\);

-- Location: IOIBUF_X35_Y0_N18
\immediate[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_immediate(31),
	o => \immediate[31]~input_o\);

-- Location: IOIBUF_X8_Y0_N92
\alu_operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_operation(0),
	o => \alu_operation[0]~input_o\);

-- Location: IOIBUF_X121_Y74_N78
\alu_operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_operation(1),
	o => \alu_operation[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N92
\alu_operation[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_operation(2),
	o => \alu_operation[2]~input_o\);

-- Location: IOIBUF_X96_Y115_N35
\alu_operation[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_operation(3),
	o => \alu_operation[3]~input_o\);

-- Location: IOIBUF_X48_Y115_N75
\alu_branch~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_branch,
	o => \alu_branch~input_o\);

-- Location: IOIBUF_X65_Y0_N58
\alu_branch_control[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_branch_control(0),
	o => \alu_branch_control[0]~input_o\);

-- Location: IOIBUF_X10_Y115_N18
\alu_branch_control[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_branch_control(1),
	o => \alu_branch_control[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\alu_branch_control[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_branch_control(2),
	o => \alu_branch_control[2]~input_o\);

-- Location: IOIBUF_X121_Y31_N21
\JTU_mux_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JTU_mux_sel,
	o => \JTU_mux_sel~input_o\);

-- Location: IOIBUF_X107_Y115_N75
\data_format[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_format(0),
	o => \data_format[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\data_format[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_format(1),
	o => \data_format[1]~input_o\);

-- Location: IOIBUF_X44_Y115_N18
\data_format[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_format(2),
	o => \data_format[2]~input_o\);

-- Location: IOIBUF_X35_Y115_N18
\datamem_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datamem_write,
	o => \datamem_write~input_o\);

-- Location: IOIBUF_X30_Y115_N35
\jump_flag~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_flag,
	o => \jump_flag~input_o\);

-- Location: IOIBUF_X121_Y69_N38
\mux0_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux0_sel(0),
	o => \mux0_sel[0]~input_o\);

-- Location: IOIBUF_X54_Y115_N52
\mux0_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux0_sel(1),
	o => \mux0_sel[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\mux1_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mux1_sel,
	o => \mux1_sel~input_o\);

-- Location: LABCELL_X17_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


