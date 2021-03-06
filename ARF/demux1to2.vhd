library ieee;
use ieee.std_logic_1164.all;
entity demux1to2 is port(
	S0,S1: OUT STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC;
	I: IN STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of demux1to2 is
begin
process(I,sel)
begin
	S0 <= x"0000";
	S1 <= x"0000";
	case sel is
	when '0' => S0 <= I;
   when '1' => S1 <= I;
	end case;
end process;
end architecture;