view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/clock 
wave create -pattern none -portmode in -language vhdl /fpga_riscv32_minimal/reset 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_pc_output 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_ALU_output 
wave create -pattern none -portmode out -language vhdl /fpga_riscv32_minimal/debug_regfile_write 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_ALU_input_0 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_ALU_input_1 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/debug_reg_file_read_address_0 
wave create -pattern none -portmode out -language vhdl -range 4 0 /fpga_riscv32_minimal/debug_reg_file_read_address_1 
wave create -pattern none -portmode out -language vhdl -range 1 0 /fpga_riscv32_minimal/debug_mux0_sel 
wave create -pattern none -portmode out -language vhdl -range 31 0 /fpga_riscv32_minimal/debug_immediate 
wave create -pattern none -portmode out -language vhdl -range 3 0 /fpga_riscv32_minimal/debug_ALU_operation 
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
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/fpga_riscv32_minimal/clock 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns NewSig:/fpga_riscv32_minimal/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns NewSig:/fpga_riscv32_minimal/reset 
{wave export -file tb -starttime 0 -endtime 1000 -format vhdl -designunit fpga_riscv32_minimal} 
WaveCollapseAll -1
wave clipboard restore
