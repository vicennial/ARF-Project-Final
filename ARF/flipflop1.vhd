library ieee;
use ieee.std_logic_1164.all;
entity flipflop1 is port(
	A: IN STD_LOGIC_VECTOR(15 downto 0);
	strobe: IN STD_LOGIC;
	O: OUT STD_LOGIC_VECTOR(15 downto 0);
	clk: IN STD_LOGIC
);
end entity;
architecture behavioral of flipflop1 is
signal temp: STD_LOGIC_VECTOR(15 downto 0);
begin
process(clk)
begin
	if rising_edge(clk) then
		temp <= A;
	elsif falling_edge(clk) then
		O <= temp;
	end if;
end process;
end architecture;