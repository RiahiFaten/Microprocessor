--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:30:54 01/22/2020
-- Design Name:   
-- Module Name:   C:/Users/hp/Desktop/Projet VHDL/microprocesseur/test_mu0_mem.vhd
-- Project Name:  microprocesseur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mu0_mem
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.up_pack.all; 
use work.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_mu0_mem IS
END test_mu0_mem;
 
ARCHITECTURE behavior OF test_mu0_mem IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mu0_mem
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_bus : INOUT  std_logic_vector(15 downto 0);
         addr_bus : INOUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal data_bus : std_logic_vector(15 downto 0);
   signal addr_bus : std_logic_vector(11 downto 0);

   -- Clock period definitions
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mu0_mem PORT MAP (
          clk => clk,
          reset => reset,
          data_bus => data_bus,
          addr_bus => addr_bus
        );

  

END;
