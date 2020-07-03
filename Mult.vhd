library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mult is
port ( X: in std_logic_vector(5 DOWNTO 0);
	  Y: out std_logic_vector(9 DOWNTO 0));


End Mult;

Architecture Behaviour of Mult is
SIGNAL C: std_logic_vector(5 downto 0);


Begin

Y(0) <= '0';
Y(1) <= X(0);
Y(2) <= X(1);
half_1:ENTITY work.HalfAdder PORT MAP (A=> X(2), B=> X(0), sum=> Y(3), carry=>C(0));
full_1:ENTITY work.FullAdder PORT MAP (A=> X(3), B=> X(1), Cin=> C(0), sum=> Y(4), carry=>C(1));
full_2:ENTITY work.FullAdder PORT MAP (A=> X(4), B=> X(2), Cin=> C(1), sum=> Y(5), carry=>C(2));
full_3:ENTITY work.FullAdder PORT MAP (A=> X(5), B=> X(3), Cin=> C(2), sum=> Y(6), carry=>C(3));
half_2:ENTITY work.HalfAdder PORT MAP (A=> X(4), B=> C(3), sum=> Y(7), carry=>C(4));
half_3:ENTITY work.HalfAdder PORT MAP (A=> X(5), B=> C(4), sum=> Y(8), carry=>C(5));
Y(9) <= C(5);



End Behaviour;
