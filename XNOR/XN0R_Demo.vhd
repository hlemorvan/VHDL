library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity XN0R_Demo is
	port(SW	: in	std_logic_vector(1 downto 0);
		  LEDG: out	std_logic_vector(0 downto 0));
end XN0R_Demo;

architecture Shell of XN0R_Demo is
begin
		silboy : entity work.XN0R(Behavioral)
			port map(bin => SW(1 downto 0),
						s	 => LEDG(0));
end Shell;