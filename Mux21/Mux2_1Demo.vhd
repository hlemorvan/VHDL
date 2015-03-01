library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1Demo is
	port(SW	:	in std_logic_vector(2 downto 0);
		  LEDG:	out std_logic_vector(0 downto 0));
end Mux2_1Demo;

architecture Shell of Mux2_1Demo is
begin
	system_core	:	entity work.Mux2_1(MuxEquations)
		port map(sel 		=> SW(0),
					inputs 	=> SW(2 downto 1),
					output	=> LEDG(0));
end Shell;