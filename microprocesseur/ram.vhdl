----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:27 01/21/2020 
-- Design Name: 
-- Module Name:    ram - arch_ram 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram is
    Port ( clk : in  STD_LOGIC;
           memrq : in  STD_LOGIC;
           rnw : in  STD_LOGIC;
           addr_bus : in  STD_LOGIC_VECTOR (11 downto 0);
           data_bus : inout  STD_LOGIC_VECTOR (15 downto 0));
end ram;

architecture arch_ram of ram is

type memory_type is
	array (integer range 0 to 15) of STD_LOGIC_VECTOR (15 downto 0);
	
	signal memory: memory_type:=
	(
	"0000000000000100",
	"0010000000000100",
	"0001000000000101",
	"0111000000000000",
	"0000000000000111",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000", 
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000" );

begin
	data_bus <= memory(to_integer(unsigned(addr_bus))) when (memrq = '1' and rnw ='1') else (others => 'Z');
	
	process(clk)
	begin
		if rising_edge(clk) then
			if (memrq = '1') and (rnw = '0') then 
				memory(to_integer(unsigned(addr_bus))) <= data_bus;
			end if;
		end if;	
	end process;

end arch_ram;

