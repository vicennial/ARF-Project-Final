library ieee;
use ieee.std_logic_1164.all;
entity mux8to1 is port(
	S0,S1,S2,S3,S4,S5,S6,S7: IN STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC_VECTOR(2 downto 0);
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of mux8to1 is
begin
process(S0,S1,S2,S3,S4,S5,S6,S7,sel)
begin
	case sel is
	when "000" => O <= S0;
   when "001" => O <= S1;
	when "010" => O <= S2;
   when "011" => O <= S3;
	when "100" => O <= S4;
   when "101" => O <= S5;
	when "110" => O <= S6;
   when "111" => O <= S7;
	end case;
end process;
end architecture;