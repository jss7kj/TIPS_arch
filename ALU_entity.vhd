library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port (
       -- A ? B = Y
  		A : in std_logic_vector(15 downto 0);
  		B : in std_logic_vector(15 downto 0);
  		Y : out std_logic_vector(15 downto 0);
  		control : in std_logic_vector(3 downto 0);
  		cout, vout, nout, zout : out std_logic
  ) ;
end entity ; -- ALU_entity

architecture Behavior of ALU is
	signal outbuf : std_logic_vector(15 downto 0);
	signal cbuf, vbuf, nbuf, zbuf : std_logic;
	signal right : integer;
	signal left : integer;
	signal resultant : integer;
	signal temp : std_logic_vector(15 downto 0);
	constant sl0 : std_logic := '0';
	constant sl1 : std_logic := '1';
begin
	process(A, B, control)
	begin
		left <= to_integer(signed(A));
		right <= to_integer(signed(B));

		case control is
			when "0000" => -- Addition
				resultant <= left + right;
				outbuf <= std_logic_vector(to_signed(resultant, 16));
			when "0001" => -- Subtraction
				resultant <= left - right;
				outbuf <= std_logic_vector(to_signed(resultant, 16));
			when "0010" => -- SL
				temp(15 downto 1) <= A(14 downto 0);
				temp(0) <= sl0;
				outbuf <= temp;
			when "0011" => -- SRL
				temp(14 downto 0) <= A(15 downto 1);
				temp(15) <= sl0;
				outbuf <= temp;
			when "0100" => -- SRA
				temp(14 downto 0) <= A(15 downto 1);
				temp(15) <= A(15);
				outbuf <= temp;
			when "1100" => -- AND
				outbuf <= A and B;
			when "1101" => -- OR
				outbuf <= A or B;
			when "1110" => -- NOT
				outbuf <= not A;
			when "1111" => -- XOR
				outbuf <= A xor B;
			when others =>
				outbuf <= x"0000";

		end case;

	end process;

	-- Buffer Assignment
	Y <= outbuf;
	cout <= cbuf;
	vout <= vbuf;
	nout <= nbuf;
	zbuf <= zbuf;
end architecture ; -- arch