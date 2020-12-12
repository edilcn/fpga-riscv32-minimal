view wave 
wave clipboard store
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
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/controller/reset 
wave modify -driver freeze -pattern constant -value 00000000001100010000000010110011 -range 31 0 -starttime 0ns -endtime 100ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000000100000001011001100011 -range 31 0 -starttime 100ns -endtime 200ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000001010000000000000011101111 -range 31 0 -starttime 300ns -endtime 400ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000100101111010101000100011 -range 31 0 -starttime 500ns -endtime 600ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000000000000001000000110111 -range 31 0 -starttime 700ns -endtime 800ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000110001000010000000000011 -range 31 0 -starttime 900ns -endtime 1000ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000000100010000000110110011 -range 31 0 -starttime 1000ns -endtime 1100ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000001100010101001000110110011 -range 31 0 -starttime 1100ns -endtime 1200ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000100101000101001110110011 -range 31 0 -starttime 1200ns -endtime 1300ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000001001010001010011010110011 -range 31 0 -starttime 1300ns -endtime 1400ns NewSig:/controller/instruction 
wave create -pattern none -portmode in -language vhdl /controller/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1400ns NewSig:/controller/clock 
{wave export -file tb -starttime 0 -endtime 1400 -format vhdl -designunit controller} 
WaveCollapseAll -1
wave clipboard restore
