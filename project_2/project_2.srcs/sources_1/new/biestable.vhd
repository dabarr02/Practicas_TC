----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2024 10:18:18
-- Design Name: 
-- Module Name: biestable - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity biestable is
port(clk, rst,p : in std_logic ;
     Q : out std_logic );
end biestable;

architecture Behavioral of biestable is

begin
process (clk,rst)
begin

if rst = '1' then
    q <= '0';
elsif rising_edge(clk)then
    q <= p;
end if;

end process;     

end Behavioral;
