library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR2GateNEW is
	port(bin : in  std_logic_vector(1 downto 0);
		  s	: out std_logic);
end OR2GateNEW;

architecture Behavioral of OR2GateNEW is
	begin
		s <= bin(1) or bin(0);
end Behavioral;