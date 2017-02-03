----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:03 03/14/2016 
-- Design Name: 
-- Module Name:    arithmetic_circuit - Behavioral 
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

--based on page 4 of sixth lecture
entity arithmetic_circuit is

port(Cin, S0, S1 : in std_logic;
	A, B : in std_logic_vector(15 downto 0);
	G : out std_logic_vector(15 downto 0);
	Cout: out std_logic);
	

end arithmetic_circuit;

architecture Behavioral of arithmetic_circuit is

COMPONENT RCA16bit
port(
	A, B : in std_logic_vector(15 downto 0);
	Cin : in std_logic;
	G : out std_logic_vector(15 downto 0);
	Cout : out std_logic
);

END COMPONENT;

COMPONENT B_input_logic
port(
	B : in std_logic_vector(15 downto 0);
	S0, S1 : in std_logic;
	output : out std_logic_vector(15 downto 0)
);
END COMPONENT;

signal Bout : std_logic_vector(15 downto 0);

begin

Binput : B_input_logic port map(
	B, S0, S1, Bout
);

RCA : RCA16bit port map(
	A, Bout, Cin, G, Cout
);


end Behavioral;

