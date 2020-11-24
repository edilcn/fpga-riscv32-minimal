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
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/fpga_riscv32_minimal/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/fpga_riscv32_minimal/clear 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns NewSig:/fpga_riscv32_minimal/clear 
{wave export -file tb -starttime 0 -endtime 1000 -format vhdl -designunit fpga_riscv32_minimal} 
{wave export -file tb -starttime 0 -endtime 1000 -format vhdl -designunit fpga_riscv32_minimal} 
WaveCollapseAll -1
wave clipboard restore
