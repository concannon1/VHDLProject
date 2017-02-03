--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:25:33 03/16/2016
-- Design Name:   
-- Module Name:   U:/CS2022/Project1/rca_tb.vhd
-- Project Name:  Project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RCA16bit
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
 
ENTITY rca_tb IS
END rca_tb;
 
ARCHITECTURE behavior OF rca_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RCA16bit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         CIn : IN  std_logic;
         G : OUT  std_logic_vector(15 downto 0);
         COut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal CIn : std_logic := '0';

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   signal COut : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RCA16bit PORT MAP (
          A => A,
          B => B,
          CIn => CIn,
          G => G,
          COut => COut
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <="0000000011111111";
		B <="0000000100000000";
		Cin <='1';

		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
