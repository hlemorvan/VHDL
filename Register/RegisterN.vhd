library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegisterN is
	generic(n : natural := 8);
	port(clk : in  std_logic;
			 d : in  std_logic_vector(n-1 downto 0);
			 q : out std_logic_vector(n-1 downto 0);
		  wrEn: in  std_logic);
end RegisterN;

architecture Behavioral of RegisterN is
begin
	process( clk )
	begin
		if(wrEn = '1') then
			if( rising_edge(clk) ) then
				q <= d;
			end if;
		end if;
	end process;
end Behavioral;