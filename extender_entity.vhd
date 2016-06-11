library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extender is
	generic (
		width_in : natural := 10;
		width_out : natural := 16
	);

	port(
		A : in std_logic_vector(width_in - 1 downto 0);
		Y : out std_logic_vector(width_out - 1 downto 0);
		se : in std_logic
	);

end entity extender;

architecture Behavior of extender is
	signal Ybuf : std_logic_vector(width_out - 1 downto 0);
begin
	process(A, se)
		constant zeros : std_logic_vector(width_out - width_in - 1 downto 0) := (others => '0');
		constant ones : std_logic_vector(width_out - width_in - 1 downto 0) := (others => '1');
	begin

		if(se = '1' and A(width_in-1) = '1') then
			Ybuf(width_out - 1 downto width_in) <= ones;
		else
			Ybuf(width_out - 1 downto width_in) <= zeros;
		end if;

		Ybuf(width_in - 1 downto 0) <= A;
	end process;

	Y <= Ybuf;
end architecture Behavior;