library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SEGMENT7 is
	port(binInput : in	std_logic_vector(3 downto 0);
			seg_out : out	std_logic_vector(6 downto 0));
end SEGMENT7;

architecture Behavioral of SEGMENT7 is
begin
	seg_out <=  "1111001" when (binInput = "0001") else
					"0100100" when (binInput = "0010") else
					"0110000" when (binInput = "0011") else
					"1011001" when (binInput = "0100") else
					"1010010" when (binInput = "0101") else
					"0000010" when (binInput = "0110") else
					"0111000" when (binInput = "0111") else
					"1111111" when (binInput = "1000") else
					"0010000" when (binInput = "1001") else
					"0001000" when (binInput = "1010") else
					"0000011" when (binInput = "1011") else
					"1000110" when (binInput = "1100") else
					"0100001" when (binInput = "1101") else
					"0000110" when (binInput = "1110") else
					"0000110" when (binInput = "1111") else
					"0111111";
end Behavioral;