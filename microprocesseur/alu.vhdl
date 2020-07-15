----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:41 01/21/2020 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use IEEE.STD_logic_SIGNED.all;
use IEEE.NUMERIC_STD.all;
use work.up_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity alu is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           alufs : in  ALU_FCTS;
           S : out  STD_LOGIC_VECTOR (15 downto 0));
end alu;

architecture arch_alu of alu is

begin
	process(alufs,a,b)
		begin
			case alufs is
						when ALU_B => S <= B;
						when ALU_ADD => S <= A+B;
						when ALU_SUB => S <= A-B;
						when ALU_B_INC => S <= B+1;
						when ALU_AND => S <= A and B;
						when ALU_OR => S <= A or B;
						when ALU_XOR => S <= A xor B;
						when others => S <= A + B;
			end case;
		end process;

end arch_alu;

