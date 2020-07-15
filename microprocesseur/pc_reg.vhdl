----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:42 01/21/2020 
-- Design Name: 
-- Module Name:    pc_reg - arch_pc_reg 
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


entity pc_reg is
    Port ( clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (11 downto 0);
           data_out : out  STD_LOGIC_VECTOR (11 downto 0));
end pc_reg;

architecture arch_pc_reg of pc_reg is

begin
	process(clk)
	begin
		if rising_edge(clk) then
			if raz='1' then data_out <= (others => '0');
			elsif load='1' then data_out <= data_in;
			end if;
		end if;
	end process;

end arch_pc_reg;

