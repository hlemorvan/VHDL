library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR3VAR is
	port(bin : in 	std_logic_vector(2 downto 0);
		  s	: out	std_logic);
end XOR3VAR;

architecture Behavioral of XOR3VAR is
begin
	s <= bin(0) xor bin(1) xor bin(2);
end Behavioral;