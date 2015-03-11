library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterN_Demo is
	port(SW : in  std_logic_vector(8 downto 0);
  		 KEY : in  std_logic_vector(0 downto 0);
	   LEDR : out std_logic_vector(7 downto 0));
		
end RegisterN_Demo;

architecture Shell of RegisterN_Demo is
begin
	ff_d : work.RegisterN(Behavioral)
	port map(clk => KEY(0),
			  wrEn => SW(0),
				  d => SW(8 downto 1),
				  q => LEDR(7 downto 0));
end Shell;