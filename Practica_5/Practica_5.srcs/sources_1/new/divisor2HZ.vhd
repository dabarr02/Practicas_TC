----------------------------------------------------------------------------------
-- Company: Universidad Complutense de Madrid
-- Engineer: Hortensia Mecha
-- 
-- Design Name: divisor 
-- Module Name:    divisor - divisor_arch 
-- Project Name: 
-- Target Devices: 
-- Description: Creaci�n de un reloj de 2Hz a partir de
--		un clk de 100 MHz
--  Contamos hasta 50M en vez de 100M
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.ALL;

entity divisor2HZ is
    port (
        rst: in STD_LOGIC;
        clk_entrada: in STD_LOGIC; -- reloj de entrada de la entity superior
        clk_salida: out STD_LOGIC -- reloj que se utiliza en los process del programa principal
    );
end divisor2HZ;

architecture divisor2HZ_arch of divisor2HZ is
 SIGNAL cuenta: std_logic_vector(27 downto 0);
 SIGNAL clk_aux: std_logic;
  
  begin

 
clk_salida<=clk_aux;
  contador:
  PROCESS(rst, clk_entrada)
  BEGIN
    IF (rst='1') THEN
      cuenta<= (OTHERS=>'0');
      clk_aux<='0';
    ELSIF(rising_edge(clk_entrada)) THEN
      IF (cuenta="0010111110101111000010000000") THEN 
      	clk_aux <= '1';
        cuenta<= (OTHERS=>'0');
      ELSE
        cuenta <= cuenta+'1';
	   clk_aux<='0';
      END IF;
    END IF;
  END PROCESS contador;

end divisor2HZ_arch;
