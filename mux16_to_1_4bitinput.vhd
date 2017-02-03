----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:44:38 03/08/2016 
-- Design Name: 
-- Module Name:    mux16_to_1_4bitinput - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux16_to_1_4bitinput is
PORT(
	in0, in1, in2, in3, in4, in5, 
	in6, in7, in8, in9, in10,
	in11, in12, in13, in14, in15 : in std_logic;
	
	s: in std_logic_vector(3 downto 0);
	output : out std_logic);

end mux16_to_1_4bitinput;

architecture Behavioral of mux16_to_1_4bitinput is

begin
	output <= in0 after 1ns when s = "0000" else
				in1 after 1ns when s = "0001" else
				in2 after 1ns when s = "0010" else
				in3 after 1ns when s = "0011" else
				in4 after 1ns when s = "0100" else
				in5 after 1ns when s = "0101" else
				in6 after 1ns when s = "0110" else
				in7 after 1ns when s = "0111" else
				in8 after 1ns when s = "1000" else
				in9 after 1ns when s = "1001" else
				in10 after 1ns when s = "1010" else
				in11 after 1ns when s = "1011" else
				in12 after 1ns when s = "1100" else
				in13 after 1ns when s = "1101" else
				in14 after 1ns when s = "1110" else
				in15 after 1ns when s = "1111";
end Behavioral;

