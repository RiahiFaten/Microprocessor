----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:20 01/21/2020 
-- Design Name: 
-- Module Name:    accumulator - arch_acc 
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

entity accumulator is
    Port ( clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : inout  STD_LOGIC_VECTOR (15 downto 0);
           acc15 : out  STD_LOGIC;
           accz : out  STD_LOGIC);
end accumulator;

architecture arch_acc of accumulator is

begin
process( clk)
   begin
	
	if rising_edge(clk) then
	   if (raz='1') then 
		    data_out<=(others=>'0');
			  acc15 <= '0';
			  accz <= '1' ;	
		elsif (load='1') then data_out<=data_in ;
		end if ;
	end if ;
   acc15 <= data_out(15);
  if (data_out="0000000000000000") then  
       accz <= '1' ;	
  end if; 
  
  end process ;

end arch_acc;

