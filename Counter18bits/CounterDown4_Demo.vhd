library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterDown4_Demo is
	port(KEY : in  std_logic_vector(0 downto 0);
	    LEDR : out std_logic_vector(17 downto 0));
		
end CounterDown4_Demo;

architecture Shell of CounterDown4_Demo is
begin
	ff_d : work.CounterDown4(Behavioral)
	port map(clk => KEY(0),
			 count => LEDR(17 downto 0));
end Shell;