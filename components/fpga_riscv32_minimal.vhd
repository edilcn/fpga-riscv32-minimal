library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity fpga_riscv32_minimal is
	port (
		clock, reset: in std_logic;
		debug_pc_output : out std_logic_vector(31 downto 0);
		debug_regfile_x31_output : out std_logic_vector(31 downto 0);
		debug_regfile_x1_output : out std_logic_vector(31 downto 0);
		debug_regfile_x2_output : out std_logic_vector(31 downto 0);
		debug_ALU_output : out std_logic_vector(31 downto 0);
		debug_regfile_write : out std_logic;
		debug_ALU_input_0 : out std_logic_vector(31 downto 0);
		debug_ALU_input_1 : out std_logic_vector(31 downto 0);
		debug_reg_file_read_address_0 : out std_logic_vector(4 downto 0);
		debug_reg_file_read_address_1 : out std_logic_vector(4 downto 0);
		debug_mux0_sel : out std_logic_vector(1 downto 0);
		debug_immediate : out std_logic_vector(31 downto 0);
		debug_ALU_operation : out std_logic_vector(3 downto 0);
		debug_forward_mux_0 : out std_logic_vector(2 downto 0);
		debug_forward_mux_1 : out std_logic_vector(2 downto 0);
		debug_rs1_reg_idx_ID_EXE : out std_logic_vector(4 downto 0);
		debug_wr_reg_idx_EX_MEM : out std_logic_vector(4 downto 0);
		debug_mux0_sel_MEM_WB : out std_logic_vector(1 downto 0);
		debug_wr_data_MEM_WB : out std_logic;
		debug_wr_reg_idx_MEM_WB : out std_logic_vector(4 downto 0);
		debug_alu_output_MEM_WB : out std_logic_vector(31 downto 0);
		debug_alu_output_EX_MEM : out std_logic_vector(31 downto 0);
		debug_register_bank_output_0 : out std_logic_vector(31 downto 0);
		debug_register_bank_output_1 : out std_logic_vector(31 downto 0);
		debug_register_bank_output_0_ID_EX : out std_logic_vector(31 downto 0);
		debug_register_bank_output_1_ID_EX : out std_logic_vector(31 downto 0);
		debug_instruction_address : out std_logic_vector(31 downto 0);
		debug_instruction : out std_logic_vector(31 downto 0)		
		);
end fpga_riscv32_minimal;

architecture arch_minimal_riscv32 of fpga_riscv32_minimal is
	signal IF_ID_flush : std_logic;
	signal rs1_reg_idx : std_logic_vector(4 downto 0);
	signal rs2_reg_idx : std_logic_vector(4 downto 0);
	signal wr_data : std_logic;
	signal wr_reg_idx : std_logic_vector(4 downto 0);
	signal immediate : std_logic_vector(31 downto 0);
	signal alu_operation : std_logic_vector(3 downto 0);
	signal alu_branch : std_logic;
	signal alu_branch_control : std_logic_vector(2 downto 0);
	signal JTU_mux_sel : std_logic;
	signal data_format : std_logic_vector(2 downto 0);
	signal datamem_write : std_logic;
	signal jump_flag : std_logic;
	signal mux0_sel : std_logic_vector(1 downto 0);
	signal mux1_sel : std_logic;
	signal instruction : std_logic_vector(31 downto 0);
	
begin
--		debug_datapath: entity work.datapath port map (clock, reset, rs1_reg_idx, rs2_reg_idx, wr_data,	wr_reg_idx,	
--		immediate, alu_operation, alu_branch, alu_branch_control, JTU_mux_sel, data_format, datamem_write,
--		jump_flag, mux0_sel,	mux1_sel, instruction);
		controller_0 : entity work.controller port map(clock, reset, instruction, rs1_reg_idx, rs2_reg_idx, wr_data, wr_reg_idx, immediate, alu_operation, alu_branch, alu_branch_control, JTU_mux_sel, data_format, datamem_write, jump_flag, mux0_sel, mux1_sel);
		datapath_0: entity work.datapath port map (clock, reset, rs1_reg_idx, rs2_reg_idx, wr_data, wr_reg_idx, immediate, alu_operation, alu_branch, alu_branch_control, JTU_mux_sel, data_format, datamem_write, jump_flag, mux0_sel, mux1_sel, instruction, debug_pc_output, debug_alu_output, debug_alu_input_0, debug_alu_input_1, debug_forward_mux_0, debug_forward_mux_1, debug_rs1_reg_idx_ID_EXE, debug_wr_reg_idx_EX_MEM, debug_mux0_sel_MEM_WB, debug_wr_data_MEM_WB, debug_wr_reg_idx_MEM_WB, debug_alu_output_MEM_WB, debug_alu_output_EX_MEM, debug_register_bank_output_0, debug_register_bank_output_1, debug_register_bank_output_0_ID_EX, debug_register_bank_output_1_ID_EX, debug_instruction);
		
		debug_regfile_write <= wr_data;
		debug_reg_file_read_address_0 <= rs1_reg_idx;
		debug_reg_file_read_address_1 <= rs2_reg_idx;
		debug_mux0_sel <= mux0_sel;
		debug_immediate <= immediate;
		debug_ALU_operation <= alu_operation;
		
end arch_minimal_riscv32;
