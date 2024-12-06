----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2024 18:29:54
-- Design Name: 
-- Module Name: tragaperras - Behavioral
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

entity tragaperras IS
PORT (
    rst : IN std_logic;
    clk : IN std_logic;
    inicio : IN std_logic;
    fin : IN std_logic;
    cont1: OUT std_logic_vector (3 DOWNTO 0);
    cont2: OUT std_logic_vector (3 DOWNTO 0);
    leds: OUT std_logic_vector (15 DOWNTO 0)
);
END tragaperras;

architecture Behavioral of tragaperras is

begin


end Behavioral;
