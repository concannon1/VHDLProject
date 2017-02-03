----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:56 03/08/2016 
-- Design Name: 
-- Module Name:    function_unit_16bit - Behavioral 
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

entity function_unit_16bit is
port ( FSCODE : in std_logic_vector(4 downto 0);
			A, B : in std_logic_vector(15 downto 0);
			V, C, N, Z : out std_logic;
			output : out std_logic_vector(15 downto 0)
			); 
	
end function_unit_16bit;

architecture Behavioral of function_unit_16bit is

COMPONENT ALU
port(
	Cin, s0, s1, s2 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	Cout, overflow, N, Z : out std_logic;
	G : out std_logic_vector(15 downto 0)
);
END COMPONENT;

COMPONENT bit_shifter_16bits
port(
	bv : in std_logic_vector(15 downto 0);
	s0 : in std_logic_vector(1 downto 0);
	q : out std_logic_vector(15 downto 0)

);
END COMPONENT;

COMPONENT mux_2_to_1_16bits
port(
	in0, in1 : in std_logic_vector(15 downto 0);
	s0 : in std_logic;
	z : out std_logic_vector(15 downto 0)
);

END COMPONENT;
signal shift_output, alu_output : std_logic_vector(15 downto 0);

begin

arithmetic_logic_unit : ALU
port map(
	fscode(0), fscode(1), fscode(2), fscode(3), A, B, C, V, N, Z, alu_output

);

bitshifter : bit_shifter_16bits
port map(
	B, fscode(3 downto 2), shift_output
);

mfselect : mux_2_to_1_16bits
port map(
	alu_output, shift_output, fscode(4), output
);

end Behavioral;

