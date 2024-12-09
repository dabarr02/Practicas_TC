----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2024 01:01:08
-- Design Name: 
-- Module Name: contador - Behavioral
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
USE IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
  Port ( 
    clk,rst : in std_logic;
    enable : in std_logic;
    load : in std_logic; -- Señal de control para la carga paralela
    load_value : in std_logic_vector(3 downto 0); -- Valor de carga paralela
    dout : out std_logic_vector(3 downto 0)

  );
end contador;

architecture Behavioral of contador is 

signal count: std_logic_vector(3 downto 0);

begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= "0000"; -- Reiniciar el contador
        elsif rising_edge(clk) then
            if load = '1' then
                count <= load_value; -- Cargar el valor paralelo
            elsif enable = '1' then
                if count = "1001" then
                    count <= "0000"; -- Reiniciar el contador cuando llega a 9
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;
    dout <= count; -- Asignar el valor del contador a la salida
end Behavioral;
