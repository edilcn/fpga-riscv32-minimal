library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity fpga_riscv32_minimal is
	port (
		signal clock, clear: in std_logic;
		signal alu_res : in std_logic_vector(31 downto 0);
		signal instruction : out std_logic_vector(31 downto 0)
	);
end fpga_riscv32_minimal;

architecture arch_minimal_riscv32 of fpga_riscv32_minimal is
--	signal pc_sel: std_logic;
--	signal next_pc_count: std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
--	signal pc_count, pc_added: std_logic_vector(31 downto 0);
		clock : std_logic;
		reset : std_logic;
		rs1_reg_idx : std_logic_vector(4 downto 0);
		rs2_reg_idx : std_logic_vector(4 downto 0);
		wr_data : std_logic;
		wr_reg_idx : std_logic_vector(4 downto 0);
		immediate : std_logic_vector(31 downto 0);
		alu_operation : std_logic_vector(3 downto 0);
		alu_branch : std_logic;
		alu_branch_control : std_logic_vector(2 downto 0);
		JTU_mux_sel : std_logic;
		data_format : std_logic_vector(2 downto 0);
		datamem_write : std_logic;
		jump_flag : std_logic;
		mux0_sel : std_logic_vector(1 downto 0);
		mux1_sel : std_logic;
		instruction : buffer std_logic_vector(31 downto 0); --change it back to output later
		debug_instruction_address : std_logic_vector(31 downto 0);
		debug_regfile_x31_output : std_logic_vector(31 downto 0);
		debug_regfile_x1_output : std_logic_vector(31 downto 0);
		debug_regfile_x2_output : std_logic_vector(31 downto 0);
		debug_alu_output : std_logic_vector(31 downto 0);
		debug_alu_input_0 : std_logic_vector(31 downto 0);
		debug_alu_input_1 : std_logic_vector(31 downto 0);
		debug_forward_mux_0 : std_logic_vector(2 downto 0);
		debug_forward_mux_1 : std_logic_vector(2 downto 0);
		debug_rs1_reg_idx_ID_EXE : std_logic_vector(4 downto 0);
		debug_wr_reg_idx_EX_MEM : std_logic_vector(4 downto 0);
		debug_mux0_sel_MEM_WB : std_logic_vector(1 downto 0);
		debug_wr_data_MEM_WB : std_logic;
		debug_wr_reg_idx_MEM_WB : std_logic_vector(4 downto 0);
		debug_alu_output_MEM_WB : std_logic_vector(31 downto 0);
		debug_alu_output_EX_MEM : std_logic_vector(31 downto 0);
		debug_register_bank_output_0 : std_logic_vector(31 downto 0);
		debug_register_bank_output_1 : std_logic_vector(31 downto 0);
		debug_register_bank_output_0_ID_EX : std_logic_vector(31 downto 0);
		debug_register_bank_output_1_ID_EX : std_logic_vector(31 downto 0);
		debug_instruction : std_logic_vector(31 downto 0)
	
begin
--	program_counter : pc port map (clock, clear, next_pc_count, '1', pc_count);
--	instruction_memory : instmem port map (pc_count, instruction, clock);
--	alu_pc: adder port map (pc_count, "00000000000000000000000000000100", pc_added);
--	pc_mux: mux2 port map (pc_added, alu_res, pc_sel, next_pc_count);
		debug_datapath: datapath port map (clock, reset, rs1_reg_idx, rs2_reg_idx, wr_data,	wr_reg_idx,	
		immediate, alu_operation, alu_branch, alu_branch_control, JTU_mux_sel, data_format, datamem_write,
		jump_flag, mux0_sel,	mux1_sel, instruction,	debug_instruction_address,	debug_regfile_x31_output,
		debug_regfile_x1_output, debug_regfile_x2_output, debug_alu_output, debug_alu_input_0, debug_alu_input_1,
		debug_forward_mux_0,	debug_forward_mux_1,	debug_rs1_reg_idx_ID_EXE, debug_wr_reg_idx_EX_MEM,	debug_mux0_sel_MEM_WB,
		debug_wr_data_MEM_WB, debug_wr_reg_idx_MEM_WB, debug_alu_output_MEM_WB,	debug_alu_output_EX_MEM, 
		debug_register_bank_output_0,	debug_register_bank_output_1,	debug_register_bank_output_0_ID_EX,	debug_register_bank_output_1_ID_EX,
		debug_instruction);
		
end arch_minimal_riscv32;
