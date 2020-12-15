library ieee;

use ieee.std_logic_1164.all;

entity mux2 is
	port(
		value1, value2 : in std_logic_vector(31 downto 0);
		selection: in std_logic;
		mux_result: out std_logic_vector(31 downto 0)
	);
end entity mux2;

architecture behavioral of mux2 is
	signal result: std_logic_vector(31 downto 0);
begin
	process (value1, value2, selection, result)
	begin
		if (selection = '0') then
			result <= value1;
		else
			result <= value2;
		end if;
	mux_result <= result;
	end process;
end architecture behavioral;
	