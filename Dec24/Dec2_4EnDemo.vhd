library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4EnDemo is
	port(KEY  : in std_logic_vector(2 downto 0);
		  LEDG : out std_logic_vector(3 downto 0));
end Dec2_4EnDemo;

architecture Shell of Dec2_4EnDemo is
begin
		system_core : entity work.Dec2_4En(BehavProc)
			port map(enable  => not KEY(2),
						inputs  => not KEY(1 downto 0),
						outputs => LEDG(3 downto 0));
end Shell;