
-- VHDL Instantiation Created from source file sequenceur.vhd -- 19:03:29 01/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sequenceur
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		accz : IN std_logic;
		acc15 : IN std_logic;
		opcode : IN std_logic;          
		raz : OUT std_logic;
		selA : OUT std_logic;
		selB : OUT std_logic;
		acc_ld : OUT std_logic;
		pc_ld : OUT std_logic;
		ir_ld : OUT std_logic;
		acc_oe : OUT std_logic;
		alufs : OUT std_logic;
		memrq : OUT std_logic;
		rnw : OUT std_logic
		);
	END COMPONENT;

	Inst_sequenceur: sequenceur PORT MAP(
		clk => ,
		reset => ,
		accz => ,
		acc15 => ,
		opcode => ,
		raz => ,
		selA => ,
		selB => ,
		acc_ld => ,
		pc_ld => ,
		ir_ld => ,
		acc_oe => ,
		alufs => ,
		memrq => ,
		rnw => 
	);


