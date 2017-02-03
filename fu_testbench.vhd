--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:35:12 03/15/2016
-- Design Name:   
-- Module Name:   U:/CS2022/Project1/fu_testbench.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: function_unit_16bit
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
 
ENTITY fu_testbench IS
END fu_testbench;
 
ARCHITECTURE behavior OF fu_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT function_unit_16bit
    PORT(
         FSCODE : IN  std_logic_vector(4 downto 0);
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal FSCODE : std_logic_vector(4 downto 0) := (others => '0');
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   signal output : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: function_unit_16bit PORT MAP (
          FSCODE => FSCODE,
          A => A,
          B => B,
          V => V,
          C => C,
          N => N,
          Z => Z,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      A <= "1111111100001111";
		B <= "1111000011110000";
		FSCODE <= "00000";
		wait for 50 ns;
		FSCODE <= "00001";
		wait for 50 ns;
		FSCODE <= "00010";
		wait for 50 ns;
		FSCODE <= "00011";
		wait for 50 ns;
		FSCODE <= "00100";
		wait for 50 ns;
		FSCODE <= "00101";
		wait for 50 ns;
		FSCODE <= "00110";
		wait for 50 ns;
		FSCODE <= "00111";
		wait for 50 ns;
		FSCODE <= "01000";
		wait for 50 ns;
		FSCODE <= "01010";
		wait for 50 ns;
		FSCODE <= "01100";
		wait for 50 ns;
		FSCODE <= "01110";
		wait for 50 ns;
		FSCODE <= "10000";
		wait for 50 ns;
		FSCODE <= "10100";
		wait for 50 ns;
		FSCODE <= "11000";
      -- insert stimulus here 

      wait;
   end process;

END;
