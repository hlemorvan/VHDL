library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterHex_Demo is
	port(KEY : in  std_logic_vector(2 downto 0);
	    LEDR : out std_logic_vector(3 downto 0);
		 HEX0 : out std_logic_vector(6 downto 0);
		 SW	: in std_logic_vector(4 downto 0));
		
end CounterHex_Demo;

architecture Shell of CounterHex_Demo is
begin
	ff_d : work.CounterHex(Behavioral)
	port map(clk => KEY(0),
				reset => KEY(1),
				load => KEY(2),
				loadIn => SW(4 downto 1),
				enable => SW(0),
			 count => LEDR(3 downto 0),
			 dec1Out => HEX0(6 downto 0));
end Shell;