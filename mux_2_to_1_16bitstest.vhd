--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:05:37 02/19/2016
-- Design Name:   
-- Module Name:   U:/CS2022/Project1/mux_2_to_1_16bitstest.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_2_to_1_16bits
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
 
ENTITY mux_2_to_1_16bitstest IS
END mux_2_to_1_16bitstest;
 
ARCHITECTURE behavior OF mux_2_to_1_16bitstest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2_to_1_16bits
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         s0 : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');
   signal s0 : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant time_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2_to_1_16bits PORT MAP (
          In0 => In0,
          In1 => In1,
          s0 => s0,
          Z => Z
        );
		  
		  
	 -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '0';
		wait for 10 ns;
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '1';
		wait for 10 ns;	
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '0';
		wait for 10 ns;
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '1';
			wait for 10 ns;	
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '0';
		wait for 10 ns;
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '1';
		wait for 10 ns;	
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '0';
		wait for 10 ns;
			in0 <= "0000000000000000";
			in1 <= "1111111111111111";
			s0 <= '1';

   end process;

END;
