library ieee;
use ieee.std_logic_1164.all;

entity mux32_1 is
	port (
		selection : in std_logic_vector(4 downto 0);
		input_0, input_1, input_2, input_3, input_4, input_5, input_6, input_7, input_8, input_9, input_10, input_11, input_12, input_13, input_14, input_15, input_16, input_17,
		input_18, input_19, input_20, input_21, input_22, input_23, input_24, input_25, input_26, input_27, input_28, input_29, input_30, input_31 : in std_logic_vector(31 downto 0);
		output_0 : out std_logic_vector(31 downto 0)
	);
end entity mux32_1;

architecture arch_mux32_1 of mux32_1 is
begin
	process(selection)
	begin
		if (selection = "00000") then
			output_0 <= input_0;
		elsif (selection = "00001") then
			output_0 <= input_1;
		 elsif (selection = "00010") then
			output_0 <= input_2;
		 elsif (selection = "00011") then
			output_0 <= input_3;
		 elsif (selection = "00100") then
			output_0 <= input_4;
		 elsif (selection = "00101") then
			output_0 <= input_5;
		 elsif (selection = "00110") then
			output_0 <= input_6;
		 elsif (selection = "00111") then
			output_0 <= input_7;
		 elsif (selection = "01000") then
			output_0 <= input_8;
		 elsif (selection = "01001") then
			output_0 <= input_9;
		 elsif (selection = "01010") then
			output_0 <= input_10;
		 elsif (selection = "01011") then
			output_0 <= input_11;
		 elsif (selection = "01100") then
			output_0 <= input_12;
		 elsif (selection = "01101") then
			output_0 <= input_13;
		 elsif (selection = "01110") then
			output_0 <= input_14;
		 elsif (selection = "01111") then
			output_0 <= input_15;
		 elsif (selection = "10000") then
			output_0 <= input_16;
		 elsif (selection = "10001") then
			output_0 <= input_17;
		 elsif (selection = "10010") then
			output_0 <= input_18;
		 elsif (selection = "10011") then
			output_0 <= input_19;
		 elsif (selection = "10100") then
			output_0 <= input_20;
		 elsif (selection = "10101") then
			output_0 <= input_21;
		 elsif (selection = "10110") then
			output_0 <= input_22;
		 elsif (selection = "10111") then
			output_0 <= input_23;
		 elsif (selection = "11000") then
			output_0 <= input_24;
		 elsif (selection = "11001") then
			output_0 <= input_25;
		 elsif (selection = "11010") then
			output_0 <= input_26;
		 elsif (selection = "11011") then
			output_0 <= input_27;
		 elsif (selection = "11100") then
			output_0 <= input_28;
		 elsif (selection = "11101") then
			output_0 <= input_29;
		 elsif (selection = "11110") then
			output_0 <= input_30;
		 elsif (selection = "11111") then
			output_0 <= input_31;
       end if;
	end process;

end architecture arch_mux32_1;