library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity DecoderPriorityNEW is
	port(bin : in	std_logic_vector(3 downto 0);
			s	: out	std_logic_vector(1 downto 0);
	validOut	: out std_logic);
end DecoderPriorityNEW;
architecture Behavioral of DecoderPriorityNEW is
begin
	process(bin)
	begin
		if(bin(3) = '1') then
			s <= "11";
			validOut <= '0';
		elsif(bin(2) = '1') then
			s <= "10";
			validOut <= '0';
		elsif(bin(1) = '1') then
			s <= "01";
			validOut <= '0';
		elsif(bin(0) = '1') then
			s <= "00";
			validOut <= '0';
		else
			s <= "--";
			validOut <= '1';
		end if;
	end process;
end Behavioral;