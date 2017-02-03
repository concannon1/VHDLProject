----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:46 03/11/2016 
-- Design Name: 
-- Module Name:    ArithmeticUnit16bit - Behavioral 
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

entity ArithmeticUnit16bit is
	PORT(CIn, S0, S1 : in std_logic;
		A, B : in std_logic_vector(15 downto 0);
		G : out std_logic_vector(15 downto 0);
		Cout: out std_logic);
		
end ArithmeticUnit16bit;

architecture Behavioral of ArithmeticUnit16bit is

COMPONENT RCA16bit PORT(
	

);

begin


end Behavioral;

