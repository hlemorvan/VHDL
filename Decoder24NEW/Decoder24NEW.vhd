-- ITS CODER, MY MISTAKE
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Decoder24NEW is
	port(bin : in	std_logic_vector(1 downto 0);
			en	: in	std_logic;
			s	: out	std_logic_vector(3 downto 0));
end Decoder24NEW;

architecture Behavioral of Decoder24NEW is
begin
	s(0) <= en and not bin(1) and not bin(0);
	s(1) <= en and not bin(1) and     bin(0);
	s(2) <= en and     bin(1) and not bin(0);
	s(3) <= en and     bin(1) and     bin(0);
end Behavioral;
	