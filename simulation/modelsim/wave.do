onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label INPUT_CLOCK /fpga_riscv32_minimal/clock
add wave -noupdate -label INPUT_CLEAR /fpga_riscv32_minimal/clear
add wave -noupdate -label INPUT_RESET /fpga_riscv32_minimal/reset
add wave -noupdate -label INPUT_1ST-STAGE_PC_MUX_SELECT /fpga_riscv32_minimal/debug_datapath/pc_mux/selection
add wave -noupdate -label INPUT_2ND-STAGE_RS1_REG_IDX /fpga_riscv32_minimal/rs1_reg_idx
add wave -noupdate -label INPUT_2ND-STAGE_RS2_REG_IDX /fpga_riscv32_minimal/rs2_reg_idx
add wave -noupdate -label INPUT_2ND-STAGE_WR_REG_IDX /fpga_riscv32_minimal/wr_reg_idx
add wave -noupdate -label INPUT_2ND-STAGE_WR_DATA_CTRL /fpga_riscv32_minimal/wr_data
add wave -noupdate -label INPUT_2ND-STAGE_IMMEDIATE /fpga_riscv32_minimal/immediate
add wave -noupdate -label INPUT_2ND-STAGE_ALU_OPERATION /fpga_riscv32_minimal/alu_operation
add wave -noupdate -label INPUT_2ND-STAGE_ALU_BRANCH /fpga_riscv32_minimal/alu_branch
add wave -noupdate -label INPUT_2ND-STAGE_ALU_BRANCH_CTRL /fpga_riscv32_minimal/alu_branch_control
add wave -noupdate -label INPUT_2ND-STAGE_JTU_MUX_SEL /fpga_riscv32_minimal/JTU_mux_sel
add wave -noupdate -label INPUT_2ND-STAGE_JUMP_FLAG /fpga_riscv32_minimal/jump_flag
add wave -noupdate -label INPUT_2ND-STAGE_DATA_FORMAT /fpga_riscv32_minimal/data_format
add wave -noupdate -label INPUT_2ND-STAGE_DATAMEM_WRITE /fpga_riscv32_minimal/datamem_write
add wave -noupdate -label INPUT_2ND-STAGE_WB_MUX_SELECT /fpga_riscv32_minimal/mux0_sel
add wave -noupdate -label INPUT_2ND-STAGE_ALU_OP2_MUX_SELECT /fpga_riscv32_minimal/mux1_sel
add wave -noupdate -label INPUT_3RD-STAGE_FWRD_MUX0_SELECT /fpga_riscv32_minimal/debug_datapath/forward_mux_0/selection
add wave -noupdate -label INPUT_3RD-STAGE_FWRD_MUX1_SELECT /fpga_riscv32_minimal/debug_datapath/forward_mux_1/selection
add wave -noupdate -label 1ST-STAGE_PC_IN /fpga_riscv32_minimal/debug_datapath/program_counter/pc_in
add wave -noupdate -label 1ST-STAGE_PC_COUNT /fpga_riscv32_minimal/debug_datapath/program_counter/pc_count
add wave -noupdate -label 1ST-STAGE_INSTRUCTION /fpga_riscv32_minimal/debug_datapath/instruction_memory/instruction
add wave -noupdate -label IFID_PC_COUNT_IN /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/pc_count_in
add wave -noupdate -label IFID_PC_ADDED_IN /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/pc_added_in
add wave -noupdate -label IFID_PC_COUNT_OUT /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/pc_count_out
add wave -noupdate -label IFID_PC_ADDED_OUT /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/pc_added_out
add wave -noupdate -label IFID_INSTRUCTION_DATA_IN /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/instruction_data_in
add wave -noupdate -label IFID_INSTRUCTION_DATA_OUT /fpga_riscv32_minimal/debug_datapath/IF_ID_PLR/instruction_data_out
add wave -noupdate -label IDEX_ALU_OPERATION_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_operation_in
add wave -noupdate -label IDEX_ALU_BRANCH_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_branch_in
add wave -noupdate -label IDEX_ALU_BRANCH_CTRL_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_branch_control_in
add wave -noupdate -label IDEX_ALU_OP2_MUX_SELECT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/mux1_sel_in
add wave -noupdate -label IDEX_JTU_MUX_SEL_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/JTU_mux_sel_in
add wave -noupdate -label IDEX_DATA_FORMAT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/data_format_in
add wave -noupdate -label IDEX_DATAMEM_WRITE_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/datamem_write_in
add wave -noupdate -label IDEX_JUMP_FLAG_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/jump_flag_in
add wave -noupdate -label IDEX_WB_MUX_SELECT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/mux0_sel_in
add wave -noupdate -label IDEX_WR_DATA_CTRL_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/reg_file_write_in
add wave -noupdate -label IDEX_WR_REG_IDX_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/reg_file_write_address_in
add wave -noupdate -label IDEX_RS1_REG_IDX_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_read_address_0_in
add wave -noupdate -label IDEX_RS2_REG_IDX_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_read_address_1_in
add wave -noupdate -label IDEX_RS1_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_output_0_in
add wave -noupdate -label IDEX_RS2_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_output_1_in
add wave -noupdate -label IDEX_IMMEDIATE_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/immediate_in
add wave -noupdate -label IDEX_PC_COUNT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/instruction_address_in
add wave -noupdate -label IDEX_ALU_OPERATION_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_operation_out
add wave -noupdate -label IDEX_ALU_BRANCH_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_branch_out
add wave -noupdate -label IDEX_ALU_BRANCH_CTRL_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/ALU_branch_control_out
add wave -noupdate -label IDEX_ALU_OP2_MUX_SELECT_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/mux1_sel_out
add wave -noupdate -label IDEX_JTU_MUX_SEL_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/JTU_mux_sel_out
add wave -noupdate -label IDEX_DATA_FORMAT_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/data_format_out
add wave -noupdate -label IDEX_DATAMEM_WRITE_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/datamem_write_out
add wave -noupdate -label IDEX_JUMP_FLAG_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/jump_flag_out
add wave -noupdate -label IDEX_WB_MUX_SELECT_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/mux0_sel_out
add wave -noupdate -label IDEX_WR_DATA_CTRL_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/reg_file_write_out
add wave -noupdate -label IDEX_WR_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/reg_file_write_address_out
add wave -noupdate -label IDEX_RS1_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_read_address_0_out
add wave -noupdate -label IDEX_RS2_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_read_address_1_out
add wave -noupdate -label IDEX_RS1_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_output_0_out
add wave -noupdate -label IDEX_RS2_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/register_file_output_1_out
add wave -noupdate -label IDEX_IMMEDIATE_OUT /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/immediate_out
add wave -noupdate -label IDEX_PC_COUNT_IN /fpga_riscv32_minimal/debug_datapath/ID_EX_PLR/instruction_address_out
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_IDEX_RS1_REG_IDX /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_read_address_0_ID_EXE
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_IDEX_RS2_REG_IDX /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_read_address_1_ID_EXE
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_EXMEM_WR_DATA_CTRL /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_write_EX_MEM
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_EXMEM_WR_REG_IDX /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_write_address_EX_MEM
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_EXMEM_WB_MUX_SELECT /fpga_riscv32_minimal/debug_datapath/FU_0/mux_0_sel_EX_MEM
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_MEMWB_WR_DATA_CTRL /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_write_MEM_WB
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_MEMWB_WR_REG_IDX /fpga_riscv32_minimal/debug_datapath/FU_0/reg_file_write_address_MEM_WB
add wave -noupdate -label 3RD-STAGE_FWRD_UNIT_MEMWB_WB_MUX_SELECT /fpga_riscv32_minimal/debug_datapath/FU_0/mux_0_sel_MEM_WB
add wave -noupdate -label 3RD-STAGE_JTU_MUX_SEL /fpga_riscv32_minimal/debug_datapath/JTU_0/mux_sel
add wave -noupdate -label 3RD-STAGE_JTU_IDEX_PC_COUNT_OUT /fpga_riscv32_minimal/debug_datapath/JTU_0/current_instruction_address
add wave -noupdate -label 3RD-STAGE_JTU_IDEX_RS1_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/JTU_0/regfile_address
add wave -noupdate -label 3RD-STAGE_JTU_IMMEDIATE /fpga_riscv32_minimal/debug_datapath/JTU_0/immediate
add wave -noupdate -label 3RD-STAGE_JTU_TARGET_ADDR /fpga_riscv32_minimal/debug_datapath/JTU_0/target_address
add wave -noupdate -label 3RD-STAGE_JTU_INTERNAL_MUX_OUT /fpga_riscv32_minimal/debug_datapath/JTU_0/mux_output
add wave -noupdate -label 3RD-STAGE_FWRD_MUX0_IDEX_RS1_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/forward_mux_0/input_0
add wave -noupdate -label 3RD-STAGE_FWRD_MUX0_ALU_OUT_EXMEM /fpga_riscv32_minimal/debug_datapath/forward_mux_0/input_1
add wave -noupdate -label 3RD-STAGE_FWRD_MUX0_DATAMEM_OUT /fpga_riscv32_minimal/debug_datapath/forward_mux_0/input_2
add wave -noupdate -label 3RD-STAGE_FWRD_MUX0_ALU_OUT_MEMWB /fpga_riscv32_minimal/debug_datapath/forward_mux_0/input_3
add wave -noupdate -label 3RD-STAGE_FWRD_MUX0_DATAMEM_OUT_MEMWB /fpga_riscv32_minimal/debug_datapath/forward_mux_0/input_4
add wave -noupdate -label 3RD-STAGE_ALU_OP1 /fpga_riscv32_minimal/debug_datapath/forward_mux_0/output_0
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_IDEX_RS2_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/forward_mux_1/input_0
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_ALU_OUT_EXMEM /fpga_riscv32_minimal/debug_datapath/forward_mux_1/input_1
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_DATAMEM_OUT /fpga_riscv32_minimal/debug_datapath/forward_mux_1/input_2
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_ALU_OUT_MEMWB /fpga_riscv32_minimal/debug_datapath/forward_mux_1/input_3
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_DATAMEM_OUT_MEMWB /fpga_riscv32_minimal/debug_datapath/forward_mux_1/input_4
add wave -noupdate -label 3RD-STAGE_FWRD_MUX1_OUTPUT /fpga_riscv32_minimal/debug_datapath/forward_mux_1/output_0
add wave -noupdate -label 3RD-STAGE_MUX1_IDEX_IMMEDIATE_OUT /fpga_riscv32_minimal/debug_datapath/mux_1/value2
add wave -noupdate -label 3RD-STAGE_MUX1_IDEX_ALU_OP2_MUX_SELECT_OUT /fpga_riscv32_minimal/debug_datapath/mux_1/selection
add wave -noupdate -label 3RD-STAGE_ALU_OP2 /fpga_riscv32_minimal/debug_datapath/mux_1/mux_result
add wave -noupdate -label 3RD-STAGE_ALU_OPERATION /fpga_riscv32_minimal/debug_datapath/alu_0/operation
add wave -noupdate -label 3RD-STAGE_ALU_BRANCH /fpga_riscv32_minimal/debug_datapath/alu_0/branch
add wave -noupdate -label 3RD-STAGE_ALU_BRANCH_CTRL /fpga_riscv32_minimal/debug_datapath/alu_0/ALU_branch_control
add wave -noupdate -label 3RD-STAGE_ALU_OUTPUT /fpga_riscv32_minimal/debug_datapath/alu_0/ALU_output
add wave -noupdate -label EXMEM_DATA_FORMAT_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/data_format_in
add wave -noupdate -label EXMEM_DATAMEM_WRITE_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/datamem_write_in
add wave -noupdate -label EXMEM_JUMP_FLAG_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/jump_flag_in
add wave -noupdate -label EXMEM_WB_MUX_SELECT_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/mux0_sel_in
add wave -noupdate -label EXMEM_WR_DATA_CTRL_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/reg_file_write_in
add wave -noupdate -label EXMEM_WR_REG_IDX_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/reg_file_write_address_in
add wave -noupdate -label EXMEM_ALU_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/ALU_output_in
add wave -noupdate -label EXMEM_RS2_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/register_file_output_1_in
add wave -noupdate -label EXMEM_ALU_BRANCH_RESPONSE_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/ALU_branch_response_in
add wave -noupdate -label EXMEM_PC_COUNT_IN /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/instruction_address_in
add wave -noupdate -label EXMEM_DATA_FORMAT_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/data_format_out
add wave -noupdate -label EXMEM_DATAMEM_WRITE_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/datamem_write_out
add wave -noupdate -label EXMEM_JUMP_FLAG_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/jump_flag_out
add wave -noupdate -label EXMEM_WB_MUX_SEL_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/mux0_sel_out
add wave -noupdate -label EXMEM_WR_DATA_CTRL_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/reg_file_write_out
add wave -noupdate -label EXMEM_WR_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/reg_file_write_address_out
add wave -noupdate -label EXMEM_ALU_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/ALU_output_out
add wave -noupdate -label EXMEM_RS2_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/register_file_output_1_out
add wave -noupdate -label EXMEM_ALU_BRANCH_RESPONSE_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/ALU_branch_response_out
add wave -noupdate -label EXMEM_PC_COUNT_OUT /fpga_riscv32_minimal/debug_datapath/EX_MEM_PLR/instruction_address_out
add wave -noupdate -label 4TH-STAGE_FLUSHING_UNIT_CTRL /fpga_riscv32_minimal/debug_datapath/FLUSH/flushing_control
add wave -noupdate -label 4TH-STAGE_FLUSHING_UNIT_OUTPUT /fpga_riscv32_minimal/debug_datapath/FLUSH/flushing_output
add wave -noupdate -label 4TH-STAGE_MEM_MOD_INPUT_DATA_EXMEM_RS2_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/datamem_module_0/input_data
add wave -noupdate -label 4TH-STAGE_MEM_BYTE_ADDR_MOD_ALU_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/datamem_module_0/byte_address
add wave -noupdate -label 4TH-STAGE_MEM_MOD_EXMEM_DATA_FORMAT_OUT /fpga_riscv32_minimal/debug_datapath/datamem_module_0/data_format
add wave -noupdate -label 4TH_STAGE_MEM_MOD_DATAMEM_OUTPUT /fpga_riscv32_minimal/debug_datapath/datamem_module_0/output_data
add wave -noupdate -label MEMWB_WB_MUX_SELECT_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/mux0_sel_in
add wave -noupdate -label MEMWB_WR_DATA_CTRL_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/reg_file_write_in
add wave -noupdate -label MEMWB_WR_REG_IDX_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/reg_file_write_address_in
add wave -noupdate -label MEMWB_ALU_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/ALU_output_in
add wave -noupdate -label MEMWB_DATAMEM_OUTPUT_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/datamem_output_in
add wave -noupdate -label MEMWB_PC_COUNT_IN /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/instruction_address_in
add wave -noupdate -label MEMWB_WB_MUX_SELECT_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/mux0_sel_out
add wave -noupdate -label MEMWB_WR_DATA_CTRL_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/reg_file_write_out
add wave -noupdate -label MEMWB_WR_REG_IDX_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/reg_file_write_address_out
add wave -noupdate -label MEMWB_ALU_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/ALU_output_out
add wave -noupdate -label MEMWB_DATAMEM_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/datamem_output_out
add wave -noupdate -label MEMWB_PC_COUNT_OUT /fpga_riscv32_minimal/debug_datapath/MEM_WB_PLR/instruction_address_out
add wave -noupdate -label 5TH-STAGE_MUX_SELECT /fpga_riscv32_minimal/debug_datapath/mux_0/selection
add wave -noupdate -label 5TH-STAGE_WB_MUX_MEMWB_ALU_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/mux_0/input_0
add wave -noupdate -label 5TH-STAGE_WB_MUX_MEMWB_DATAMEM_OUTPUT_OUT /fpga_riscv32_minimal/debug_datapath/mux_0/input_1
add wave -noupdate -label 5TH-STAGE_WB_MUX_MEMWB_PC_COUNT_OUT /fpga_riscv32_minimal/debug_datapath/mux_0/input_2
add wave -noupdate -label 5TH-STAGE_REG_BANK_WR_DATA_IN /fpga_riscv32_minimal/debug_datapath/mux_0/output_0
add wave -noupdate /fpga_riscv32_minimal/clock
add wave -noupdate /fpga_riscv32_minimal/clear
add wave -noupdate /fpga_riscv32_minimal/alu_res
add wave -noupdate /fpga_riscv32_minimal/reset
add wave -noupdate /fpga_riscv32_minimal/rs1_reg_idx
add wave -noupdate /fpga_riscv32_minimal/rs2_reg_idx
add wave -noupdate /fpga_riscv32_minimal/wr_data
add wave -noupdate /fpga_riscv32_minimal/wr_reg_idx
add wave -noupdate /fpga_riscv32_minimal/immediate
add wave -noupdate /fpga_riscv32_minimal/alu_operation
add wave -noupdate /fpga_riscv32_minimal/alu_branch
add wave -noupdate /fpga_riscv32_minimal/alu_branch_control
add wave -noupdate /fpga_riscv32_minimal/JTU_mux_sel
add wave -noupdate /fpga_riscv32_minimal/data_format
add wave -noupdate /fpga_riscv32_minimal/datamem_write
add wave -noupdate /fpga_riscv32_minimal/jump_flag
add wave -noupdate /fpga_riscv32_minimal/mux0_sel
add wave -noupdate /fpga_riscv32_minimal/mux1_sel
add wave -noupdate /fpga_riscv32_minimal/debug_instruction_address
add wave -noupdate /fpga_riscv32_minimal/debug_regfile_x31_output
add wave -noupdate /fpga_riscv32_minimal/debug_regfile_x1_output
add wave -noupdate /fpga_riscv32_minimal/debug_regfile_x2_output
add wave -noupdate /fpga_riscv32_minimal/debug_alu_output
add wave -noupdate /fpga_riscv32_minimal/debug_alu_input_0
add wave -noupdate /fpga_riscv32_minimal/debug_alu_input_1
add wave -noupdate /fpga_riscv32_minimal/debug_forward_mux_0
add wave -noupdate /fpga_riscv32_minimal/debug_forward_mux_1
add wave -noupdate /fpga_riscv32_minimal/debug_rs1_reg_idx_ID_EXE
add wave -noupdate /fpga_riscv32_minimal/debug_wr_reg_idx_EX_MEM
add wave -noupdate /fpga_riscv32_minimal/debug_mux0_sel_MEM_WB
add wave -noupdate /fpga_riscv32_minimal/debug_wr_data_MEM_WB
add wave -noupdate /fpga_riscv32_minimal/debug_wr_reg_idx_MEM_WB
add wave -noupdate /fpga_riscv32_minimal/debug_alu_output_MEM_WB
add wave -noupdate /fpga_riscv32_minimal/debug_alu_output_EX_MEM
add wave -noupdate /fpga_riscv32_minimal/debug_register_bank_output_0
add wave -noupdate /fpga_riscv32_minimal/debug_register_bank_output_1
add wave -noupdate /fpga_riscv32_minimal/debug_register_bank_output_0_ID_EX
add wave -noupdate /fpga_riscv32_minimal/debug_register_bank_output_1_ID_EX
add wave -noupdate /fpga_riscv32_minimal/debug_instruction
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {191 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 375
configure wave -valuecolwidth 232
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {334 ps}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/clock 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/clear 
wave create -pattern none -portmode in -language vhdl -range 31 0 /fpga_riscv32_minimal/alu_res 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/instruction 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/reset 
wave create -pattern none -portmode in -language vhdl -range 4 0 /fpga_riscv32_minimal/rs1_reg_idx 
wave create -pattern none -portmode in -language vhdl -range 4 0 /fpga_riscv32_minimal/rs2_reg_idx 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/wr_data 
wave create -pattern none -portmode in -language vhdl -range 4 0 /fpga_riscv32_minimal/wr_reg_idx 
wave create -pattern none -portmode in -language vhdl -range 31 0 /fpga_riscv32_minimal/immediate 
wave create -pattern none -portmode in -language vhdl -range 3 0 /fpga_riscv32_minimal/alu_operation 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/alu_branch 
wave create -pattern none -portmode in -language vhdl -range 2 0 /fpga_riscv32_minimal/alu_branch_control 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/JTU_mux_sel 
wave create -pattern none -portmode in -language vhdl -range 2 0 /fpga_riscv32_minimal/data_format 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/datamem_write 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/jump_flag 
wave create -pattern none -portmode in -language vhdl -range 1 0 /fpga_riscv32_minimal/mux0_sel 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/mux1_sel 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_instruction_address 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_regfile_x31_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_regfile_x1_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_regfile_x2_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_alu_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_alu_input_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_alu_input_1 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/debug_forward_mux_0 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/debug_forward_mux_1 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/debug_rs1_reg_idx_ID_EXE 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/debug_wr_reg_idx_EX_MEM 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/debug_mux0_sel_MEM_WB 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/debug_wr_data_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/debug_wr_reg_idx_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_alu_output_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_alu_output_EX_MEM 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_register_bank_output_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_register_bank_output_1 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_register_bank_output_0_ID_EX 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_register_bank_output_1_ID_EX 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_instruction 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/clear 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/reset 
wave modify -driver freeze -pattern constant -value 00001 -range 4 0 -starttime 110ps -endtime 200ps Edit:/fpga_riscv32_minimal/rs1_reg_idx 
wave modify -driver freeze -pattern constant -value 00010 -range 4 0 -starttime 110ps -endtime 200ps Edit:/fpga_riscv32_minimal/rs2_reg_idx 
wave modify -driver freeze -pattern constant -value 1 -starttime 110ps -endtime 200ps Edit:/fpga_riscv32_minimal/wr_data 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 110ps -endtime 200ps Edit:/fpga_riscv32_minimal/wr_reg_idx 
wave modify -driver freeze -pattern constant -value 00000000000000000000000000000000 -range 31 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/immediate 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 210ps -endtime 310ps Edit:/fpga_riscv32_minimal/alu_operation 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/alu_branch 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/alu_branch_control 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/JTU_mux_sel 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/data_format 
wave modify -driver freeze -pattern constant -value 0 -starttime 110ps -endtime 510ps Edit:/fpga_riscv32_minimal/datamem_write 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/data_format 
wave modify -driver freeze -pattern constant -value 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/datamem_write 
wave modify -driver freeze -pattern constant -value 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/JTU_mux_sel 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/alu_branch_control 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/alu_branch_control 
wave modify -driver freeze -pattern constant -value 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/alu_branch 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/alu_operation 
wave modify -driver freeze -pattern constant -value 00000000000000000000000000000000 -range 31 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/immediate 
wave modify -driver freeze -pattern constant -value 00000 -range 4 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/wr_reg_idx 
wave modify -driver freeze -pattern constant -value 00000000000000000000000000000000 -range 31 0 -starttime 110ps -endtime 210ps Edit:/fpga_riscv32_minimal/immediate 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/jump_flag 
wave modify -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/mux0_sel 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/fpga_riscv32_minimal/mux1_sel 
{wave export -file F:/QuartusProjects/fpga-riscv32-minimal/simulation/modelsim/tb.vhd -starttime 0 -endtime 1000 -format vhdl -designunit fpga_riscv32_minimal -f} 
WaveCollapseAll -1
wave clipboard restore
