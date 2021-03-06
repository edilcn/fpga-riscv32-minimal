library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity pc is
    port (
        clock, clear: in std_logic;
        pc_in: in std_logic_vector(31 downto 0);
        pc_enable: in std_logic;
        pc_count: out std_logic_vector(31 downto 0)
    );
end pc;

architecture behavioral of pc is
	-- signal next_count_int: std_logic_vector(31 downto 0);
	 signal next_count: std_logic_vector(31 downto 0);

begin
    count_register : entity work.register32b port map (clock, clear, '1', pc_in, next_count);
--    count_register : entity work.register32b_falling port map (clock, clear, '1', pc_in, next_count);

	 pc_count <= next_count; 
end behavioral;
