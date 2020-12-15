library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux5_1 is
	port (
		selection : in std_logic_vector(2 downto 0);
		input_0, input_1, input_2, input_3, input_4 : in std_logic_vector(31 downto 0);
		output_0 : out std_logic_vector(31 downto 0)
	);
end entity mux5_1;

architecture arch_mux5_1 of mux5_1 is
begin
	with selection select
		output_0 <=
		input_0 when "000",
		input_1 when "001",
		input_2 when "010",
		input_3 when "011",
		input_4 when "100",
		X"00000000" when others;
end architecture arch_mux5_1;
