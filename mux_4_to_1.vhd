----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:32 03/09/2016 
-- Design Name: 
-- Module Name:    mux_4_to_1 - Behavioral 
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

use IEEE.STD_LOGIC_ARITH.ALL;
use IeEE.STD_LOGIC_UNSIGNED.ALL;

--not going to define last input
entity mux_4_to_1 is
	port ( In0, In1, in2 : in std_logic;
			s0 : in std_logic_vector(1 downto 0);
			output : out std_logic);
end mux_4_to_1;
architecture Behavioral of mux_4_to_1 is
begin
	output <= in0 after 1ns when s0 = "00" else
			in1 after 1ns when s0 = "01" else
			in2 after 1ns when s0 = "10" else
			in0;
	
end Behavioral;

