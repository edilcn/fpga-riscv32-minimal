onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {1st Stage} -radix hexadecimal /tballinst/DUT/Stage_1_pc_output
add wave -noupdate -expand -group {1st Stage} -radix hexadecimal /tballinst/DUT/Stage_1_instruction
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/instruction
add wave -noupdate -expand -group {2nd Stage} -radix ufixed /tballinst/DUT/Stage_2_rs1_idx
add wave -noupdate -expand -group {2nd Stage} -radix ufixed /tballinst/DUT/Stage_2_rs2_idx
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Stage_2_rs1_output
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Stage_2_rs2_output
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Control_immediate
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Control_ALU_operation
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/ALU_branch
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/ALU_branch_control
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/JTU_mux_sel
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Control_forward_mux_0
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Control_forward_mux_1
add wave -noupdate -expand -group {2nd Stage} -radix ufixed /tballinst/DUT/controller_0/wr_reg_idx
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/Control_wr_write
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/data_format
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/datamem_write
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/jump_flag
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/controller_0/mux0_sel
add wave -noupdate -expand -group {2nd Stage} -radix hexadecimal /tballinst/DUT/IDEXE_rs1_reg_idx
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/instruction_address_EX_MEM
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/IDEXE_rs1_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/IDEXE_rs2_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/Stage_3_ALU_input_0
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/Stage_3_ALU_input_1
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/Stage_3_ALU_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/alu_operation_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/alu_branch_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/alu_branch_control_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/JTU_mux_sel_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/data_format_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/datamem_write_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/jump_flag_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/wr_data_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix ufixed /tballinst/DUT/datapath_0/wr_reg_idx_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/forward_mux_0_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/forward_mux_1_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/mux1_sel_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/mux_1_output
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/datapath_0/mux0_sel_ID_EX
add wave -noupdate -expand -group {3rd Stage} -radix hexadecimal /tballinst/DUT/mux1_sel
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/instruction_address_MEM_WB
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/alu_output_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/data_format_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/datamem_write_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/datamem_output_MEM_WB
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/wr_data_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/alu_branch_response_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix ufixed /tballinst/DUT/datapath_0/wr_reg_idx_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix ufixed /tballinst/DUT/EXMEM_wr_reg_idx
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/EXMEM_alu_output
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/jump_flag_EX_MEM
add wave -noupdate -expand -group {4th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/mux0_sel_EX_MEM
add wave -noupdate -group {5th Stage} -radix hexadecimal /tballinst/DUT/Stage_5_Wb_sel
add wave -noupdate -group {5th Stage} -radix hexadecimal /tballinst/DUT/MEMWB_alu_output
add wave -noupdate -group {5th Stage} -radix hexadecimal /tballinst/DUT/MEMWB_wr_data
add wave -noupdate -group {5th Stage} -radix ufixed /tballinst/DUT/MEMWB_wr_reg_idx
add wave -noupdate -group {5th Stage} -radix hexadecimal /tballinst/DUT/datapath_0/mux_0_output
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
add wave -noupdate /tballinst/DUT/clock
add wave -noupdate /tballinst/DUT/reset
add wave -noupdate /tballinst/DUT/datapath_0/hazard_control_unit_output
add wave -noupdate /tballinst/DUT/JTU_mux_sel
add wave -noupdate /tballinst/DUT/jump_flag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2674984 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 435
configure wave -valuecolwidth 70
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
configure wave -timelineunits ps
update
WaveRestoreZoom {2098958 ps} {3280210 ps}
