library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdderDemo is
	port(SW   : in  std_logic_vector(2 downto 0);
		  LEDR : out  std_logic_vector(1 downto 0));
end FullAdderDemo;

architecture Shell of FullAdderDemo is
begin
	system_core	:	entity work.FullAdder(Behavioral)
		port map(a    => SW(0),
					b    => SW(1),
					cin  => SW(2),
					s    => LEDR(0),
					cout => LEDR(1));
end Shell;