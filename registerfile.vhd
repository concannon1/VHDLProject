library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity register_file is
Port ( 
	RW, src_s0, src_s1,	src_s2,	src_s3, src_s4, src_s5, des_A0, des_A1, des_A2, Clk, TA, TB, TD : in std_logic;
	data : in std_logic_vector(15 downto 0);
	reg0 : out std_logic_vector(15 downto 0);
	reg1 : out std_logic_vector(15 downto 0);
	reg2 : out std_logic_vector(15 downto 0);
	reg3 : out std_logic_vector(15 downto 0);
	reg4 : out std_logic_vector(15 downto 0);
	reg5 : out std_logic_vector(15 downto 0);
	reg6 : out std_logic_vector(15 downto 0);
	reg7 : out std_logic_vector(15 downto 0);
	reg8 : out std_logic_vector(15 downto 0);
	outA : out std_logic_vector(15 downto 0);
	outB   : out std_logic_vector(15 downto 0)
);
end register_file;


architecture Behavioral of register_file is
-- components

COMPONENT reg16
PORT(
D : IN std_logic_vector(15 downto 0);
load : IN std_logic;
Clk : IN std_logic;
Q : OUT std_logic_vector(15 downto 0)
);
END COMPONENT;


-- 3 to 8 Decoder
COMPONENT decoder_3_to_8
PORT(
	A0 : in std_logic;
	A1 : in std_logic;
	A2 : in std_logic;
	Q0 : out std_logic;
	Q1 : out std_logic;
	Q2 : out std_logic;
	Q3 : out std_logic;
	Q4 : out std_logic;
	Q5 : out std_logic;
	Q6 : out std_logic;
	Q7 : out std_logic
);
END COMPONENT;

COMPONENT mux_2_to_1_16bits
PORT(
	In0 : in std_logic_vector(15 downto 0);
	In1 : in std_logic_vector(15 downto 0);
	s : in std_logic;
	Z : out std_logic_vector(15 downto 0)
);
END COMPONENT;


COMPONENT mux_8_to_1_16bits
PORT(
In0, In1, in2, in3, in4, in5, in6, in7 : in std_logic_vector(15 downto 0);
			s0, s1, s2: in std_logic;
			Z : out std_logic_vector(15 downto 0)
);
END COMPONENT;


component AND3
port(a, b, c: in std_logic;
	  z: out std_logic);
end component; 

	  
-- signals
signal load_reg0, load_reg1, load_reg2, load_reg3, load_reg4,
load_reg5, load_reg6, load_reg7, load_reg8 : std_logic;

signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q, reg8_q,
data_src_mux_out, src_reg, src_reg1 : std_logic_vector(15 downto 0);

signal lastMux1,lastMux2: std_logic_vector(15 downto 0);

signal rw_reg0, rw_reg1, rw_reg2, rw_reg3, rw_reg4, rw_reg5, rw_reg6,
rw_reg7, rw_reg8: std_logic;

begin
-- port maps
-- register 0
reg00: reg16 PORT MAP(
	D => data,
	load => rw_reg0,
	Clk => Clk,
	Q => reg0_q
);
-- register 1
reg01: reg16 PORT MAP(
	D => data,
	load => rw_reg1,
	Clk => Clk,
	Q => reg1_q
);

-- register 2
reg02: reg16 PORT MAP(
	D => data,
	load => rw_reg2,
	Clk => Clk,
	Q => reg2_q
);
-- register 3
reg03: reg16 PORT MAP(
	D => data,
	load => rw_reg3,
	Clk => Clk,
	Q => reg3_q
);

-- register 4
reg04: reg16 PORT MAP(
	D => data,
	load => rw_reg4,
	Clk => Clk,
	Q => reg4_q
);

-- register 5
reg05: reg16 PORT MAP(
	D => data,
	load => rw_reg5,
	Clk => Clk,
	Q => reg5_q
);

-- register 6
reg06: reg16 PORT MAP(
D => data,
load => rw_reg6,
Clk => Clk,
Q => reg6_q
);

-- register 7
reg07: reg16 PORT MAP(
D => data,
load => rw_reg7,
Clk => Clk,
Q => reg7_q
);

-- Temp Register(8)
reg08: reg16 PORT MAP(
D => data,
load => TD,
Clk => Clk,
Q => reg8_q
);

-- Destination register decoder
des_decoder_3to8: decoder_3_to_8 PORT MAP(
	A0 => des_A0,
	A1 => des_A1,
	A2 => des_A2,
	Q0 => load_reg0,
	Q1 => load_reg1,
	Q2 => load_reg2,
	Q3 => load_reg3,
	Q4 => load_reg4,
	Q5 => load_reg5,
	Q6 => load_reg6,
	Q7 => load_reg7
);

-- 2 to 1 Data source multiplexer
data_src_mux1: mux_2_to_1_16bits PORT MAP(
	In0 => src_reg,
	In1 => reg8_q,
	s => TA,
	Z => lastMux1
);

-- 2 to 1 Data source multiplexer
data_src_mux2:  mux_2_to_1_16bits PORT MAP(
	In0 => src_reg1,
	In1 => reg8_q,
	s => TB,
	Z => lastMux2
);


Inst_mux0: mux_8_to_1_16bits PORT MAP(
	In0 => reg0_q,
	In1 => reg1_q,
	In2 => reg2_q,
	In3 => reg3_q,
	In4 => reg4_q,
	In5 => reg5_q,
	In6 => reg6_q,
	In7 => reg7_q,
	S0 => src_s0,
	S1 => src_s1,
	S2 => src_s2,
	Z => src_reg
);

Inst1_mux1: mux_8_to_1_16bits PORT MAP(
	In0 => reg0_q,
	In1 => reg1_q,
	In2 => reg2_q,
	In3 => reg3_q,
	In4 => reg4_q,
	In5 => reg5_q,
	In6 => reg6_q,
	In7 => reg7_q,
	S0 => src_s3,
	S1 => src_s4,
	S2 => src_s5,
	Z => src_reg1
);

rw_reg0 <= load_reg0 and RW and (not TD);
rw_reg1 <= load_reg1 and RW and (not TD);
rw_reg2 <= load_reg2 and RW and (not TD);
rw_reg3 <= load_reg3 and RW and (not TD);
rw_reg4 <= load_reg4 and RW and (not TD);
rw_reg5 <= load_reg5 and RW and (not TD);
rw_reg6 <= load_reg6 and RW and (not TD);
rw_reg7 <= load_reg7 and RW and (not TD);
rw_reg8 <= TD AND RW;

reg0 <= reg0_q;
reg1 <= reg1_q;
reg2 <= reg2_q;
reg3 <= reg3_q;
reg4 <= reg4_q;
reg5 <= reg5_q;
reg6 <= reg6_q;
reg7 <= reg7_q;
reg8 <= reg8_q;

outA <= lastMux1;
outB <= lastMux2;
end Behavioral;