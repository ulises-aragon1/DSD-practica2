LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY contador IS GENERIC(
	clk_frec : INTEGER := 50_000_000 -- Frecuencia del reloj en Hz
);
PORT(
	s1: out std_logic;
	s2: out std_logic;
	clk : in std_logic;
	rst : in std_logic
);
END ENTITY;

ARCHITECTURE a_contador OF contador IS
	SIGNAL cont : INTEGER RANGE 0 TO (clk_frec/2)-1 := 0 ;
	SIGNAL cont_veloz : INTEGER RANGE 0 TO 99_999 :=0;
	SIGNAL salida  : std_logic;
	SIGNAL salida_veloz : std_logic;
	BEGIN
		DivisorFrecuencia : PROCESS(clk,rst)
			BEGIN
				IF (rst='0') THEN -- Los botones en mi tarjeta trabajan con 1 cuando no están presionados y con 0 cuando si
					cont <= 0;
					cont_veloz <= 0;
					salida <='0'; -- Los LEDs en mi tarjeta trabajan con 1 cuando no están presionados y con 0 cuando si
					salida_veloz <= '0';
				ELSIF (rising_edge(clk)) THEN
					IF (cont = (clk_frec/2)-1) THEN
						cont <= 0;
						salida <= not salida;
					ELSE
						cont <= cont + 1;
					END IF;
					
					IF(cont_veloz = 99_999) THEN
						cont_veloz <= 0;
						salida_veloz <= not salida_veloz;
					ELSE
						cont_veloz <= cont_veloz + 1;
					END IF;
				END IF;
			END PROCESS;
	s1 <= salida;
	s2 <= salida_veloz;
	END a_contador;
