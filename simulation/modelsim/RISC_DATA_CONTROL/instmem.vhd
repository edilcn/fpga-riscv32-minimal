library ieee;

use ieee.std_logic_1164.all;

entity instmem is
	port (
		signal count_in: in std_logic_vector(31 downto 0);
		signal instruction: out std_logic_vector(31 downto 0);
		signal clock : in std_logic;
		signal reset : in std_logic
	);
end instmem;

architecture description of instmem is
	signal memblock_read : std_logic_vector(31 downto 0);
begin
	process (count_in, memblock_read, clock, reset)
	begin
		if reset = '1' then
			memblock_read <= X"00000000";
		elsif rising_edge(clock) then
			if (count_in = X"00000000") then
				memblock_read <= X"00408013";
			elsif (count_in = X"00000004") then
				memblock_read <= X"00a18113";
			elsif (count_in = X"00000008") then
				memblock_read <= X"00112203";
			elsif (count_in = X"0000000c") then
				memblock_read <= X"00008463";
			elsif (count_in = X"00000010") then
				memblock_read <= X"01212023";
			elsif (count_in = X"00000014") then
				memblock_read <= X"40020133";
			elsif (count_in = X"00000018") then
				memblock_read <= X"01400023";
			elsif (count_in = X"00000020") then
				memblock_read <= X"00000013";
			end if;
		end if;
		instruction <= memblock_read;
	end process;
end description;
	