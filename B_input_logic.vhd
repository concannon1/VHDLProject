----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:29 03/14/2016 
-- Design Name: 
-- Module Name:    B_input_logic - Behavioral 
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

entity B_input_logic is
port(
	B : in std_logic_vector(15 downto 0);
	S0, S1 : in std_logic;
	output : out std_logic_vector(15 downto 0));
	
end B_input_logic;

architecture Behavioral of B_input_logic is

begin

output <= "0000000000000000" after 1ns when S0 = '0' and S1 = '0' else
			 B after 1ns when S0 = '1' and S1 = '0' else
			 not B after 1ns when S0 = '0' and S1 = '1' else
			 "1111111111111111" after 1ns when S0 = '1' and S1 = '1';

end Behavioral;

