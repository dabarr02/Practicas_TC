----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 12:45:58
-- Design Name: 
-- Module Name: counter_n - Behavioral
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

entity counter_n is
    generic( n: natural :=4);
    port(
        clk: in std_logic ;
        reset: in std_logic ;
        load: in std_logic;
        up: in std_logic;
        down: in std_logic ;
        din: in std_logic_vector (n-1 downto 0);
        dout: out std_logic_vector (n-1 downto 0)
    );
end counter_n;

architecture ARCH of counter_n is
signal aux_out: unsigned(n-1 downto 0);
begin
    process(clk,reset)
    begin
        if(reset='1') then
            aux_out<=(others=>'0');
        elsif rising_edge(clk)then
            if load='1' then
                aux_out<=unsigned (din);
            elsif up='1' then
                aux_out <= aux_out+1;
            elsif down='1' then
                aux_out<= aux_out - 1;
            end if;
        end if; 
    end process;
    dout <= std_logic_vector(aux_out);
end ARCH;
