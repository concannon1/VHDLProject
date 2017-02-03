----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:16 04/06/2016 
-- Design Name: 
-- Module Name:    decoder_4_to_16 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder_4_to_16 is
Port ( a0, a1, a2, a3: in std_logic;
	Q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15 : out std_logic);
end decoder_4_to_16;

architecture Behavioral of decoder_4_to_16 is
begin

--a0 is LSB
	Q0<= (not a3) and (not a2) and (not a1) and (not a0) after 5ns;
	Q1<= (not a3) and (not a2) and (not a1) and (a0) after 5ns;
	Q2<= (not a3) and (not a2) and (a1) and (not a0) after 5ns;
	Q3<= (not a3) and (not a2) and (a1) and (a0) after 5ns;
	Q4<= (not a3) and (a2) and (not a1) and (not a0) after 5ns;
	Q5<= (not a3) and (a2) and (not a1) and (a0) after 5ns;
	Q6<= (not a3) and (a2) and (a1) and (not a0) after 5ns;
	Q7<= (not a3) and (a2) and (a1) and (a0) after 5ns;
	Q8<= (a3) and (not a2) and (not a1) and (not a0) after 5ns;
	Q9<= (a3) and (not a2) and (not a1) and (a0) after 5ns;
	Q10<= (a3) and (not a2) and (a1) and (not a0) after 5ns;
	Q11<= (a3) and (not a2) and (a1) and (a0) after 5ns;
	Q12<= (a3) and (a2) and (not a1) and (not a0) after 5ns;
	Q13<= (a3) and (a2) and (not a1) and (a0) after 5ns;
	Q14<= (a3) and (a2) and (a1) and (not 0) after 5ns;
	Q15<= (a3) and (a2) and (a1) and (a0) after 5ns;
end Behavioral;