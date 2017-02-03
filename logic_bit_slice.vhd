----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:18 03/15/2016 
-- Design Name: 
-- Module Name:    logic_bit_slice - Behavioral 
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

entity logic_bit_slice is
PORT(
	S0, S1, A, B : in std_logic; 
	G : out std_logic
);
end logic_bit_slice;

architecture Behavioral of logic_bit_slice is

begin

G <= (a and b) after 1ns when s0 = '0' and s1 = '0' else
		 (a or b) after 1ns when s0 = '0' and s1 = '1' else	
		 (a xor b) after 1ns when s0 = '1' and s1 = '0' else
		 (not a) after 1ns when s0 = '1' and s1 = '1' else
		 '0' after 1ns;

end Behavioral;
