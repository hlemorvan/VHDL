library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity X0R_Demo is
	port(SW : in	std_logic_vector(1 downto 0);
		LEDG : out	std_logic_vector(0 downto 0));
end X0R_Demo;

architecture Shell of X0R_Demo is
begin
	silla : entity work.X0R(Behavioral)
		port map(bin => SW(1 downto 0),
					s	 => LEDG(0));
end Shell;