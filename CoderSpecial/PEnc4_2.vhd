library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity PEnc4_2 is
	port(input  : in std_logic_vector(3 downto 0);
		  output : out std_logic_vector(1 downto 0);
		  valid  : out std_logic);
end PEnc4_2;
 
architecture Behavioral of PEnc4_2 is
begin
	process(input)
	begin
		if(input(3) = '1') then
			output <= "11";
			valid  <= '0';
		elsif(input(2) = '1') then
			output <= "10";
			valid  <= '0';
		elsif(input(1) = '1') then
			output <= "01";
			valid  <= '0';
		elsif(input(0) = '1') then
			output <= "00";
			valid  <= '0';
		else
			output <= "00";
			valid  <= '1';
		end if;
	end process;
end Behavioral;