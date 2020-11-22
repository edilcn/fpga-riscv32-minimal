library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity fpga_riscv32_minimal is
	port (
		signal clock, clear: in std_logic;
		signal pc_count : out std_logic_vector(31 downto 0)
	);
end fpga_riscv32_minimal;

architecture behavioral of fpga_riscv32_minimal is
	signal next_pc_count: std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
begin
	program_counter : pc port map (clock, clear, next_pc_count, '1', pc_count);
end behavioral;