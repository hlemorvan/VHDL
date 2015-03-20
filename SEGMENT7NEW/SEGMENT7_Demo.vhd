library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SEGMENT7_Demo is
	port(SW : in	std_logic_vector(3 downto 0);
		HEX0 : out	std_logic_vector(6 downto 0));
end SEGMENT7_Demo;

architecture Shell of SEGMENT7_Demo is
begin
	demo : entity work.SEGMENT7(Behavioral)
			port map(binInput => SW(3 downto 0),
						seg_out => HEX0(6 downto 0));
end Shell;