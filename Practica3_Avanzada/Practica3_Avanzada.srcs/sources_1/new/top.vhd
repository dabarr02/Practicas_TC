----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2024 09:21:56
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
port(
X : in std_logic_vector (15 downto 0);
G : out std_logic_vector (2 downto 0); 
S : out std_logic_vector (3 downto 0);
P: out std_logic_vector (1 downto 0)
);
end top;
architecture circuito of top is
component red_iterativa_comparadores
generic (
num_bits : natural := 4;
num_entradas : natural := 4
);
port(
X : in std_logic_vector (num_entradas*num_bits-1 downto 0);
S : out std_logic_vector (num_bits-1 downto 0);
G : out std_logic_vector (num_entradas-2 downto
0)
);
end component red_iterativa_comparadores;
signal G_aux: std_logic_vector (2 downto 0); 
signal S_aux: std_logic_vector (3 downto 0);
begin
UUT_i : red_iterativa_comparadores
generic map (
num_bits => 4,
num_entradas => 4
)
port map (
X =>X ,
G => G_aux,
S =>S_aux
);
P <=  "00" when G_aux="000" else
      "00" when G_aux="001" else
      "01" when G_aux="010" else
      "01" when G_aux="011" else
      "10" when G_aux="100" else
      "10" when G_aux="101" else
      "10" when G_aux="110" else
      "10"when G_aux="111";
G<=G_aux;
S<=S_aux;
End circuito;