library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo is
	port(KEY  : in std_logic_vector(0 downto 0);
		  SW   : in std_logic_vector(3 downto 0);
		  HEX0 : out std_logic_vector(6 downto 0);
		  HEX1 : out std_logic_vector(6 downto 0);
		  HEX2 : out std_logic_vector(6 downto 0);
		  HEX3 : out std_logic_vector(6 downto 0);
		  HEX4 : out std_logic_vector(6 downto 0);
		  HEX5 : out std_logic_vector(6 downto 0);
		  HEX6 : out std_logic_vector(6 downto 0);
		  HEX7 : out std_logic_vector(6 downto 0));
end DisplayDemo;

architecture Shell of DisplayDemo is
begin
	hexa0	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec1Out => HEX0(6 downto 0));
					
	hexa1	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec2Out => HEX1(6 downto 0));
					
	hexa2	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec3Out => HEX2(6 downto 0));
					
	hexa3	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec4Out => HEX3(6 downto 0));
					
	hexa4	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec5Out => HEX4(6 downto 0));
					
	hexa5	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec6Out => HEX5(6 downto 0));
					
	hexa6	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec7Out => HEX6(6 downto 0));
					
	hexa7	:	entity work.Bin7SegDecoder(Behavioral)
		port map(enable   => KEY(0),
					binInput => SW(3 downto 0),
					dec8Out => HEX7(6 downto 0));
					
					
	
end Shell;