library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FourToOneMerge is
	port(
		p0, p1, p2, p3 : in std_logic;
		pout : out std_logic_vector(3 downto 0)
		);
end entity;


architecture Behavior of FourToOneMerge is
	signal pbuf : std_logic_vector(3 downto 0);
begin
	process(p0,p1,p2,p3)
	begin
		pbuf(0) <= p0;
		pbuf(1) <= p1;
		pbuf(2) <= p2;
		pbuf(3) <= p3;
	end process;

	pout <= pbuf;
end architecture;