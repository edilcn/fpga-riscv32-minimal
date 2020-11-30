onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_instruction}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_alu_output}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_alu_output_EX_MEM}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/instruction}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/wr_data}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/alu_operation}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_forward_mux_0}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/datamem_write}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/reset}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_forward_mux_1}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/clock}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_register_bank_output_0}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_regfile_x2_output}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_instruction_address}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/mux0_sel}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/jump_flag}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_register_bank_output_1}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_wr_reg_idx_MEM_WB}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_alu_input_0}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/mux1_sel}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_alu_input_1}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_regfile_x31_output}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/alu_branch_control}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/rs1_reg_idx}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/immediate}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/rs2_reg_idx}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_mux0_sel_MEM_WB}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_wr_reg_idx_EX_MEM}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_rs1_reg_idx_ID_EXE}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/data_format}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/wr_reg_idx}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/alu_res}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_regfile_x1_output}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_register_bank_output_0_ID_EX}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_register_bank_output_1_ID_EX}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_alu_output_MEM_WB}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/debug_wr_data_MEM_WB}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/JTU_mux_sel}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/clear}
add wave -noupdate -radix hexadecimal {/\tb.vhd\/alu_branch}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {612 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 255
configure wave -valuecolwidth 81
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
WaveRestoreZoom {0 ps} {2001 ps}
