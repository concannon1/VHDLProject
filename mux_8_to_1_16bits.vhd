----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:58 02/19/2016 
-- Design Name: 
-- Module Name:    mux_8_to_1_16bits - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use IEEE.STD_LOGIC_ARITH.ALL;
use IeEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_8_to_1_16bits is
	port ( In0, In1, in2, in3, in4, in5, in6, in7 : in std_logic_vector(15 downto 0);
			s0, s1, s2: in std_logic;
			Z : out std_logic_vector(15 downto 0));
end mux_8_to_1_16bits;
architecture Behavioral of mux_8_to_1_16bits is
begin
	Z <= In0 after 5 ns when s0='0' and s1 = '0' and s2 = '0' else
		In1 after 5 ns when s0='0' and s1 = '0' and s2 = '1' else
		In2 after 5 ns when s0='0' and s1 = '1' and s2 = '0' else
		In3 after 5 ns when s0='0' and s1 = '1' and s2 = '1' else
		In4 after 5 ns when s0='1' and s1 = '0' and s2 = '0' else
		In5 after 5 ns when s0='1' and s1 = '0' and s2 = '1' else
		In6 after 5 ns when s0='1' and s1 = '1' and s2 = '0' else
		In7 after 5 ns when s0='1' and s1 = '1' and s2 = '1' else

	"0000000000000000" after 5 ns;
end Behavioral;

