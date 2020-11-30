LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.all  ; 
ENTITY \tb.vhd\  IS 
END ; 
 
ARCHITECTURE \tb.vhd_arch\   OF \tb.vhd\   IS
  SIGNAL debug_instruction   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_alu_output   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_alu_output_EX_MEM   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL instruction   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL wr_data   :  STD_LOGIC  ; 
  SIGNAL alu_operation   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL debug_forward_mux_0   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL datamem_write   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL debug_forward_mux_1   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL debug_register_bank_output_0   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_regfile_x2_output   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_instruction_address   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL mux0_sel   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL jump_flag   :  STD_LOGIC  ; 
  SIGNAL debug_register_bank_output_1   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_wr_reg_idx_MEM_WB   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL debug_alu_input_0   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL mux1_sel   :  STD_LOGIC  ; 
  SIGNAL debug_alu_input_1   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_regfile_x31_output   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL alu_branch_control   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL rs1_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL immediate   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL rs2_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL debug_mux0_sel_MEM_WB   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL debug_wr_reg_idx_EX_MEM   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL debug_rs1_reg_idx_ID_EXE   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL data_format   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL wr_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL alu_res   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_regfile_x1_output   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_register_bank_output_0_ID_EX   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_register_bank_output_1_ID_EX   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_alu_output_MEM_WB   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL debug_wr_data_MEM_WB   :  STD_LOGIC  ; 
  SIGNAL JTU_mux_sel   :  STD_LOGIC  ; 
  SIGNAL clear   :  STD_LOGIC  ; 
  SIGNAL alu_branch   :  STD_LOGIC  ; 
  COMPONENT fpga_riscv32_minimal  
    PORT ( 
      debug_instruction  : out std_logic_vector (31 downto 0) ; 
      debug_alu_output  : out std_logic_vector (31 downto 0) ; 
      debug_alu_output_EX_MEM  : out std_logic_vector (31 downto 0) ; 
      instruction  : out std_logic_vector (31 downto 0) ; 
      wr_data  : in STD_LOGIC ; 
      alu_operation  : in std_logic_vector (3 downto 0) ; 
      debug_forward_mux_0  : out std_logic_vector (2 downto 0) ; 
      datamem_write  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      debug_forward_mux_1  : out std_logic_vector (2 downto 0) ; 
      clock  : in STD_LOGIC ; 
      debug_register_bank_output_0  : out std_logic_vector (31 downto 0) ; 
      debug_regfile_x2_output  : out std_logic_vector (31 downto 0) ; 
      debug_instruction_address  : out std_logic_vector (31 downto 0) ; 
      mux0_sel  : in std_logic_vector (1 downto 0) ; 
      jump_flag  : in STD_LOGIC ; 
      debug_register_bank_output_1  : out std_logic_vector (31 downto 0) ; 
      debug_wr_reg_idx_MEM_WB  : out std_logic_vector (4 downto 0) ; 
      debug_alu_input_0  : out std_logic_vector (31 downto 0) ; 
      mux1_sel  : in STD_LOGIC ; 
      debug_alu_input_1  : out std_logic_vector (31 downto 0) ; 
      debug_regfile_x31_output  : out std_logic_vector (31 downto 0) ; 
      alu_branch_control  : in std_logic_vector (2 downto 0) ; 
      rs1_reg_idx  : in std_logic_vector (4 downto 0) ; 
      immediate  : in std_logic_vector (31 downto 0) ; 
      rs2_reg_idx  : in std_logic_vector (4 downto 0) ; 
      debug_mux0_sel_MEM_WB  : out std_logic_vector (1 downto 0) ; 
      debug_wr_reg_idx_EX_MEM  : out std_logic_vector (4 downto 0) ; 
      debug_rs1_reg_idx_ID_EXE  : out std_logic_vector (4 downto 0) ; 
      data_format  : in std_logic_vector (2 downto 0) ; 
      wr_reg_idx  : in std_logic_vector (4 downto 0) ; 
      alu_res  : in std_logic_vector (31 downto 0) ; 
      debug_regfile_x1_output  : out std_logic_vector (31 downto 0) ; 
      debug_register_bank_output_0_ID_EX  : out std_logic_vector (31 downto 0) ; 
      debug_register_bank_output_1_ID_EX  : out std_logic_vector (31 downto 0) ; 
      debug_alu_output_MEM_WB  : out std_logic_vector (31 downto 0) ; 
      debug_wr_data_MEM_WB  : out STD_LOGIC ; 
      JTU_mux_sel  : in STD_LOGIC ; 
      clear  : in STD_LOGIC ; 
      alu_branch  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : fpga_riscv32_minimal  
    PORT MAP ( 
      debug_instruction   => debug_instruction  ,
      debug_alu_output   => debug_alu_output  ,
      debug_alu_output_EX_MEM   => debug_alu_output_EX_MEM  ,
      instruction   => instruction  ,
      wr_data   => wr_data  ,
      alu_operation   => alu_operation  ,
      debug_forward_mux_0   => debug_forward_mux_0  ,
      datamem_write   => datamem_write  ,
      reset   => reset  ,
      debug_forward_mux_1   => debug_forward_mux_1  ,
      clock   => clock  ,
      debug_register_bank_output_0   => debug_register_bank_output_0  ,
      debug_regfile_x2_output   => debug_regfile_x2_output  ,
      debug_instruction_address   => debug_instruction_address  ,
      mux0_sel   => mux0_sel  ,
      jump_flag   => jump_flag  ,
      debug_register_bank_output_1   => debug_register_bank_output_1  ,
      debug_wr_reg_idx_MEM_WB   => debug_wr_reg_idx_MEM_WB  ,
      debug_alu_input_0   => debug_alu_input_0  ,
      mux1_sel   => mux1_sel  ,
      debug_alu_input_1   => debug_alu_input_1  ,
      debug_regfile_x31_output   => debug_regfile_x31_output  ,
      alu_branch_control   => alu_branch_control  ,
      rs1_reg_idx   => rs1_reg_idx  ,
      immediate   => immediate  ,
      rs2_reg_idx   => rs2_reg_idx  ,
      debug_mux0_sel_MEM_WB   => debug_mux0_sel_MEM_WB  ,
      debug_wr_reg_idx_EX_MEM   => debug_wr_reg_idx_EX_MEM  ,
      debug_rs1_reg_idx_ID_EXE   => debug_rs1_reg_idx_ID_EXE  ,
      data_format   => data_format  ,
      wr_reg_idx   => wr_reg_idx  ,
      alu_res   => alu_res  ,
      debug_regfile_x1_output   => debug_regfile_x1_output  ,
      debug_register_bank_output_0_ID_EX   => debug_register_bank_output_0_ID_EX  ,
      debug_register_bank_output_1_ID_EX   => debug_register_bank_output_1_ID_EX  ,
      debug_alu_output_MEM_WB   => debug_alu_output_MEM_WB  ,
      debug_wr_data_MEM_WB   => debug_wr_data_MEM_WB  ,
      JTU_mux_sel   => JTU_mux_sel  ,
      clear   => clear  ,
      alu_branch   => alu_branch   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 ns, Period = 100 ps
  Process
	Begin
	 clock  <= '0'  ;
	wait for 50 ps ;
-- 50 ps, single loop till start period.
	for Z in 1 to 9
	loop
	    clock  <= '1'  ;
	   wait for 50 ps ;
	    clock  <= '0'  ;
	   wait for 50 ps ;
-- 950 ps, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 50 ps ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 clear  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 reset  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 200 ps, Period = 0 ps
  Process
	Begin
	 rs1_reg_idx  <= "00001"  ;
	wait for 200 ps ;
-- dumped values till 200 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 200 ps, Period = 0 ps
  Process
	Begin
	 rs2_reg_idx  <= "00010"  ;
	wait for 200 ps ;
-- dumped values till 200 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 200 ps, Period = 0 ps
  Process
	Begin
	 wr_data  <= '1'  ;
	wait for 200 ps ;
-- dumped values till 200 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 210 ps, Period = 0 ps
  Process
	Begin
	 wr_reg_idx  <= "00000"  ;
	wait for 210 ps ;
-- dumped values till 210 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 immediate  <= "00000000000000000000000000000000"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 310 ps, Period = 0 ps
  Process
	Begin
	 alu_operation  <= "0010"  ;
	wait for 310 ps ;
-- dumped values till 310 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 alu_branch  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 alu_branch_control  <= "000"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 JTU_mux_sel  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 data_format  <= "000"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 110 ps, End Time = 510 ps, Period = 0 ps
  Process
	Begin
	 datamem_write  <= '0'  ;
	wait for 510 ps ;
-- dumped values till 510 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 jump_flag  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 mux0_sel  <= "00"  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 mux1_sel  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
