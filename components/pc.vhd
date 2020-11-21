library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity pc is
    port (
        signal clock: std_logic;
        signal pc_in: std_logic_vector(31 downto 0);
        signal pc_enable: std_logic;
        signal pc_count: std_logic_vector(31 downto 0);
    );
end pc;

architecture behavioral of pc is
    signal count_address: std_logic_vector(31 downto 0):= X"00000000";

begin
    count_register: 32bit_register port map (count_address, previous_count, clock, pc_enable)
    pc_count <- count_address
 end behavioral;   