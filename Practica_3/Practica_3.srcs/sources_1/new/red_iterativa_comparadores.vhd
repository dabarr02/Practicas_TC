----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 14:38:06
-- Design Name: 
-- Module Name: red_iterativa_comparadores - Behavioral
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
--prueba

entity red_iterativa_comparadores is
generic (
num_bits : natural := 4;
num_entradas : natural := 4
);
port(
X : in std_logic_vector (num_entradas*num_bits-1 downto 0);
S : out std_logic_vector (num_bits-1 downto 0);
clk : in std_logic
);
end red_iterativa_comparadores;
architecture Behavioral of red_iterativa_comparadores is

signal c_aux: signed(num_entradas*num_bits-1 downto 0); --los c_in y c_out intermedios
--Declarar componente de la celda iterativa
component  celda_iter is
    generic(
        n : natural :=4 --numero de bits
    );
    Port (c_in,x_in : in signed(n-1 downto 0);
           c_out : out signed (n-1 downto 0));
end component;
--fin declaracion
begin
--generar red con generate
geni: for i in 0 to num_entradas-2 generate --vamos a usar una celda menos poniendo c0 = X0
    u: celda_iter generic map(num_bits) port map(
        c_in=>c_aux(((i+1)*num_bits)-1 downto i*num_bits),
        x_in=>signed(X(((i+2)*num_bits)-1 downto (i+1)*num_bits)),
        c_out=>c_aux(((i+2)*num_bits)-1 downto (i+1)*num_bits)
    );
    -- !!! Poner condiciones de contorno!!!!  
end generate geni;
c_aux(num_bits-1 downto 0)<=signed(X(num_bits-1 downto 0));--condicion contorno entrada primera celda
S<=std_logic_vector(c_aux(num_entradas*num_bits-1 downto (num_entradas-1)*num_bits ));-- S out es el c_out de la ultima celda

end Behavioral;
