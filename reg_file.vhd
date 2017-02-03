library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity registerfile is
Port ( src_s0,	src_s1,	src_s2,	des_A0,	des_A1, des_A3, Clk, data_src : in std_logic;
	data : in std_logic_vector(15 downto 0);

	reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg9  : out std_logic_vector(15 downto 0));
	
end registerfile;

architecture Behavioural of registerfile is

COMPONENT reg16
	PORT(
		D : IN std_logic_vector(15 downto 0);
		load, Clk : IN std_logic;
		Q : OUT std_logic(15 downto 0)
		);
END COMPONENT;

COMPONENT decoder_4_to_16
	PORT(
	a0, a1, a2, a3: in std_logic;
	Q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15 : out std_logic);
END COMPONENT;

COMPONENT mux_2_to_1_16bits
	PORT (
		IN0, IN1 : IN std_logic_vector(15 downto 0);
		s : in std_logic;
		Z : out std_logic_vector(15 downto 0)
		);
END COMPONENT;

COMPONENT mux_8_to_1_16bits
	PORT (
		in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic_vector(15 downto 0);
		s0, s1, s2 : in std_logic;
		z : out std_logic_vector(15 downto 0)
		);
END COMPONENT;


signal load_reg0, load_reg1, load_reg2, load_reg3,
			load_reg4, load_reg5, load_reg6, load_reg7: std_logic;
			
signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q, 
			data_src_mux_out, src_reg : std_logic_vector(15 downto 0);


--port maps
begin

--registers
register0: reg16 PORT MAP(
	data_src_mux_out, load_reg0, Clk, reg_0q
	);

register1: reg16 PORT MAP(
	data_src_mux_out, load_reg1, Clk, reg_1q
	);
		
register2: reg16 PORT MAP(
	data_src_mux_out, load_reg2, Clk, reg_2q
	);

register3: reg16 PORT MAP(
	data_src_mux_out, load_reg3, Clk, reg_3q
	);
	
register4: reg16 PORT MAP(
	data_src_mux_out, load_reg4, Clk, reg_4q
	);
	
register5: reg16 PORT MAP(
	data_src_mux_out, load_reg5, Clk, reg_5q
	);
	
register6: reg16 PORT MAP(
	data_src_mux_out, load_reg6, Clk, reg_6q
	);
	
register7: reg16 PORT MAP(
	data_src_mux_out, load_reg7, Clk, reg_7q
	);
	
-- Destination register decoder
des_decoder : decoder_3_to_8 PORT MAP(
	des_A0, des_A1, des_A2,
	load_reg0, load_reg1, load_reg2, load_reg3, load_reg4, load_reg5, load_reg6, load_reg7
);

data_src_mux : mux_2_to_1_16bits PORT MAP(
	data, src_reg, data_src, data_src_mux_out
	);
	
inst_mux8_16bit : mux_8_to_1_16bits PORT MAP(
	reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q,
	src_s0, src_s1, src_s2, src_reg
	);
	
reg0 <= reg0_q;
reg1 <= reg1_q;
reg2 <= reg2_q;
reg3 <= reg3_q;
reg4 <= reg4_q;
reg5 <= reg5_q;
reg6 <= reg6_q;
reg7 <= reg7_q;
end Behavioural

