-- Copyright João Vítor Rafael Chrisóstomo
-- The original file can be found at: https://github.com/Artoriuz/maestro/components

library ieee;

use ieee.std_logic_1164.all;
use work.all;

entity register_bank is
	port (
		clock, clear, wr_reg_enable: in std_logic;
		r1_reg_in, r2_reg_in, wr_reg_in: in std_logic_vector(31 downto 0);
		wr_data_in: in std_logic_vector(31 downto 0);
		r1_data_out, r2_data_out: out std_logic_vector(31 downto 0)
	);
end entity register_bank;

architecture arch_register_bank of register_bank is
	signal internal_reg_load : std_logic_vector(31 downto 0) := X"00000000";

	signal x0_to_muxes : std_logic_vector(31 downto 0);
	signal x1_to_muxes : std_logic_vector(31 downto 0);
	signal x2_to_muxes : std_logic_vector(31 downto 0);
	signal x3_to_muxes : std_logic_vector(31 downto 0);
	signal x4_to_muxes : std_logic_vector(31 downto 0);
	signal x5_to_muxes : std_logic_vector(31 downto 0);
	signal x6_to_muxes : std_logic_vector(31 downto 0);
	signal x7_to_muxes : std_logic_vector(31 downto 0);
	signal x8_to_muxes : std_logic_vector(31 downto 0);
	signal x9_to_muxes : std_logic_vector(31 downto 0);
	signal x10_to_muxes : std_logic_vector(31 downto 0);
	signal x11_to_muxes : std_logic_vector(31 downto 0);
	signal x12_to_muxes : std_logic_vector(31 downto 0);
	signal x13_to_muxes : std_logic_vector(31 downto 0);
	signal x14_to_muxes : std_logic_vector(31 downto 0);
	signal x15_to_muxes : std_logic_vector(31 downto 0);
	signal x16_to_muxes : std_logic_vector(31 downto 0);
	signal x17_to_muxes : std_logic_vector(31 downto 0);
	signal x18_to_muxes : std_logic_vector(31 downto 0);
	signal x19_to_muxes : std_logic_vector(31 downto 0);
	signal x20_to_muxes : std_logic_vector(31 downto 0);
	signal x21_to_muxes : std_logic_vector(31 downto 0);
	signal x22_to_muxes : std_logic_vector(31 downto 0);
	signal x23_to_muxes : std_logic_vector(31 downto 0);
	signal x24_to_muxes : std_logic_vector(31 downto 0);
	signal x25_to_muxes : std_logic_vector(31 downto 0);
	signal x26_to_muxes : std_logic_vector(31 downto 0);
	signal x27_to_muxes : std_logic_vector(31 downto 0);
	signal x28_to_muxes : std_logic_vector(31 downto 0);
	signal x29_to_muxes : std_logic_vector(31 downto 0);
	signal x30_to_muxes : std_logic_vector(31 downto 0);
	signal x31_to_muxes : std_logic_vector(31 downto 0);

begin
	register_load_decouple : process (wr_reg_in)
	begin
		if (wr_reg_enable = '1') then
			case wr_reg_in is
				when "00000" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000001";
				when "00001" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000010";
				when "00010" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000100";
				when "00011" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000001000";
				when "00100" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000010000";
				when "00101" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000100000";
				when "00110" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000001000000";
				when "00111" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000010000000";
				when "01000" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000100000000";
				when "01001" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000001000000000";
				when "01010" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000010000000000";
				when "01011" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000100000000000";
				when "01100" =>
					internal_reg_load(31 downto 0) <= "00000000000000000001000000000000";
				when "01101" =>
					internal_reg_load(31 downto 0) <= "00000000000000000010000000000000";
				when "01110" =>
					internal_reg_load(31 downto 0) <= "00000000000000000100000000000000";
				when "01111" =>
					internal_reg_load(31 downto 0) <= "00000000000000001000000000000000";
				when "10000" =>
					internal_reg_load(31 downto 0) <= "00000000000000010000000000000000";
				when "10001" =>
					internal_reg_load(31 downto 0) <= "00000000000000100000000000000000";
				when "10010" =>
					internal_reg_load(31 downto 0) <= "00000000000001000000000000000000";
				when "10011" =>
					internal_reg_load(31 downto 0) <= "00000000000010000000000000000000";
				when "10100" =>
					internal_reg_load(31 downto 0) <= "00000000000100000000000000000000";
				when "10101" =>
					internal_reg_load(31 downto 0) <= "00000000001000000000000000000000";
				when "10110" =>
					internal_reg_load(31 downto 0) <= "00000000010000000000000000000000";
				when "10111" =>
					internal_reg_load(31 downto 0) <= "00000000100000000000000000000000";
				when "11000" =>
					internal_reg_load(31 downto 0) <= "00000001000000000000000000000000";
				when "11001" =>
					internal_reg_load(31 downto 0) <= "00000010000000000000000000000000";
				when "11010" =>
					internal_reg_load(31 downto 0) <= "00000100000000000000000000000000";
				when "11011" =>
					internal_reg_load(31 downto 0) <= "00001000000000000000000000000000";
				when "11100" =>
					internal_reg_load(31 downto 0) <= "00010000000000000000000000000000";
				when "11101" =>
					internal_reg_load(31 downto 0) <= "00100000000000000000000000000000";
				when "11110" =>
					internal_reg_load(31 downto 0) <= "01000000000000000000000000000000";
				when "11111" =>
					internal_reg_load(31 downto 0) <= "10000000000000000000000000000000";
			end case;
		else
			internal_reg_load(31 downto 0) <= "00000000000000000000000000000000";
		end if;
	end process;

	reg_x0 : register32b_falling port map(clock, clear, '1', X"00000000", x0_to_muxes);
	reg_x1 : register32b_falling port map(clock, clear, internal_reg_load(1), wr_data_in, x1_to_muxes);
	reg_x2 : register32b_falling port map(clock, clear, internal_reg_load(2), wr_data_in, x2_to_muxes);
	reg_x3 : register32b_falling port map(clock, clear, internal_reg_load(3), wr_data_in, x3_to_muxes);
	reg_x4 : register32b_falling port map(clock, clear, internal_reg_load(4), wr_data_in, x4_to_muxes);
	reg_x5 : register32b_falling port map(clock, clear, internal_reg_load(5), wr_data_in, x5_to_muxes);
	reg_x6 : register32b_falling port map(clock, clear, internal_reg_load(6), wr_data_in, x6_to_muxes);
	reg_x7 : register32b_falling port map(clock, clear, internal_reg_load(7), wr_data_in, x7_to_muxes);
	reg_x8 : register32b_falling port map(clock, clear, internal_reg_load(8), wr_data_in, x8_to_muxes);
	reg_x9 : register32b_falling port map(clock, clear, internal_reg_load(9), wr_data_in, x9_to_muxes);
	reg_x10 : register32b_falling port map(clock, clear, internal_reg_load(10), wr_data_in, x10_to_muxes);
	reg_x11 : register32b_falling port map(clock, clear, internal_reg_load(11), wr_data_in, x11_to_muxes);
	reg_x12 : register32b_falling port map(clock, clear, internal_reg_load(12), wr_data_in, x12_to_muxes);
	reg_x13 : register32b_falling port map(clock, clear, internal_reg_load(13), wr_data_in, x13_to_muxes);
	reg_x14 : register32b_falling port map(clock, clear, internal_reg_load(14), wr_data_in, x14_to_muxes);
	reg_x15 : register32b_falling port map(clock, clear, internal_reg_load(15), wr_data_in, x15_to_muxes);
	reg_x16 : register32b_falling port map(clock, clear, internal_reg_load(16), wr_data_in, x16_to_muxes);
	reg_x17 : register32b_falling port map(clock, clear, internal_reg_load(17), wr_data_in, x17_to_muxes);
	reg_x18 : register32b_falling port map(clock, clear, internal_reg_load(18), wr_data_in, x18_to_muxes);
	reg_x19 : register32b_falling port map(clock, clear, internal_reg_load(19), wr_data_in, x19_to_muxes);
	reg_x20 : register32b_falling port map(clock, clear, internal_reg_load(20), wr_data_in, x20_to_muxes);
	reg_x21 : register32b_falling port map(clock, clear, internal_reg_load(21), wr_data_in, x21_to_muxes);
	reg_x22 : register32b_falling port map(clock, clear, internal_reg_load(22), wr_data_in, x22_to_muxes);
	reg_x23 : register32b_falling port map(clock, clear, internal_reg_load(23), wr_data_in, x23_to_muxes);
	reg_x24 : register32b_falling port map(clock, clear, internal_reg_load(24), wr_data_in, x24_to_muxes);
	reg_x25 : register32b_falling port map(clock, clear, internal_reg_load(25), wr_data_in, x25_to_muxes);
	reg_x26 : register32b_falling port map(clock, clear, internal_reg_load(26), wr_data_in, x26_to_muxes);
	reg_x27 : register32b_falling port map(clock, clear, internal_reg_load(27), wr_data_in, x27_to_muxes);
	reg_x28 : register32b_falling port map(clock, clear, internal_reg_load(28), wr_data_in, x28_to_muxes);
	reg_x29 : register32b_falling port map(clock, clear, internal_reg_load(29), wr_data_in, x29_to_muxes);
	reg_x30 : register32b_falling port map(clock, clear, internal_reg_load(30), wr_data_in, x30_to_muxes);
	reg_x31 : register32b_falling port map(clock, clear, internal_reg_load(31), wr_data_in, x31_to_muxes);

	output_1_mux : mux32_1 port map(
		r1_reg_in, x0_to_muxes, x1_to_muxes, x2_to_muxes, x3_to_muxes, x4_to_muxes, x5_to_muxes, x6_to_muxes, x7_to_muxes,
		x8_to_muxes, x9_to_muxes, x10_to_muxes, x11_to_muxes, x12_to_muxes, x13_to_muxes, x14_to_muxes, x15_to_muxes, x16_to_muxes,
		x17_to_muxes, x18_to_muxes, x19_to_muxes, x20_to_muxes, x21_to_muxes, x22_to_muxes, x23_to_muxes, x24_to_muxes, x25_to_muxes,
		x26_to_muxes, x27_to_muxes, x28_to_muxes, x29_to_muxes, x30_to_muxes, x31_to_muxes, r1_data_out);

	output_2_mux : mux32_1 port map(
		r2_reg_in, x0_to_muxes, x1_to_muxes, x2_to_muxes, x3_to_muxes, x4_to_muxes, x5_to_muxes, x6_to_muxes, x7_to_muxes,
		x8_to_muxes, x9_to_muxes, x10_to_muxes, x11_to_muxes, x12_to_muxes, x13_to_muxes, x14_to_muxes, x15_to_muxes, x16_to_muxes,
		x17_to_muxes, x18_to_muxes, x19_to_muxes, x20_to_muxes, x21_to_muxes, x22_to_muxes, x23_to_muxes, x24_to_muxes, x25_to_muxes,
		x26_to_muxes, x27_to_muxes, x28_to_muxes, x29_to_muxes, x30_to_muxes, x31_to_muxes, r2_data_out);
		
end architecture arch_register_bank;