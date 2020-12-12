onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/instruction
add wave -noupdate /tb/ALU_operation
add wave -noupdate /tb/datamem_write
add wave -noupdate /tb/reset
add wave -noupdate /tb/clock
add wave -noupdate /tb/mux0_sel
add wave -noupdate /tb/jump_flag
add wave -noupdate /tb/mux1_sel
add wave -noupdate /tb/reg_file_write
add wave -noupdate /tb/immediate
add wave -noupdate /tb/ALU_branch_control
add wave -noupdate /tb/data_format
add wave -noupdate /tb/wr_reg_idx
add wave -noupdate /tb/r1_reg_idx
add wave -noupdate /tb/r2_reg_idx
add wave -noupdate /tb/ALU_branch
add wave -noupdate /tb/JTU_mux_sel
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {48355 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 244
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
WaveRestoreZoom {0 ps} {1856842 ps}
