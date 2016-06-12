library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
	port(
		inst : in std_logic_vector(15 downto 0);
		reg0addr, reg1addr, wregaddr : out std_logic_vector(3 downto 0);
		reg0in, reg1in : in std_logic_vector(15 downto 0);
		Aout, Bout : out std_logic_vector(15 downto 0);
		control : out std_logic_vector(7 downto 0)
		);
end entity;

architecture Behavior of Decoder is
begin

end architecture;