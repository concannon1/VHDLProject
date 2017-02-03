----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:02 02/08/2016 
-- Design Name: 
-- Module Name:    mux_8_to_1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_8_to_1 is
	port ( In0, In1, In2, In3, In4, In5,
			In6, In7: in std_logic_vector(3 downto 0);
			s1, s2, s3 : in std_logic;
			Z : out std_logic_vector(3 downto 0));
end mux_8_to_1;
architecture Behavioral of mux2_4bit is
begin
	Z <= In0 after 5 ns when s1='0' and s2 = '0' and s3 = '0' else
		In1 after 5 ns when s1='0' and s2 = '0' and s3 = '1' else
		In2 after 5 ns when s1='0' and s2 = '1' and s3 = '0' else
		In3 after 5 ns when s1='0' and s2 = '1' and s3 = '1' else
		In4 after 5 ns when s1='1' and s2 = '0' and s3 = '0' else
		In5 after 5 ns when s1='1' and s2 = '0' and s3 = '1' else
		In6 after 5 ns when s1='1' and s2 = '1' and s3 = '0' else
		In7 after 5 ns when s1='1' and s2 = '1' and s3 = '1' else
	"00000000" after 5 ns;
end Behavioral;


