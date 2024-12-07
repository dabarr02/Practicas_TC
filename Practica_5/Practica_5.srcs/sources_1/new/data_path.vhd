----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2024 19:36:42
-- Design Name: 
-- Module Name: data_path - Behavioral
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

entity data_path is
port (clk, reset: in std_logic;
    control: in std_logic_vector(5 downto 0);       --usado
    leds: out std_logic_vector(15 downto 0);                  --asignado
    segundos_5: out std_logic;
    ganar: out std_logic ;
    cont1: OUT std_logic_vector (3 DOWNTO 0);
    cont2: OUT std_logic_vector (3 DOWNTO 0)
    ); 
end data_path;

architecture Behavioral of data_path is


signal control_aux: std_logic_vector(5 downto 0);
alias leds_mux : std_logic_vector(1 downto 0) is control_aux(1 downto 0);
alias load_display : std_logic is control_aux(2);
alias enable_5segundos: std_logic is control_aux(3);
alias enable_display : std_logic is control_aux(4);
alias load_5segundos : std_logic is control_aux(5);


signal d0,atraer,perder,ganar_leds: std_logic_vector(15 downto 0); --señales para los patrones leds (salidas de los contadores)
signal ce5,ce100,ce250: std_logic; --señales para habilitar el contador de 5 segundos y los displays
signal HZ2,HZ100,HZ250: std_logic; --señales para los divisores de frecuencia
signal aux_5s,aux_display100,aux_display250: std_logic_vector (3 downto 0);
signal cmp5,cmpWin: std_logic ;
--Componentes
--Generador patron ganar
component RegWin is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    dout : out std_logic_vector(15 downto 0)
    );
end component;
------------------
--Generador patron atraer
component RegAtraer is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    dout : out std_logic_vector(15 downto 0)
    );
end component;
---------------------
--Generador patron perder
component RegPerder is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    dout : out std_logic_vector(15 downto 0)
    );
end component;
------------------------
--Contador
component Contador is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    load : in std_logic; -- Se�al de control para la carga paralela
    load_value : in std_logic_vector(3 downto 0); -- Valor de carga paralela
    dout : out std_logic_vector(3 downto 0)
    );
end component;
------------------------
--divisores de frecuencia
--Divisor 2HZ
component divisor2HZ is
    port (
        rst: in STD_LOGIC;
        clk_entrada: in STD_LOGIC; -- reloj de entrada de la entity superior
        clk_salida: out STD_LOGIC -- reloj que se utiliza en los process del programa principal
    );
end component;
------------------------
--Divisor 100HZ
component divisor100HZ is
    port (
        rst: in STD_LOGIC;
        clk_entrada: in STD_LOGIC; -- reloj de entrada de la entity superior
        clk_salida: out STD_LOGIC -- reloj que se utiliza en los process del programa principal
    );
end component;
------------------------
--Divisor 250HZ
component divisor250HZ is
    port (
        rst: in STD_LOGIC;
        clk_entrada: in STD_LOGIC; -- reloj de entrada de la entity superior
        clk_salida: out STD_LOGIC -- reloj que se utiliza en los process del programa principal
    );
end component;
------------------------
----Comparador-------
component comparador is
generic(
        num_bits : natural :=4
    );
Port (a,b : in std_logic_vector(num_bits-1 downto 0);
        cmp : out std_logic );
end component ;
----------------------
begin
control_aux<=control;
d0 <= (others => '0');
ce5 <= enable_5segundos and HZ2; --Habilita contador 5 segundos
ce100 <= enable_display and HZ100; --Habilita display 1
ce250 <= enable_display and HZ250; --Habilita display2
cont1 <= aux_display100; --Salida de display1
cont2 <= aux_display250; --Salida display2
segundos_5<=cmp5; --Salida comparador 5 segundos
ganar<=cmpWin; --Salida comparador Ganar

--Multiplexor de leds
with leds_mux select
        leds <= d0 when "11", --apagar
             ganar_leds when "10", --ganar
             perder when "01", --perder
             atraer when "00", --atraer
             (others => '0') when others; -- Valor por defecto

             
AtraerInst: RegAtraer port map(
    clk=>clk,
    rst=>reset,
    enable=>HZ2,
    dout=>atraer
);

PerderInst: RegPerder port map(
    clk=>clk,
    rst=>reset,
    enable=>HZ2,
    dout=>perder
);

GanarInst: RegWin port map(
    clk=>clk,
    rst=>reset,
    enable=>HZ2,
    dout=>ganar_leds
);

Divisor2HZInst: divisor2HZ port map(
        rst => reset,
        clk_entrada => clk, -- reloj de entrada de la entity superior
        clk_salida => HZ2 -- reloj que se utiliza en los process del programa principal
);


Divisor250HZInst: divisor250HZ port map(
        rst => reset,
        clk_entrada => clk, -- reloj de entrada de la entity superior
        clk_salida => HZ250 -- reloj que se utiliza en los process del programa principal
);


Divisor100HZInst: divisor100HZ port map(
        rst => reset,
        clk_entrada => clk, -- reloj de entrada de la entity superior
        clk_salida => HZ100 -- reloj que se utiliza en los process del programa principal
);

Contador5Segundos: contador port map(
    clk=> clk,
    rst=>reset,
    load=> load_5segundos,
    load_value=> "0000",
    enable=>ce5,
    dout=> aux_5s
);

Contador100HZ: contador port map(
    clk=> clk,
    rst=>reset,
    load=> load_display,
    load_value=> "0000",
    enable=>ce100,
    dout=> aux_display100
);

Contador250HZ: contador port map(
    clk=> clk,
    rst=>reset,
    load=> load_display,
    load_value=> "0000",
    enable=>ce250,
    dout=> aux_display250
);

Comparador5s: comparador generic map(num_bits => 4) port map (
    a=>aux_5s,
    b=>"1001",
    cmp=>cmp5
);

ComparadorGanar: comparador generic map(num_bits => 4) port map (
    a=>aux_display100,
    b=>aux_display250,
    cmp=>cmpWin
);

end Behavioral;
