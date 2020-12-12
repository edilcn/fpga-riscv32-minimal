LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.all  ; 
ENTITY tb  IS 
END ; 
 
ARCHITECTURE tb_arch OF tb IS
  SIGNAL debug_instruction   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_ALU_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_ALU_operation   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL debug_alu_output_EX_MEM   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_forward_mux_0   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL debug_mux0_sel   :  STD_LOGIC_VECTOR (1 downto 0)  ; 
  SIGNAL debug_forward_mux_1   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL debug_register_bank_output_0   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_immediate   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_register_bank_output_1   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_wr_reg_idx_MEM_WB   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL debug_regfile_write   :  STD_LOGIC  ; 
  SIGNAL debug_ALU_input_0   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_ALU_input_1   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_mux0_sel_MEM_WB   :  STD_LOGIC_VECTOR (1 downto 0)  ; 
  SIGNAL debug_pc_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_wr_reg_idx_EX_MEM   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL debug_rs1_reg_idx_ID_EXE   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL debug_reg_file_read_address_0   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL debug_reg_file_read_address_1   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL debug_register_bank_output_0_ID_EX   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_register_bank_output_1_ID_EX   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_alu_output_MEM_WB   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL debug_wr_data_MEM_WB   :  STD_LOGIC  ; 
  COMPONENT fpga_riscv32_minimal  
    PORT ( 
      debug_instruction  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_ALU_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_ALU_operation  : out STD_LOGIC_VECTOR (3 downto 0) ; 
      debug_alu_output_EX_MEM  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_forward_mux_0  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      reset  : in STD_LOGIC ; 
      debug_mux0_sel  : out STD_LOGIC_VECTOR (1 downto 0) ; 
      debug_forward_mux_1  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      clock  : in STD_LOGIC ; 
      debug_register_bank_output_0  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_immediate  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_register_bank_output_1  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_wr_reg_idx_MEM_WB  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      debug_regfile_write  : out STD_LOGIC ; 
      debug_ALU_input_0  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_ALU_input_1  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_mux0_sel_MEM_WB  : out STD_LOGIC_VECTOR (1 downto 0) ; 
      debug_pc_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_wr_reg_idx_EX_MEM  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      debug_rs1_reg_idx_ID_EXE  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      debug_reg_file_read_address_0  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      debug_reg_file_read_address_1  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      debug_register_bank_output_0_ID_EX  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_register_bank_output_1_ID_EX  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_alu_output_MEM_WB  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      debug_wr_data_MEM_WB  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : fpga_riscv32_minimal  
    PORT MAP ( 
      debug_instruction   => debug_instruction  ,
      debug_ALU_output   => debug_ALU_output  ,
      debug_ALU_operation   => debug_ALU_operation  ,
      debug_alu_output_EX_MEM   => debug_alu_output_EX_MEM  ,
      debug_forward_mux_0   => debug_forward_mux_0  ,
      reset   => reset  ,
      debug_mux0_sel   => debug_mux0_sel  ,
      debug_forward_mux_1   => debug_forward_mux_1  ,
      clock   => clock  ,
      debug_register_bank_output_0   => debug_register_bank_output_0  ,
      debug_immediate   => debug_immediate  ,
      debug_register_bank_output_1   => debug_register_bank_output_1  ,
      debug_wr_reg_idx_MEM_WB   => debug_wr_reg_idx_MEM_WB  ,
      debug_regfile_write   => debug_regfile_write  ,
      debug_ALU_input_0   => debug_ALU_input_0  ,
      debug_ALU_input_1   => debug_ALU_input_1  ,
      debug_mux0_sel_MEM_WB   => debug_mux0_sel_MEM_WB  ,
      debug_pc_output   => debug_pc_output  ,
      debug_wr_reg_idx_EX_MEM   => debug_wr_reg_idx_EX_MEM  ,
      debug_rs1_reg_idx_ID_EXE   => debug_rs1_reg_idx_ID_EXE  ,
      debug_reg_file_read_address_0   => debug_reg_file_read_address_0  ,
      debug_reg_file_read_address_1   => debug_reg_file_read_address_1  ,
      debug_register_bank_output_0_ID_EX   => debug_register_bank_output_0_ID_EX  ,
      debug_register_bank_output_1_ID_EX   => debug_register_bank_output_1_ID_EX  ,
      debug_alu_output_MEM_WB   => debug_alu_output_MEM_WB  ,
      debug_wr_data_MEM_WB   => debug_wr_data_MEM_WB   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1200 ns, Period = 100 ns
  Process
	Begin
	 clock  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    clock  <= '1'  ;
	   wait for 50 ns ;
	    clock  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1200 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 100 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 reset  <= '1'  ;
	wait for 100 ns ;
	 reset  <= '0'  ;
	wait for 1100 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
