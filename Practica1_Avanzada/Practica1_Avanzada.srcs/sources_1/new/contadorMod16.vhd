----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.09.2024 09:24:04
-- Design Name: 
-- Module Name: contadorMod16 - Behavioral
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
entity contadorMod16 is
    port (
      rst    : IN  std_logic;
      clk    : IN  std_logic;
      cuenta : IN  std_logic;
      salida : OUT std_logic_vector(3 downto 0)
    );
    end entity;

architecture Behavioral of contadorMod16 is

component registro is
  Port (
    rst  : IN  std_logic;
    clk  : IN  std_logic;
    load : IN  std_logic;
    E    : IN  std_logic_vector(3 downto 0);
    S    : OUT std_logic_vector(3 downto 0)   
  );
end component ;

component sumador is
  Port (
    A : IN   std_logic_vector(3 downto 0);
    B : IN   std_logic_vector(3 downto 0);
    C : OUT  std_logic_vector(3 downto 0)   
  );
end component ;

 signal B : std_logic_vector(3 downto 0):= "0101";
 signal A : std_logic_vector( 3 downto 0);
 signal C : std_logic_vector( 3 downto 0);
 signal E : std_logic_vector( 3 downto 0);
 signal S1 : std_logic_vector( 3 downto 0);
 signal L : std_logic;
begin
reg_inst : registro PORT MAP (
    rst => rst,
    clk => clk,
    E => C,
    S => S1,
    load => cuenta
);
sum_inst : sumador PORT MAP (
    A => S1,
    B=> B,
    C=> C
);

    salida<=S1;


end Behavioral;
