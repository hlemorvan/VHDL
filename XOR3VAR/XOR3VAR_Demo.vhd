library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XOR3VAR_Demo is
	port(SW : in	std_logic_vector(2 downto 0);
		 LEDG: out	std_logic_vector(0 downto 0));
end XOR3VAR_Demo;

architecture Shell of XOR3VAR_Demo is
begin
	damaram : entity work.XOR3VAR(Behavioral)
		port map(bin => SW(2 downto 0),
			  s	=> LEDG(0));
end Shell;