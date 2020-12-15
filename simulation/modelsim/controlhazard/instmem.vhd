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
				memblock_read <= X"00110093";
			elsif (count_in = X"00000004") then
				memblock_read <= X"00008403";
			elsif (count_in = X"00000008") then
				memblock_read <= X"002f6033";
			elsif (count_in = X"0000000c") then
				memblock_read <= X"00110e63";
			elsif (count_in = X"00000010") then
				memblock_read <= X"00187813";
			elsif (count_in = X"00000014") then
				memblock_read <= X"000f6f93";
			elsif (count_in = X"00000018") then
				memblock_read <= X"001f9a63";
			elsif (count_in = X"0000001c") then
				memblock_read <= X"00400093";
			elsif (count_in = X"00000020") then
				memblock_read <= X"00400093";
			elsif (count_in = X"00000024") then
				memblock_read <= X"00400093";
			elsif (count_in = X"00000028") then
				memblock_read <= X"00000013";
			elsif (count_in = X"0000002c") then
				memblock_read <= X"00404113";
			elsif (count_in = X"00000030") then
				memblock_read <= X"003095b3";
			elsif (count_in = X"00000034") then
				memblock_read <= X"0020ce63";
			elsif (count_in = X"00000038") then
				memblock_read <= X"00f808b3";
			elsif (count_in = X"0000003c") then
				memblock_read <= X"000306b7";
			elsif (count_in = X"00000040") then
				memblock_read <= X"004a55b3";
			elsif (count_in = X"00000044") then
				memblock_read <= X"010000ef";
			elsif (count_in = X"00000048") then
				memblock_read <= X"00560713";
			elsif (count_in = X"0000004c") then
				memblock_read <= X"0103a023";
			elsif (count_in = X"00000050") then
				memblock_read <= X"00000013";
			elsif (count_in = X"00000054") then
				memblock_read <= X"00000013";
			end if;
		end if;
		instruction <= memblock_read;
	end process;
end description;
	