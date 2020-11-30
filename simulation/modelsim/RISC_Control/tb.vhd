LIBRARY ieee  ; 
LIBRARY std  ; 
LIBRARY work  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.all  ; 
ENTITY tb  IS 
END ; 
 
ARCHITECTURE tb_arch OF tb IS
  SIGNAL instruction   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL ALU_operation   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL datamem_write   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL mux0_sel   :  STD_LOGIC_VECTOR (1 downto 0)  ; 
  SIGNAL jump_flag   :  STD_LOGIC  ; 
  SIGNAL mux1_sel   :  STD_LOGIC  ; 
  SIGNAL reg_file_write   :  STD_LOGIC  ; 
  SIGNAL immediate   :  STD_LOGIC_VECTOR (31 downto 0)  ; 
  SIGNAL ALU_branch_control   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL data_format   :  STD_LOGIC_VECTOR (2 downto 0)  ; 
  SIGNAL wr_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL r1_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL r2_reg_idx   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  SIGNAL ALU_branch   :  STD_LOGIC  ; 
  SIGNAL JTU_mux_sel   :  STD_LOGIC  ; 
  COMPONENT controller  
    PORT ( 
      instruction  : in STD_LOGIC_VECTOR (31 downto 0) ; 
      ALU_operation  : out STD_LOGIC_VECTOR (3 downto 0) ; 
      datamem_write  : out STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      mux0_sel  : out STD_LOGIC_VECTOR (1 downto 0) ; 
      jump_flag  : out STD_LOGIC ; 
      mux1_sel  : out STD_LOGIC ; 
      reg_file_write  : out STD_LOGIC ; 
      immediate  : out STD_LOGIC_VECTOR (31 downto 0) ; 
      ALU_branch_control  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      data_format  : out STD_LOGIC_VECTOR (2 downto 0) ; 
      wr_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      r1_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      r2_reg_idx  : out STD_LOGIC_VECTOR (4 downto 0) ; 
      ALU_branch  : out STD_LOGIC ; 
      JTU_mux_sel  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : controller  
    PORT MAP ( 
      instruction   => instruction  ,
      ALU_operation   => ALU_operation  ,
      datamem_write   => datamem_write  ,
      reset   => reset  ,
      clock   => clock  ,
      mux0_sel   => mux0_sel  ,
      jump_flag   => jump_flag  ,
      mux1_sel   => mux1_sel  ,
      reg_file_write   => reg_file_write  ,
      immediate   => immediate  ,
      ALU_branch_control   => ALU_branch_control  ,
      data_format   => data_format  ,
      wr_reg_idx   => wr_reg_idx  ,
      r1_reg_idx   => r1_reg_idx  ,
      r2_reg_idx   => r2_reg_idx  ,
      ALU_branch   => ALU_branch  ,
      JTU_mux_sel   => JTU_mux_sel   ) ; 



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
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 reset  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 800 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 instruction  <= "00000000001000001000000000110011"  ;
	wait for 200 ns ;
	 instruction  <= "00000000010100100000000110110011"  ;
	wait for 200 ns ;
	 instruction  <= "01000000000100100000010100110011"  ;
	wait for 200 ns ;
	 instruction  <= "00000000001100101000000000110011"  ;
	wait for 200 ns ;
	 instruction  <= "00000000000001010010000110000010"  ;
	wait for 200 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
