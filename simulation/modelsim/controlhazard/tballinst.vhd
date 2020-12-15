LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.all  ; 
ENTITY tballinst  IS 
END ; 
 
ARCHITECTURE tballinst_arch OF tballinst IS
  SIGNAL MEMWB_wr_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL MEMWB_wr_data   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL Stage_2_rs2_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL IDEXE_rs1_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL EXMEM_alu_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Stage_3_ALU_input_0   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Stage_1_pc_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Stage_2_rs1_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL Stage_3_ALU_input_1   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Stage_2_rs2_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL Stage_3_ALU_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL MEMWB_alu_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Control_ALU_operation   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL Stage_2_rs1_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL MEMWB_Wb_sel   :  STD_LOGIC_VECTOR (1 downto 0)  ; 
  SIGNAL Control_wr_write   :  STD_LOGIC  ; 
  SIGNAL Stage_5_Wb_sel   :  STD_LOGIC_VECTOR (1 downto 0)  ; 
  SIGNAL EXMEM_wr_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL IDEXE_rs1_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL IDEXE_rs2_output   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Control_forward_mux_0   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL Stage_1_instruction   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL Control_forward_mux_1   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL Control_immediate   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  COMPONENT fpga_riscv32_minimal  
    PORT ( 
      MEMWB_wr_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      MEMWB_wr_data  : out STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      Stage_2_rs2_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      IDEXE_rs1_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      clock  : in STD_LOGIC ; 
      EXMEM_alu_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Stage_3_ALU_input_0  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Stage_1_pc_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Stage_2_rs1_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      Stage_3_ALU_input_1  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Stage_2_rs2_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      Stage_3_ALU_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      MEMWB_alu_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Control_ALU_operation  : out STD_LOGIC_VECTOR (3 downto 0) ; 
      Stage_2_rs1_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      MEMWB_Wb_sel  : out STD_LOGIC_VECTOR (1 downto 0) ; 
      Control_wr_write  : out STD_LOGIC ; 
      Stage_5_Wb_sel  : out STD_LOGIC_VECTOR (1 downto 0) ; 
      EXMEM_wr_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      IDEXE_rs1_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      IDEXE_rs2_output  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Control_forward_mux_0  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      Stage_1_instruction  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      Control_forward_mux_1  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      Control_immediate  : out STD_LOGIC_VECTOR (31 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : fpga_riscv32_minimal  
    PORT MAP ( 
      MEMWB_wr_reg_idx   => MEMWB_wr_reg_idx  ,
      MEMWB_wr_data   => MEMWB_wr_data  ,
      reset   => reset  ,
      Stage_2_rs2_output   => Stage_2_rs2_output  ,
      IDEXE_rs1_output   => IDEXE_rs1_output  ,
      clock   => clock  ,
      EXMEM_alu_output   => EXMEM_alu_output  ,
      Stage_3_ALU_input_0   => Stage_3_ALU_input_0  ,
      Stage_1_pc_output   => Stage_1_pc_output  ,
      Stage_2_rs1_idx   => Stage_2_rs1_idx  ,
      Stage_3_ALU_input_1   => Stage_3_ALU_input_1  ,
      Stage_2_rs2_idx   => Stage_2_rs2_idx  ,
      Stage_3_ALU_output   => Stage_3_ALU_output  ,
      MEMWB_alu_output   => MEMWB_alu_output  ,
      Control_ALU_operation   => Control_ALU_operation  ,
      Stage_2_rs1_output   => Stage_2_rs1_output  ,
      MEMWB_Wb_sel   => MEMWB_Wb_sel  ,
      Control_wr_write   => Control_wr_write  ,
      Stage_5_Wb_sel   => Stage_5_Wb_sel  ,
      EXMEM_wr_reg_idx   => EXMEM_wr_reg_idx  ,
      IDEXE_rs1_reg_idx   => IDEXE_rs1_reg_idx  ,
      IDEXE_rs2_output   => IDEXE_rs2_output  ,
      Control_forward_mux_0   => Control_forward_mux_0  ,
      Stage_1_instruction   => Stage_1_instruction  ,
      Control_forward_mux_1   => Control_forward_mux_1  ,
      Control_immediate   => Control_immediate   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 2900 ns, Period = 100 ns
  Process
	Begin
	 clock  <= '1'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 38
	loop
	    clock  <= '0'  ;
	   wait for 50 ns ;
	    clock  <= '1'  ;
	   wait for 50 ns ;
-- 2850 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '0'  ;
	wait for 50 ns ;
-- dumped values till 2900 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 100 ns, End Time = 2900 ns, Period = 0 ns
  Process
	Begin
	 reset  <= '1'  ;
	wait for 100 ns ;
	 reset  <= '0'  ;
	wait for 2800 ns ;
-- dumped values till 2900 ns
	wait;
 End Process;
END;
