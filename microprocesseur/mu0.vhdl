----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:57:38 01/21/2020 
-- Design Name: 
-- Module Name:    mu0 - arch_mu0 
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
use IEEE.numeric_std.all;
use work.up_pack.all; 
use work.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mu0 is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_bus : inout  STD_LOGIC_VECTOR (15 downto 0);
           addr_bus : inout  STD_LOGIC_VECTOR (11 downto 0);
           mem_rq : out  STD_LOGIC;
           rnw : out  STD_LOGIC);
end mu0;

architecture arch_mu0 of mu0 is
	 signal opcodesig   : OPCODE;                                  
    signal razsig     : std_logic;                                
    signal ir_outsig   : std_logic_vector(11 downto 0);           
    signal pc_outsig   : std_logic_vector(11 downto 0);            
    signal alu_outsig  : std_logic_vector(15 downto 0);            
    signal acc_outsig  : std_logic_vector(15 downto 0);              
    signal muxb_outsig : std_logic_vector(15 downto 0);           
    signal concatsig   : std_logic_vector(15 downto 0);    
    signal alufssig    : ALU_FCTS;     
    signal ir_ldsig    : std_logic;   
    signal pc_ldsig   : std_logic;    
    signal acc_ldsig   : std_logic;    
    signal acc_oesig   : std_logic;    
    signal selAsig     : std_logic;    
    signal selBsig     : std_logic;    
    signal accZsig     : std_logic;    
    signal acc15sig    : std_logic;    
     component alu
     port(A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
			  alufs: in ALU_FCTS;
           S : out  STD_LOGIC_VECTOR (15 downto 0));
	  end component;
	     component accumulator
     port(clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
           acc15 : out  STD_LOGIC;
           accz : out  STD_LOGIC);
	  end component;
	     component pc_reg 
     port( clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (11 downto 0);
           data_out : out  STD_LOGIC_VECTOR (11 downto 0));
	  end component;
	     component 	TRISTATE
     port(oe : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : inout  STD_LOGIC_VECTOR (15 downto 0));
	  end component;
	     component 	IR_REG
     port(clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           opcode : out OPCODE;
			  data_out : out  STD_LOGIC_VECTOR (11 downto 0));
	  end component;
	     component mux_A
     port(sel : in  STD_LOGIC;
           e_0 : in  STD_LOGIC_VECTOR (11 downto 0);
           e_1 : in  STD_LOGIC_VECTOR (11 downto 0);
           s : out  STD_LOGIC_VECTOR (11 downto 0));
	  end component;
	     component sequenceur
		  port(clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           acc15 : in  STD_LOGIC;
           accz : in  STD_LOGIC;
           opcode : in  OPCODE;
           selA : out  STD_LOGIC;
           selB : out  STD_LOGIC;
           raz : out  STD_LOGIC;
           acc_ld : out  STD_LOGIC;
           pc_ld : out  STD_LOGIC;
           ir_ld : out  STD_LOGIC;
           acc_oe : out  STD_LOGIC;
           alufs : out  ALU_FCTS;
           memrq : out  STD_LOGIC;
           rnw : out  STD_LOGIC);
	  end component;
	     component MUX_B
     port(sel : in  STD_LOGIC;
           e_0 : in  STD_LOGIC_VECTOR (15 downto 0);
           e_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           s : out  STD_LOGIC_VECTOR (15 downto 0));
	  end component;
	  
begin
 concatsig<="0000"& addr_bus ;
U0: sequenceur
    port map ( clk,reset,acc15sig,acczsig,opcodesig,selAsig,selBsig,razsig,acc_ldsig,pc_ldsig,ir_ldsig,
	 acc_oesig,alufssig,mem_rq,rnw);
U1: alu 
    port map ( acc_outsig,muxb_outsig,alufssig,alu_outsig);
U2: accumulator
    port map (clk,razsig,acc_ldsig,alu_outsig,acc_outsig,acc15sig,acczsig);
U3: TRISTATE
    port map (acc_oesig,acc_outsig,data_bus);
U4: pc_reg
    port map (clk,razsig,pc_ldsig,alu_outsig(11 downto 0),pc_outsig);
U5: IR_REG
    port map (clk,razsig,ir_ldsig,data_bus,opcodesig,ir_outsig);
U6: MUX_B
    port map(selBsig,concatsig,data_bus,muxb_outsig);
U7: mux_A
    port map ( selAsig,pc_outsig,ir_outsig,addr_bus);
	 

end arch_mu0;

