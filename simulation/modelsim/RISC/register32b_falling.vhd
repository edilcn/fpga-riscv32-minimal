library ieee;

use ieee.std_logic_1164.all;

entity register32b_falling is
    port (
		clock, clear, load: in std_logic;
		reg_in: in std_logic_vector(31 downto 0);
		reg_out: out std_logic_vector(31 downto 0)
    );
end register32b_falling;

architecture arch_register32b_falling of register32b_falling is
	signal register_value: std_logic_vector(31 downto 0) := X"00000000";
	begin
		process (clock, clear, load, register_value)
		begin
			if (clear = '1') then
				register_value <= X"00000000";
			elsif falling_edge(clock) then
				if (load = '1') then
					register_value <= reg_in;
				else
					register_value <= register_value;	
				end if;
			end if;
			reg_out <= register_value;
		end process;
end arch_register32b_falling;
