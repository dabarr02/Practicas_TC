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

begin
control_aux<=control;

end Behavioral;
