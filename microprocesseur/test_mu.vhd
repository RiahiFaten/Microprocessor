--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:30:49 01/21/2020
-- Design Name:   
-- Module Name:   C:/Users/hp/Desktop/Projet VHDL/microprocesseur/test_mu.vhd
-- Project Name:  microprocesseur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mu0
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
 
ENTITY test_mu IS
END test_mu;
 
ARCHITECTURE behavior OF test_mu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mu0
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         data_bus : INOUT  std_logic_vector(15 downto 0);
         addr_bus : INOUT  std_logic_vector(11 downto 0);
         mem_rq : OUT  std_logic;
         rnw : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(15 downto 0);
   signal addr_bus : std_logic_vector(11 downto 0);

 	--Outputs
   signal mem_rq : std_logic;
   signal rnw : std_logic;

   -- Clock period definitions 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mu0 PORT MAP (
          reset => reset,
          clk => clk,
          data_bus => data_bus,
          addr_bus => addr_bus,
          mem_rq => mem_rq,
          rnw => rnw
        );

END;
