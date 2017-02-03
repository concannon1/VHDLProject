----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:51 03/09/2016 
-- Design Name: 
-- Module Name:    RCA16bit - Behavioral 
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
--librarB UNISIM;
--use UNISIM.VComponents.all;

entity RCA16bit is

PORT(
	A, B : in std_logic_vector(15 downto 0);	
	CIn : in std_logic;	
	G : out std_logic_vector(15 downto 0);	
	COut : out std_logic);
end RCA16bit;

architecture Behavioral of RCA16bit is

COMPONENT full_adder
PORT (
	A, B, Cin : in std_logic;
	S, Cout : out std_logic);

END COMPONENT;

signal C: std_logic_vector(15 downto 1);

begin
add0 : full_adder port map(
	A(0), B(0), Cin, G(0), C(1)
);

add1 : full_adder port map(
	A(1), B(1), C(1), G(1), C(2)
);

add2 : full_adder port map(
	A(2), B(2), C(2), G(2), C(3)
);

add3 : full_adder port map(
	A(3), B(3), C(3), G(3), C(4)
);

add4 : full_adder port map(
	A(4), B(4), C(4), G(4), C(5)
);

add5 : full_adder port map(
	A(5), B(5), C(5), G(5), C(6)
);

add6 : full_adder port map(
	A(6), B(6), C(6), G(6), C(7)
);

add7 : full_adder port map(
	A(7), B(7), C(7), G(7), C(8)
);

add8 : full_adder port map(
	A(8), B(8), C(8), G(8), C(9)
);

add9 : full_adder port map(
	A(9), B(9), C(9), G(9), C(10)
);

add10 : full_adder port map(
	A(10), B(10), C(10), G(10), C(11)
);

add11 : full_adder port map(
	A(11), B(11), C(11), G(11), C(12)
);

add12 : full_adder port map(
	A(12), B(12), C(12), G(12), C(13)
);

add13 : full_adder port map(
	A(13), B(13), C(13), G(13), C(14)
);

add14 : full_adder port map(
	A(14), B(14), C(14), G(14), C(15)
);

add15 : full_adder port map(
	A(15), B(15), C(15), G(15), Cout
);

end Behavioral;

