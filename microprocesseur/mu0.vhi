
-- VHDL Instantiation Created from source file mu0.vhd -- 15:57:13 01/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mu0
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;    
		data_bus : INOUT std_logic_vector(15 downto 0);
		addr_bus : INOUT std_logic_vector(11 downto 0);      
		mem_rq : OUT std_logic;
		rnw : OUT std_logic
		);
	END COMPONENT;

	Inst_mu0: mu0 PORT MAP(
		reset => ,
		clk => ,
		data_bus => ,
		addr_bus => ,
		mem_rq => ,
		rnw => 
	);


