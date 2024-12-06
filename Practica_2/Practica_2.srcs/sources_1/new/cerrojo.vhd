----------------------------------------------------------------------------------
-- 
-- Alumno: Daniel Barroso Corral 
-- 
-- Create Date: 07.10.2024 11:15:19
-- Design Name: 
-- Module Name: cerrojo - Behavioral
-- Project Name: Cerrojo
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--      Practica 2 Cerrojo (maquina de estados) 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.8 - Funciona la simulación
-- Additional Comments:
-- Falta probar en la placa
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

ENTITY cerrojo IS
PORT (
    rst : IN std_logic;
    clk : IN std_logic;
    boton : IN std_logic;
    clave : IN std_logic_vector (7 DOWNTO 0);
    bloqueado : OUT std_logic;
    intentos : OUT std_logic_vector (3 DOWNTO 0)
);
END cerrojo;

architecture Behavioral of cerrojo is
-- Definimos tipos y declaramos señales de los estados
type tipo_estado is (INICIAL,TRES,DOS,UNO,FINAL);
signal estado_act,estado_sig : tipo_estado;
signal clave_s : std_logic_vector (7 DOWNTO 0);
--signal eq : boolean ;
begin
--asignamos valor a eq 

--Proceso sincrono de la fsm que actualiza estados
SYNC: process(clk,rst)
begin
    if rising_edge(clk) then
        if rst ='1' then
            estado_act<=INICIAL;
            clave_s<="00000000"; --reset de la clave
        else
            estado_act<=estado_sig;
            if(estado_act=INICIAL and boton='1')then
                clave_s<=clave;
            end if;
        end if;
    end if;
end process SYNC;
--Proceso Combinacional que controla el estado siguiente en funcion de la entrada

COMB: process (estado_act,boton)
begin

case estado_act is
    -- Set de contraseña, candado desbloqueado
    when INICIAL =>
        bloqueado<='1';
        intentos<= "0011";
        If boton='0' then
           estado_sig<=estado_act;
        else 
            --clave_s<=clave;
            estado_sig<=TRES;
        end if;
        
    -- Empiezan los intentos, quedan 3
    when TRES =>
        bloqueado<='0';
        intentos<= "0011";
        if boton = '0' then
            estado_sig<=estado_act;
        else
            if clave_s = clave then
                --Si acierta volvemos a estado inicial
                estado_sig<=INICIAL;
            else
                estado_sig <= DOS;
            end if; --fin if eq
        end if;-- fin if boton
        
    --Quedan 2 intentos
    when DOS =>
        bloqueado<='0';
        intentos<= "0010";   
        if boton = '0' then
            estado_sig<=estado_act;
        else
            if clave_s = clave  then
                --Si acierta volvemos a estado inicial
                estado_sig<=INICIAL;
            else
                estado_sig <= UNO;
            end if; --fin if eq
        end if;-- fin if boton
        
    --Queda 1 intento
    when UNO =>
        bloqueado<='0';
        intentos<= "0001";   
        if boton = '0' then
            estado_sig<=estado_act;
        else
            if clave_s = clave  then
                --Si acierta volvemos a estado inicial
                estado_sig<=INICIAL;
            else
                estado_sig <= FINAL;
            end if; --fin if eq
        end if;-- fin if boton
        
     -- No quedan intentos, bucle que no deja salir
     when FINAL => 
        bloqueado<='0';
        intentos<= "0000"; 
        if boton = '0' then
            estado_sig<=estado_act;
        else
            -- Se introduce la clave de desbloqueo
            if clave = "10101010" then
            --Volvemos al estado INICIAL
                estado_sig<=INICIAL;
             else
             -- Si no seguimos bloqueados
                estado_sig<=estado_act;
             end if; --fin if clave
          end if;   --fin if boton    
END CASE;
end process COMB;
end Behavioral;
