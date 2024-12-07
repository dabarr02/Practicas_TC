----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2024 00:13:45
-- Design Name: 
-- Module Name: RegWin - Behavioral
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

entity RegWin is
    Port (clk,rst : in std_logic;
    enable : in std_logic;
    dout : out std_logic_vector(15 downto 0)
);
end RegWin;

architecture Behavioral of RegWin is
    signal out_aux: std_logic_vector (15 downto 0);
    signal aux: std_logic;
    signal aux_in: std_logic;
    component biestable is
        Port ( clk,rst : in std_logic;
           enable : in std_logic;
           din : in std_logic;
           dout : out std_logic);
    end component;

    begin
    biestable1: biestable port map(
    clk=>clk,
    rst=>rst,
    enable=>enable,
    din=>aux_in,
    dout=>aux
    );
    
    -- Bucle para asignar valores a out_aux en posiciones impares
    dout(15) <=  aux;
    dout(14) <= aux;
    dout(13) <=  aux;
    dout(12) <= aux;
    dout(11) <= aux;
    dout(10) <= aux;    
    dout(9) <=  aux;
    dout(8) <=  aux;
    dout(7) <= aux;
    dout(6) <=  aux;
    dout(5) <= aux;
    dout(4) <=  aux;
    dout(3) <= aux;
    dout(2) <=  aux;
    dout(1) <=  aux;
    dout(0) <=  aux; 
 
    aux_in <= not aux;
    


end Behavioral;
