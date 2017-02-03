--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:53:20 03/16/2016
-- Design Name:   
-- Module Name:   U:/CS2022/Project1/arithmetic_tb.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmetic_circuit
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
 
ENTITY arithmetic_tb IS
END arithmetic_tb;
 
ARCHITECTURE behavior OF arithmetic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_circuit
    PORT(
         Cin : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G : OUT  std_logic_vector(15 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Cin : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   signal Cout : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_circuit PORT MAP (
          Cin => Cin,
          S0 => S0,
          S1 => S1,
          A => A,
          B => B,
          G => G,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		Cin <= '0';
      S0 <= '0';
		S1 <= '1';
		A <= "0000000011111111";
		B <= "0000000100000000";
		
		wait for 100 ns;	
      -- insert stimulus here 

      wait;
   end process;

END;
