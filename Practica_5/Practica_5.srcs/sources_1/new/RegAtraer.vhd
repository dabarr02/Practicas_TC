----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2024 00:13:45
-- Design Name: 
-- Module Name: RegWin - Behavioral
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

entity RegAtraer is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    dout : out std_logic_vector(15 downto 0)
);
end RegAtraer;

architecture Behavioral of RegAtraer is
signal out_aux: std_logic_vector (15 downto 0);
begin
process (clk, rst)
begin
    if rst = '1' then
        out_aux <= (others => '0');
    elsif rising_edge(clk) then
        if enable = '1' then
            out_aux(15) <= not out_aux(0);
            out_aux(14 downto 0) <= out_aux(15 downto 1);
        else 
            out_aux <= out_aux;
        end if;
    end if;
end process;
dout <= out_aux;
end Behavioral;