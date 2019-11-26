----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity candy_machine is
	port (
				clk, rst : in std_logic;
				e5c, e10c, e25c : in std_logic;
				d5c, d10c, candy : out std_logic
			);
end entity ;
----------------------------------------------------------
architecture candy_machine_v1 of candy_machine is
	type state is (ST0, ST5, ST10, ST15, ST20, ST25, ST30, ST35, ST40, ST45);
	signal pr_state, nx_state : state;
	attribute ENUM_ENCODING : string; --optional attribute
	attribute ENUM_ENCODING of state : type is "sequential";
begin
	------Lower section of FSM:------------
	process (clk, rst)
	begin
		if (rst = '1') then
			pr_state <= ST0;
		elsif (clk'EVENT and clk = '1') then
			pr_state <= nx_state;
		end if;
	end process;
	------Upper section of FSM:------------
	process (pr_state, e5c, e10c, e25c)
		begin
			candy <= '0';
			d5c <= '0';
			d10c <= '0';
			case pr_state is
				when ST0 => 
					if (e5c = '1') then
						nx_state <= ST5;
					elsif (e10c = '1') then
						nx_state <= ST10;
					elsif (e25c = '1') then
						nx_state <= ST25;
					else 
						nx_state <= ST0;
					end if;
				when ST5 => 
					if (e5c = '1') then
						nx_state <= ST10;
					elsif (e10c = '1') then
						nx_state <= ST15;
					elsif(e25c = '1') then
						nx_state <= ST30;
					else	
						nx_state <=  ST5;
					end if;
				when ST10 => 
					if (e5c = '1') then
						nx_state <= ST15;
					elsif (e10c = '1') then
						nx_state <= ST20;
					elsif(e25c = '1') then
						nx_state <= ST35;
					else	
						nx_state <=  ST10;
					end if;
				when ST15 => 
					if (e5c = '1') then
						nx_state <= ST20;
					elsif (e10c = '1') then
						nx_state <= ST25;
					elsif(e25c = '1') then
						nx_state <= ST40;
					else	
						nx_state <=  ST15;
					end if;
				when ST20 => 
					if (e5c = '1') then
						nx_state <= ST25;
					elsif (e10c = '1') then
						nx_state <= ST30;
					elsif(e25c = '1') then
						nx_state <= ST45;
					else	
						nx_state <=  ST20;
					end if;
				when ST25 => 
					nx_state <=  ST0;
					candy <= '1';
				when ST30 => 
					d5c <= '1';
					candy <= '1';
					nx_state <= ST0;
				when ST35 => 
					d10c <= '1';
					candy <= '1';
					nx_state <= ST0;
				when ST40 => 
					d5c <= '1';
					nx_state <= ST35;
				when ST45 => 
					d10c <= '1';
					nx_state <= ST35;
			end case;
	end process;
end architecture;
----------------------------------------------------------