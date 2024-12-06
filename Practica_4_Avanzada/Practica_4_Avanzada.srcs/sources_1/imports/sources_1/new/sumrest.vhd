----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 15:31:40
-- Design Name: 
-- Module Name: sumrest - Behavioral
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

entity alu is
generic(n_bits: natural:= 4);
Port ( data1 : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
data2 : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
op: in STD_LOGIC;
salida : out STD_LOGIC_VECTOR (n_bits-1 downto 0));
end alu;
architecture Behavioral of alu is
signal salida_aux: signed(n_bits-1 downto 0);
begin
    salida_aux<=
                   signed(data1) + signed(data2) when op ='0' else
                   signed( data1) - signed(data2) when op ='1' else
                   (others=> '0');
    salida <= std_logic_vector (salida_aux);

end Behavioral;
