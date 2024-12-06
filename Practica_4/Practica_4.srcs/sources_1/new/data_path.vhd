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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_path is
generic (n: natural := 8;
        m: natural := 4);
port (clk, reset: in std_logic;
    dividendo: in std_logic_vector(n - 1 downto 0); --usado
    divisor: in std_logic_vector(m - 1 downto 0);   --usado
    control: in std_logic_vector(8 downto 0);       --usado
    cociente: out std_logic_vector(n - 1 downto 0); --usado
    less_or_equals: out std_logic;                  --asignado
    MSB_dividend: out std_logic);                   --asignado
end data_path;

architecture ARCH of data_path is

signal control_aux: std_logic_vector(11 downto 0);
alias load_dividend : std_logic is control_aux(0);          --usado
alias load_divisor : std_logic is control_aux(1);           --usado
alias shift_right_divisor: std_logic is control_aux(2);     --usado
alias load_quotient : std_logic is control_aux(3);          --usado
alias shift_left_quotient : std_logic is control_aux(4);    --usado
alias load_k : std_logic is control_aux(5);                  --usado
alias count_k : std_logic is control_aux(6);                 --usado
alias mux_dividend : std_logic is control_aux(7);            --usado
alias operation : std_logic is control_aux(8);               --usado
alias mux_divisor : std_logic  is control_aux(9);
alias mux_suma : std_logic  is control_aux(10);
alias mux_divisor_suma : std_logic  is control_aux(11);

signal divisor_aux:std_logic_vector (n downto 0);                   --Salida RegDivisor para entrar en la ALU
signal rk: std_logic_vector (n downto 0);                           --señal intermedia para el contador de Rk
signal padding: std_logic_vector (n-m-1 downto 0):= (others =>'0'); --señal para rellenar los 0s de divisor y meterlo en RegDivisor
signal pin_aux:std_logic_vector (n downto 0);                       -- entrada paralela para egistro divisor
signal dividendo_aux:std_logic_vector (n downto 0);                 --señal intermedia dividendo para ALU
signal mux_in: std_logic_vector (n downto 0);                       --señal intermedia para que entre al mux desde la ALU
signal mux_out: std_logic_vector (n downto 0);                      --señal intermedia para que entre al RegDividendo desde MUX
signal sin_aux: std_logic;                                          --auxiliar para negar primerbit de dividendo_aux
signal temp_MSB: std_logic;
signal cociente_aux: std_logic_vector(n - 1 downto 0);
signal  msb_aux:std_logic ;
component counter_n is --declaramos el contador par Rk
    generic( n: natural :=4);
    port(
        clk: in std_logic ;
        reset: in std_logic ;
        load: in std_logic;
        up: in std_logic;
        down: in std_logic ;
        din: in std_logic_vector (n-1 downto 0);
        dout: out std_logic_vector (n-1 downto 0)
    );
end component;

--declaramos el comparador
component comparador is
generic(
        num_bits : natural :=4
    );
Port (a,b : in signed(num_bits-1 downto 0);
        cmp : out std_logic );
end component;
--declaramos el desplazar a la derecha
component  reg_SIPO_right is
generic (n_bits : natural :=4);
port(
    clk,reset: in std_logic ;
    load_s,load_p: in std_logic ;-- load paralelo y load con desplazamiento
    pin: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    sin: in std_logic ; -- entrada serie
    dout: out std_logic_vector (n_bits-1 downto 0) --salida paralela
);
end component;

--declaramos ALU
component  alu is
generic(n_bits: natural:= 4);
Port ( data1 : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
data2 : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
op: in STD_LOGIC;
salida : out STD_LOGIC_VECTOR (n_bits-1 downto 0));
end component ;

--declaramos registro
component  registro is
    generic(n_bits: natural:=4);
    port(
    clk,rst,load: in std_logic ;-- load paralelo y load con desplazamiento
    din: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    cout: out std_logic;
    dout: out std_logic_vector (n_bits-1 downto 0)); --salida paralela
end component ;
--Declaramos reg con desp izquierda (Rq)
component reg_SIPO_left is
generic (n_bits : natural :=4);
port(
    clk,reset: in std_logic ;
    load_s,load_p: in std_logic ;-- load paralelo y load con desplazamiento
    pin: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    sin: in std_logic ; -- entrada serie
    dout: out std_logic_vector (n_bits-1 downto 0) --salida paralela
);
end component;
begin
control_aux<=control;
cociente<=cociente_aux;
pin_aux<='0' & divisor & padding;

--MUX
mux_out <= mux_in when mux_dividend = '1' 
                    else '0'&dividendo;
--fin mux

--Asignamos la salida del primerbit de dividendo
process(msb_aux)
begin
sin_aux<=not msb_aux;
MSB_dividend <= msb_aux;
end process ;
SumRest: alu generic map(n+1) port map(-- op=1 resta op=0 suma
    data1=> dividendo_aux,
    data2=> divisor_aux,
    op=>operation,
    salida=>mux_in
);
Comp: comparador generic map (n+1) port map( --devuelve 1 si a>=b
    a=>to_signed(n-m, n+1),  
    b=> signed(rk),
    cmp=>less_or_equals
);
ContRk: counter_n generic map(n+1) port map(
    clk=>clk,
    reset=>reset,
    load=>load_k,
    down=>'0',
    up => count_k,
    din=>(others=>'0'),
    dout=> rk
);
RegDivisor: reg_SIPO_right generic map(n+1) port map(
    clk=>clk,
    reset=>reset,
    load_s=>shift_right_divisor,
    load_p=>load_divisor,
    sin=>'0',
    pin => pin_aux,
    dout=>divisor_aux
);
RegDividendo: registro generic map(n+1) port map(
    clk=>clk,
    rst=>reset,
    load=>load_dividend,
    din=>mux_out,
    dout=>dividendo_aux,
    cout=>msb_aux
);
Rq: reg_SIPO_left generic map(n) port map(
    clk=>clk,
    reset=>reset,
    load_s=>shift_left_quotient,
    load_p=>load_quotient,
    sin=>sin_aux,
    pin => (others=>'0'),
    dout=>cociente_aux
);
end ARCH;
