library ieee;

use ieee.std_logic_1164.all;

entity instmem is
	port (
		signal count_in: in std_logic_vector(31 downto 0);
		signal instruction: out std_logic_vector(31 downto 0);
		signal clock : in std_logic
	);
end instmem;

architecture description of instmem is
	signal memblock_read : std_logic_vector(31 downto 0);
begin
	process (count_in, memblock_read, clock)
	begin
		if rising_edge(clock) then
			if (count_in = "00000000000000000000000000000100") then
				memblock_read <= "00000000000100000000000100010011";
			elsif (count_in = "00000000000000000000000000001000") then
				memblock_read <= "00000000001000000000111110110011";
			end if;
		end if;
		instruction <= memblock_read;
	end process;
end description;
	