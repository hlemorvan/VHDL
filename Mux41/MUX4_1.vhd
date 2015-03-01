library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MUX4_1 is
	port(sels	: in 	std_logic_vector(1 downto 0);
		  inputs	: in 	std_logic_vector(3 downto 0);
		  output : out std_logic);
end MUX4_1;
	
architecture MuxEquations of MUX4_1 is
begin
	output <= (inputs(3) and sels(1) and sels(0)) or
				 (inputs(2) and sels(1) and not sels(0)) or
				 (inputs(1) and not sels(1) and sels(0)) or
				 (inputs(0) and not sels(1) and not sels(0));
end MuxEquations;