----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2024 10:28:29
-- Design Name: 
-- Module Name: test_biest - Behavioral
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

entity test_biest is
--  Port ( );
end test_biest;

architecture Behavioral of test_biest is
component biestable is
     port(clk, rst,p : in std_logic ;
         Q : out std_logic );
end component;
signal clk,rst,p : std_logic;
signal q: std_logic ;
begin
bies_inst : biestable port map(clk,rst,p,q);
clk_process: process
begin
    clk<='0';
    wait for 50 ns;
    clk<='1';
    wait for 50 ns;
end process;
process
begin
p<='0';
rst<='1';
wait for 100 ns;
rst<= '0';
wait for 25 ns;
p<='1';
wait for 50 ns;
p<= '0';
wait;
end process;
end Behavioral;
