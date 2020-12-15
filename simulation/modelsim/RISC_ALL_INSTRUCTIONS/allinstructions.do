onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Stage 1}
add wave -noupdate /fpga_riscv32_minimal/stage_1_pc_output
add wave -noupdate /fpga_riscv32_minimal/stage_1_instruction
add wave -noupdate -divider {Stage 2}
add wave -noupdate /controller/instruction
add wave -noupdate /controller/wr_reg_idx
add wave -noupdate /controller/alu_branch
add wave -noupdate /controller/alu_branch_control
add wave -noupdate /controller/jtu_mux_sel
add wave -noupdate /controller/data_format
add wave -noupdate /controller/datamem_write
add wave -noupdate /controller/jump_flag
add wave -noupdate /controller/mux0_sel
add wave -noupdate /controller/mux1_sel
add wave -noupdate /fpga_riscv32_minimal/stage_2_rs1_idx
add wave -noupdate /fpga_riscv32_minimal/stage_2_rs2_idx
add wave -noupdate /fpga_riscv32_minimal/stage_2_rs1_output
add wave -noupdate /fpga_riscv32_minimal/stage_2_rs2_output
add wave -noupdate /fpga_riscv32_minimal/control_immediate
add wave -noupdate /fpga_riscv32_minimal/control_alu_operation
add wave -noupdate /fpga_riscv32_minimal/control_forward_mux_0
add wave -noupdate /fpga_riscv32_minimal/control_forward_mux_1
add wave -noupdate /fpga_riscv32_minimal/control_wr_write
add wave -noupdate -divider {Stage 3}
add wave -noupdate /idex_register/instruction_address_out
add wave -noupdate /idex_register/immediate_out
add wave -noupdate /fpga_riscv32_minimal/stage_3_alu_input_0
add wave -noupdate /fpga_riscv32_minimal/stage_3_alu_input_1
add wave -noupdate /fpga_riscv32_minimal/stage_3_alu_output
add wave -noupdate /fpga_riscv32_minimal/exmem_wr_reg_idx
add wave -noupdate /idex_register/reg_file_write_out
add wave -noupdate /idex_register/reg_file_write_address_out
add wave -noupdate /idex_register/alu_operation_out
add wave -noupdate /idex_register/alu_branch_out
add wave -noupdate /idex_register/alu_branch_control_out
add wave -noupdate /idex_register/mux1_sel_out
add wave -noupdate /idex_register/jtu_mux_sel_out
add wave -noupdate /idex_register/data_format_out
add wave -noupdate /idex_register/datamem_write_out
add wave -noupdate /idex_register/jump_flag_out
add wave -noupdate /idex_register/mux0_sel_out
add wave -noupdate -divider {Stage 4}
add wave -noupdate /exmem_pipeline/instruction_address_out
add wave -noupdate /fpga_riscv32_minimal/memwb_wr_data
add wave -noupdate /fpga_riscv32_minimal/memwb_wr_reg_idx
add wave -noupdate /fpga_riscv32_minimal/memwb_alu_output
add wave -noupdate /fpga_riscv32_minimal/memwb_wb_sel
add wave -noupdate /exmem_pipeline/data_format_out
add wave -noupdate /exmem_pipeline/datamem_write_out
add wave -noupdate /memwb_pipeline/datamem_output_in
add wave -noupdate /exmem_pipeline/register_file_output_1_out
add wave -noupdate /exmem_pipeline/alu_branch_response_out
add wave -noupdate /exmem_pipeline/jump_flag_out
add wave -noupdate /jump_target_unit/mux_sel
add wave -noupdate /jump_target_unit/current_instruction_address
add wave -noupdate /jump_target_unit/regfile_address
add wave -noupdate /jump_target_unit/immediate
add wave -noupdate /jump_target_unit/target_address
add wave -noupdate -divider {Stage 5}
add wave -noupdate /memwb_pipeline/instruction_address_out
add wave -noupdate /fpga_riscv32_minimal/stage_5_wb_sel
add wave -noupdate /memwb_pipeline/mux0_sel_in
add wave -noupdate /memwb_pipeline/reg_file_write_in
add wave -noupdate /memwb_pipeline/reg_file_write_address_in
add wave -noupdate /memwb_pipeline/alu_output_in
add wave -noupdate /memwb_pipeline/instruction_address_in
add wave -noupdate /memwb_pipeline/reg_file_write_out
add wave -noupdate /memwb_pipeline/reg_file_write_address_out
add wave -noupdate /memwb_pipeline/alu_output_out
add wave -noupdate /memwb_pipeline/datamem_output_out
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate /fpga_riscv32_minimal/clock
add wave -noupdate /fpga_riscv32_minimal/reset
add wave -noupdate -divider Control
add wave -noupdate /hazard_control_unit/flushing_control
add wave -noupdate /hazard_control_unit/flushing_output
add wave -noupdate /forwarding_unit/reg_file_read_address_0_id_exe
add wave -noupdate /forwarding_unit/reg_file_read_address_1_id_exe
add wave -noupdate /forwarding_unit/reg_file_write_ex_mem
add wave -noupdate /forwarding_unit/reg_file_write_address_ex_mem
add wave -noupdate /forwarding_unit/mux_0_sel_ex_mem
add wave -noupdate /forwarding_unit/reg_file_write_mem_wb
add wave -noupdate /forwarding_unit/reg_file_write_address_mem_wb
add wave -noupdate /forwarding_unit/mux_0_sel_mem_wb
add wave -noupdate /forwarding_unit/forward_mux_0_control
add wave -noupdate /forwarding_unit/forward_mux_1_control
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 304
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {859 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/clock 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/reset 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_1_pc_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_1_instruction 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/Stage_2_rs1_idx 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/Stage_2_rs2_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_2_rs1_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_2_rs2_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_input_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_input_1 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_output 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/Stage_5_Wb_sel 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Control_immediate 
wave create -pattern none -portmode out -language vhdl -range 3 0 /fpga_riscv32_minimal/Control_ALU_operation 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/Control_forward_mux_0 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/Control_forward_mux_1 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/Control_wr_write 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/IDEXE_rs1_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/IDEXE_rs2_output 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/IDEXE_rs1_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/EXMEM_wr_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/EXMEM_alu_outpu 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/MEMWB_Wb_sel 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/MEMWB_wr_data 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/MEMWB_wr_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/MEMWB_alu_output 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/clock 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/reset 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_1_pc_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_1_instruction 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/Stage_2_rs1_idx 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/Stage_2_rs2_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_2_rs1_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_2_rs2_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_input_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_input_1 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Stage_3_ALU_output 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/Stage_5_Wb_sel 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/Control_immediate 
wave create -pattern none -portmode out -language vhdl -range 3 0 /fpga_riscv32_minimal/Control_ALU_operation 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/Control_forward_mux_0 
wave create -pattern none -portmode out -language vhdl -range 2 0 /fpga_riscv32_minimal/Control_forward_mux_1 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/Control_wr_write 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/IDEXE_rs1_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/IDEXE_rs2_output 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/IDEXE_rs1_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/EXMEM_wr_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/EXMEM_alu_output 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/MEMWB_Wb_sel 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/MEMWB_wr_data 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/MEMWB_wr_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/MEMWB_alu_output 
wave create -pattern none -portmode in -language vhdl /hazard_control_unit/clear 
wave create -pattern none -portmode in -language vhdl /hazard_control_unit/clock 
wave create -pattern none -portmode in -language vhdl /hazard_control_unit/flushing_control 
wave create -pattern none -portmode out -language vhdl /hazard_control_unit/flushing_output 
wave create -pattern none -portmode in -language vhdl /ifid_register/clock 
wave create -pattern none -portmode in -language vhdl /ifid_register/clear 
wave create -pattern none -portmode in -language vhdl /ifid_register/enable 
wave create -pattern none -portmode in -language vhdl -range 31 0 /ifid_register/pc_count_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /ifid_register/pc_added_in 
wave create -pattern none -portmode out -language vhdl -range 31 0 /ifid_register/pc_count_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /ifid_register/pc_added_out 
wave create -pattern none -portmode in -language vhdl -range 31 0 /ifid_register/instruction_data_in 
wave create -pattern none -portmode out -language vhdl -range 31 0 /ifid_register/instruction_data_out 
wave create -pattern none -portmode in -language vhdl /pc/clock 
wave create -pattern none -portmode in -language vhdl /pc/clear 
wave create -pattern none -portmode in -language vhdl -range 31 0 /pc/pc_in 
wave create -pattern none -portmode in -language vhdl /pc/pc_enable 
wave create -pattern none -portmode out -language vhdl -range 31 0 /pc/pc_count 
wave create -pattern none -portmode in -language vhdl -range 31 0 /mux2/value1 
wave create -pattern none -portmode in -language vhdl -range 31 0 /mux2/value2 
wave create -pattern none -portmode in -language vhdl /mux2/selection 
wave create -pattern none -portmode out -language vhdl -range 31 0 /mux2/mux_result 
wave create -pattern none -portmode in -language vhdl /datapath/clock 
wave create -pattern none -portmode in -language vhdl /datapath/reset 
wave create -pattern none -portmode in -language vhdl -range 4 0 /datapath/rs1_reg_idx 
wave create -pattern none -portmode in -language vhdl -range 4 0 /datapath/rs2_reg_idx 
wave create -pattern none -portmode in -language vhdl /datapath/wr_data 
wave create -pattern none -portmode in -language vhdl -range 4 0 /datapath/wr_reg_idx 
wave create -pattern none -portmode in -language vhdl -range 31 0 /datapath/immediate 
wave create -pattern none -portmode in -language vhdl -range 3 0 /datapath/alu_operation 
wave create -pattern none -portmode in -language vhdl /datapath/alu_branch 
wave create -pattern none -portmode in -language vhdl -range 2 0 /datapath/alu_branch_control 
wave create -pattern none -portmode in -language vhdl /datapath/JTU_mux_sel 
wave create -pattern none -portmode in -language vhdl -range 2 0 /datapath/data_format 
wave create -pattern none -portmode in -language vhdl /datapath/datamem_write 
wave create -pattern none -portmode in -language vhdl /datapath/jump_flag 
wave create -pattern none -portmode in -language vhdl -range 1 0 /datapath/mux0_sel 
wave create -pattern none -portmode in -language vhdl /datapath/mux1_sel 
wave create -pattern none -portmode buffer -language vhdl -range 31 0 /datapath/instruction 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_instruction_address 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_alu_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_alu_input_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_alu_input_1 
wave create -pattern none -portmode out -language vhdl -range 2 0 /datapath/debug_forward_mux_0 
wave create -pattern none -portmode out -language vhdl -range 2 0 /datapath/debug_forward_mux_1 
wave create -pattern none -portmode out -language vhdl -range 4 0 /datapath/debug_rs1_reg_idx_ID_EXE 
wave create -pattern none -portmode out -language vhdl -range 4 0 /datapath/debug_wr_reg_idx_EX_MEM 
wave create -pattern none -portmode out -language vhdl -range 1 0 /datapath/debug_mux0_sel_MEM_WB 
wave create -pattern none -portmode out -language vhdl /datapath/debug_wr_data_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 4 0 /datapath/debug_wr_reg_idx_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_alu_output_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_alu_output_EX_MEM 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_register_bank_output_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_register_bank_output_1 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_register_bank_output_0_ID_EX 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_register_bank_output_1_ID_EX 
wave create -pattern none -portmode out -language vhdl -range 31 0 /datapath/debug_instruction 
wave create -pattern none -portmode in -language vhdl /idex_register/clock 
wave create -pattern none -portmode in -language vhdl /idex_register/clear 
wave create -pattern none -portmode in -language vhdl -range 3 0 /idex_register/ALU_operation_in 
wave create -pattern none -portmode in -language vhdl /idex_register/ALU_branch_in 
wave create -pattern none -portmode in -language vhdl -range 2 0 /idex_register/ALU_branch_control_in 
wave create -pattern none -portmode in -language vhdl /idex_register/mux1_sel_in 
wave create -pattern none -portmode in -language vhdl /idex_register/JTU_mux_sel_in 
wave create -pattern none -portmode in -language vhdl -range 2 0 /idex_register/data_format_in 
wave create -pattern none -portmode in -language vhdl /idex_register/datamem_write_in 
wave create -pattern none -portmode in -language vhdl /idex_register/jump_flag_in 
wave create -pattern none -portmode in -language vhdl -range 1 0 /idex_register/mux0_sel_in 
wave create -pattern none -portmode in -language vhdl /idex_register/reg_file_write_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /idex_register/reg_file_write_address_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /idex_register/register_file_read_address_0_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /idex_register/register_file_read_address_1_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /idex_register/register_file_output_0_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /idex_register/register_file_output_1_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /idex_register/immediate_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /idex_register/instruction_address_in 
wave create -pattern none -portmode out -language vhdl -range 3 0 /idex_register/ALU_operation_out 
wave create -pattern none -portmode out -language vhdl /idex_register/ALU_branch_out 
wave create -pattern none -portmode out -language vhdl -range 2 0 /idex_register/ALU_branch_control_out 
wave create -pattern none -portmode out -language vhdl /idex_register/mux1_sel_out 
wave create -pattern none -portmode out -language vhdl /idex_register/JTU_mux_sel_out 
wave create -pattern none -portmode out -language vhdl -range 2 0 /idex_register/data_format_out 
wave create -pattern none -portmode out -language vhdl /idex_register/datamem_write_out 
wave create -pattern none -portmode out -language vhdl /idex_register/jump_flag_out 
wave create -pattern none -portmode out -language vhdl -range 1 0 /idex_register/mux0_sel_out 
wave create -pattern none -portmode out -language vhdl /idex_register/reg_file_write_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /idex_register/reg_file_write_address_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /idex_register/register_file_read_address_0_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /idex_register/register_file_read_address_1_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /idex_register/register_file_output_0_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /idex_register/register_file_output_1_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /idex_register/immediate_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /idex_register/instruction_address_out 
wave create -pattern none -portmode in -language vhdl -range 4 0 /forwarding_unit/reg_file_read_address_0_ID_EXE 
wave create -pattern none -portmode in -language vhdl -range 4 0 /forwarding_unit/reg_file_read_address_1_ID_EXE 
wave create -pattern none -portmode in -language vhdl /forwarding_unit/reg_file_write_EX_MEM 
wave create -pattern none -portmode in -language vhdl -range 4 0 /forwarding_unit/reg_file_write_address_EX_MEM 
wave create -pattern none -portmode in -language vhdl -range 1 0 /forwarding_unit/mux_0_sel_EX_MEM 
wave create -pattern none -portmode in -language vhdl /forwarding_unit/reg_file_write_MEM_WB 
wave create -pattern none -portmode in -language vhdl -range 4 0 /forwarding_unit/reg_file_write_address_MEM_WB 
wave create -pattern none -portmode in -language vhdl -range 1 0 /forwarding_unit/mux_0_sel_MEM_WB 
wave create -pattern none -portmode out -language vhdl -range 2 0 /forwarding_unit/forward_mux_0_control 
wave create -pattern none -portmode out -language vhdl -range 2 0 /forwarding_unit/forward_mux_1_control 
wave create -pattern none -portmode in -language vhdl /controller/clock 
wave create -pattern none -portmode in -language vhdl /controller/reset 
wave create -pattern none -portmode in -language vhdl -range 31 0 /controller/instruction 
wave create -pattern none -portmode out -language vhdl -range 4 0 /controller/r1_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 4 0 /controller/r2_reg_idx 
wave create -pattern none -portmode out -language vhdl /controller/reg_file_write 
wave create -pattern none -portmode out -language vhdl -range 4 0 /controller/wr_reg_idx 
wave create -pattern none -portmode out -language vhdl -range 31 0 /controller/immediate 
wave create -pattern none -portmode out -language vhdl -range 3 0 /controller/ALU_operation 
wave create -pattern none -portmode out -language vhdl /controller/ALU_branch 
wave create -pattern none -portmode out -language vhdl -range 2 0 /controller/ALU_branch_control 
wave create -pattern none -portmode out -language vhdl /controller/JTU_mux_sel 
wave create -pattern none -portmode out -language vhdl -range 2 0 /controller/data_format 
wave create -pattern none -portmode out -language vhdl /controller/datamem_write 
wave create -pattern none -portmode out -language vhdl /controller/jump_flag 
wave create -pattern none -portmode out -language vhdl -range 1 0 /controller/mux0_sel 
wave create -pattern none -portmode out -language vhdl /controller/mux1_sel 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/clock 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/clear 
wave create -pattern none -portmode in -language vhdl -range 2 0 /exmem_pipeline/data_format_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/datamem_write_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/jump_flag_in 
wave create -pattern none -portmode in -language vhdl -range 1 0 /exmem_pipeline/mux0_sel_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/reg_file_write_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /exmem_pipeline/reg_file_write_address_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/ALU_output_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/register_file_output_1_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/ALU_branch_response_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/instruction_address_in 
wave create -pattern none -portmode out -language vhdl -range 2 0 /exmem_pipeline/data_format_out 
wave create -pattern none -portmode out -language vhdl /exmem_pipeline/datamem_write_out 
wave create -pattern none -portmode out -language vhdl /exmem_pipeline/jump_flag_out 
wave create -pattern none -portmode out -language vhdl -range 1 0 /exmem_pipeline/mux0_sel_out 
wave create -pattern none -portmode out -language vhdl /exmem_pipeline/reg_file_write_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /exmem_pipeline/reg_file_write_address_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /exmem_pipeline/ALU_output_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /exmem_pipeline/register_file_output_1_out 
wave create -pattern none -portmode out -language vhdl /exmem_pipeline/ALU_branch_response_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /exmem_pipeline/instruction_address_out 
wave create -pattern none -portmode in -language vhdl /jump_target_unit/mux_sel 
wave create -pattern none -portmode in -language vhdl -range 31 0 /jump_target_unit/current_instruction_address 
wave create -pattern none -portmode in -language vhdl -range 31 0 /jump_target_unit/regfile_address 
wave create -pattern none -portmode in -language vhdl -range 31 0 /jump_target_unit/immediate 
wave create -pattern none -portmode out -language vhdl -range 31 0 /jump_target_unit/target_address 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/clock 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/clear 
wave create -pattern none -portmode in -language vhdl -range 2 0 /exmem_pipeline/data_format_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/datamem_write_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/jump_flag_in 
wave create -pattern none -portmode in -language vhdl -range 1 0 /exmem_pipeline/mux0_sel_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/reg_file_write_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /exmem_pipeline/reg_file_write_address_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/ALU_output_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/register_file_output_1_in 
wave create -pattern none -portmode in -language vhdl /exmem_pipeline/ALU_branch_response_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /exmem_pipeline/instruction_address_in 
wave create -pattern none -portmode out -language vhdl -range 1 0 /exmem_pipeline/mux0_sel_out 
wave create -pattern none -portmode out -language vhdl /exmem_pipeline/reg_file_write_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /exmem_pipeline/reg_file_write_address_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /exmem_pipeline/ALU_output_out 
wave create -pattern none -portmode in -language vhdl /memwb_pipeline/clock 
wave create -pattern none -portmode in -language vhdl /memwb_pipeline/clear 
wave create -pattern none -portmode in -language vhdl -range 1 0 /memwb_pipeline/mux0_sel_in 
wave create -pattern none -portmode in -language vhdl /memwb_pipeline/reg_file_write_in 
wave create -pattern none -portmode in -language vhdl -range 4 0 /memwb_pipeline/reg_file_write_address_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /memwb_pipeline/ALU_output_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /memwb_pipeline/datamem_output_in 
wave create -pattern none -portmode in -language vhdl -range 31 0 /memwb_pipeline/instruction_address_in 
wave create -pattern none -portmode out -language vhdl -range 1 0 /memwb_pipeline/mux0_sel_out 
wave create -pattern none -portmode out -language vhdl /memwb_pipeline/reg_file_write_out 
wave create -pattern none -portmode out -language vhdl -range 4 0 /memwb_pipeline/reg_file_write_address_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /memwb_pipeline/ALU_output_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /memwb_pipeline/datamem_output_out 
wave create -pattern none -portmode out -language vhdl -range 31 0 /memwb_pipeline/instruction_address_out 
WaveCollapseAll -1
wave clipboard restore
