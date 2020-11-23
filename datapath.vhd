library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity datapath is
	port (
		clock : in std_logic;
		reset : in std_logic;
		rs1_reg_idx : in std_logic_vector(4 downto 0);
		rs2_reg_idx : in std_logic_vector(4 downto 0);
		wr_data : in std_logic;
		wr_reg_idx : in std_logic_vector(4 downto 0);
		immediate : in std_logic_vector(31 downto 0);
		alu_operation : in std_logic_vector(3 downto 0);
		alu_branch : in std_logic;
		alu_branch_control : in std_logic_vector(2 downto 0);
		JTU_mux_sel : in std_logic;
		data_format : in std_logic_vector(2 downto 0);
		datamem_write : in std_logic;
		jump_flag : in std_logic;
		mux0_sel : in std_logic_vector(1 downto 0);
		mux1_sel : in std_logic;
		instruction : buffer std_logic_vector(31 downto 0); --change it back to output later
		debug_instruction_address : out std_logic_vector(31 downto 0);
		debug_regfile_x31_output : out std_logic_vector(31 downto 0);
		debug_regfile_x1_output : out std_logic_vector(31 downto 0);
		debug_regfile_x2_output : out std_logic_vector(31 downto 0);
		debug_alu_output : out std_logic_vector(31 downto 0);
		debug_alu_input_0 : out std_logic_vector(31 downto 0);
		debug_alu_input_1 : out std_logic_vector(31 downto 0);
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
		debug_instruction : out std_logic_vector(31 downto 0)

	);
end entity datapath;

architecture structural of datapath is

	signal PC_output : std_logic_vector(31 downto 0); -- use this as your progmem input when your memory does not have a registered input
	signal PC_next_address : std_logic_vector(31 downto 0); --use this when it does
	signal progmem_output : std_logic_vector(31 downto 0);

	signal hazard_control_unit_output : std_logic;

	signal mux_0_output : std_logic_vector(31 downto 0);
	signal mux_1_output : std_logic_vector(31 downto 0);

	signal register_bank_output_0 : std_logic_vector(31 downto 0);
	signal register_bank_output_1 : std_logic_vector(31 downto 0);

	signal alu_branch_response : std_logic;
	signal alu_output : std_logic_vector(31 downto 0);

	signal datamem_output : std_logic_vector(31 downto 0);

	signal instruction_address_IF_ID : std_logic_vector(31 downto 0);

	signal alu_operation_ID_EX : std_logic_vector(3 downto 0);
	signal alu_branch_ID_EX : std_logic;
	signal alu_branch_control_ID_EX : std_logic_vector(2 downto 0);
	signal mux1_sel_ID_EX : std_logic;
	signal JTU_mux_sel_ID_EX : std_logic;

	signal data_format_ID_EX : std_logic_vector(2 downto 0);
	signal datamem_write_ID_EX : std_logic;
	signal jump_flag_ID_EX : std_logic;

	signal mux0_sel_ID_EX : std_logic_vector(1 downto 0);
	signal wr_data_ID_EX : std_logic;
	signal wr_reg_idx_ID_EX : std_logic_vector(4 downto 0);

	signal register_bank_read_address_0_ID_EX : std_logic_vector (4 downto 0);
	signal register_bank_read_address_1_ID_EX : std_logic_vector (4 downto 0);
	signal register_bank_output_0_ID_EX : std_logic_vector(31 downto 0);
	signal register_bank_output_1_ID_EX : std_logic_vector(31 downto 0);
	signal immediate_ID_EX : std_logic_vector(31 downto 0);
	signal instruction_address_ID_EX : std_logic_vector(31 downto 0);

	signal forward_mux_0_control : std_logic_vector(2 downto 0);
	signal forward_mux_1_control : std_logic_vector(2 downto 0);

	signal forward_mux_0_output : std_logic_vector(31 downto 0);
	signal forward_mux_1_output : std_logic_vector(31 downto 0);

	signal JTU_output : std_logic_vector(31 downto 0);

	signal data_format_EX_MEM : std_logic_vector(2 downto 0);
	signal datamem_write_EX_MEM : std_logic;
	signal jump_flag_EX_MEM : std_logic;

	signal mux0_sel_EX_MEM : std_logic_vector(1 downto 0);
	signal wr_data_EX_MEM : std_logic;
	signal wr_reg_idx_EX_MEM : std_logic_vector(4 downto 0);
	signal alu_branch_response_EX_MEM : std_logic;

	signal alu_output_EX_MEM : std_logic_vector(31 downto 0);
	signal register_bank_output_1_EX_MEM : std_logic_vector(31 downto 0);
	signal instruction_address_EX_MEM : std_logic_vector(31 downto 0);

	signal mux0_sel_MEM_WB : std_logic_vector(1 downto 0);
	signal wr_data_MEM_WB : std_logic;
	signal wr_reg_idx_MEM_WB : std_logic_vector(4 downto 0);

	signal alu_output_MEM_WB : std_logic_vector(31 downto 0);
	signal datamem_output_MEM_WB : std_logic_vector(31 downto 0);
	signal instruction_address_MEM_WB : std_logic_vector(31 downto 0);
	signal debug_regfile_x31_output_signal : std_logic_vector(31 downto 0);
	signal debug_regfile_x1_output_signal : std_logic_vector(31 downto 0);
	signal debug_regfile_x2_output_signal : std_logic_vector(31 downto 0);

begin

	pc_0 : pc port map(reset, clock, alu_branch_response or jump_flag_ID_EX, std_logic_vector(unsigned(PC_output) + 4), JTU_output, PC_next_address, PC_output);
	progmem_module_0 : instmem port map(clock, PC_next_address, progmem_output);

	IF_ID_PLR : ifid_pipeline port map(clock, reset or hazard_control_unit_output, PC_output, progmem_output, instruction_address_IF_ID, instruction);

	mux_0 : mux3_1 port map(mux0_sel_MEM_WB, alu_output_MEM_WB, datamem_output_MEM_WB, std_logic_vector(unsigned(instruction_address_MEM_WB) + 4), mux_0_output);
	register_bank_0 : register_bank port map(mux_0_output, wr_reg_idx_MEM_WB, rs1_reg_idx, rs2_reg_idx, wr_data_MEM_WB, clock, reset, register_bank_output_0, register_bank_output_1, debug_regfile_x31_output_signal, debug_regfile_x1_output_signal, debug_regfile_x2_output_signal);

	ID_EX_PLR : idex_pipeline port map(clock, reset or hazard_control_unit_output, alu_operation, alu_branch, alu_branch_control, mux1_sel, JTU_mux_sel, data_format, datamem_write, jump_flag, mux0_sel, wr_data, wr_reg_idx, rs1_reg_idx, rs2_reg_idx, register_bank_output_0, register_bank_output_1, immediate, instruction_address_IF_ID, alu_operation_ID_EX, alu_branch_ID_EX, alu_branch_control_ID_EX, mux1_sel_ID_EX, JTU_mux_sel_ID_EX, data_format_ID_EX, datamem_write_ID_EX, jump_flag_ID_EX, mux0_sel_ID_EX, wr_data_ID_EX, wr_reg_idx_ID_EX, register_bank_read_address_0_ID_EX, register_bank_read_address_1_ID_EX, register_bank_output_0_ID_EX, register_bank_output_1_ID_EX, immediate_ID_EX, instruction_address_ID_EX);

	FU_0 : forwarding_unit port map(register_bank_read_address_0_ID_EX, register_bank_read_address_1_ID_EX, wr_data_EX_MEM, wr_reg_idx_EX_MEM, mux0_sel_EX_MEM, wr_data_MEM_WB, wr_reg_idx_MEM_WB, mux0_sel_MEM_WB, forward_mux_0_control, forward_mux_1_control);
	forward_mux_0 : mux5_1 port map(forward_mux_0_control, register_bank_output_0_ID_EX, alu_output_EX_MEM, datamem_output, alu_output_MEM_WB, datamem_output_MEM_WB, forward_mux_0_output);
	forward_mux_1 : mux5_1 port map(forward_mux_1_control, register_bank_output_1_ID_EX, alu_output_EX_MEM, datamem_output, alu_output_MEM_WB, datamem_output_MEM_WB, forward_mux_1_output);

	mux_1 : mux2_1 port map(mux1_sel_ID_EX, forward_mux_1_output, immediate_ID_EX, mux_1_output);
	alu_0 : alu port map(forward_mux_0_output, mux_1_output, alu_operation_ID_EX, alu_branch_ID_EX, alu_branch_control_ID_EX, alu_branch_response, alu_output);

	JTU_0 : jump_target_unit port map(JTU_mux_sel_ID_EX, instruction_address_ID_EX, register_bank_output_0_ID_EX, immediate_ID_EX, JTU_output);

	EX_MEM_PLR : exmem_pipeline port map(clock, reset, data_format_ID_EX, datamem_write_ID_EX, jump_flag_ID_EX, mux0_sel_ID_EX, wr_data_ID_EX, wr_reg_idx_ID_EX, alu_output, forward_mux_1_output, alu_branch_response, instruction_address_ID_EX, data_format_EX_MEM, datamem_write_EX_MEM, jump_flag_EX_MEM, mux0_sel_EX_MEM, wr_data_EX_MEM, wr_reg_idx_EX_MEM, alu_output_EX_MEM, register_bank_output_1_EX_MEM, alu_branch_response_EX_MEM, instruction_address_EX_MEM);

	FLUSH : hazard_control_unit port map(reset, clock, alu_branch_response_EX_MEM or jump_flag_EX_MEM, hazard_control_unit_output);

	datamem_module_0 : datamem_interface port map(register_bank_output_1_EX_MEM, alu_output_EX_MEM, data_format_EX_MEM, clock, datamem_write_EX_MEM, reset, datamem_output);

	MEM_WB_PLR : memwb_pipeline port map(clock, reset, mux0_sel_EX_MEM, wr_data_EX_MEM, wr_reg_idx_EX_MEM, alu_output_EX_MEM, datamem_output, instruction_address_EX_MEM, mux0_sel_MEM_WB, wr_data_MEM_WB, wr_reg_idx_MEM_WB, alu_output_MEM_WB, datamem_output_MEM_WB, instruction_address_MEM_WB);

	debug_instruction_address <= PC_output;
	debug_regfile_x31_output <= debug_regfile_x31_output_signal;
	debug_regfile_x1_output <= debug_regfile_x1_output_signal;
	debug_regfile_x2_output <= debug_regfile_x2_output_signal;
	debug_alu_output <= alu_output;
	debug_alu_input_0 <= forward_mux_0_output;
	debug_alu_input_1 <= mux_1_output;
	debug_forward_mux_0 <= forward_mux_0_control;
	debug_forward_mux_1 <= forward_mux_1_control;
	debug_rs1_reg_idx_ID_EXE <= register_bank_read_address_0_ID_EX;
	debug_wr_reg_idx_EX_MEM <= wr_reg_idx_EX_MEM;
	debug_mux0_sel_MEM_WB <= mux0_sel_MEM_WB;
	debug_wr_data_MEM_WB <= wr_data_MEM_WB;
	debug_wr_reg_idx_MEM_WB <= wr_reg_idx_MEM_WB;
	debug_alu_output_MEM_WB <= alu_output_MEM_WB;
	debug_alu_output_EX_MEM <= alu_output_EX_MEM;
	debug_register_bank_output_0 <= register_bank_output_0;
	debug_register_bank_output_1 <= register_bank_output_1;
	debug_register_bank_output_0_ID_EX <= register_bank_output_0_ID_EX;
	debug_register_bank_output_1_ID_EX <= register_bank_output_1_ID_EX;
	debug_instruction <= progmem_output;

end architecture structural;