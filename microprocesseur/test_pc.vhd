--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:45 01/21/2020
-- Design Name:   
-- Module Name:   C:/Users/hp/Desktop/Projet VHDL/microprocesseur/test_pc.vhd
-- Project Name:  microprocesseur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pc_reg
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
 
ENTITY test_pc IS
END test_pc;
 
ARCHITECTURE behavior OF test_pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pc_reg
    PORT(
         clk : IN  std_logic;
         raz : IN  std_logic;
         load : IN  std_logic;
         data_in : IN  std_logic_vector(11 downto 0);
         data_out : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal raz : std_logic := '0';
   signal load : std_logic := '0';
   signal data_in : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(11 downto 0);

   -- Clock period definitions 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pc_reg PORT MAP (
          clk => clk,
          raz => raz,
          load => load,
          data_in => data_in,
          data_out => data_out
        );
END;
