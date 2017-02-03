----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:46 03/08/2016 
-- Design Name: 
-- Module Name:    bit_shifter_16bits - Behavioral 
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

entity bit_shifter_16bits is
port( 
	bv : in std_logic_vector(15 downto 0);

	s0 : in std_logic_vector(1 downto 0);
	
	q : out std_logic_vector(15 downto 0)
);
	
end bit_shifter_16bits;

architecture Behavioral of bit_shifter_16bits is

COMPONENT mux_4_to_1
	PORT(
		in0, in1, in2 : in std_logic;
		s0: in std_logic_vector(1 downto 0);
		output : out std_logic);
END COMPONENT;

begin
mux0: mux_4_to_1 PORT MAP(
	in0 => bv(0), 
	in1 => bv(1),
	in2 => '0', --mux0 is the rightmost multiplexer so a 0 is fed into it when shift right
	s0 => s0, 
	output => q(0)
	);

mux1: mux_4_to_1 PORT MAP(
	in0 => bv(1), 
	in1 => bv(2),
	in2 => bv(0),
	s0 => s0,
	output => q(1)
	);
	
mux2: mux_4_to_1 PORT MAP(
	in0 => bv(2), 
	in1 => bv(3),
	in2 => bv(1),
	s0 => s0, 
	output => q(2)
	);
	
mux3: mux_4_to_1 PORT MAP(
	in0 => bv(3), 
	in1 => bv(4),
	in2 => bv(2),
	s0 => s0, 
	output => q(3)
	);
	
mux4: mux_4_to_1 PORT MAP(
	in0 => bv(4), 
	in1 => bv(5),
	in2 => bv(3),
	s0 => s0, 
	output => q(4)
	);
	
mux5: mux_4_to_1 PORT MAP(
	in0 => bv(5), 
	in1 => bv(6),
	in2 => bv(4), 
	s0 => s0,  
	output => q(5)
	);
	
mux6: mux_4_to_1 PORT MAP(
	in0 => bv(6), 
	in1 => bv(7),
	in2 => bv(5), 
	s0 => s0, 
	output => q(6)
	);
	
mux7: mux_4_to_1 PORT MAP(
	in0 => bv(7), 
	in1 => bv(8),
	in2 => bv(6), 
	s0 => s0, 
	output => q(7)
	);
	
mux8: mux_4_to_1 PORT MAP(
	in0 => bv(8), 
	in1 => bv(9),
	in2 => bv(7), 
	s0 => s0, 
	output => q(8)
	);
	
mux9: mux_4_to_1 PORT MAP(
	in0 => bv(9), 
	in1 => bv(10),
	in2 => bv(8), 
	s0 => s0, 
	output => q(9)
	);
	
mux10: mux_4_to_1 PORT MAP(
	in0 => bv(10), 
	in1 => bv(11),
	in2 => bv(9), 
	s0 => s0, 
	output => q(10)
	);
	
mux11: mux_4_to_1 PORT MAP(
	in0 => bv(11), 
	in1 => bv(12),
	in2 => bv(10), 
	s0 => s0, 
	output => q(11)
	);
	
mux12: mux_4_to_1 PORT MAP(
	in0 => bv(12), 
	in1 => bv(13),
	in2 => bv(11), 
	s0 => s0, 
	output => q(12)
	);
	
mux13: mux_4_to_1 PORT MAP(
	in0 => bv(13), 
	in1 => bv(14),
	in2 => bv(12),
	s0 => s0, 
	output => q(13)
	);
	
mux14: mux_4_to_1 PORT MAP(
	in0 => bv(14), 
	in1 => bv(15),
	in2 => bv(13), 
	s0 => s0, 
	output => q(14)
	);
	
mux15: mux_4_to_1 PORT MAP(
	in0 => bv(15), 
	in1 => '0',
	in2 => bv(14),
	s0 => s0, 
	output => q(15)
	);
	
end Behavioral;

