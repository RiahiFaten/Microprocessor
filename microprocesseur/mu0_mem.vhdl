----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:23 01/22/2020 
-- Design Name: 
-- Module Name:    mu0_mem - arch_mu0_mem 
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
use IEEE.numeric_std.all;
use work.up_pack.all; 
use work.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mu0_mem is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_bus : inout  STD_LOGIC_VECTOR (15 downto 0);
           addr_bus : inout  STD_LOGIC_VECTOR (11 downto 0));
end mu0_mem;

architecture arch_mu0_mem of mu0_mem is

 component mu0
     Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_bus : inout  STD_LOGIC_VECTOR (15 downto 0);
           addr_bus : inout  STD_LOGIC_VECTOR (11 downto 0);
           mem_rq : out  STD_LOGIC;
           rnw : out  STD_LOGIC);
 end component;
 component ram
  Port ( addr_bus : in  STD_LOGIC_VECTOR (11 downto 0);
           rnw : in  STD_LOGIC;
           memrq : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_bus : inout  STD_LOGIC_VECTOR (15 downto 0));
end component;
 signal rnwsig: std_logic;
 signal meme_rqsig:std_logic;
 signal addr_bussig: std_logic_vector(11 downto 0);
 signal data_bussig:std_logic_vector (15 downto 0);
 
begin
 V0: mu0
   port map (reset,clk,data_bussig,addr_bussig,meme_rqsig,rnwsig);

 V1 : ram
 port map (addr_bussig,rnwsig,meme_rqsig,clk,data_bussig);
 
 addr_bus <= addr_bussig;
 data_bus <= data_bussig;
 
 end arch_mu0_mem;



