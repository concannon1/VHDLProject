----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:59 03/15/2016 
-- Design Name: 
-- Module Name:    logic_circuit - Behavioral 
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

entity logic_circuit is
PORT(
	S0, S1 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	G : out std_logic_vector(15 downto 0)

);
end logic_circuit;

architecture Behavioral of logic_circuit is


COMPONENT logic_bit_slice
PORT(
S0, S1, A, B : in std_logic; 
	G : out std_logic
);

END COMPONENT;
begin

lbs0 : logic_bit_slice
port map(
	S0, S1, A(0), B(0), G(0)
);

lbs1 : logic_bit_slice
port map(
	S0, S1, A(1), B(1), G(1)
);

lbs2 : logic_bit_slice
port map(
	S0, S1, A(2), B(2), G(2)
);


lbs3 : logic_bit_slice
port map(
	S0, S1, A(3), B(3), G(3)
);


lbs4 : logic_bit_slice
port map(
	S0, S1, A(4), B(4), G(4)
);


lbs5 : logic_bit_slice
port map(
	S0, S1, A(5), B(5), G(5)
);


lbs6 : logic_bit_slice
port map(
	S0, S1, A(6), B(6), G(6)
);


lbs7 : logic_bit_slice
port map(
	S0, S1, A(7), B(7), G(7)
);


lbs8 : logic_bit_slice
port map(
	S0, S1, A(8), B(8), G(8)
);


lbs9 : logic_bit_slice
port map(
	S0, S1, A(9), B(9), G(9)
);


lbs10 : logic_bit_slice
port map(
	S0, S1, A(10), B(10), G(10)
);


lbs11 : logic_bit_slice
port map(
	S0, S1, A(11), B(11), G(11)
);

lbs12 : logic_bit_slice
port map(
	S0, S1, A(12), B(12), G(12)
);

lbs13 : logic_bit_slice
port map(
	S0, S1, A(13), B(13), G(13)
);

lbs14 : logic_bit_slice
port map(
	S0, S1, A(14), B(14), G(14)
);

lbs15 : logic_bit_slice
port map(
	S0, S1, A(15), B(15), G(15)
);


end Behavioral;

