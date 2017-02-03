----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:12 04/07/2016 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is

port(
	offset, pl, pi : in std_logic_vector(15 downto 0);
	pcout : out std_logic_vector(15 downto 0)

);

end pc;

architecture Behavioral of pc is

COMPONENT reg16
port(
	D	: in std_logic_vector(15 downto 0);
	load, clk: in std_logic;
	q : out std_logic_vector(15 downto 0)
);
end component;

COMPONENT mux_2_to_1_16bits
port ( In0, In1 : in std_logic_vector(15 downto 0);
			s0: in std_logic;
			Z : out std_logic_vector(15 downto 0)
);
end component;

COMPONENT rca16bit
PORT(
	A, B : in std_logic_vector(15 downto 0);	
	CIn : in std_logic;	
	G : out std_logic_vector(15 downto 0);	
	COut : out std_logic);
end component;

component mux_4_to_1_16bits
port(
	in0, in1, in2, in3 : in std_logic_vector(15 downto 0);
	s0, s1 : in std_logic;
	z : out std_logic_vector(15 downto 0)
);
end component;

--mux1 is for offset and "0000000000000001"
--mux2 is for adder and "0000000000000000"
signal adder_out, mux_out1, mux_out2, reg_out : std_logic;

begin


end Behavioral;

