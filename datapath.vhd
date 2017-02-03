----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:48:23 04/08/2016 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
port(
	DataIn, PC : in std_logic_vector(15 downto 0);
	SB : in std_logic_vector(2 downto 0);
	MB, MD, MM, RW, CLK : in std_logic;
	TDDR, TASA, TBSB : in std_logic_vector(3 downto 0);
	FSCODE : in std_logic_vector(4 downto 0);
	
	VCNZ : out std_logic_vector(3 downto 0);
	DataOut, AddressOut : out std_logic_vector(15 downto 0)	
);
end datapath;

architecture Behavioral of datapath is

COMPONENT zerofill
port(
	input : in std_logic_vector(2 downto 0);
	output : out std_logic_vector(15 downto 0)
);
end component;

COMPONENT rffu
port(
	CLK, RW, MBselect, MDselect :in std_logic;
	V, C, N, Z : out std_logic;
	TDDR, TASA, TBSB : in std_logic_vector(3 downto 0);
	bus_a_out, bus_b_out : out std_logic_vector(15 downto 0);
	DataIn, ConstantIn : in std_logic_vector(15 downto 0);
	FSCODE : in std_logic_vector(4 downto 0)
);
END COMPONENT;

COMPONENT mux_2_to_1_16bits
port(
	In0, In1 : in std_logic_vector(15 downto 0);
		s0: in std_logic;
		Z : out std_logic_vector(15 downto 0)
);
END COMPONENT;

signal zerofill_output, rffu_busA_output, rffu_busB_output : std_logic_vector(15 downto 0);

begin

registerfilefunctionunit : rffu
port map(
	clk, rw, mb, md, 
	VCNZ(0), VCNZ(1), VCNZ(2), VCNZ(3), TDDR, TASA, TBSB,
	rffu_busA_output, rffu_busB_output, DataIn, zerofill_output, FSCODE
);

zf : zerofill
port map(
	SB, zerofill_output
);

mux_m : mux_2_to_1_16bits
port map(
	rffu_busA_output, PC, MM, AddressOut
);

dataOut <= rffu_busB_output;
end Behavioral;

