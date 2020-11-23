library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity ifid_register is
	port (
		clock, clear, enable: in std_logic;
		pc_count_in, pc_added_in: in std_logic_vector(31 downto 0);
		pc_count_out, pc_added_out: out std_logic_vector(31 downto 0);
		instruction_data_in: in std_logic_vector(31 downto 0);
		instruction_data_out: out std_logic_vector(31 downto 0)
	);
end entity ifid_register;

architecture behavioral of ifid_register is
	signal input_instruction, input_pc_count, input_pc_added: std_logic_vector(31 downto 0);
	signal output_instruction, output_pc_count, output_pc_added: std_logic_vector(31 downto 0);
	
begin
	ifid_instruction_register: register32b port map(clock, clear, '1', input_instruction, output_instruction);
	ifid_pc_count_register: register32b port map(clock, clear, '1', input_pc_count, output_pc_count);
	ifid_pc_added_register: register32b port map(clock, clear, '1', input_pc_added, output_pc_added);
	
	input_pc_count 		<=	pc_count_in;
	input_pc_added			<=	pc_added_in;
	input_instruction		<= instruction_data_in;
	
	pc_count_out 			<=	output_pc_count;
	pc_added_out			<=	output_pc_added;
	instruction_data_out	<= output_instruction;
	
end architecture behavioral;