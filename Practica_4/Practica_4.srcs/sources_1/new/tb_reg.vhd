----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2024 13:14:21
-- Design Name: 
-- Module Name: tb_reg - Behavioral
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

entity tb_reg is
--  Port ( );
end tb_reg;

architecture Behavioral of tb_reg is

component reg_SIPO_right is
generic (n_bits : natural :=4);
port(
    clk,reset: in std_logic ;
    load_s,load_p: in std_logic ;-- load paralelo y load con desplazamiento
    pin: in std_logic_vector (n_bits-1 downto 0); -- entrada paralela
    sin: in std_logic ; -- entrada serie
    dout: out std_logic_vector (n_bits-1 downto 0) --salida paralela
);
end component;
    signal rst : std_logic;
    signal clk : std_logic;
	signal load_s,load_p,sin : std_logic;
	signal pin: std_logic_vector(4 downto 0);

--Salidas
	signal dout: std_logic_vector(4 downto 0);
   
--Se deinicioe el periodo de reloj 
    constant clk_period : time := 50 ns;
 
begin
uut: reg_SIPO_right generic map(5) PORT MAP(
clk=>clk,
reset=>rst,
load_s=> load_s,
load_p=> load_p,
pin=>pin,
sin=>sin,
dout=>dout
);
reloj_process :process
   begin
	clk <= '0';
	wait for clk_period/2;
	clk <= '1';
	wait for clk_period/2;
end process;

sim: process
begin
    --hacemos reset
    rst<='1';
    wait for 45 ns;
    --metemos el numero "00001"
    rst<='0';
    pin<="00001";
    load_p<='1';
    wait for 45 ns;
    load_p<='0';
    sin<='1';
    load_s<='1';
    wait for 45 ns;
    sin<='0';
    wait for 45 ns;
    load_s<='0';
    load_p<='1';
    pin<="11111";
    wait for 100 ns;
    load_p<='0';
    rst<='1';
    wait;
end process sim;
end Behavioral;
