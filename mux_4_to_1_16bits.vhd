----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:46 04/07/2016 
-- Design Name: 
-- Module Name:    mux_4_to_1_16bits - Behavioral 
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

entity mux_4_to_1_16bits is
port(
	in0, in1, in2, in3 : in std_logic_vector(15 downto 0);
	s0, s1 : in std_logic;
	z : out std_logic_vector(15 downto 0)
);
end mux_4_to_1_16bits;

architecture Behavioral of mux_4_to_1_16bits is

begin
	z <= in0 when (not a1) and (not a0) else
			in1 when (not a1) and (a0) else
			in2 when (a1) and (not a0) else
			in3 when (a1) and (a0);

end Behavioral;

