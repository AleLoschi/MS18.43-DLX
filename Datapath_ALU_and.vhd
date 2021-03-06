library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myStuff.all;

entity and_gen is
	generic ( N : integer := 32);
	port (	A	: in	std_logic_vector(N-1 downto 0);
			B	: in	std_logic_vector(N-1 downto 0);
			C	: out	std_logic_vector(N-1 downto 0));
end and_gen;

architecture Structural of and_gen is
begin
	ANDs: for i in 0 to N-1 generate
		AND_i: C(i) <= A(i) and B(i);
	end generate;
end Structural;