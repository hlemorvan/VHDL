library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX4_1Demo is
	port(SW	:	in std_logic_vector(5 downto 0);
		  LEDG:	out std_logic_vector(0 downto 0));
end MUX4_1Demo;

architecture Shell of MUX4_1Demo is
begin
	system_core	:	entity work.MUX4_1(MuxEquations)
		port map(sels 		=> SW(1 downto 0),
					inputs 	=> SW(5 downto 2),
					output	=> LEDG(0));
end Shell;