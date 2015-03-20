library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX21NEW_Demo is
	port(SW	: in 	std_logic_vector(2 downto 0);
		 LEDG	: out	std_logic_vector(0 downto 0));
end MUX21NEW_Demo;

architecture Shell of MUX21NEW_Demo is
begin
	acer : entity work.MUX21NEW(Behavioral)
			  port map(bin => SW(2 downto 1),
							s	=> SW(0),
						 quit => LEDG(0));
end Shell;