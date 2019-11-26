-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/11/2019 11:49:28"
                                                            
-- Vhdl Test Bench template for design  :  candy_machine
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
-----------------------------------------------------------------
ENTITY candy_machine_vhd_tst IS
END candy_machine_vhd_tst;
-----------------------------------------------------------------
ARCHITECTURE candy_machine_arch OF candy_machine_vhd_tst IS
	
	-- CONSTANTS
	constant tclk: time := 1 ns;  
	constant treset: time := 100 ps;	
	
	-- SIGNALS                                                 
	SIGNAL candy : STD_LOGIC;
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL d5c : STD_LOGIC;
	SIGNAL d10c : STD_LOGIC;
	SIGNAL e5c : STD_LOGIC;
	SIGNAL e10c : STD_LOGIC;
	SIGNAL e25c : STD_LOGIC;
	SIGNAL rst : STD_LOGIC;
	
	-- COMPONENT
	COMPONENT candy_machine
		PORT (
		candy : OUT STD_LOGIC;
		clk : IN STD_LOGIC;
		d5c : OUT STD_LOGIC;
		d10c : OUT STD_LOGIC;
		e5c : IN STD_LOGIC;
		e10c : IN STD_LOGIC;
		e25c : IN STD_LOGIC;
		rst : IN STD_LOGIC
		);
	END COMPONENT;

	BEGIN

		-- RESET COM DURAÇÃO DE treset (COM CÓDIGO CONCORRENTE)
		rst <= '1', '0' after treset;
		 
		-- RESET COM DURAÇÃO DE treset (COM CÓDIGO SEQUENCIAL)
--		PROCESS                                              
--		BEGIN  
--		  rst <= '1';
--		  wait for treset;
--		  rst <= '0';
--		  wait;
--		END PROCESS;
	
	
		-- CLOCK COM PERIODO DE 2*tclk (COM CÓDIGO CONCORRENTE)
		--clk <= not clk after tclk;
	 
		-- CLOCK COM PERIODO DE 2*tclk (COM CÓDIGO SEQUENCIAL)
		PROCESS                                              
		BEGIN  
		  clk <= '1';
		  wait for tclk;
		  clk <= '0';
		  wait for tclk;
		END PROCESS;
		
		
		-----------------------
		-- GERAAO DO ESTIMULO "e5c"(COM CDIGO SEQUENCIAL)
		sim_e5c: e5c <= '0', '1' after 13 sec, '0' after 14 sec;
	 
		-- GERAAO DO ESTIMULO "e5c"(COM CDIGO SEQUENCIAL)
		sim_e10c: e10c <= '0', '1' after 16 sec, '0' after 17 sec, '1' after 23 sec,  '0' after 24 sec;
	 
		-- GERAAO DO ESTIMULO "e25c"(COM CDIGO SEQUENCIAL)
	 
		-- sim_e25c: PROCESS                                              
		--  BEGIN  
		--  e25c <= '0';
		--  wait for 4 sec;
		--  e25c <= '1';
		--  wait for 1 sec;
		--  e25c <= '0';
		-- END PROCESS;
	 
		-- Os tempos neste caso sao os intervalos entre os eventos 
		-- No exemplo acima o SIGNAL e25c inicia com '0', muda para '1' apos 4 segundos, 
		-- e depois muda para '0' depois de mais 1 segundo
		-- em CDIGO SEQUENCIALo mesmo estimulo seria gerado com:
		-- sim_e25c: e25c <= '0', '1' after 4 sec, '0' after 5 sec;
	 
		sim_e25c: PROCESS                                              
		BEGIN  
			  e25c <= '0';
			  wait for 4 sec;
			  e25c <= '1';
			  wait for 1 sec;
			  e25c <= '0';
			  wait for 3 sec;
			  e25c <= '1';
			  wait for 1 sec;
			  e25c <= '0';
			  wait for 10 sec;
			  e25c <= '1';
			  wait for 1 sec;
			  e25c <= '0';
			  wait for 5 sec;
		END PROCESS;
		------------------------
		
		-- INSTANCIA
		i1 : candy_machine
		PORT MAP (
			-- list connections between master ports and signals
			candy => candy,
			clk => clk,
			d5c => d5c,
			d10c => d10c,
			e5c => e5c,
			e10c => e10c,
			e25c => e25c,
			rst => rst
		);
	
END candy_machine_arch;
