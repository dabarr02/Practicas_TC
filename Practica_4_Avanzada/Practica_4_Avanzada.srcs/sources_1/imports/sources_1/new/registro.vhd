----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 16:26:05
-- Design Name: 
-- Module Name: registro - Behavioral
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

entity registro is
    generic(n_bits: natural:=4);
    port(
    clk,rst,load: in std_logic ;-- load paralelo y load con desplazamiento
    din: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    cout: out std_logic;
    dout: out std_logic_vector (n_bits-1 downto 0)); --salida paralela
    
end registro;

architecture Behavioral of registro is
signal aux_out: std_logic_vector (n_bits-1 downto 0);
begin
    process(clk,rst)
    begin
        if rising_edge (clk) then
            if(rst='1')then
                dout<=(others=>'0');
                cout<='0';
            elsif(load = '1') then
                dout<=din;
                cout<=din(n_bits-1);
            end if;
        end if;
    end process;
end Behavioral;
