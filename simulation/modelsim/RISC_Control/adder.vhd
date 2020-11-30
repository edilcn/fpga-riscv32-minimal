library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder is
	port (
		dataa : in STD_LOGIC_VECTOR(31 DOWNTO 0);
		datab : in STD_LOGIC_VECTOR(31 DOWNTO 0);
		sum : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end entity adder;

architecture adder32 of adder is
begin
	sum <= dataa + datab;
end architecture adder32;