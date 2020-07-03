library IEEE;
use IEEE.std_logic_1164.all;

entity TestBench is
port ( SW: in std_logic_vector(3 DOWNTO 0);
		HEX3 :out std_logic_vector (6 downto 0);
		HEX2 :out std_logic_vector (6 downto 0);
		HEX1 :out std_logic_vector (6 downto 0);
		HEX0 :out std_logic_vector (6 downto 0));


End TestBench;

Architecture Behaviour of TestBench is
SIGNAL next1, next2, next3, next4 : std_logic_vector(7 downto 0);


Begin

Ten :ENTITY work.Mult Port map (X(3 downto 0) => SW(3 downto 0) ,Y(7 downto 0) => next1(7 downto 0));
seg1 :ENTITY work.DispDecoder PORT MAP (D(3 Downto 0)=>next1(7 downto 4),Y(6 DOWNTO 0) => HEX3 (6 downto 0));
Ten2 :ENTITY work.Mult Port map (X(3 downto 0) => next1(3 downto 0) ,Y(7 downto 0) => next2(7 downto 0));
seg2 :ENTITY work.DispDecoder PORT MAP (D(3 Downto 0)=>next2(7 downto 4),Y(6 DOWNTO 0) => HEX2 (6 downto 0));
Ten3 :ENTITY work.Mult Port map (X(3 downto 0) => next2(3 downto 0) ,Y(7 downto 0) => next3(7 downto 0));
seg3 :ENTITY work.DispDecoder PORT MAP (D(3 Downto 0)=>next3(7 downto 4),Y(6 DOWNTO 0) => HEX1 (6 downto 0));
Ten4 :ENTITY work.Mult Port map (X(3 downto 0) => next3(3 downto 0) ,Y(7 downto 0) => next4(7 downto 0));
seg4 :ENTITY work.DispDecoder PORT MAP (D(3 Downto 0)=>next4(7 downto 4),Y(6 DOWNTO 0) => HEX0 (6 downto 0));


End Behaviour;
