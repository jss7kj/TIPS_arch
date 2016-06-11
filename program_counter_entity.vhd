library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity program_counter is
	port (
		branch 		: in std_logic;
		clock 		: in std_logic;
		hold 			: in std_logic;
		reset 		: in std_logic;
		pcval 		: out std_logic_vector(15 downto 0);
		branchval 	: in std_logic_vector(15 downto 0)
		);
end entity program_counter;

architecture Behavior of program_counter is
begin

end architecture Behavior;

