library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XN0R is
	port(bin	: in  std_logic_vector(1 downto 0);
		  s	: out	std_logic);
end XN0R;

architecture Behavioral of XN0R is
begin
		s <= '1' when bin(0) = bin(1) else
			  '0';
end Behavioral;