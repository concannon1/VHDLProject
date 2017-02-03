----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:39 02/18/2016 
-- Design Name: 
-- Module Name:    mux_2_to_1_16bits - Behavioral 
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
use IeEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_2_to_1_16bits is
	port ( In0, In1 : in std_logic_vector(15 downto 0);
			s0: in std_logic;
			Z : out std_logic_vector(15 downto 0));
end mux_2_to_1_16bits;
architecture Behavioral of mux_2_to_1_16bits is
begin
	Z <= In0 after 5 ns when s0='0' else
		In1 after 5 ns when s0='1' else
		"0000000000000000" after 5 ns;
end Behavioral;
