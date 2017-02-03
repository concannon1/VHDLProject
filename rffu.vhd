----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:01 04/06/2016 
-- Design Name: 
-- Module Name:    rffu - Behavioral 
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

entity rffu is
	port(
		CLK, RW, MBselect, MDselect :in std_logic;
		V, C, N, Z : out std_logic;
		TDDR, TASA, TBSB : in std_logic_vector(3 downto 0);
		bus_a_out, bus_b_out : out std_logic_vector(15 downto 0);
		DataIn, ConstantIn : in std_logic_vector(15 downto 0);
		FSCODE : in std_logic_vector(4 downto 0)
	);
end rffu;

architecture Behavioral of rffu is

COMPONENT register_file 
	port(
	RW, src_s0, src_s1,	src_s2,	src_s3, src_s4, src_s5, des_A0, des_A1, des_A2, Clk, TA, TB, TD : in std_logic;
	data : in std_logic_vector(15 downto 0);
	reg0 : out std_logic_vector(15 downto 0);
	reg1 : out std_logic_vector(15 downto 0);
	reg2 : out std_logic_vector(15 downto 0);
	reg3 : out std_logic_vector(15 downto 0);
	reg4 : out std_logic_vector(15 downto 0);
	reg5 : out std_logic_vector(15 downto 0);
	reg6 : out std_logic_vector(15 downto 0);
	reg7 : out std_logic_vector(15 downto 0);
	reg8 : out std_logic_vector(15 downto 0);
	outA : out std_logic_vector(15 downto 0);
	outB : out std_logic_vector(15 downto 0)
	);
END COMPONENT;	

COMPONENT function_unit_16bit
	port(
		FSCODE : in std_logic_vector(4 downto 0);
		A, B : in std_logic_vector(15 downto 0);
		V, C, N, Z : out std_logic;
		output : out std_logic_vector(15 downto 0)
	);

END COMPONENT;

COMPONENT mux_2_to_1_16bits
	port(
		In0, In1 : in std_logic_vector(15 downto 0);
		s0: in std_logic;
		Z : out std_logic_vector(15 downto 0)
	);
END COMPONENT;

signal mux_d_output, fu_output, a_data, b_data, mux_b_output : std_logic_vector(15 downto 0);

begin

mux_d : mux_2_to_1_16bits
port map(
	fu_output, DataIn, MDselect, mux_d_output
);

mux_b : mux_2_to_1_16bits
port map(
	b_data, constantin, MBselect, mux_b_output
);

rf : register_file
port map(
	RW, TASA(1), TASA(2), TASA(3), TBSB(1), TBSB(2), TBSB(3), 
	TDDR(1), TDDR(2), TDDR(3), clk, TASA(0), TBSB(0), TDDR(0), 
	mux_d_output, 
	outA => a_data, 
	outB => b_data
);

fu : function_unit_16bit
port map(
	FSCODE, a_data, mux_b_output, V, C, N, Z, fu_output
);

bus_a_out <= a_data;
bus_b_out <= mux_b_output;

end Behavioral;

