----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 14:43:56
-- Design Name: 
-- Module Name: celda_iter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity celda_iter is
    generic(
        n : natural :=4 --numero de bits
    );
    Port (c_in,x_in : in signed(n-1 downto 0);
           c_out : out signed (n-1 downto 0);
           g_out : out std_logic
           );
end celda_iter;

architecture Behavioral of celda_iter is

signal comp: std_logic ;
component comparador is
generic(
        num_bits : natural :=4
    );
Port (a,b : in signed(num_bits-1 downto 0);
        cmp : out std_logic );
end component;
begin
uc: comparador generic map (n) port map( --mapeo del comparador
    a => x_in,
    b => c_in,
    cmp => comp);
process(c_in,x_in,comp)
begin
     --en funcion de cual sea mayor c_out es uno u otro
     
       if (comp = '1') then
            c_out <= x_in;  -- Asigna el valor de x_in a c_out
            g_out<='1';
        else
            c_out <= c_in;  -- Asigna el valor de c_in a c_out
            g_out<='0';
        end if;
                     
                
end process;

end Behavioral;
