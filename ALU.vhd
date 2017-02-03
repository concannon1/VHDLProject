----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:58 03/15/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is

PORT(
	Cin, s0, s1, s2 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	Cout, oVerflow, N, Z : out std_logic;
	G : out std_logic_vector(15 downto 0)
);

end ALU;

architecture Behavioral of ALU is

COMPONENT arithmetic_circuit
port(Cin, S0, S1 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	G : out std_logic_vector(15 downto 0);
	Cout : out std_logic
);
END COMPONENT;

COMPONENT logic_circuit
port(
	S0, S1 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	G : out std_logic_vector(15 downto 0)
);
END COMPONENT;

COMPONENT mux_2_to_1_16bits
port(
	S0 : in std_logic;
	in0, in1 : in std_logic_vector(15 downto 0);
	Z : out std_logic_vector(15 downto 0)
);
END COMPONENT;

signal arith_out, logic_out: std_logic_vector(15 downto 0);

begin
arith : arithmetic_circuit
port map(
	Cin, s0, s1, a, b, arith_out, cout
);

logic : logic_circuit
port map(
	s0, s1, a, b, logic_out
);

mux : mux_2_to_1_16bits
port map(
	s2, arith_out, logic_out, g
);


overflow <= (a(15) and b(15) and not arith_out(15)) or (not a(15) and not b(15) and arith_out(15)) after 5ns;
N <= arith_out(15) after 5ns;
Z <= '1' after 5ns when arith_out = "0000000000000000" else '0' after 5ns;
end Behavioral;

