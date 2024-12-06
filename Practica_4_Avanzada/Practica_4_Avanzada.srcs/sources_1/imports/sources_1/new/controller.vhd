----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 12:15:04
-- Design Name: 
-- Module Name: controller - Behavioral
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

entity controller is
port(clk, reset, inicio: in std_logic;
    less_or_equals: in std_logic;
    MSB_dividend: in std_logic;
    control: out std_logic_vector(11 downto 0);
    fin: out std_logic;
    MSB_divisor: in std_logic );--añadido
end controller;

architecture ARCH of controller is

type STATES is (S0,S1,S2,S3,S4,S5,S6,S7,Suma,Comp,Desp); --Define the states here ,S8,S9
signal STATE, NEXT_STATE: STATES;
signal control_aux: std_logic_vector(11 downto 0);
alias load_dividend : std_logic is control_aux(0);
alias load_divisor : std_logic is control_aux(1);
alias shift_right_divisor: std_logic is control_aux(2);
alias load_quotient : std_logic is control_aux(3);
alias shift_left_quotient : std_logic is control_aux(4);
alias load_k : std_logic is control_aux(5);
alias count_k : std_logic is control_aux(6);
alias mux_dividend : std_logic is control_aux(7);
alias operation : std_logic is control_aux(8);
alias mux_divisor : std_logic  is control_aux(9);
alias mux_suma : std_logic  is control_aux(10);
alias mux_divisor_suma : std_logic  is control_aux(11);

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

COMB: process(STATE,inicio,MSB_dividend,less_or_equals,MSB_divisor)--poner el resto de señales de control
begin
--valores por defecto
load_divisor<='0';
load_dividend<='0';
mux_dividend<='1';
shift_right_divisor<='0';
load_quotient<='0';
load_k<='0';
shift_left_quotient<='0';
count_k<='0';
operation<='1';
fin<='0';
mux_divisor<='0';
mux_suma<='0';
mux_divisor_suma<='0';
--fin valores por defecto
case STATE is
    when S0 => --ESTADO INICIAL
        fin<='1';
        if(inicio='1')then
            NEXT_STATE<=S1;
        ELSE
            NEXT_STATE<=S0;
        end if;
    when S1 =>
        --inicializar los valores de las Rs
        --Rdividendo
        mux_dividend<='0';
        load_dividend<='1';
        --Rdivisor
        load_divisor<='1';
        --Rq
        load_quotient<='1';
        --Rk
        load_k<='1';
        fin<='0';
        NEXT_STATE <= Suma;
  -- Añadimos estados NUEVOS
    when Suma=>
        operation<='0';--sumar;
        mux_suma<='1';
        mux_divisor<='1';
        load_divisor<='1';
        NEXT_STATE<=Comp;
    when Comp=>
        if(MSB_divisor = '1') then
            NEXT_STATE<=Desp;
        else
            NEXT_STATE<=S2; -- no hay overflow
        end if;
    when Desp =>
        shift_right_divisor<='1'; --desplazamos y vamos al estado 2
        NEXT_STATE<=S2;
    when S2 =>
        fin<='0';
        --Rdividendo= Rdivid - Rdivisor
        load_dividend<='1';
        operation<='1';--resta
        --mux<='1' es default
        NEXT_STATE<=S3;
    --when S8 =>
        --NEXT_STATE<=S3;
    when S3 =>
        --estado de comprobación
        if(MSB_dividend='1')then --si la resta es negativa
            NEXT_STATE<=S4;  
        else--si la resta es positiva
            NEXT_STATE<=S5;
        end if;
    when S4 =>--resta negativa
        --deshacemos resta y ponemos un 0
        --Desplazamos Rq
        shift_left_quotient<='1';
        --Desahacemos resta
        load_dividend<='1';
        operation<='0';--suma
        --mux<='1' es default
        NEXT_STATE<=S6;
    when S5 =>--resta positiva
        --desplazamos Rq
        shift_left_quotient<='1';
        NEXT_STATE<=S6;
    when S6 =>
        --desplazamos Divisor
        shift_right_divisor<='1';
        --Rk++
        count_k<='1';
        NEXT_STATE<=S7;
    --when S9=>
       -- NEXT_STATE<=S7;    
    when S7 =>
        if(less_or_equals='1')then
           NEXT_STATE<=S2; 
        else
            NEXT_STATE<=S0;
        end if;
end case;
end process COMB;
end ARCH;
