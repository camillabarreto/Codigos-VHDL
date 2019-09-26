library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------
entity inc_gray is
	generic (N : natural := 4);
	port
	(
		gray_in  : in std_logic_vector(N-1 downto 0);
		gray_out  : out std_logic_vector(N-1 downto 0)
	);
end entity;
---------------------------------------------------------
architecture inc_gray of inc_gray is
	signal bin_in, bin_out : std_logic_vector(gray_in'left downto 0);
begin
	loop_bin_in: 
	for i in gray_in'left-1 downto 0 generate
		bin_in(i) <= gray_in(i) xor bin_in(i+1);
	end generate;
	bin_in(N-1) <= gray_in(N-1) xor '0';
	
	bin_out <= std_logic_vector(unsigned(bin_in) + 1);
	
	loop_gray_out: 
	for i in bin_out'left-1 downto 0 generate
		gray_out(i) <= bin_out(i) xor bin_out(i+1);
	end generate;
	gray_out(N-1) <= bin_out(N-1) xor '0';
	
end architecture;

