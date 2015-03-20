library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR2GateNEW_Demo is
	port(SW : in  std_logic_vector(1 downto 0);
      LEDG : out std_logic_vector(0 downto 0));
end OR2GateNEW_Demo;

architecture Shell of OR2GateNEW_Demo is
	begin
		silboi : entity work.OR2GateNEW(Behavioral)
		port map(bin => SW(1 downto 0),
					s	 => LEDG(0));
end Shell;