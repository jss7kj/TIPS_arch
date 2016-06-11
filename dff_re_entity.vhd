library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dff_re is
	generic(width_in : natural := 16);
	port(
		D: in std_logic_vector(width_in - 1 downto 0);
		Q: out std_logic_vector(width_in - 1 downto 0);
		clk: in std_logic
		);
end entity dff_re;

architecture Behavior of dff_re is
	signal Qbuf : std_logic_vector(width_in - 1 downto 0);
begin
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			Qbuf <= D;
		end if;
	end process;

	Q <= Qbuf;
end architecture Behavior;