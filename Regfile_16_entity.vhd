library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Regfile_16 is
	port(
		raddr0, raddr1, waddr : in std_logic_vector(3 downto 0);
		wdata : in std_logic_vector(15 downto 0);
		rdata0, rdata1 : out std_logic_vector(15 downto 0);
		wen : in std_logic
		);
end entity Regfile_16;

architecture Behavior of Regfile_16 is
begin
end architecture Behavior;