----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2024 09:48:49
-- Design Name: 
-- Module Name: test - Behavioral
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

entity test is
--  Port ( );
end test;

architecture Behavioral of test is
component PP is
     Port ( A,B : in std_logic; 
         salida: out std_logic);
end component;

Signal A,B : std_logic;
Signal salida : std_logic;
begin
PP_inst: PP port map (A,B,salida);
process
begin
A <= '0';
B <= '0';
wait for 100 ns;
A <='1';
wait for 100 ns;
B <='1';
wait for 100 ns;
B <= '0';
wait for 100 ns;
A <= '0';
wait for 100 ns;
B <= '1';
wait for 100 ns;
wait;

end process; 

end Behavioral;
