----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:43:17 01/21/2020 
-- Design Name: 
-- Module Name:    mux_A - arch_mux_A 
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

entity mux_A is
    Port ( sel : in  STD_LOGIC;
           e_0 : in  STD_LOGIC_VECTOR (11 downto 0);
           e_1 : in  STD_LOGIC_VECTOR (11 downto 0);
           s : out  STD_LOGIC_VECTOR (11 downto 0));
end mux_A;

architecture arch_mux_A of mux_A is
begin
 
 process( sel ) 
 begin
 
         if ( sel = '0') then  s <= e_0;
			 end if;
			 if ( sel ='1') then s <= e_1;
			 end if;
end process;

end arch_mux_A;

