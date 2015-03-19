library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity X0R is
	port(bin	: in	std_logic_vector(1 downto 0);
			s	: out	std_logic);
end X0R;

architecture Behavioral of X0R is
begin
	s <= bin(0) xor bin(1);
end Behavioral;