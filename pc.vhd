library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity pc is
    port (
        signal clock: in std_logic;
        signal pc_in: in std_logic_vector(31 downto 0);
        signal pc_enable: in std_logic;
		  signal next_count: in std_logic_vector(31 downto 0);
        signal pc_count: out std_logic_vector(31 downto 0)
    );
end pc;

architecture behavioral of pc is
    signal count_address: std_logic_vector(31 downto 0):= X"00000000";

begin
    count_register: 32bit_register port map (clock, clear, '1', count_address, next_count);
    pc_count <= next_count;
	 
end behavioral;   