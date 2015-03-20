library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX21NEW is
	port(bin : in	std_logic_vector(1 downto 0);
		  s	: in	std_logic;
		  quit: out	std_logic);
end MUX21NEW;

architecture Behavioral of MUX21NEW is
	signal s_0,s_1	: std_logic;
begin
	s_0 <= not s and bin(0);
	s_1 <= s and bin(1);
	quit <= s_0 or s_1;
end Behavioral;