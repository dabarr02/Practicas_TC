library IEEE;
use IEEE.std_logic_1164.all;

entity unidadDeControl is
	port( 
		clk		  : in  std_logic;
		rst		  : in  std_logic;
		control	  : out std_logic_vector(17 downto 0);
		Zero	  : in  std_logic;
		op		  : in  std_logic_vector(5 downto 0);
		modo	  : in  std_logic;
		siguiente : in  std_logic		
	);
end unidadDeControl;

architecture unidadDeControlArch of unidadDeControl is

    signal control_aux : std_logic_vector(17 downto 0); -- Cambio para la practica: Necesitamos un bit mas para la se�al del MUX de 4 a 1 y MUX salto
    alias PCWrite	     : std_logic is control_aux(0);
    alias IorD 		 : std_logic is control_aux(1);
    alias MemWrite	 : std_logic is control_aux(2);
    alias MemRead 	 : std_logic is control_aux(3);
    alias IRWrite 	 : std_logic is control_aux(4);
    alias RegDst 	     : std_logic is control_aux(5);
    alias MemtoReg 	 : std_logic_vector (1 downto 0) is control_aux(7 downto 6); --A�adimos un bit mas para el MUX de 4 a 1
    alias RegWrite 	 : std_logic is control_aux(8);
    alias AWrite 	     : std_logic is control_aux(9);
    alias BWrite 	     : std_logic is control_aux(10);  
    alias ALUScrA 	 : std_logic is control_aux(11);
    alias ALUScrB 	 : std_logic_vector(1 downto 0) is control_aux(13 downto 12);
    alias OutWrite 	 : std_logic is control_aux(14);
    alias ALUop 		 : std_logic_vector(1 downto 0) is control_aux(16 downto 15);
    alias MuxSalto : std_logic is control_aux(17); --Se�al para el Mux del PC
    TYPE states IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11,S12,S13,S14); --Cambio para la practica: A�adimos un estados: 12 (mv inmediato),
      
    SIGNAL currentState, nextState: states;

begin

  control <= control_aux;

  stateGen:
  PROCESS (currentState, op , zero, modo, siguiente)
  BEGIN

    nextState <= currentState;
    control_aux <= (OTHERS=>'0');
		  
    CASE currentState IS
		
		WHEN S0 =>
			if (modo = '0' or (modo = '1' and siguiente = '1')) then
				PCWrite <= '1';
				MemRead <= '1';
				ALUScrB <= "01";
				nextState <= S1;
			end if;				
			
		WHEN S1 =>
			IRWrite <= '1';
			nextState <= S2;

			
		WHEN S2 =>
			AWrite <= '1';
			BWrite <= '1';
			if (op = "000000") then -- tipo-R
				nextState <= S8;
			elsif (op = "100011") then -- lw
				nextState <= S3;
			elsif (op = "101011") then -- sw
				nextState <= S6;
			elsif (op = "000100") then --beq
				nextState <= S10;
			-- Anadimos el estado 12 para el mv inmediato	
			elsif (op = "010000") then -- mv inmediato
				nextState <= S12;
			elsif (op="010010") then --mv registro
			    nextState <= S13;
			elsif (op="000010") then -- salto
			    nextState<= S14;
			end if;
		
		WHEN S3 =>
			ALUScrA <= '1';
			ALUScrB <= "10";
			OutWrite <= '1';
			nextState <= S4;
			
		WHEN S4 =>
			MemRead <= '1';
			IorD <= '1';
			nextState <= S5;
		
		WHEN S5 =>
			MemtoReg <= "01";
			RegWrite <= '1';
			nextState <= S0;
		
		WHEN S6 =>
			ALUScrA <= '1';
			ALUScrB <= "10";
			OutWrite <= '1';
			nextState <= S7;
			
		WHEN S7 =>
			MemWrite <= '1';
			IorD <= '1';
			nextState <= S0;
		
		WHEN S8 =>
		    ALUScrB<="00";  
			ALUScrA <= '1';
			ALUOp <= "10";
			OutWrite <= '1';
			nextState <= S9;
		
		WHEN S9 =>
		    ALUScrB<="00"; 
			RegDst <= '1';
			RegWrite <= '1';
			nextState <= S0;
			
		WHEN S10 =>
			ALUScrA <= '1';
			ALUOp <= "01";
			if (Zero = '0') then
				nextState <= S0;
			else
				nextState <= S11;
			end if;
			
		WHEN S11 =>
			PCWrite <= '1';
			ALUScrB <= "11";
			nextState <= S0;
		WHEN S12 =>
			MemtoReg <= "10"; -- Entrada 2 inmediato extendido
			RegWrite <= '1'; -- Escribir en el banco de registros
			nextState <= S0; -- Volver al estado 0
			RegDst <= '0'; --  Escribimos en RegB
		WHEN S13 =>
			MemtoReg <= "11"; -- Entrada 3 valor del registro origen (A)
			RegWrite <= '1'; -- Escribir en el banco de registros
			nextState <= S0; -- Volver al estado 0
		WHEN S14 =>
			MuxSalto <= '1'; -- Entrada 1 del selector de la siguiente direccion
			PCWrite <= '1'; -- Escribir en el PC la direccion del salto
			nextState <= S0; -- Volver al estado 0
			
    END CASE;
  END PROCESS stateGen;

  state:
  PROCESS (rst, clk)
  BEGIN
	 IF (rst = '1') THEN
		currentState <= S0;
    ELSIF RISING_EDGE(clk) THEN
		currentState <= nextState;
    END IF;
  END PROCESS state;

end unidadDeControlArch;