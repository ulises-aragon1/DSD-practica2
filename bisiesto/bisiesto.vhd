LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY bisiesto IS
PORT(
	clk_principal : std_logic;
	reset_btn : std_logic;
	bisiesto_led: out std_logic;
	selector : out std_logic_vector(3 downto 0);
	segmentos: out std_logic_vector(6 downto 0)
);
END ENTITY;

ARCHITECTURE a_bisiesto OF bisiesto IS
	SIGNAL clk_lento : std_logic;
	SIGNAL clk_veloz : std_logic;
	SIGNAL bisiesto_sig: std_logic;
	SIGNAL cont_display : std_logic_vector(1 downto 0) := "00";
	SIGNAL selector_mostrar : std_logic_vector(3 downto 0) := "0000";
	SIGNAL Num1,Num2,Num3,Num4 : std_logic_vector(6 downto 0) := "0000000";
	SIGNAL anyos : integer RANGE 1950 TO 2050 := 1950;
	SIGNAL millares : integer RANGE 1 TO 2 := 1;
	SIGNAL centenas : integer RANGE 0 TO 9 := 9;
	SIGNAL decenas : integer RANGE 0 TO 9 := 5;
	SIGNAL unidades : integer RANGE 0 TO 9 := 0;

	
	COMPONENT contador is
	PORT(
		s1: out std_logic;
		s2: out std_logic;
		clk : in std_logic;
		rst : in std_logic
	);
	END COMPONENT;
	
BEGIN
	Cont_Map : contador PORT MAP(clk_lento, clk_veloz, clk_principal, '1');
	
	CambiaDisplay: PROCESS(clk_veloz)
	BEGIN
		IF rising_edge(clk_veloz) THEN
			cont_display <= cont_display + 1;
		END IF;
	END PROCESS;
	
	MuestraDisplay: PROCESS(cont_display)
	BEGIN
		case cont_display is
			when "00" => selector_mostrar <= "1110";
			when "01" => selector_mostrar <= "1101";
			when "10" => selector_mostrar <= "1011";
			when "11" => selector_mostrar <= "0111";
			when others => selector_mostrar <= "1111";
		end case;
		
		case cont_display is
			when "00" => segmentos <= Num4;
			when "01" => segmentos <= Num3;
			when "10" => segmentos <= Num2;
			when "11" => segmentos <= Num1;
			when others => segmentos <= Num1;
		end case;
	END PROCESS;
	
	CambiaAnyos : PROCESS(clk_lento)
	BEGIN
		IF (reset_btn = '0') THEN
			anyos <= 1950;
		ELSIF (rising_edge(clk_lento)) THEN
			IF (anyos = 2050) THEN
				anyos <= 1950;
			ELSE
				anyos <= anyos + 1;
			END IF;
		END IF;
	END PROCESS;
	
	MuestraAnyo : PROCESS(anyos)
	
	FUNCTION DecimalSegmento (Digito : INTEGER RANGE 0 to 9) RETURN std_logic_vector IS
		VARIABLE RETORNO : std_logic_vector(6 downto 0) := "1111111";
		BEGIN
			CASE Digito IS
				WHEN 0 => RETORNO := "1000000";
				WHEN 1 => RETORNO := "1111001";
				WHEN 2 => RETORNO := "0100100";
				WHEN 3 => RETORNO := "0110000";
				WHEN 4 => RETORNO := "0011001";
				WHEN 5 => RETORNO := "0010010";
				WHEN 6 => RETORNO := "0000010";
				WHEN 7 => RETORNO := "1111000";
				WHEN 8 => RETORNO := "0000000";
				WHEN 9 => RETORNO := "0011000";
				WHEN OTHERS => RETORNO := "1111111";
			END CASE;
			RETURN RETORNO;
		END FUNCTION;
		
	BEGIN
	
	
		IF (anyos MOD 4 = 0 AND anyos MOD 100 /= 0) OR (anyos MOD 4 = 0 AND anyos MOD 100 = 0 AND anyos MOD 400 = 0 ) THEN
			bisiesto_sig <= '0';
		ELSE
			bisiesto_sig <= '1';
		END IF;
	
		millares <= anyos/1000;
		centenas <= (anyos-(millares*1000))/100;
		decenas <= (anyos-(millares*1000)-(centenas*100))/10;
		unidades <= anyos-(millares*1000)-(centenas*100) - (decenas*10);
		
		Num4 <= DecimalSegmento(millares);
		Num3 <= DecimalSegmento(centenas);
		Num2 <= DecimalSegmento(decenas);
		Num1 <= DecimalSegmento(unidades);
		
	END PROCESS;
	
	
	
	selector <= selector_mostrar;
	bisiesto_led <= bisiesto_sig;
	
END a_bisiesto;