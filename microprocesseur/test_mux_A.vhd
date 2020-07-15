--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:23 01/21/2020
-- Design Name:   
-- Module Name:   C:/Users/hp/Desktop/Projet VHDL/microprocesseur/test_mux_A.vhd
-- Project Name:  microprocesseur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_A
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
 
ENTITY test_mux_A IS
END test_mux_A;
 
ARCHITECTURE behavior OF test_mux_A IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_A
    PORT(
         sel : IN  std_logic;
         e_0 : IN  std_logic_vector(11 downto 0);
         e_1 : IN  std_logic_vector(11 downto 0);
         s : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sel : std_logic := '0';
   signal e_0 : std_logic_vector(11 downto 0) := (others => '0');
   signal e_1 : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal s : std_logic_vector(11 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_A PORT MAP (
          sel => sel,
          e_0 => e_0,
          e_1 => e_1,
          s => s
        );


END;
