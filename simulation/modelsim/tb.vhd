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
  SIGNAL instruction   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL wr_data   :  STD_LOGIC  ; 
  SIGNAL alu_operation   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL datamem_write   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL mux0_sel   :  std_logic_vector (1 downto 0)  ; 
  SIGNAL jump_flag   :  STD_LOGIC  ; 
  SIGNAL mux1_sel   :  STD_LOGIC  ; 
  SIGNAL alu_branch_control   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL rs1_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL immediate   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL rs2_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL data_format   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL wr_reg_idx   :  std_logic_vector (4 downto 0)  ; 
  SIGNAL alu_res   :  std_logic_vector (31 downto 0)  ; 
  SIGNAL JTU_mux_sel   :  STD_LOGIC  ; 
  SIGNAL clear   :  STD_LOGIC  ; 
  SIGNAL alu_branch   :  STD_LOGIC  ; 
  COMPONENT fpga_riscv32_minimal  
    PORT ( 
      instruction  : out std_logic_vector (31 downto 0) ; 
      wr_data  : in STD_LOGIC ; 
      alu_operation  : in std_logic_vector (3 downto 0) ; 
      datamem_write  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      mux0_sel  : in std_logic_vector (1 downto 0) ; 
      jump_flag  : in STD_LOGIC ; 
      mux1_sel  : in STD_LOGIC ; 
      alu_branch_control  : in std_logic_vector (2 downto 0) ; 
      rs1_reg_idx  : in std_logic_vector (4 downto 0) ; 
      immediate  : in std_logic_vector (31 downto 0) ; 
      rs2_reg_idx  : in std_logic_vector (4 downto 0) ; 
      data_format  : in std_logic_vector (2 downto 0) ; 
      wr_reg_idx  : in std_logic_vector (4 downto 0) ; 
      alu_res  : in std_logic_vector (31 downto 0) ; 
      JTU_mux_sel  : in STD_LOGIC ; 
      clear  : in STD_LOGIC ; 
      alu_branch  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : fpga_riscv32_minimal  
    PORT MAP ( 
      instruction   => instruction  ,
      wr_data   => wr_data  ,
      alu_operation   => alu_operation  ,
      datamem_write   => datamem_write  ,
      reset   => reset  ,
      clock   => clock  ,
      mux0_sel   => mux0_sel  ,
      jump_flag   => jump_flag  ,
      mux1_sel   => mux1_sel  ,
      alu_branch_control   => alu_branch_control  ,
      rs1_reg_idx   => rs1_reg_idx  ,
      immediate   => immediate  ,
      rs2_reg_idx   => rs2_reg_idx  ,
      data_format   => data_format  ,
      wr_reg_idx   => wr_reg_idx  ,
      alu_res   => alu_res  ,
      JTU_mux_sel   => JTU_mux_sel  ,
      clear   => clear  ,
      alu_branch   => alu_branch   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
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
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 clear  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
