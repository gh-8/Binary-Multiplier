library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is

port (
A: in std_logic;
B: in std_logic;
Cin: in std_logic;
sum: out std_logic;
carry: out std_logic);

end FullAdder;

architecture archFullAdder of FullAdder is

begin
sum <= A xor B xor Cin;

carry <= (A and B) or (A and Cin) or (B and Cin);

end archFullAdder;
