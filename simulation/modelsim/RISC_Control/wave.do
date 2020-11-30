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
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/controller/clock 
wave modify -driver freeze -pattern constant -value 00000000001000001000000000110011 -range 31 0 -starttime 0ns -endtime 200ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000010100100000000110110011 -range 31 0 -starttime 200ns -endtime 400ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 01000000000100100000010100110011 -range 31 0 -starttime 400ns -endtime 600ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000001100101000000000110011 -range 31 0 -starttime 600ns -endtime 800ns NewSig:/controller/instruction 
wave modify -driver freeze -pattern constant -value 00000000000001010010000110000010 -range 31 0 -starttime 800ns -endtime 1000ns NewSig:/controller/instruction 
{wave export -file tb -starttime 0 -endtime 1000 -format vhdl -designunit controller} 
{wave export -file tb -starttime 0 -endtime 1000 -format vhdl -designunit controller} 
WaveCollapseAll -1
wave clipboard restore
