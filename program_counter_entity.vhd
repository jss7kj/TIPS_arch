library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity program_counter is
	port (
		branch 		: in std_logic;
		clock 		: in std_logic;
		hold 			: in std_logic;
		reset 		: in std_logic;
		memwrite		: in std_logic;
		pcval 		: out std_logic_vector(15 downto 0);
		branchval 	: in std_logic_vector(15 downto 0);
		qVal			: in std_logic_vector(15 downto 0)
		);
end entity program_counter;

architecture Behavior of program_counter is
	signal resetState : std_logic := '0';
	signal memWriteState : std_logic := '0';
	signal A : std_logic_vector(15 downto 0) := x"0000"; -- Counter
begin
	process(clock)
	begin
		if(rising_edge(clock)) then
			if(resetState = '1') then
				resetState <= '0';
				A <= qVal;
			elsif(memWriteState = '1') then
				memWriteState <= '0';
				A <= std_logic_vector(unsigned(A) + 1);
			elsif(reset = '1') then
				resetState <= '1';
				A <= x"0000";
			elsif (hold = '1') then
				null;
			elsif(branch = '1') then
				A <= branchVal;
			elsif(memwrite = '1') then
				memWriteState <= '1';
			else
				A <= std_logic_vector(unsigned(A) + 1);
			end if;
		end if;
	end process;

	pcval <= A;
end architecture Behavior;

