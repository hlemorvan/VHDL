library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DecoderPriorityNEW_Demo is
	port(SW : in	std_logic_vector(3 downto 0);
		LEDG : out	std_logic_vector(2 downto 0));
end DecoderPriorityNEW_Demo;

architecture Shell of DecoderPriorityNEW_Demo is
	begin
		demo : entity work.DecoderPriorityNEW(Behavioral)
				port map(bin => SW(3 downto 0),
							s	 => LEDG(2 downto 1),
					validOut  => LEDG(0));
end Shell;