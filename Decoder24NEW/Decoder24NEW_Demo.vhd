library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Decoder24NEW_Demo is
	port(SW : in	std_logic_vector(2 downto 0);
		LEDG : out	std_logic_vector(3 downto 0));
end Decoder24NEW_Demo;

architecture Shell of Decoder24NEW_Demo is
begin
	demo : entity work.Decoder24NEW(Behavioral)
			port map(bin => SW(2 downto 1),
						en  => SW(0),
						s	 => LEDG(3 downto 0));
end Shell;