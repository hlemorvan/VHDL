library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(sel		: in 	std_logic;
		  inputs	: in 	std_logic_vector(1 downto 0);
		  output : out std_logic);
end Mux2_1;
	
architecture MuxEquations of Mux2_1 is
begin
	output <= (not sel and inputs(0) and not inputs(1)) or
				 (not sel and inputs(0) and inputs(1)) or
				 (sel and not inputs(0) and inputs(1)) or
				 (sel and inputs(0) and inputs(1));
end MuxEquations;