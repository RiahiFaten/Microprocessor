----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:26:16 01/16/2020 
-- Design Name: 
-- Module Name:    ir_reg - arch_ir_reg 
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
use IEEE.NUMERIC_STD.ALL;
use work.up_pack.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ir_reg is
    Port ( clk : in  STD_LOGIC;
           raz : in  STD_LOGIC;
           load : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (11 downto 0);
           opcode : out  OPCODE);
end ir_reg;

architecture arch_ir_reg of ir_reg is
	signal interne : std_logic_vector(3 downto 0);
begin
	process(clk,raz,load,data_in)
	begin
		if (raz = '1') then
			interne <= ('X','X','X','X') ;
			data_out <= (others => '0') ;
		elsif (load='1') then
			if (clk'event and clk = '1') then
				interne <= (3 => data_in(15),2 => data_in(14),1 => data_in(13),0 => data_in(12));
				data_out <= (11 => data_in(11),10 => data_in(10),9 => data_in(9),8 => data_in(8),7 => data_in(7),6 => data_in(6),5 => data_in(5),4 => data_in(4),3 => data_in(3),2 => data_in(2),1 => data_in(1),0 => data_in(0));
			end if ;
		end if;
	end process;
	
	opcode <= OP_LDA when interne="0000" else
				 OP_STO when interne="0001" else
				 OP_ADD when interne="0010" else
				 OP_SUB when interne="0011" else
				 OP_JMP when interne="0100" else
				 OP_JGE when interne="0101" else
				 OP_JNE when interne="0110" else
				 OP_STP when interne="0111" else
				 OP_AND when interne="1000" else
				 OP_OR  when interne="1001" else
				 OP_XOR when interne="1010" else
				 OP_LDR when interne="1011" else
				 OP_LDI when interne="1100" else
				 OP_STI when interne="1101" else
				 OP_JSR when interne="1110" else
				 OP_RET when interne="1111" else
				 OP_UNKNOWN;
				 			 
end arch_ir_reg;
