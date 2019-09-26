-- AE1 - Conversor de binário para BCD
-- Considere um número decimal entre 0000 e 9999.
-- Usando operadores predefinidos, obtenha na saída os dígitos decimais separados.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------------------
entity bin2bcdMCDU is
	generic (N : natural := 4);
	port (
		X_bin   : in  std_logic_vector(13 downto 0);  --  0000 a 9999
		M_bcd : out std_logic_vector(N-1 downto 0);  --  Milhar
		C_bcd : out std_logic_vector(N-1 downto 0);  --  Centena
		D_bcd : out std_logic_vector(N-1 downto 0);  --  Dezena
		U_bcd : out std_logic_vector(N-1 downto 0)); --  Unidade
end entity;
 --------------------------------------------------------------------------------------------
architecture bin2bcdMCDU of bin2bcdMCDU is
	signal M_uns, C_uns, D_uns, U_uns: unsigned(N-1 downto 0);
	signal X_uns : unsigned(13 downto 0);
begin
	X_uns <= unsigned(X_bin);

	M_uns <= resize(X_uns/1000, N);
	M_bcd <= std_logic_vector(M_uns);

	C_uns <= resize((X_uns-(to_unsigned(1000,10)*M_uns))/100, N);
	C_bcd <= std_logic_vector(C_uns);

	D_uns <= resize((X_uns-(to_unsigned(1000,10)*M_uns)-(to_unsigned(100, 10)*C_uns))/10, N);
	D_bcd <= std_logic_vector(D_uns);

	U_uns <= resize((X_uns-(to_unsigned(1000, 10)*M_uns)-(to_unsigned(100, 7)*C_uns)-(to_unsigned(10, 5)*D_uns)), N);
	U_bcd <= std_logic_vector(U_uns);
end architecture;