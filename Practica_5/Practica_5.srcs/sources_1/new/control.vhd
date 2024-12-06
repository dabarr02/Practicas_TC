----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2024 19:36:02
-- Design Name: 
-- Module Name: control - Behavioral
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

entity control is
port(clk, reset: in std_logic;
    inicio : IN std_logic;
    fin : IN std_logic;
    control: OUT std_logic_vector(5 downto 0);
    segundos_5: IN std_logic;
    ganar: IN std_logic 
    );
end control;

architecture Behavioral of control is

type STATES is (S0,S1,S2,S3,S4); 
signal STATE, NEXT_STATE: STATES;
signal control_aux: std_logic_vector(5 downto 0);
alias leds_mux : std_logic_vector(1 downto 0) is control_aux(1 downto 0);
alias load_display : std_logic is control_aux(2);
alias enable_5segundos: std_logic is control_aux(3);
alias enable_display : std_logic is control_aux(4);
alias load_5segundos : std_logic is control_aux(5);

begin
control<=control_aux;

SYNC: process(clk,reset)
begin
if rising_edge(clk) then
    if reset = '1' then
        STATE <= S0;
    else
        STATE <= NEXT_STATE;
    end if;
end if;
end process SYNC;

COMB: process(STATE,inicio,fin,segundos_5,ganar)--poner el resto de se?ales de control
begin
--Valores Default
leds_mux<="00";
load_display<='0';
load_5segundos<='0';
enable_5segundos<='0';
enable_display<='0';
--FIN DEFAULT

--INICIO FSM
case STATE is
when S0 =>--ATRAER (ESPERAR INICIO)
    load_display<='1'; --cargar 0s en displays
    leds_mux<="00"; --leds de atraer
    if(inicio='1') then --inicio?
        NEXT_STATE<=S1;
    else
       NEXT_STATE<=S0;
    end if;
when S1 =>--JUGAR (ESPERAR FIN)
    enable_display<='1'; -- encendemos contadores
    leds_mux<="11"; --apagamos leds
    load_5segundos<='1';
    if(fin='1')then -- fin?
       NEXT_STATE<=S2;
    else
       NEXT_STATE<=S1;
    end if;
when S2 =>--COMPARAR RESULTADO
    leds_mux<="11"; --leds apagados
    if(ganar='1') then --hemos ganado?
      NEXT_STATE<=S3; --premio
    else
       NEXT_STATE<=S4; --mala suerte
    end if;
when S3 =>--PREMIO
    leds_mux<="10"; --leds premio
    enable_5segundos<='1'; --contamos 5s
    if(segundos_5='1')then -- 5s?
        NEXT_STATE<=S0; --inicio
    else
       NEXT_STATE<=S3; --seguir contando
    end if;
when S4 =>--MALA SUERTE
    leds_mux<="01"; --leds mala suerte
    enable_5segundos<='1'; --contamos 5s
    if(segundos_5='1')then --5s?
        NEXT_STATE<=S0; --inicio
    else
       NEXT_STATE<=S3; --seguir contando
    end if;

end case;
--FIN FSM
end process COMB;

end Behavioral;
