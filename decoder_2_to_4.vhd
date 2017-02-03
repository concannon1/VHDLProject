----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:09 04/06/2016 
-- Design Name: 
-- Module Name:    decoder_2_to_4 - Behavioral 
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

entity decoder_2_to_4 is
port(a0, a1 : in std_logic;
	q0, q1, q2, q3 : out std_logic
	);
end decoder_2_to_4;


--a0 is LSB
architecture Behavioral of decoder_2_to_4 is
begin
q0 <= (not a1) and (not a0);
q1 <= (not a1) and (a0);
q2 <= (a1) and (not a0);
q3 <= (a1) and (a0);

end Behavioral;

