library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (
  		A : in std_logic_vector(15 downto 0);
  		B : in std_logic_vector(15 downto 0);
  		Y : out std_logic_vector(15 downto 0);
  		control : in std_logic_vector(1 downto 0);
  		cout, vout, nout, zout : out std_logic
  ) ;
end entity ; -- ALU_entity

architecture Behavior of ALU is
begin

end architecture ; -- arch