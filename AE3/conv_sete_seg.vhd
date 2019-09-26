--		1ª Etapa - Codificação e Simulação
--
--			 Implemente em VHDL um conversor de binário para sete segmentos, conforme a tabela abaixo.
--
--		Digito	Mostrador		abcdefg	a	b	c	d	e	f	g
--		0 	Ssd0.png 		0×01 	'0' 	'0' 	'0' 	'0' 	'0' 	'0' 	'1'
--		1 	Ssd1.png 		0×4F 	'1' 	'0' 	'0' 	'1' 	'1' 	'1' 	'1'
--		2 	Ssd2.png 		0×12 	'0' 	'0' 	'1' 	'0' 	'0' 	'1' 	'0'
--		3 	Ssd3.png 		0×06 	'0' 	'0' 	'0' 	'0' 	'1' 	'1' 	'0'
--		4 	Ssd4.png 		0×4C 	'1' 	'0' 	'0' 	'1' 	'1' 	'0' 	'0'
--		5 	Ssd5.png 		0×24 	'0' 	'1' 	'0' 	'0' 	'1' 	'0' 	'0'
--		6 	Ssd6.png 		0×20 	'0' 	'1' 	'0' 	'0' 	'0' 	'0' 	'0'
--		7 	Ssd7.png 		0×0F 	'0' 	'0' 	'0' 	'1' 	'1' 	'1' 	'1'
--		8 	Ssd8.png 		0×00 	'0' 	'0' 	'0' 	'0' 	'0' 	'0' 	'0'
--		9 	Ssd9.png 		0×04 	'0' 	'0' 	'0' 	'0' 	'1' 	'0' 	'0'
--		A 	SsdA.png 		0×08 	'0' 	'0' 	'0' 	'1' 	'0' 	'0' 	'0'
--		b 	Ssdb.png 		0×60 	'1' 	'1' 	'0' 	'0' 	'0' 	'0' 	'0'
--		C 	SsdC.png 		0×31 	'0' 	'1' 	'1' 	'0' 	'0' 	'0' 	'1'
--		d 	Ssdd.png 		0×42 	'1' 	'0' 	'0' 	'0' 	'0' 	'1' 	'0'
--		E 	SsdE.png 		0×30 	'0' 	'1' 	'1' 	'0' 	'0' 	'0' 	'0'
--		F 	SsdF.png 		0×38 	'0' 	'1' 	'1' 	'1' 	'0' 	'0' 	'0'
--
--			 Use como entrada x[3..0] o número binário correspondente aos números hexadecimais de 0 a F.
--			 Use como saídas y[0..6] no lugar de a..g
--			 Faça a simulação funcional e verifique que o circuito está correto.


library ieee;
use ieee.std_logic_1164.all;
-----------------------------------------------------
entity conv_sete_seg is
	generic (N : natural := 4);
	port 
	(
		x : in std_logic_vector(N-1 downto 0);
		y : out std_logic_vector(0 to 6)
	);
end entity;
-----------------------------------------------------
architecture conv_sete_seg_v1 of conv_sete_seg is
begin
	
end architecture;
-----------------------------------------------------
configuration cfg of conv_sete_seg is
	for conv_sete_seg_v1
	end for;
end configuration;
