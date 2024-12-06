----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 13:01:22
-- Design Name: 
-- Module Name: reg_SIPO - Behavioral
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

entity reg_SIPO_right is
generic (n_bits : natural :=4);
port(
    clk,reset: in std_logic ;
    load_s,load_p: in std_logic ;-- load paralelo y load con desplazamiento
    pin: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    sin: in std_logic ; -- entrada serie
    dout: out std_logic_vector (n_bits-1 downto 0); --salida paralela
    msb: out std_logic
);
end reg_SIPO_right;

architecture Behavioral of reg_SIPO_right is
signal out_aux: std_logic_vector (n_bits-1 downto 0);
begin
    process (clk,reset)
    begin
        if(reset='1') then
            out_aux<= (others=>'0');
        elsif rising_edge (clk) then --sincorno
            if load_p = '1' then
                out_aux <= pin; -- carga paralela
            elsif load_s = '1' then
                out_aux<= sin & out_aux(n_bits-1 downto 1) ; --carga serie desp izquierda
            end if;
        end if;
    end process;
    dout<=out_aux;
    msb<=out_aux(n_bits-1);

end Behavioral;
