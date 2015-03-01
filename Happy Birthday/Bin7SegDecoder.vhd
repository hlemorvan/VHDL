library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(enable   : in std_logic;
		  binInput : in std_logic_vector(3 downto 0);
		  dec1Out : out std_logic_vector(6 downto 0);
		  dec2Out : out std_logic_vector(6 downto 0);
		  dec3Out : out std_logic_vector(6 downto 0);
		  dec4Out : out std_logic_vector(6 downto 0);
		  dec5Out : out std_logic_vector(6 downto 0);
		  dec6Out : out std_logic_vector(6 downto 0);
		  dec7Out : out std_logic_vector(6 downto 0);
		  dec8Out : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
		dec1Out <= "0010010" when (binInput = "0000"); --5
		dec2Out <= "0010000" when (binInput = "0000"); --9
		dec3Out <= "0010000" when (binInput = "0000"); --9
		dec4Out <= "1111001" when (binInput = "0000"); --1
		
		dec5Out <= "0011001" when (binInput = "0000"); --4
		dec6Out <= "1000000" when (binInput = "0000"); --0
		
		dec7Out <= "1000000" when (binInput = "0000"); --0
		dec8Out <= "1111001" when (binInput = "0000"); --1
		
end Behavioral;