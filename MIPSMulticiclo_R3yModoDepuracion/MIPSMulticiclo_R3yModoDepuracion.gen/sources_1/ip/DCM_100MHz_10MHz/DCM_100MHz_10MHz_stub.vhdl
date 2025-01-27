-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Dec 11 10:53:55 2024
-- Host        : DESKTOP-I5KJ0SF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/hlocal/TC/MIPS
--               Multiciclo-CASA-20241211/MIPSMulticiclo_R3yModoDepuracion/MIPSMulticiclo_R3yModoDepuracion/MIPSMulticiclo_R3yModoDepuracion.gen/sources_1/ip/DCM_100MHz_10MHz/DCM_100MHz_10MHz_stub.vhdl}
-- Design      : DCM_100MHz_10MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCM_100MHz_10MHz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end DCM_100MHz_10MHz;

architecture stub of DCM_100MHz_10MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
