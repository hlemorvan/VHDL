library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Adder4Demo is
	port(KEY  : in std_logic_vector(0 downto 0);
		  SW   : in  std_logic_vector(7 downto 0);
		  LEDR : out  std_logic_vector(4 downto 0));
end Adder4Demo;

architecture Shell of Adder4Demo is
begin
	system_core	:	entity work.AddSub4(Structural)
		port map(sub  => KEY(0),
					a    => SW(7 downto 4),
					b    => SW(3 downto 0),
					cin  => '0',
					s    => LEDR(3 downto 0),
					cout => LEDR(4));
end Shell;