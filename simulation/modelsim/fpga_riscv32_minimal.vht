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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/29/2020 21:21:27"
                                                            
-- Vhdl Test Bench template for design  :  fpga_riscv32_minimal
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fpga_riscv32_minimal_vhd_tst IS
END fpga_riscv32_minimal_vhd_tst;
ARCHITECTURE fpga_riscv32_minimal_arch OF fpga_riscv32_minimal_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_branch : STD_LOGIC;
SIGNAL alu_branch_control : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL alu_operation : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL alu_res : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL data_format : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL datamem_write : STD_LOGIC;
SIGNAL debug_alu_input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_alu_input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_alu_output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_alu_output_EX_MEM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_alu_output_MEM_WB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_forward_mux_0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL debug_forward_mux_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL debug_instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_instruction_address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_mux0_sel_MEM_WB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL debug_regfile_x1_output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_regfile_x2_output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_regfile_x31_output : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_register_bank_output_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_register_bank_output_0_ID_EX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_register_bank_output_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_register_bank_output_1_ID_EX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug_rs1_reg_idx_ID_EXE : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_wr_data_MEM_WB : STD_LOGIC;
SIGNAL debug_wr_reg_idx_EX_MEM : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL debug_wr_reg_idx_MEM_WB : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL immediate : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL JTU_mux_sel : STD_LOGIC;
SIGNAL jump_flag : STD_LOGIC;
SIGNAL mux0_sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL mux1_sel : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rs1_reg_idx : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs2_reg_idx : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wr_data : STD_LOGIC;
SIGNAL wr_reg_idx : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT fpga_riscv32_minimal
	PORT (
	alu_branch : IN STD_LOGIC;
	alu_branch_control : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	alu_operation : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	alu_res : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	data_format : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	datamem_write : IN STD_LOGIC;
	debug_alu_input_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_alu_input_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_alu_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_alu_output_EX_MEM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_alu_output_MEM_WB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_forward_mux_0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	debug_forward_mux_1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	debug_instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_instruction_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_mux0_sel_MEM_WB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	debug_regfile_x1_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_regfile_x2_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_regfile_x31_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_register_bank_output_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_register_bank_output_0_ID_EX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_register_bank_output_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_register_bank_output_1_ID_EX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug_rs1_reg_idx_ID_EXE : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_wr_data_MEM_WB : OUT STD_LOGIC;
	debug_wr_reg_idx_EX_MEM : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	debug_wr_reg_idx_MEM_WB : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	immediate : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	JTU_mux_sel : IN STD_LOGIC;
	jump_flag : IN STD_LOGIC;
	mux0_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	mux1_sel : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	rs1_reg_idx : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rs2_reg_idx : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wr_data : IN STD_LOGIC;
	wr_reg_idx : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fpga_riscv32_minimal
	PORT MAP (
-- list connections between master ports and signals
	alu_branch => alu_branch,
	alu_branch_control => alu_branch_control,
	alu_operation => alu_operation,
	alu_res => alu_res,
	clear => clear,
	clock => clock,
	data_format => data_format,
	datamem_write => datamem_write,
	debug_alu_input_0 => debug_alu_input_0,
	debug_alu_input_1 => debug_alu_input_1,
	debug_alu_output => debug_alu_output,
	debug_alu_output_EX_MEM => debug_alu_output_EX_MEM,
	debug_alu_output_MEM_WB => debug_alu_output_MEM_WB,
	debug_forward_mux_0 => debug_forward_mux_0,
	debug_forward_mux_1 => debug_forward_mux_1,
	debug_instruction => debug_instruction,
	debug_instruction_address => debug_instruction_address,
	debug_mux0_sel_MEM_WB => debug_mux0_sel_MEM_WB,
	debug_regfile_x1_output => debug_regfile_x1_output,
	debug_regfile_x2_output => debug_regfile_x2_output,
	debug_regfile_x31_output => debug_regfile_x31_output,
	debug_register_bank_output_0 => debug_register_bank_output_0,
	debug_register_bank_output_0_ID_EX => debug_register_bank_output_0_ID_EX,
	debug_register_bank_output_1 => debug_register_bank_output_1,
	debug_register_bank_output_1_ID_EX => debug_register_bank_output_1_ID_EX,
	debug_rs1_reg_idx_ID_EXE => debug_rs1_reg_idx_ID_EXE,
	debug_wr_data_MEM_WB => debug_wr_data_MEM_WB,
	debug_wr_reg_idx_EX_MEM => debug_wr_reg_idx_EX_MEM,
	debug_wr_reg_idx_MEM_WB => debug_wr_reg_idx_MEM_WB,
	immediate => immediate,
	instruction => instruction,
	JTU_mux_sel => JTU_mux_sel,
	jump_flag => jump_flag,
	mux0_sel => mux0_sel,
	mux1_sel => mux1_sel,
	reset => reset,
	rs1_reg_idx => rs1_reg_idx,
	rs2_reg_idx => rs2_reg_idx,
	wr_data => wr_data,
	wr_reg_idx => wr_reg_idx
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END fpga_riscv32_minimal_arch;
