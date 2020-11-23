library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity fpga_riscv32_minimal is
	port (
		signal clock, clear: in std_logic;
		signal alu_res : in std_logic_vector(31 downto 0);
		signal instruction : out std_logic_vector(31 downto 0)
	);
end fpga_riscv32_minimal;

architecture arch_minimal_riscv32 of fpga_riscv32_minimal is
	signal pc_sel: std_logic;
	signal next_pc_count: std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
	signal pc_count, pc_added: std_logic_vector(31 downto 0);
	
begin
	program_counter : pc port map (clock, clear, next_pc_count, '1', pc_count);
	instruction_memory : instmem port map (pc_count, instruction, clock);
	alu_pc: adder port map (pc_count, "00000000000000000000000000000100", pc_added);
	pc_mux: mux2 port map (pc_added, alu_res, pc_sel, next_pc_count);
	
end arch_minimal_riscv32;
