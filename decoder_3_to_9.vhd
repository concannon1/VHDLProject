--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:24:23 02/19/2016
-- Design Name:   
-- Module Name:   U:/CS2022/Project1/decoder_3_to_9.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder_3_to_8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY decoder_3_to_8test IS
END decoder_3_to_8test;
 
ARCHITECTURE behavior OF decoder_3_to_8test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_3_to_8
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic;
         Q4 : OUT  std_logic;
         Q5 : OUT  std_logic;
         Q6 : OUT  std_logic;
         Q7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;
   signal Q4 : std_logic;
   signal Q5 : std_logic;
   signal Q6 : std_logic;
   signal Q7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant time_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_3_to_8 PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3,
          Q4 => Q4,
          Q5 => Q5,
          Q6 => Q6,
          Q7 => Q7
        );
 

  -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
			A0 <= '0';
			A1 <= '0';
			A2 <= '0';
			
		wait for 10 ns;	
			A0 <= '1';
			A1 <= '0';
			A2 <= '0';
			
		wait for 10 ns;	
			A0 <= '0';
			A1 <= '1';
			A2 <= '0';
			
			wait for 10 ns;	
			A0 <= '1';
			A1 <= '1';
			A2 <= '0';
			
			wait for 10 ns;	
			A0 <= '0';
			A1 <= '0';
			A2 <= '1';
			wait for 10 ns;	
			A0 <= '1';
			A1 <= '0';
			A2 <= '1';
			wait for 10 ns;	
			A0 <= '0';
			A1 <= '1';
			A2 <= '1';
			wait for 10 ns;	
			A0 <= '1';
			A1 <= '1';
			A2 <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
