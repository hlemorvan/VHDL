library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterHex is
	port(clk : in std_logic;
			reset : in std_logic;
		count : out std_logic_vector(3 downto 0);
		dec1Out : out std_logic_vector(6 downto 0));
end CounterHex;

architecture Behavioral of CounterHex is
	signal s_count : unsigned(3 downto 0);
begin
	process( clk,reset )
	begin
		if(reset = '0') then
			s_count <= "0000";
		elsif( rising_edge(clk) ) then
			s_count <= s_count + 1;
		end if;
	end process;
	count <= std_logic_vector(s_count);
	
	dec1Out <=  "1111001" when (s_count = "0001") else --1
					"0100100" when (s_count = "0010") else --2
					"0110000" when (s_count = "0011") else --3
					"0011001" when (s_count = "0100") else --4
					"0010010" when (s_count = "0101") else --5
					"0000010" when (s_count = "0110") else --6
					"1111000" when (s_count = "0111") else --7
					"0000000" when (s_count = "1000") else --8
					"0010000" when (s_count = "1001") else --9
					"0001000" when (s_count = "1010") else --A
					"0000011" when (s_count = "1011") else --B
					"1000110" when (s_count = "1100") else --C
					"0100001" when (s_count = "1101") else --D
					"0000110" when (s_count = "1110") else --E
					"0001110" when (s_count = "1111") else --F
					"1000000"; --0
end Behavioral;