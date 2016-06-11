library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BLU is
  port (
	CCR_in  : in std_logic_vector(3 downto 0);
	control : in std_logic_vector(3 downto 0);
	branch : out std_logic
  ) ;
end entity ; -- BLU

architecture arch of BLU is
begin

end architecture ; -- arch